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

	#tag Method, Flags = &h1
		Protected Function getPoolDetails(poolname as string) As Limnie.Pool
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
		  
		  if rs.Field("salt").StringValue = empty then
		    output.encrypted = false
		  else
		    output.encrypted = true
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
