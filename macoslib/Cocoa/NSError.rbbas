#tag Class
Class NSError
Inherits NSObject
	#tag Method, Flags = &h1000
		Sub Constructor(domain as String, code as Integer, userInfo as NSDictionary)
		  
		  #if targetMacOS
		    declare function initWithDomain lib CocoaLib selector "initWithDomain:code:userInfo:" (obj_id as Ptr, domain as CFStringRef, code as Integer, userInfo as Ptr) as Ptr
		    
		    dim dictRef as Ptr
		    if userInfo <> nil then
		      dictRef = userInfo
		    end if
		    
		    super.Constructor(initWithDomain(Allocate("NSError"), domain, code, dictRef), NSError.hasOwnership)
		    
		  #else
		    #pragma unused domain
		    #pragma unused code
		    #pragma unused userInfo
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		 Shared Function Create(domain as String, code as Integer, userInfo as NSDictionary) As NSError
		  
		  #if TargetMacOS
		    declare function errorWithDomain lib CocoaLib selector "errorWithDomain:code:userInfo:" (class_id as Ptr, domain as CFStringRef, code as Integer, userInfo as Ptr) as Ptr
		    
		    dim dictRef as Ptr
		    if userInfo <> nil then
		      dictRef = userInfo
		    end if
		    
		    dim errorRef as Ptr = errorWithDomain(Cocoa.NSClassFromString("NSError"), domain, code, dictRef)
		    if errorRef <> nil then
		      return new NSError(errorRef)
		    end if
		    
		  #else
		    #pragma unused domain
		    #pragma unused code
		    #pragma unused userInfo
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSErrorFailingURLStringKey() As String
		  
		  return Cocoa.StringConstant("NSErrorFailingURLStringKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSFilePathErrorKey() As String
		  
		  return Cocoa.StringConstant("NSFilePathErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSHelpAnchorErrorKey() As String
		  
		  return Cocoa.StringConstant("NSHelpAnchorErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSLocalizedDescriptionKey() As String
		  
		  return Cocoa.StringConstant("NSLocalizedDescriptionKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSLocalizedFailureReasonErrorKey() As String
		  
		  return Cocoa.StringConstant("NSLocalizedFailureReasonErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSLocalizedRecoveryOptionsErrorKey() As String
		  
		  return Cocoa.StringConstant("NSLocalizedRecoveryOptionsErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSLocalizedRecoverySuggestionErrorKey() As String
		  
		  return Cocoa.StringConstant("NSLocalizedRecoverySuggestionErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSMachErrorDomain() As String
		  
		  return Cocoa.StringConstant("NSMachErrorDomain")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSOSStatusErrorDomain() As String
		  
		  return Cocoa.StringConstant("NSOSStatusErrorDomain")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSPOSIXErrorDomain() As String
		  
		  return Cocoa.StringConstant("NSPOSIXErrorDomain")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSRecoveryAttempterErrorKey() As String
		  
		  return Cocoa.StringConstant("NSRecoveryAttempterErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSStringEncodingErrorKey() As String
		  
		  return Cocoa.StringConstant("NSStringEncodingErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSUnderlyingErrorKey() As String
		  
		  return Cocoa.StringConstant("NSUnderlyingErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSURLErrorFailingURLErrorKey() As String
		  
		  return Cocoa.StringConstant("NSURLErrorFailingURLErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSURLErrorFailingURLPeerTrustErrorKey() As String
		  
		  return Cocoa.StringConstant("NSURLErrorFailingURLPeerTrustErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSURLErrorFailingURLStringErrorKey() As String
		  
		  return Cocoa.StringConstant("NSURLErrorFailingURLStringErrorKey")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function NSURLErrorKey() As String
		  
		  return Cocoa.StringConstant("NSURLErrorKey")
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function code lib CocoaLib selector "code" (obj_id as Ptr) as Integer
			    
			    return code(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		Code As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function domain lib CocoaLib selector "domain" (obj_id as Ptr) as CFStringRef
			    
			    return domain(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		Domain As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function helpAnchor lib CocoaLib selector "helpAnchor" (obj_id as Ptr) as CFStringRef
			    
			    return helpAnchor(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		HelpAnchor As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function localizedDescription lib CocoaLib selector "localizedDescription" (obj_id as Ptr) as CFStringRef
			    
			    return localizedDescription(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		LocalizedDescription As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function localizedFailureReason lib CocoaLib selector "localizedFailureReason" (obj_id as Ptr) as CFStringRef
			    
			    return localizedFailureReason(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		LocalizedFailureReason As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function localizedRecoveryOptions lib CocoaLib selector "localizedRecoveryOptions" (obj_id as Ptr) as Ptr
			    
			    dim arrayRef as Ptr = localizedRecoveryOptions(self)
			    if arrayRef <> nil then
			      return new NSArray(arrayRef)
			    end if
			    
			  #endif
			  
			End Get
		#tag EndGetter
		LocalizedRecoveryOptions As NSArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function localizedRecoverySuggestion lib CocoaLib selector "localizedRecoverySuggestion" (obj_id as Ptr) as CFStringRef
			    
			    return localizedRecoverySuggestion(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		LocalizedRecoverySuggestion As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function recoveryAttempter lib CocoaLib selector "recoveryAttempter" (obj_id as Ptr) as Ptr
			    
			    return recoveryAttempter(self)
			    
			  #endif
			  
			End Get
		#tag EndGetter
		RecoveryAttempter As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetMacOS
			    declare function userInfo lib CocoaLib selector "userInfo" (obj_id as Ptr) as Ptr
			    
			    dim dictRef as Ptr = userInfo(self)
			    if dictRef <> nil then
			      return new NSDictionary(dictRef)
			    end if
			    
			  #endif
			  
			End Get
		#tag EndGetter
		UserInfo As NSDictionary
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Code"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="NSObject"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Domain"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpAnchor"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="LocalizedDescription"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFailureReason"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedRecoverySuggestion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
