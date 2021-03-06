#tag Class
Protected Class ResourceAccessor
Inherits ResourceForkReplacement.ResourceChainSaver
	#tag Method, Flags = &h0
		Sub Constructor(resFileRef as Integer)
		  declare sub UseResFile lib CarbonLib (refNum as Integer)
		  
		  super.Constructor // saves the current res file
		  
		  if resFileRef = 0 then
		    return
		  end
		  
		  UseResFile resFileRef
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
