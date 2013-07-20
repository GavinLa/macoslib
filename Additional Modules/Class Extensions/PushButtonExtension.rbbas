#tag Module
Protected Module PushButtonExtension
	#tag Method, Flags = &h0
		Function AlternateImage(Extends p as PushButton) As Picture
		  
		  #if TargetCocoa
		    
		    declare function alternateImage lib CocoaLib selector "alternateImage" (obj_id as Integer) as Ptr
		    
		    return new NSImage(alternateImage(p.handle))
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlternateImage(Extends p as PushButton, Assigns image as Picture)
		  
		  #if TargetCocoa
		    
		    declare sub setAlternateImage lib CocoaLib selector "setAlternateImage:" (obj_id as Integer, image as Ptr)
		    
		    setAlternateImage(p.handle, new NSImage(image))
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused image
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AlternateTitle(Extends p as PushButton) As String
		  
		  #if TargetCocoa
		    
		    declare function alternateTitle lib CocoaLib selector "alternateTitle" (obj_id as Integer) as CFStringRef
		    
		    return alternateTitle(p.handle)
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlternateTitle(Extends p as PushButton, Assigns aString as String)
		  
		  #if TargetCocoa
		    
		    declare sub setAlternateTitle lib CocoaLib selector "setAlternateTitle:" (obj_id as Integer, aString as CFStringRef)
		    
		    setAlternateTitle(p.handle, aString)
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused aString
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bordered(Extends p as PushButton) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isBordered lib CocoaLib selector "isBordered" (obj_id as Integer) as Boolean
		    
		    return isBordered(p.handle)
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Bordered(Extends p as PushButton, Assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setBordered lib CocoaLib selector "setBordered:" (obj_id as Integer, value as Boolean)
		    
		    setBordered(p.handle, value)
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Image(Extends p as PushButton) As Picture
		  
		  #if TargetCocoa
		    
		    declare function image lib CocoaLib selector "image" (obj_id as Integer) as Ptr
		    
		    return new NSImage(image(p.handle))
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Image(Extends p as PushButton, Assigns image as Picture)
		  
		  #if TargetCocoa
		    
		    declare sub setImage lib CocoaLib selector "setImage:" (obj_id as Integer, image as Ptr)
		    
		    setImage(p.handle, new NSImage(image))
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused image
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowsBorderOnlyWhileMouseInside(Extends p as PushButton) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function showsBorderOnlyWhileMouseInside lib CocoaLib selector "showsBorderOnlyWhileMouseInside" (obj_id as Integer) as Boolean
		    
		    return showsBorderOnlyWhileMouseInside(p.handle)
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowsBorderOnlyWhileMouseInside(Extends p as PushButton, Assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setShowsBorderOnlyWhileMouseInside lib CocoaLib selector "setShowsBorderOnlyWhileMouseInside:" (obj_id as Integer, value as Boolean)
		    
		    setShowsBorderOnlyWhileMouseInside(p.handle, value)
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Transparent(Extends p as PushButton) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isTransparent lib CocoaLib selector "isTransparent" (obj_id as Integer) as Boolean
		    
		    return isTransparent(p.handle)
		    
		  #else
		    
		    #pragma unused p
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Transparent(Extends p as PushButton, Assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setTransparent lib CocoaLib selector "setTransparent:" (obj_id as Integer, value as Boolean)
		    
		    setTransparent(p.handle, value)
		    
		  #else
		    
		    #pragma unused p
		    #pragma unused value
		    
		  #endif
		  
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
End Module
#tag EndModule
