#tag Module
Protected Module SegmentedControlExtension
	#tag Method, Flags = &h0
		Function EnabledForSegment(Extends s as SegmentedControl, segment as Integer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isEnabledForSegment lib CocoaLib selector "isEnabledForSegment:" (obj_id as Integer, segment as Integer) as Boolean
		    
		    return isEnabledForSegment(s.handle, segment)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused segment
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnabledForSegment(Extends s as SegmentedControl, segment as Integer, assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setEnabled lib CocoaLib selector "setEnabled:forSegment:" (obj_id as Integer, value as Boolean, segment as Integer)
		    
		    setEnabled(s.handle, value, segment)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    #pragma unused segment
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WidthForSegment(Extends s as SegmentedControl, segment as Integer) As Single
		  
		  #if TargetCocoa
		    
		    declare function widthForSegment lib CocoaLib selector "widthForSegment:" (obj_id as Integer, segment as Integer) as Single
		    
		    return widthForSegment(s.handle, segment)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused segment
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WidthForSegment(Extends s as SegmentedControl, segment as Integer, assigns width as Single)
		  
		  #if TargetCocoa
		    
		    declare sub setWidth lib CocoaLib selector "setWidth:forSegment:" (obj_id as Integer, width as Single, segment as Integer)
		    
		    setWidth(s.handle, width, segment)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused segment
		    #pragma unused width
		    
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
