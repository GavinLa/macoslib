#tag Module
Protected Module UnicodeFormsExtension
	#tag Method, Flags = &h0
		Function AppendUnicodeNormalized(extends s1 as string, s2 as String) As string
		  //# Normalizes string s2 to the same form as s1 then appends it to s1
		  
		  //@ If one of the two strings is not Unicode, result in undefined
		  
		  if not inited then
		    Init
		  end if
		  
		  dim form as string
		  
		  form = s1.GuessUnicodeNormalization
		  
		  return   s1 + s2.NormalizeUnicode( form )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CheckNormalization(s as string, normidx as integer) As boolean
		  if not inited then Init
		  
		  soft declare function unorm2_isNormalized lib LibICU ( norm2 as Ptr, s as Ptr, length as Int32, byref pError as integer) as Boolean
		  
		  dim ut16 as string
		  dim enc as TextEncoding = s.Encoding
		  
		  if enc=nil OR enc.base<>256 then //Not Unicode
		    return false
		  end if
		  
		  if enc.format=0 OR enc.format=5 then //Encoding must be UTF16 or UTF16LE for ICU
		    ut16 = s
		  else
		    ut16 = s.ConvertEncoding( Encodings.UTF16 )
		  end if
		  
		  select case QuickCheckNormalization( ut16, normidx )
		  case 0 //QuickCheck returned NO
		    return  false
		    
		  case 1 //QuickCheck returned YES
		    return  true
		    
		  case 2 //QuickCheck returned MAYBE. Use longer algorithm.
		    dim err as integer
		    dim mb as MemoryBlock = ut16
		    dim OK as Boolean
		    dim norm as Ptr = Normalizers( normidx )
		    
		    OK = unorm2_isNormalized( norm, mb, mb.Size \ 2, err )
		    
		    if err=0 then
		      return  OK
		    end if
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GuessUnicodeNormalization(extends s as String) As string
		  //# Determine the Normalization Form of the passed Unicode string. If the string is not in UTF16(LE) format, internal conversion will occur.
		  
		  //@ You should rarely see the compatibility normalizations (NFKC, NFKD) but rather canonical ones (NFC, NFD).
		  //@ NFC is usually referred to as "Composed" or "Precomposed" and NFD as "Decomposed"
		  
		  static forms() as string = Array( "NFKD", "NFKC", "NFD", "NFC" )
		  
		  dim Result as boolean
		  dim enc as TextEncoding = s.Encoding
		  dim ut16 as string
		  
		  if enc=nil OR enc.base<>256 then //Not Unicode
		    return   ""
		  end if
		  
		  if enc.format=0 OR enc.format=5 then //Encoding must be UTF16 or UTF16LE for ICU
		    ut16 = s
		  else
		    ut16 = s.ConvertEncoding( Encodings.UTF16 )
		  end if
		  
		  for i as integer = 3 downto 0
		    Result = CheckNormalization( ut16, i )
		    if Result then //Found it
		      return   forms( i )
		    end if
		  next
		  
		  //Still no identification
		  return   ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  
		  #if not TargetWin32
		    soft declare function unorm2_getInstance lib "libicucore.dylib" ( packageName as Ptr, name as CString, mode as integer, byref pError as integer ) as Ptr
		    
		    dim err as integer
		    
		    if inited then return
		    
		    Normalizers( 0 ) = unorm2_getInstance( nil, "nfkc", 1, err )  //NFKD
		    'if err<>0 then reporterror   "Couldn't get Normalizer NFKD"
		    Normalizers( 1 ) = unorm2_getInstance( nil, "nfkc", 0, err )  //NFKC
		    'if err<>0 then reporterror   "Couldn't get Normalizer NFKC"
		    Normalizers( 2 ) = unorm2_getInstance( nil, "nfc", 1, err )  //NFD
		    'if err<>0 then reporterror   "Couldn't get Normalizer NFD"
		    Normalizers( 3 ) = unorm2_getInstance( nil, "nfc", 0, err )  //NFC
		    'if err<>0 then reporterror   "Couldn't get Normalizer NFC"
		    
		    inited = true
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsUnicodeNFC(extends s as String) As Boolean
		  //# Determines whether the passed string is canonically-precomposed Unicode or not. If the string is not UTF16(LE), it is internally converted.
		  
		  //@ If this function returns true, IsUnicodeNFKC is usually true as well.
		  
		  return   CheckNormalization( s, 3 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsUnicodeNFD(extends s as String) As Boolean
		  //# Determines whether the passed string is canonically-decomposed Unicode or not. If the string is not UTF16(LE), it is internally converted.
		  
		  //@ If this function returns true, IsUnicodeNFKD is usually true as well.
		  
		  return   CheckNormalization( s, 2 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsUnicodeNFKC(extends s as String) As Boolean
		  //# Determines whether the passed string is compatibility-precomposed Unicode or not. If the string is not UTF16(LE), it is internally converted.
		  
		  //@ If this function returns true, IsUnicodeNFC is usually true as well.
		  
		  return   CheckNormalization( s, 1 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsUnicodeNFKD(extends s as String) As Boolean
		  //# Determines whether the passed string is compatibility-decomposed Unicode or not. If the string is not UTF16(LE), it is internally converted.
		  
		  //@ If this function returns true, IsUnicodeNFD is usually true as well.
		  
		  return   CheckNormalization( s, 0 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MacNormalizeUnicode(extends s as string, form as String) As string
		  //# Equivalent to NormalizeUnicode but uses CoreFoundation.
		  
		  #if TargetMacOS
		    static forms() as string = Array( "NFD", "NFKD", "NFC", "NFKC" )
		    
		    declare sub CFStringNormalize Lib "Carbon" (strg as Ptr, form as integer)
		    
		    dim normidx as integer = forms.IndexOf( form )
		    dim myString as new CoreFoundation.CFMutableString( s )
		    
		    if normidx<>-1 then
		      CFStringNormalize( myString, normidx )
		      return  myString.VariantValue
		      
		    else
		      return  ""
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Normalize(s as string, normidx as integer) As string
		  
		  if not inited then
		    Init
		  end if
		  
		  soft declare function unorm2_normalize lib LibICU ( norm2 as Ptr, s as Ptr, length as Int32, dest as Ptr, capacity as Int32, byref pError as integer) as int32
		  
		  dim err as integer
		  dim mb as MemoryBlock
		  dim result as MemoryBlock
		  dim resultLen as Int32
		  dim norm as Ptr = Normalizers( normidx )
		  dim enc as TextEncoding
		  dim ut16 as string
		  
		  enc = Encoding( s )
		  
		  if enc=nil OR enc.base<>256 then //Not Unicode
		    return   s
		  end if
		  
		  if enc.format=0 OR enc.format=5 then //Encoding must be UTF16 or UTF16LE for ICU
		    ut16 = s
		  else
		    ut16 = s.ConvertEncoding( Encodings.UTF16 )
		  end if
		  
		  mb = ut16
		  result = new MemoryBlock( mb.Size * 2 )
		  
		  resultLen = unorm2_normalize( norm, mb, mb.Size \ 2, result, result.Size, err )
		  
		  if err=0 then
		    ut16 = DefineEncoding( result.StringValue( 0, resultLen * 2 ), Encodings.UTF16 )
		    if NOT ( enc.format=0 OR enc.format=5 ) then
		      return   ut16.ConvertEncoding( enc )
		    else
		      return   ut16
		    end if
		  else
		    'ReportError   "Normalize error", err
		    return  ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalizeUnicode(extends s as string, form as String) As string
		  //# Normalizes the passed Unicode string given the specified form (NFC, NFD, NFKC or NFKD)
		  
		  //@ If the passed string is not UTF16(LE), a double encoding conversion will occur internally
		  
		  static forms() as string = Array( "NFKD", "NFKC", "NFD", "NFC" )
		  
		  dim normidx as integer = forms.IndexOf( form )
		  
		  if normidx<>-1 then
		    return   Normalize( s, normidx )
		    
		  else
		    return  ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function QuickCheckNormalization(s as string, normidx as integer) As integer
		  
		  if not inited then
		    Init
		  end if
		  
		  soft declare function unorm2_quickCheck lib LibICU ( norm2 as Ptr, s as Ptr, length as Int32, byref pError as integer) as integer
		  
		  dim err as integer
		  dim mb as MemoryBlock = s
		  dim result as integer
		  dim norm as Ptr = Normalizers( normidx )
		  
		  result = unorm2_quickCheck( norm, mb, mb.Size \ 2, err )
		  
		  if err=0 then
		    return  result
		  else
		    return  -1
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnicodeLength(extends s as string) As integer
		  //# Returns the number of characters for any Unicode string. If the string is not UTF16(LE) or is Decomposed Unicode, it will be converted.
		  
		  //@ For non-Unicode strings, this method just returns Len( s )
		  
		  soft declare function u_strlen lib LibICU (str as CString) as int32
		  
		  dim t as MemoryBlock
		  dim ut16 as string
		  dim enc as TextEncoding = s.Encoding
		  
		  if enc=nil OR enc.base<>256 then //Not Unicode
		    return   len( s )
		  end if
		  
		  if enc.format=0 OR enc.format=5 then //Encoding must be UTF16 or UTF16LE for ICU
		    ut16 = s + Encodings.UTF16.Chr( 0 )
		  else
		    ut16 = ut16 + Chr( 0 ) + Chr( 0 )
		    ut16 = s.ConvertEncoding( Encodings.UTF16 )
		  end if
		  
		  if ut16.IsUnicodeNFD OR ut16.IsUnicodeNFKD then //Result will be incorrect for decomposed Unicode strings
		    t = ut16.NormalizeUnicode( "NFC" )
		  else
		    t = ut16
		  end if
		  
		  return  u_strlen( t )
		End Function
	#tag EndMethod


	#tag Note, Name = Unicode Normalization Forms
		Unicode characters may be represented differently, i.e. by different sequences of characters. See Unicode Standard Annex #15 at http://unicode.org/reports/tr15/
		
		This module allows you to discriminate between the different Normalization Forms (precomposed/decomposed and canonical/compatibility)
		and convert between those forms.
		
		As most methods are based on the cross-platform ICU library (see http://site.icu-project.org/ ), you should be able to use those methods on any platform.
		
		ABOUT SPEED:
		ICU mostly uses UTF16(LE) strings while Real Studio natively uses UTF8. As a consequence, many calls will trigger internal TextEncoding conversion which will impair
		performance on large strings or on a large number of strings.
		
		On MAC OS X:
		Mac OS X mostly uses the decomposed form while Real Studio uses the precomposed form. For example, a file name copied from the Finder will be in decomposed
		form and you can get into trouble if you want to get its length or combine it with another string.
	#tag EndNote


	#tag Property, Flags = &h21
		Private inited As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Normalizers(3) As Ptr
	#tag EndProperty


	#tag Constant, Name = LibICU, Type = String, Dynamic = False, Default = \"libicucore.dylib", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"libicucore.dylib"
	#tag EndConstant


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
