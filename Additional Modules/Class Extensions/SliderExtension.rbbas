#tag Module
Protected Module SliderExtension
	#tag Method, Flags = &h0
		Function AllowsTickMarkValuesOnly(Extends s as Slider) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function allowsTickMarkValuesOnly lib CocoaLib selector "allowsTickMarkValuesOnly" (obj_id as Integer) as Boolean
		    
		    return allowsTickMarkValuesOnly(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AllowsTickMarkValuesOnly(Extends s as Slider, assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setAllowsTickMarkValuesOnly lib CocoaLib selector "setAllowsTickMarkValuesOnly:" (obj_id as Integer, value as Boolean)
		    
		    setAllowsTickMarkValuesOnly(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AltIncrementValue(Extends s as Slider) As Double
		  
		  #if TargetCocoa
		    
		    declare function altIncrementValue lib CocoaLib selector "altIncrementValue" (obj_id as Integer) as Double
		    
		    return altIncrementValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AltIncrementValue(Extends s as Slider, assigns increment as Double)
		  
		  #if TargetCocoa
		    
		    declare sub setAltIncrementValue lib CocoaLib selector "setAltIncrementValue:" (obj_id as Integer, increment as Double)
		    
		    setAltIncrementValue(s.handle, increment)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused increment
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ClosestTickMarkValueToValue(Extends s as Slider, value as Double) As Double
		  
		  #if TargetCocoa
		    
		    declare function closestTickMarkValueToValue lib CocoaLib selector "closestTickMarkValueToValue:" (obj_id as Integer, value as Double) as Double
		    
		    return closestTickMarkValueToValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DoubleValue(Extends s as Slider) As Double
		  
		  #if TargetCocoa
		    
		    declare function doubleValue lib CocoaLib selector "doubleValue" (obj_id as Integer) as Double
		    
		    return doubleValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoubleValue(Extends s as Slider, Assigns value as Double)
		  
		  #if TargetCocoa
		    
		    declare sub setDoubleValue lib CocoaLib selector "setDoubleValue:" (obj_id as Integer, value as Double)
		    
		    setDoubleValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IntegerValue(Extends s as Slider) As Integer
		  
		  #if TargetCocoa
		    
		    declare function integerValue lib CocoaLib selector "integerValue" (obj_id as Integer) as Integer
		    
		    return integerValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IntegerValue(Extends s as Slider, Assigns value as Integer)
		  
		  #if TargetCocoa
		    
		    declare sub setIntegerValue lib CocoaLib selector "setIntegerValue:" (obj_id as Integer, value as Integer)
		    
		    setIntegerValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KnobThickness(Extends s as Slider) As Single
		  
		  #if TargetCocoa
		    
		    declare function knobThickness lib CocoaLib selector "knobThickness" (obj_id as Integer) as Single
		    
		    return knobThickness(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KnobThickness(Extends s as Slider, assigns thickness as Single)
		  
		  #if TargetCocoa
		    
		    declare sub setKnobThickness lib CocoaLib selector "setKnobThickness:" (obj_id as Integer, thickness as Single)
		    
		    setKnobThickness(s.handle, thickness)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused thickness
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaxValue(Extends s as Slider) As Double
		  
		  #if TargetCocoa
		    
		    declare function maxValue lib CocoaLib selector "maxValue" (obj_id as Integer) as Double
		    
		    return maxValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaxValue(Extends s as Slider, Assigns value as Double)
		  
		  #if TargetCocoa
		    
		    declare sub setMaxValue lib CocoaLib selector "setMaxValue:" (obj_id as Integer, value as Double)
		    
		    setMaxValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MinValue(Extends s as Slider) As Double
		  
		  #if TargetCocoa
		    
		    declare function minValue lib CocoaLib selector "minValue" (obj_id as Integer) as Double
		    
		    return minValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinValue(Extends s as Slider, Assigns value as Double)
		  
		  #if TargetCocoa
		    
		    declare sub setMinValue lib CocoaLib selector "setMinValue:" (obj_id as Integer, value as Double)
		    
		    setMinValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfTickMarks(Extends s as Slider) As Integer
		  
		  #if TargetCocoa
		    
		    declare function numberOfTickMarks lib CocoaLib selector "numberOfTickMarks" (obj_id as Integer) as Integer
		    
		    return numberOfTickMarks(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NumberOfTickMarks(Extends s as Slider, assigns value as Integer)
		  
		  #if TargetCocoa
		    
		    declare sub setNumberOfTickMarks lib CocoaLib selector "setNumberOfTickMarks:" (obj_id as Integer, value as Integer)
		    
		    setNumberOfTickMarks(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
		    #pragma unused value
		    
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SingleValue(Extends s as Slider) As Single
		  
		  #if TargetCocoa
		    
		    declare function floatValue lib CocoaLib selector "floatValue" (obj_id as Integer) as Single
		    
		    return floatValue(s.handle)
		    
		  #else
		    
		    #pragma unused s
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SingleValue(Extends s as Slider, Assigns value as Single)
		  
		  #if TargetCocoa
		    
		    declare sub setFloatValue lib CocoaLib selector "setFloatValue:" (obj_id as Integer, value as Single)
		    
		    setFloatValue(s.handle, value)
		    
		  #else
		    
		    #pragma unused s
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
