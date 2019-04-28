#tag Class
Protected Class Document
	#tag Method, Flags = &h0
		Sub Constructor(optional initialErrorMessage as string)
		  if initialErrorMessage.Trim = empty then
		    error = False
		    errorMessage = empty
		  else
		    error = true
		    errorMessage = initialErrorMessage
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isLocked() As Boolean
		  for i as integer = 0 to fragments.Ubound
		    if isnull(fragments(i)) = true then return true
		    if fragments(i).locked = true then return true
		  next i
		  
		  return false
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		creationStamp As date
	#tag EndProperty

	#tag Property, Flags = &h0
		deleted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		error As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		errorMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		fragmented As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		fragments(-1) As Limnie.Fragment
	#tag EndProperty

	#tag Property, Flags = &h0
		hash As String
	#tag EndProperty

	#tag Property, Flags = &h0
		lastChangeStamp As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		metadatum As String
	#tag EndProperty

	#tag Property, Flags = &h0
		objidx As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		pool As string
	#tag EndProperty

	#tag Property, Flags = &h0
		size As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		uuid As string
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
		#tag ViewProperty
			Name="creationStamp"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass