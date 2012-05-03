#tag Class
Class SCNetworkInterface
Inherits CFType
	#tag Event
		Function ClassID() As UInt32
		  return SCNetworkInterface.ClassID
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		 Shared Function ClassID() As UInt32
		  #if targetMacOS
		    declare function TypeID lib SystemConfiguration.framework alias "SCNetworkInterfaceGetTypeID" () as UInt32
		    static id as UInt32 = TypeID
		    return id
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function List() As SCNetworkInterface()
		  #if targetMacOS
		    declare function SCNetworkInterfaceCopyAll lib SystemConfiguration.framework () as Ptr
		    dim cfList as new CFArray(SCNetworkInterfaceCopyAll, hasOwnership)
		    dim ifList() as SCNetworkInterface
		    for i as Integer = 0 to cfList.Count - 1
		      ifList.Append new SCNetworkInterface(cfList.Value(i), not hasOwnership)
		    next
		    return ifList
		  #endif
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    declare function SCNetworkInterfaceGetBSDName lib SystemConfiguration.framework (obj as ptr) as Ptr
			    return RetainedStringValue(SCNetworkInterfaceGetBSDName(self))
			  #endif
			End Get
		#tag EndGetter
		BSDName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    declare function SCNetworkInterfaceGetLocalizedDisplayName lib SystemConfiguration.framework (obj as ptr) as Ptr
			    return RetainedStringValue(SCNetworkInterfaceGetLocalizedDisplayName(self))
			  #endif
			End Get
		#tag EndGetter
		DisplayName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    declare function SCNetworkInterfaceGetHardwareAddressString lib SystemConfiguration.framework (obj as ptr) as Ptr
			    return RetainedStringValue(SCNetworkInterfaceGetHardwareAddressString(self))
			  #endif
			End Get
		#tag EndGetter
		HardwareAddress As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #if targetMacOS
			    declare function SCNetworkInterfaceGetInterfaceType lib SystemConfiguration.framework (obj as ptr) as Ptr
			    return RetainedStringValue(SCNetworkInterfaceGetInterfaceType(self))
			  #endif
			End Get
		#tag EndGetter
		Type As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BSDName"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="CFType"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayName"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
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
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
