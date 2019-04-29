#tag Class
Protected Class Session
	#tag Method, Flags = &h0
		Sub clearPoolPasswordCache()
		  poolPasswords = new Dictionary
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  Destructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(inputVFS as Limnie.VFS, optional initPoolPasswords as Dictionary)
		  ErrorMsg = empty
		  
		  if inputVFS = nil then 
		    ErrorMsg = "Invalid VFS object!"
		    return
		  end if
		  
		  if inputVFS.file = nil then 
		    ErrorMsg = "Invalid VFS file!"
		    return
		  end if
		  
		  if inputVFS.file.Exists = false then 
		    ErrorMsg = "VFS file " + inputVFS.file.NativePath + " does not exist!"
		    return
		  end if
		  
		  if inputVFS.file.Directory = true then 
		    ErrorMsg = "VFS file " + inputVFS.file.NativePath + " is really a directory!"
		    Return
		  end if
		  
		  if inputVFS.file.IsWriteable = false then 
		    ErrorMsg = "VFS file " + inputVFS.file.NativePath + " is not writeable!"
		    Return
		  end if
		  
		  if inputVFS.file.IsReadable = false then 
		    ErrorMsg = "VFS file " + inputVFS.file.NativePath + " is not readable!"
		    Return
		  end if
		  
		  activeVFS = new SQLiteDatabase
		  activeVFS.DatabaseFile = inputVFS.file
		  
		  if inputVFS.password <> empty then
		    activeVFS.EncryptionKey = preparePassword(inputVFS.password)
		  end if
		  
		  if activeVFS.Connect = false then
		    ErrorMsg = "Error connecting to " + inputVFS.file.name + " : " + activeVFS.ErrorMessage
		    activeVFS = nil
		    Return
		  end if
		  
		  activeVFS.MultiUser = true  // enable WAL, remember to never mount the database via a network file system!
		  
		  dim testvalue as variant // let's run some tests to see if it's a valid Limnie
		  
		  testvalue = getVFSparameter("name")
		  if testvalue = nil then 
		    ErrorMsg = "Loaded file is not a valid VFS: " + ErrorMsg
		    activeVFS.Close
		    activeVFS = nil
		    Return
		  end if
		  if testvalue.StringValue = empty then 
		    ErrorMsg = "Loaded file is not a valid VFS: No VFS name"
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  
		  testvalue = getVFSparameter("version")
		  if testvalue = nil then 
		    ErrorMsg = "Loaded file is not a valid VFS: " + ErrorMsg
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  if testvalue.StringValue = empty then 
		    ErrorMsg = "Loaded file is not a valid VFS: No VFS version"
		    activeVFS.Close
		    activeVFS = nil
		    Return
		  end if
		  
		  testvalue = getVFSparameter("initstamp")
		  if testvalue = nil then 
		    ErrorMsg = "Loaded file is not a valid VFS: " + ErrorMsg
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  if testvalue.StringValue = empty then 
		    ErrorMsg = "Loaded file is not a valid VFS: No init date"
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  
		  testvalue = getVFSparameter("hostname")
		  if testvalue = nil then 
		    ErrorMsg = "Loaded file is not a valid VFS: " + ErrorMsg
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  if testvalue.StringValue <> hostname then
		    ErrorMsg = "Loaded VFS has been created on hostname " + testvalue.StringValue + " and it is being mounted on " + hostname + ". This cannot be allowed!"
		    activeVFS.Close
		    activeVFS = nil
		    return
		  end if
		  
		  poolPasswords = new Dictionary
		  
		  if IsNull(initPoolPasswords) = false then // user has supplied pool passwords
		    dim poolnames(-1) as string = getPoolNames
		    for i as integer = 0 to initPoolPasswords.Count - 1
		      if poolnames.IndexOf(initPoolPasswords.Key(i).StringValue) < 0 then
		        ErrorMsg = "No pool named <" + initPoolPasswords.Key(i).StringValue + "> found in VFS!"
		        activeVFS.Close
		        activeVFS = nil
		        return
		      end if
		      poolPasswords.Value(initPoolPasswords.Key(i).StringValue) = poolPasswords.Value(initPoolPasswords.Key(i).StringValue).StringValue
		    next i
		  end if
		  
		  // all ok
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createNewPool(newPool as Limnie.Pool) As Limnie.Pool
		  
		  newPool = initPool(newPool)
		  if newPool.error then Return newPool  // something went wrong creating the pool in the VFS: fail
		  
		  // at this point 3 things have completed successfully:
		  // 1. a table called newPool.name has been created
		  // 2. a record newPool.name has been inserted in the pools table
		  // 3. if a user has set a password, the pool-password pair has been added to the poolPasswords dictionary
		  
		  // we are going to create the first medium of the pool: we cannot have a pool without at least 1 medium,
		  // especially a password-pretected pool: the medium db is the only place where the password is applied and can be compared against: it exists nowhere else
		  
		  dim poolInfo as Limnie.Pool = getPoolDetails(newPool.name)  // read details of the pool that has just been created
		  
		  if poolInfo.error = true then 
		    dim rollbackOK as string = rollbackInitPool(newPool.name)
		    return new Limnie.Pool("Error retrieving info on the newly created pool: " + poolInfo.errorMessage + if(rollbackOK = empty , " : Creation rollback OK" , rollbackOK))
		  end if
		  
		  dim saltedPassword as string 
		  saltedPassword = if(poolInfo.salt = empty , empty , preparePassword(poolPasswords.Value(poolInfo.name).StringValue , poolInfo.salt))
		  
		  dim firstMedium as Limnie.Medium = initMedium(poolInfo.name , 1 , poolInfo.rootFolder , poolInfo.mediumThreshold , saltedPassword)
		  
		  if firstMedium.error then
		    dim rollbackOK as string = rollbackInitPool(newPool.name)
		    return new Limnie.Pool("Error creating first pool medium: " + firstMedium.errorMessage + if(rollbackOK = empty , " : Creation rollback OK" , rollbackOK))
		  end if
		  
		  poolInfo.mediaCount = 1  // we've already made one, let's not return an inaccurate piece of info!
		  
		  return poolInfo // success
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  if isnull(activeMedium) = False then activeMedium.close
		  if isnull(activeVFS) = false then activeVFS.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getLastError() As string
		  return ErrorMsg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getMediumDetails(poolname as string, mediumID as integer) As Limnie.Medium
		  if activeVFS = nil then return new Limnie.Medium("VFS not initialized!")
		  
		  dim rs as RecordSet = activeVFS.SQLSelect("SELECT * FROM media WHERE pool = '" + poolname + "' AND idx = " + str(mediumID))
		  if activeVFS.Error = true then return new Limnie.Medium("Error querying for medium: " + activeVFS.ErrorMessage)
		  if rs.RecordCount <> 1 then return new Limnie.Medium("Invalid medium record count: " + str(rs.RecordCount))
		  
		  dim output as Limnie.Medium = new Limnie.Medium
		  
		  output.pool = rs.Field("pool").StringValue
		  output.idx = rs.Field("idx").IntegerValue
		  
		  output.folder = GetFolderItem(rs.Field("folder").StringValue)
		  if output.folder = nil then return new Limnie.Medium("Folder path " + rs.Field("folder").StringValue + " does not exist!")
		  if output.folder.Exists = false then return new Limnie.Medium("Folder " + rs.Field("folder").StringValue + " does not exist!")
		  
		  output.file = output.folder.Child(mediumFilename)
		  if output.file.Exists = false then return new Limnie.Medium("Medium file in " + rs.Field("folder").StringValue + " does not exist!")
		  
		  output.threshold = rs.Field("threshold").IntegerValue
		  output.initStamp = rs.Field("initstamp").DateValue
		  output.open = rs.Field("open").BooleanValue
		  output.uuid = rs.Field("uuid").StringValue
		  
		  
		  return output
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPoolDetails(poolname as string, optional getMediaCount as Boolean = false) As Limnie.Pool
		  if activeVFS = nil then return new Limnie.Pool("Error getting pool details: VFS not initialized")
		  
		  dim rs as RecordSet = activeVFS.SQLSelect("SELECT * FROM pools WHERE name = '" + poolname + "'")
		  
		  if activeVFS.Error = true then return new Limnie.Pool("Error getting pool details: " + activeVFS.ErrorMessage)
		  if rs.RecordCount <> 1 then return new Limnie.Pool("Error getting pool details: Invalid pool record count: " + str(rs.RecordCount))
		  
		  dim output as new Limnie.Pool
		  
		  output.name = rs.Field("name").StringValue
		  output.friendlyName = rs.Field("friendlyname").StringValue
		  output.comments = rs.Field("comments").StringValue
		  output.rootFolder = GetFolderItem(rs.Field("rootfolder").StringValue)
		  output.mediumThreshold = rs.Field("sizelimit").IntegerValue
		  output.initStamp = rs.Field("initstamp").StringValue
		  output.autoExpand = rs.Field("autoexpand").BooleanValue
		  output.uuid = rs.Field("uuid").StringValue
		  output.salt = rs.Field("salt").StringValue
		  
		  if output.salt = empty then
		    output.encrypted = false
		  else
		    output.encrypted = true
		  end if
		  
		  if getMediaCount = true then
		    rs = activeVFS.SQLSelect("SELECT COUNT(*) FROM media WHERE pool = '" + poolname + "'")
		    if activeVFS.Error then 
		      output.mediaCount = -1
		    else
		      output.mediaCount = rs.IdxField(1).IntegerValue
		    end if
		  end if
		  
		  return output
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPoolNames() As string()
		  dim output(-1) as String
		  ErrorMsg = empty
		  
		  if activeVFS = nil then
		    ErrorMsg = "Error getting pool names: VFS not initialized!"
		    return output
		  end if
		  
		  dim rs as RecordSet = activeVFS.SQLSelect("SELECT name FROM pools ORDER BY name ASC")
		  if activeVFS.Error = true then
		    ErrorMsg = activeVFS.ErrorMessage
		    return output
		  end if
		  
		  while not rs.EOF
		    output.Append rs.Field("name").StringValue
		    rs.MoveNext
		  wend
		  
		  return output
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getVFSdetails() As Limnie.VFS
		  if activeVFS = nil then return new Limnie.VFS("VFS not initialized")
		  
		  dim rs as RecordSet = activeVFS.SQLSelect("SELECT * FROM vfs")
		  if activeVFS.Error = true then return new Limnie.VFS("Error getting VFS details: " + activeVFS.ErrorMessage)
		  
		  dim output as new Limnie.VFS
		  
		  while not rs.EOF
		    
		    select case rs.Field("key").StringValue
		    case "name"
		      output.name = rs.Field("value1").StringValue
		    case "friendlyname"
		      output.friendlyName = rs.Field("value1").StringValue
		    case "version"
		      output.version = rs.Field("value1").StringValue
		    case "initstamp"
		      output.initStamp = rs.Field("value1").DateValue
		    case "description"
		      output.description = rs.Field("value1").StringValue
		    case "uuid"
		      output.uuid = rs.Field("value1").StringValue
		    case "hostname"
		      output.hostname = rs.Field("value1").StringValue
		    end select
		    
		    rs.MoveNext
		  wend
		  
		  return output
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getVFSparameter(parameter as string) As variant
		  ErrorMsg = empty
		  
		  if parameter.Trim = empty then
		    ErrorMsg = "Error reading VFS parameter: Parameter name is empty!"
		    return nil
		  end if
		  
		  if activeVFS = nil then 
		    ErrorMsg = "Error reading VFS parameter: VFS is no longer open!"
		    return nil
		  end if
		  
		  dim rs as RecordSet = activeVFS.SQLSelect("SELECT * FROM vfs WHERE key = '" + parameter + "'")
		  
		  if activeVFS.Error = true then 
		    ErrorMsg = "Error reading VFS parameter: Database error: " + activeVFS.ErrorMessage 
		    return nil
		  end if
		  
		  if rs.RecordCount = 0 then
		    ErrorMsg = "Error reading VFS parameter: No parameter <" + parameter + "> found!"
		    return nil
		  end if
		  
		  return rs.Field("value1").StringValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function initMedium(poolname as string, mediumID as integer, rootfolder as FolderItem, threshold as Int64, password as string) As Limnie.Medium
		  if activeVFS = nil then return new Limnie.Medium("Active VFS is no longer valid")
		  
		  if getPoolNames.IndexOf(poolname) < 0 then return new Limnie.Medium("Pool <" + poolname + "> does not exist!")
		  if mediumID <= 0 then return new Limnie.Medium("Invalid medium ID!")
		  
		  dim mediuminfo as Limnie.Medium = getMediumDetails(poolname , mediumID)
		  if mediuminfo.error = false then return new Limnie.Medium("Medium " + str(mediumID) + " already exists!")
		  
		  if rootfolder = nil then return new Limnie.Medium("Invalid root path!")
		  if rootfolder.Exists = false then return new Limnie.Medium("Root folder does not exist!")
		  if rootfolder.Directory = False then return new Limnie.Medium("Root folder name is not a directory!")
		  
		  if threshold < 512 then return new Limnie.Medium("Size threshold is lower than 512 MB!")
		  
		  dim mediumFolder as FolderItem = rootfolder.Child(poolname.trim.Lowercase + "." + str(mediumID))
		  if mediumFolder.Exists = true then return new Limnie.Medium("<" + mediumFolder.NativePath + "> already exists!")
		  
		  mediumFolder.CreateAsFolder
		  if mediumFolder.LastErrorCode <> 0 then return new Limnie.Medium("<" + mediumFolder.NativePath + "> could not be created!")
		  if mediumFolder.IsWriteable = false then return new Limnie.Medium("<" + mediumFolder.NativePath + "> is not writeable!")
		  if mediumFolder.IsReadable = false then return new Limnie.Medium("<" + mediumFolder.NativePath + "> is  not readable!")
		  
		  dim vfsInfo as Limnie.VFS = getVFSdetails
		  if vfsInfo.error then return new Limnie.Medium("Error reading VFS details!")
		  
		  dim poolInfo as Limnie.Pool = getPoolDetails(poolname)
		  if poolInfo.error then return new Limnie.Medium("Error reading pool details!")
		  
		  dim uuid as String = generateUUID
		  if uuid = empty then return new Limnie.Medium("Could not generate UUID for new medium!")
		  
		  dim mediumTimestamp as new date
		  dim mediumDBfile as FolderItem = mediumFolder.Child(mediumFilename)
		  dim mediumDB as new SQLiteDatabase
		  mediumDB.DatabaseFile = mediumDBfile
		  
		  mediumDB.EncryptionKey = password // input password is as-provided: no verifications and cross-checks are made here
		  
		  if mediumDB.CreateDatabaseFile = False then  // attempt to create the database file
		    mediumFolder.Delete
		    return new Limnie.Medium("Error creating medium content file: " + mediumDB.ErrorMessage)
		  end if
		  
		  // at this point we have the medium db file created
		  
		  dim statements(-1) as string
		  statements.Append "CREATE TABLE vfs (key TEXT UNIQUE , value1 TEXT)"
		  statements.Append "CREATE TABLE content (objidx INTEGER PRIMARY KEY , firstpart INTEGER NOT NULL , content BLOB)"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('vfsname' , '" + vfsInfo.name + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('vfsuuid' , '" + vfsInfo.uuid + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('vfsversion' , '" + vfsInfo.version + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('initstamp' , '" + mediumTimestamp.SQLDateTime + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('pool' , '" + poolname + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('pooluuid' , '" + poolInfo.uuid + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('idx' , '" + str(mediumID) + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('threshold' , '" + str(threshold) + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('uuid' , '" + uuid + "')"
		  
		  dim mediumInitOutcome(-1) as string = bulkSQLexecute(mediumDB , statements , false)
		  
		  if getNonEmptyElements(mediumInitOutcome).Ubound >= 0 then
		    dim ErroneusStatementIDs(-1) as integer = getNonEmptyElements(mediumInitOutcome)
		    dim mediumInitErrorMsg as string = "Error initializing medium: " + EndOfLine
		    for i as integer = 0 to ErroneusStatementIDs.Ubound
		      mediumInitErrorMsg = mediumInitErrorMsg + statements(ErroneusStatementIDs(i)) + " --> " + mediumInitOutcome(ErroneusStatementIDs(i)) + EndOfLine
		    next i
		    mediumDB.Close
		    mediumDBfile.Delete
		    mediumFolder.Delete
		    return new Limnie.Medium(mediumInitErrorMsg)
		  ElseIf mediumInitOutcome.Ubound < 0 then
		    mediumDB.Close
		    mediumDBfile.Delete
		    mediumFolder.Delete
		    return new Limnie.Medium("Error initializing medium: internal error")
		  end if
		  
		  // at this point the medium database file is ready
		  // all we have to do is declare it to the vfs database
		  
		  ReDim statements(-1)
		  ReDim mediumInitOutcome(-1)
		  
		  statements.Append "INSERT INTO media (pool , idx , folder , threshold , initstamp , open) VALUES ('" + _
		  poolname + "' , " + str(mediumID) + " , '" + mediumFolder.NativePath + "' , " + _ 
		  str(threshold) + " , '" + mediumTimestamp.SQLDateTime + "' , 'true')"
		  
		  mediumInitOutcome = bulkSQLexecute(activeVFS , statements , false)
		  if mediumInitOutcome.Ubound < 0 then // infrastructure error
		    mediumDB.Close
		    mediumDBfile.Delete
		    mediumFolder.Delete
		    return new pdOutcome(CurrentMethodName + ": Error registering medium datafile: " + pdLastError)
		  ElseIf mediumInitOutcome(0) <> empty then  // sql statement execute error
		    mediumDB.Close
		    mediumDBfile.Delete
		    mediumFolder.Delete
		    return new pdOutcome(CurrentMethodName + ": Error registering medium datafile: " + mediumInitOutcome(0))
		  end if
		  
		  // at this point everything went well
		  mediumDB.close
		  return new pdOutcome(true)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function initPool(newPool as Limnie.Pool) As Limnie.Pool
		  if IsNull(newPool) = true then return new Limnie.Pool("New pool object is null")
		  if getPoolNames.IndexOf(newPool.name) >= 0 or ErrorMsg <> empty then return new Limnie.Pool("Error verifying eligibility for pool: " + ErrorMsg)
		  if newPool.friendlyName.Trim = empty then return new Limnie.Pool("Pool friendly name is empty")
		  if isnull(newPool.rootfolder) = true then return new Limnie.Pool("Pool root folder path is invalid")
		  if newPool.rootfolder.Exists = false then return new Limnie.Pool("Pool root folder does not exist")
		  if newPool.rootfolder.Directory = False then return new Limnie.Pool("Pool root folder name is not a directory")
		  if newPool.rootfolder.IsWriteable = false then return new Limnie.Pool("Pool root folder is not Writeable")
		  if newPool.rootfolder.IsReadable = false then return new Limnie.Pool("Pool root folder is not Readable")
		  if newPool.mediumThreshold < 512 then return new Limnie.Pool("Pool size threshold is lower than 512 MB")
		  if activeVFS = nil then return new Limnie.Pool("Error creating pool: Active VFS is no longer valid")
		  
		  dim statements(-1) as string
		  dim insert as string
		  
		  statements.Append "CREATE TABLE " + newPool.name + " (objidx INTEGER PRIMARY KEY , uuid TEXT , mediumidx INTEGER NOT NULL , firstpart INTEGER NOT NULL , metadatum TEXT , size INTEGER NOT NULL , hash TEXT NOT NULL , creationstamp DATETIME NOT NULL , lastchange DATETIME NOT NULL , deleted BOOLEAN NOT NULL , locked BOOLEAN NOT NULL)"
		  
		  dim uuid as String = generateUUID
		  if uuid = empty then return new Limnie.Pool("Error creating pool: Could not generate pool UUID")
		  
		  insert = "INSERT INTO pools (uuid , name , friendlyname , comments , rootfolder , sizelimit , initstamp , autoexpand , autoclose , salt) VALUES ("
		  insert = insert + uuid.sqlQuote + ","
		  insert = insert + newPool.Name.sqlQuote + ","
		  insert = insert + newPool.friendlyName.sqlQuote + ","
		  insert = insert + newPool.comments.sqlQuote + ","
		  insert = insert + newPool.rootFolder.NativePath.sqlQuote + ","
		  insert = insert + str(newPool.mediumThreshold) + ","
		  insert = insert + date(new date).SQLDateTime.sqlQuote + ","
		  insert = insert + newPool.autoExpand.sqlQuote + ","
		  
		  dim salt as string = empty
		  if newPool.password.Trim = empty then
		    insert = insert + " null )"
		  else // user has supplied a password - a salt will be created and the password will be stored for the current session
		    salt = MD5(str(Microseconds))   // <-observe how the salt for each pool is created
		    insert = insert + salt.sqlQuote + ")"
		  end if
		  
		  statements.Append insert
		  
		  dim poolInitOutcome(-1) as string = bulkSQLexecute(activeVFS , statements , true)
		  if getNonEmptyElements(poolInitOutcome).Ubound >= 0 then // error in statements
		    
		    dim ErroneusStatementIDs(-1) as integer = getNonEmptyElements(poolInitOutcome)
		    dim initErrorMsg as string = "Error creating pool: " + EndOfLine
		    for i as integer = 0 to ErroneusStatementIDs.Ubound
		      initErrorMsg = initErrorMsg + statements(ErroneusStatementIDs(i)) + " --> " + poolInitOutcome(ErroneusStatementIDs(i)) + EndOfLine
		    next i
		    
		    return new Limnie.Pool(initErrorMsg)
		    
		  ElseIf poolInitOutcome.Ubound < 0 then  // error in infrastructure
		    return new Limnie.Pool("Error creating pool: internal error")
		    
		  end if
		  
		  // store the password in the cache
		  if newPool.password.Trim <> empty then 
		    poolPasswords.Value(newPool.name) = preparePassword(newPool.password.Trim , salt)
		      // store the password for the duration of the current session
		  end if
		  
		  newPool.error = false
		  newPool.errorMessage = empty
		  
		  return newPool
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function rollbackInitPool(poolname as string) As string
		  // returns either error message or empty for success
		  dim ErrorPrefix as string = "Error rolling back new pool creation: " 
		  
		  if IsNull(activeVFS) = true then return ErrorPrefix + "VFS session is no longer active")
		  
		  activeVFS.SQLExecute("DROP TABLE " + poolname)
		  if activeVFS.Error = true then return ErrorPrefix + "Rollback pool init fail: "+ activeVFS.ErrorMessage)
		  
		  activeVFS.SQLExecute("DELETE FROM pools WHERE name = '" + poolname + "'")
		  if activeVFS.Error = true then return ErrorPrefix + "Rollback pool init fail: "+ activeVFS.ErrorMessage)
		  
		  if IsNull(poolPasswords) = false then
		    if poolPasswords.HasKey(poolname) = true then poolPasswords.Remove(poolname)
		  end if
		  
		  Return empty  // success
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event poolPasswordRequest(poolname as string) As string
	#tag EndHook


	#tag Property, Flags = &h21
		Private activeMedium As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private activeMediumFilename As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private activeVFS As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ErrorMsg As string = """"""
	#tag EndProperty

	#tag Property, Flags = &h21
		Private poolPasswords As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
