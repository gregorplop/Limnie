#tag Module
Protected Module Limnie
	#tag Method, Flags = &h21
		Private Function bulkSQLexecute(byref sqliteDB as SQLiteDatabase, statements() as string, singleTransaction as Boolean) As string()
		  // returns an array of the same dimension as statements()
		  // each element holds the error code for the corresponding element of statements() if any. if no error then the element is empty
		  
		  dim output(-1) as string
		  
		  if sqliteDB = nil then return output
		  
		  if statements.Ubound < 0 then return output
		  
		  
		  if singleTransaction = true then 
		    sqliteDB.SQLExecute("BEGIN TRANSACTION")
		    if sqliteDB.Error then return output
		  end if
		  
		  ReDim output(statements.Ubound)
		  dim ErrorOccured as Boolean = false
		  
		  for i as integer = 0 to statements.Ubound
		    sqliteDB.SQLExecute(statements(i))
		    if sqliteDB.error then 
		      output(i) = sqliteDB.ErrorMessage
		      ErrorOccured = true
		    else
		      output(i) = empty
		    end if
		  next i
		  
		  if ErrorOccured = False then
		    if singleTransaction = true then 
		      sqliteDB.SQLExecute("COMMIT TRANSACTION")
		      if sqliteDB.Error then ErrorOccured = true
		    end if
		  end if
		  
		  if ErrorOccured = true and singleTransaction = true then
		    sqliteDB.SQLExecute("ROLLBACK TRANSACTION")
		    if sqliteDB.Error then 
		      for i as integer = 0 to output.Ubound
		        output(i) = sqliteDB.ErrorMessage  // this indicates a rollback failure
		      next i
		    end if
		  end if
		  
		  return output
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createLimnie(newVFS as Limnie.VFS) As Limnie.VFS
		  // requires:
		  // DBfile , name , friendlyname , password ,  description
		  
		  if newVFS = nil then return new Limnie.VFS("Initialization VFS object is null")
		  if newVFS.file = nil then Return  new Limnie.VFS("Invalid file path")
		  if newVFS.file.Exists = true then return new Limnie.VFS("Initialization file already exists, will not overwrite")
		  if newVFS.file.Name.NthField("." , newVFS.file.Name.CountFields(".")).Lowercase <> "limnie" then return new Limnie.VFS("Filename should have a .limnie extension")
		  
		  newVFS.name =newVFS.name.SuperTrim
		  newVFS.friendlyname = newVFS.friendlyname.SuperTrim
		  
		  if newVFS.name = empty then return new Limnie.VFS("New Limnie has not been named")
		  if newVFS.friendlyname = empty then return new Limnie.VFS("No friendly name for new Limnie")
		  if newVFS.description = empty then return new Limnie.VFS("No description for new Limnie")
		  
		  dim newDBobject as new SQLiteDatabase
		  newDBobject.DatabaseFile = newVFS.file
		  
		  if newVFS.password <> empty then // encrypt VFS master table
		    newDBobject.EncryptionKey = preparePassword(newVFS.password)
		  end if
		  
		  if newDBobject.CreateDatabaseFile = false then return new Limnie.VFS("Error creating Limnie: " + newDBobject.ErrorMessage)
		  // database has been created
		  
		  dim LimnieUUID as string = generateUUID
		  if LimnieUUID = empty then return new Limnie.VFS("Unable to generate unique Limnie ID")
		  
		  newVFS.name = newVFS.name.Lowercase
		  
		  dim statements(-1) as string
		  dim initStamp as new Date
		  
		  statements.Append "CREATE TABLE vfs (key TEXT UNIQUE , value1 TEXT)"
		  statements.Append "CREATE TABLE pools (uuid TEXT UNIQUE NOT NULL , name TEXT UNIQUE NOT NULL , friendlyname TEXT NOT NULL , comments TEXT , rootfolder TEXT NOT NULL , sizelimit INTEGER NOT NULL , initstamp DATETIME NOT NULL , autoexpand BOOLEAN NOT NULL , salt TEXT)"
		  statements.Append "CREATE TABLE media (uuid TEXT UNIQUE NOT NULL , pool TEXT NOT NULL , idx INTEGER NOT NULL , folder TEXT NOT NULL , threshold INTEGER NOT NULL , initstamp DATETIME NOT NULL , open BOOLEAN NOT NULL , FOREIGN KEY(pool) REFERENCES pools(name) , CONSTRAINT uniquemedium UNIQUE (pool , idx))"
		  
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('uuid' , '" + LimnieUUID + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('name' , '" + newVFS.name + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('friendlyname' , '" + newVFS.friendlyname + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('initstamp' , '" + initStamp.SQLDateTime + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('description' , '" + newVFS.description + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('version' , '" + str(LimnieVersion) + "')"
		  statements.Append "INSERT INTO vfs (key , value1) VALUES ('hostname' , '" + hostname + "')"
		  
		  dim dbinitOutcome(-1) as string = bulkSQLexecute(newDBobject , statements , false)
		  
		  if getNonEmptyElements(dbinitOutcome).Ubound >= 0 then  // there was an error initializing the Limnie
		    
		    dim ErroneusStatementIDs(-1) as integer = getNonEmptyElements(dbinitOutcome)
		    dim dbinitErrorMsg as string = "Error creating Limnie: " + EndOfLine
		    for i as integer = 0 to ErroneusStatementIDs.Ubound
		      dbinitErrorMsg = dbinitErrorMsg + statements(ErroneusStatementIDs(i)) + " --> " + dbinitOutcome(ErroneusStatementIDs(i)) + EndOfLine
		    next i
		    
		    newDBobject.Close
		    newVFS.file.Delete
		    return new Limnie.VFS("Error creating Limnie: " + dbinitErrorMsg.Trim)
		    
		  ElseIf dbinitOutcome.Ubound < 0 then  // another error
		    
		    newDBobject.close
		    newVFS.file.Delete
		    return new Limnie.VFS("Error creating Limnie: Invalid init parameters")
		    
		  end if
		  
		  newDBobject.close
		  newVFS.error = false
		  newVFS.errorMessage = empty
		  newVFS.initStamp = initStamp
		  newVFS.version = str(LimnieVersion)
		  newVFS.uuid = LimnieUUID
		  
		  return newVFS
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function generateUUID() As String
		  // Algorithm Source: https://forum.xojo.com/18856-getting-guid/0 
		  // Replace it with whatever you deem best
		  
		  if IsNull(localDB) then 
		    localDB = new SQLiteDatabase
		    if localDB.Connect = false then return empty
		  end if
		  
		  
		  Dim statement As String= "select hex( randomblob(4)) " _
		  + "|| '-' || hex( randomblob(2)) " _
		  + "|| '-' || '4' || substr( hex( randomblob(2)), 2) " _
		  + "|| '-' || substr('AB89', 1 + (abs(random()) % 4) , 1) " _
		  + "|| substr(hex(randomblob(2)), 2) " _
		  + "|| '-' || hex(randomblob(6)) AS GUID"
		  
		  dim rs as RecordSet  = localDB.SQLSelect(statement)
		  if localDB.Error then
		    Return empty
		  else
		    Return rs.Field("GUID").StringValue.Uppercase
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getNonEmptyElements(inputStringArray() as string) As integer()
		  dim output(-1) as integer
		  dim ArraySize as Integer = inputStringArray.Ubound
		  
		  for i as Integer = 0 to ArraySize
		    if inputStringArray(i) <> empty then output.Append i
		  next i
		  
		  return output
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getSalt() As string
		  // Replace with your own salt (and string obfuscation mechanism)
		  // Ideally, every Limnie implementation should be compiled with its own salt value
		  
		  return "s@ltstr1ng"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function hostname() As String
		  #If TargetWin32 then
		    
		    return System.environmentvariable("COMPUTERNAME").uppercase
		    
		  #elseif TargetLinux then
		    
		    dim hostname as new Shell
		    hostname.Mode = 0
		    hostname.Execute("hostname")
		    return hostname.ReadAll.Uppercase
		    
		  #elseif TargetMacOS then
		    
		    dim hostname as new Shell
		    hostname.Mode = 0
		    hostname.Execute("hostname")
		    return hostname.ReadAll.Uppercase
		    
		  #else
		    
		    Return empty
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LimnieFileType() As FileType
		  dim LimnieType as new FileType
		  LimnieType.Name = "vfs/limnie"
		  LimnieType.MacType = "LIMNIE"
		  LimnieType.Extensions = "limnie"
		  
		  Return LimnieType
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function preparePassword(plaintext as String, optional salt as string = "") As string
		  // empty salt means use internal fixed salt via getSalt method
		  dim hash as MemoryBlock = Crypto.PBKDF2(if(salt = empty , getSalt , salt) , plaintext , 7 , 8 , Crypto.Algorithm.SHA512)
		  dim output as String
		  dim char as string
		  
		  for i as Integer = 0 to hash.Size - 1
		    char = str(hash.UInt8Value(i).ToHex(2))
		    if i mod 2 = 0 then char = char.Lowercase
		    output = output + char
		  next i
		  
		  return output  // should always be a 16 character string
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlQuote(extends input as Boolean) As string
		  if input = true then
		    return "'true'"
		  else
		    return "'false'"
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlQuote(extends input() as String) As string()
		  dim output(-1) as string
		  
		  for i as integer = 0 to input.Ubound
		    output.Append input(i).sqlQuote
		  next i
		  
		  return output
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function sqlQuote(extends input as string) As string
		  if input = empty then 
		    return " NULL "
		  else
		    return " '" + input + "' "
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SuperTrim(extends inputString as String) As String
		  dim output as String = inputString
		  output = output.ReplaceAll(" " , empty)
		  output = output.ReplaceAll("'" , empty)
		  output = output.ReplaceAll("""" , empty)
		  Return output
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Description
		Limnie: /li.ˈmni/ : "lake" in Greek, plural: Limnes
		
		Limnie is a local, highly configurable, flat virtual file system. 
		Its main use is to act as a local object store subsystem.
		It relies on proven, robust SQLite technology and is heavily based on the pdstorage component of the -now defunct- postdoc project ( https://github.com/gregorplop/postdoc )
		
		The main features of Limnie are briefly explained below:
		
		Local: 
		A Limnie VFS should always be on the same machine as the applications mounting it.
		It SHOULD NOT be acessed over a network share or filesystem. Never, ever. It might appear to work at first, but YOU WILL LOSE YOUR DATA. PERIOD.
		Multiple applications running on the same machine, accessing a Limnie, is considered a safe practice.
		
		Highly configurable:
		A Limnie VFS consists of one or multiple storage pools that act as entirely seperate "buckets" you can assign data that belong to different domains, clients, or archival projects.
		Each pool consists of storage media. Media are the actual containers of the content you push into the VFS.
		Media are initialized to a specific (configurable) size and they grow gradually towards that limit but do not exceed it.
		When the last medium of a pool becomes full, Limnie can be configured to auto-create the next one at a set location and size.
		Media belonging to a certain pool can also be encrypted with a password that applies only to that pool.
		Furthermore, access to the entire VFS itself can also be password-protected if needed.
		
		Flat:
		Limnie does not store data in a hierarchical manner: There are no folders and subfolders. The namespace for each storage pool is flat.
		Every object pushed into a pool just gets an id and is retrievable by using that id. Your application can organized the data in any way it needs.
		
		Virtual File System (in case that needs clarification):
		A virtual file system is a file system within your OS's filesystem. 
		Externally, it might appear as one or more files, but when mounted properly through the proper code libraries, your application can access their storage space in a way similar to accessing a new drive connected to the computer.
		
		
		
	#tag EndNote


	#tag Property, Flags = &h1
		Protected localDB As SQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = empty, Type = String, Dynamic = False, Default = \"", Scope = Private
	#tag EndConstant

	#tag Constant, Name = fragmentSize, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = LimnieVersion, Type = Double, Dynamic = False, Default = \"0.1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MByte, Type = Double, Dynamic = False, Default = \"1048576", Scope = Private
	#tag EndConstant

	#tag Constant, Name = mediumFilename, Type = String, Dynamic = False, Default = \"Limnie_medium", Scope = Private
	#tag EndConstant

	#tag Constant, Name = ProjectURL, Type = Text, Dynamic = False, Default = \"https://github.com/gregorplop/Limnie", Scope = Public
	#tag EndConstant


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
End Module
#tag EndModule
