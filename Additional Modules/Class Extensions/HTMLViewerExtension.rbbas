#tag Module
Protected Module HTMLViewerExtension
	#tag Method, Flags = &h0
		Sub AlignCenter(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub alignCenter lib CocoaLib selector "alignCenter:" (obj_id as Integer, sender as Integer)
		    
		    alignCenter(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlignJustified(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub alignJustified lib CocoaLib selector "alignJustified:" (obj_id as Integer, sender as Integer)
		    
		    alignJustified(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlignLeft(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub alignLeft lib CocoaLib selector "alignLeft:" (obj_id as Integer, sender as Integer)
		    
		    alignLeft(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AlignRight(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub alignRight lib CocoaLib selector "alignRight:" (obj_id as Integer, sender as Integer)
		    
		    alignRight(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ApplicationNameForUserAgent(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function applicationNameForUserAgent lib CocoaLib selector "applicationNameForUserAgent" (obj_id as Integer) as CFStringRef
		    
		    return applicationNameForUserAgent(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ApplicationNameForUserAgent(Extends v as HTMLViewer, Assigns appName as String)
		  
		  #if TargetCocoa
		    
		    declare sub setApplicationNameForUserAgent lib CocoaLib selector "setApplicationNameForUserAgent:" (obj_id as Integer, appName as CFStringRef)
		    
		    setApplicationNameForUserAgent(v.Handle, appName)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused appName
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanGoBack(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function canGoBack lib CocoaLib selector "canGoBack" (obj_id as Integer) as Boolean
		    
		    return canGoBack(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanGoForward(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function canGoForward lib CocoaLib selector "canGoForward" (obj_id as Integer) as Boolean
		    
		    return canGoForward(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanMakeTextLarger(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function canMakeTextLarger lib CocoaLib selector "canMakeTextLarger" (obj_id as Integer) as Boolean
		    
		    return canMakeTextLarger(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanMakeTextSmaller(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function canMakeTextSmaller lib CocoaLib selector "canMakeTextSmaller" (obj_id as Integer) as Boolean
		    
		    return canMakeTextSmaller(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanMakeTextStandardSize(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function canMakeTextStandardSize lib CocoaLib selector "canMakeTextStandardSize" (obj_id as Integer) as Boolean
		    
		    return canMakeTextStandardSize(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeFont(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub changeFont lib CocoaLib selector "changeFont:" (obj_id as Integer, sender as Integer)
		    
		    changeFont(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckSpelling(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub checkSpelling lib CocoaLib selector "checkSpelling:" (obj_id as Integer, sender as Integer)
		    
		    checkSpelling(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContinuousSpellCheckingEnabled(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isContinuousSpellCheckingEnabled lib CocoaLib selector "isContinuousSpellCheckingEnabled" (obj_id as Integer) as Boolean
		    
		    return isContinuousSpellCheckingEnabled(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContinuousSpellCheckingEnabled(Extends v as HTMLViewer, Assigns flag as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setContinuousSpellCheckingEnabled lib CocoaLib selector "setContinuousSpellCheckingEnabled:" (obj_id as Integer, flag as Boolean)
		    
		    setContinuousSpellCheckingEnabled(v.Handle, flag)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused flag
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Copy(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub copy lib CocoaLib selector "copy:" (obj_id as Integer, sender as Integer)
		    
		    copy(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyFont(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub copyFont lib CocoaLib selector "copyFont:" (obj_id as Integer, sender as Integer)
		    
		    copyFont(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CustomTextEncodingName(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function customTextEncodingName lib CocoaLib selector "customTextEncodingName" (obj_id as Integer) as CFStringRef
		    
		    return customTextEncodingName(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomTextEncodingName(Extends v as HTMLViewer, Assigns encodingName as String)
		  
		  #if TargetCocoa
		    
		    declare sub setCustomTextEncodingName lib CocoaLib selector "setCustomTextEncodingName:" (obj_id as Integer, encodingName as CFStringRef)
		    
		    setCustomTextEncodingName(v.Handle, encodingName)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused encodingName
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CustomUserAgent(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function customUserAgent lib CocoaLib selector "customUserAgent" (obj_id as Integer) as CFStringRef
		    
		    return customUserAgent(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CustomUserAgent(Extends v as HTMLViewer, Assigns userAgent as String)
		  
		  #if TargetCocoa
		    
		    declare sub setCustomUserAgent lib CocoaLib selector "setCustomUserAgent:" (obj_id as Integer, userAgent as CFStringRef)
		    
		    setCustomUserAgent(v.Handle, userAgent)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused userAgent
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Cut(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub cut lib CocoaLib selector "cut:" (obj_id as Integer, sender as Integer)
		    
		    cut(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub delete lib CocoaLib selector "delete:" (obj_id as Integer, sender as Integer)
		    
		    delete(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteSelection(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub deleteSelection lib CocoaLib selector "deleteSelection" (obj_id as Integer)
		    
		    deleteSelection(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawsBackground(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function drawsBackground lib CocoaLib selector "drawsBackground" (obj_id as Integer) as Boolean
		    
		    return drawsBackground(v.handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawsBackground(Extends v as HTMLViewer, Assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setDrawsBackground lib CocoaLib selector "setDrawsBackground:" (obj_id as Integer, flag as Boolean)
		    
		    setDrawsBackground(v.handle, value)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused value
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Editable(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isEditable lib CocoaLib selector "isEditable" (obj_id as Integer) as Boolean
		    
		    return isEditable(v.handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Editable(Extends v as HTMLViewer, Assigns value as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setEditable lib CocoaLib selector "setEditable:" (obj_id as Integer, flag as Boolean)
		    
		    setEditable(v.handle, value)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused value
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EstimatedProgress(Extends v as HTMLViewer) As Double
		  
		  #if TargetCocoa
		    
		    declare function estimatedProgress lib CocoaLib selector "estimatedProgress" (obj_id as Integer) as Double
		    
		    return estimatedProgress(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EvaluateJavaScript(Extends v as HTMLViewer, script as String) As String
		  
		  #if TargetCocoa
		    
		    declare function stringByEvaluatingJavaScriptFromString lib CocoaLib selector "stringByEvaluatingJavaScriptFromString:" (obj_id as Integer, script as CFStringRef) as CFStringRef
		    
		    return stringByEvaluatingJavaScriptFromString(v.Handle, script)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused script
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoBack(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub goBack lib CocoaLib selector "goBack:" (obj_id as Integer, sender as Integer)
		    
		    goBack(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GoBack(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function goBack lib CocoaLib selector "goBack" (obj_id as Integer) as Boolean
		    
		    return goBack(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GoForward(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub goForward lib CocoaLib selector "goForward:" (obj_id as Integer, sender as Integer)
		    
		    goForward(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GoForward(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function goForward lib CocoaLib selector "goForward" (obj_id as Integer) as Boolean
		    
		    return goForward(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isLoading(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function isLoading lib CocoaLib selector "isLoading" (obj_id as Integer) as Boolean
		    
		    return isLoading(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MainFrameIcon(Extends v as HTMLViewer) As Picture
		  
		  #if TargetCocoa
		    
		    declare function mainFrameIcon lib CocoaLib selector "mainFrameIcon" (obj_id as Integer) as Ptr
		    
		    return new NSImage(mainFrameIcon(v.handle))
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MainFrameTitle(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function mainFrameTitle lib CocoaLib selector "mainFrameTitle" (obj_id as Integer) as CFStringRef
		    
		    return mainFrameTitle(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MainFrameURL(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function mainFrameURL lib CocoaLib selector "mainFrameURL" (obj_id as Integer) as CFStringRef
		    
		    return mainFrameURL(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MainFrameURL(Extends v as HTMLViewer, Assigns URLString as String)
		  
		  #if TargetCocoa
		    
		    declare sub setMainFrameURL lib CocoaLib selector "setMainFrameURL:" (obj_id as Integer, URLString as CFStringRef)
		    
		    setMainFrameURL(v.Handle, URLString)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused URLString
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaintainsBackForwardList(Extends v as HTMLViewer, flag as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setMaintainsBackForwardList lib CocoaLib selector "setMaintainsBackForwardList:" (obj_id as Integer, flag as Boolean)
		    
		    setMaintainsBackForwardList(v.Handle, flag)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused flag
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MaintainsInactiveSelection(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function maintainsInactiveSelection lib CocoaLib selector "maintainsInactiveSelection" (obj_id as Integer) as Boolean
		    
		    return maintainsInactiveSelection(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextLarger(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub makeTextLarger lib CocoaLib selector "makeTextLarger:" (obj_id as Integer, sender as Integer)
		    
		    makeTextLarger(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextSmaller(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub makeTextSmaller lib CocoaLib selector "makeTextSmaller:" (obj_id as Integer, sender as Integer)
		    
		    makeTextSmaller(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeTextStandardSize(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub makeTextStandardSize lib CocoaLib selector "makeTextStandardSize:" (obj_id as Integer, sender as Integer)
		    
		    makeTextStandardSize(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MediaStyle(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function mediaStyle lib CocoaLib selector "mediaStyle" (obj_id as Integer) as CFStringRef
		    
		    return mediaStyle(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MediaStyle(Extends v as HTMLViewer, Assigns mediaStyle as String)
		  
		  #if TargetCocoa
		    
		    declare sub setMediaStyle lib CocoaLib selector "setMediaStyle:" (obj_id as Integer, mediaStyle as CFStringRef)
		    
		    setMediaStyle(v.Handle, mediaStyle)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused mediaStyle
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveDragCaretToPoint(Extends v as HTMLViewer, x as Single, y as Single)
		  
		  #if TargetCocoa
		    
		    dim point as Cocoa.NSPoint
		    point.x = x
		    point.y = y
		    
		    declare sub moveDragCaretToPoint lib CocoaLib selector "moveDragCaretToPoint:" (obj_id as Integer, point as Cocoa.NSPoint)
		    
		    moveDragCaretToPoint(v.handle, point)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused x
		    #pragma unused y
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToBeginningOfSentence(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub moveToBeginningOfSentence lib CocoaLib selector "moveToBeginningOfSentence:" (obj_id as Integer, sender as Integer)
		    
		    moveToBeginningOfSentence(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToBeginningOfSentenceAndModifySelection(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub moveToBeginningOfSentenceAndModifySelection lib CocoaLib selector "moveToBeginningOfSentenceAndModifySelection:" (obj_id as Integer, sender as Integer)
		    
		    moveToBeginningOfSentenceAndModifySelection(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToEndOfSentence(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub moveToEndOfSentence lib CocoaLib selector "moveToEndOfSentence:" (obj_id as Integer, sender as Integer)
		    
		    moveToEndOfSentence(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToEndOfSentenceAndModifySelection(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub moveToEndOfSentenceAndModifySelection lib CocoaLib selector "moveToEndOfSentenceAndModifySelection:" (obj_id as Integer, sender as Integer)
		    
		    moveToEndOfSentenceAndModifySelection(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Paste(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub paste lib CocoaLib selector "paste:" (obj_id as Integer, sender as Integer)
		    
		    paste(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteAsPlainText(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub pasteAsPlainText lib CocoaLib selector "pasteAsPlainText:" (obj_id as Integer, sender as Integer)
		    
		    pasteAsPlainText(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteAsRichText(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub pasteAsRichText lib CocoaLib selector "pasteAsRichText:" (obj_id as Integer, sender as Integer)
		    
		    pasteAsRichText(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteFont(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub pasteFont lib CocoaLib selector "pasteFont:" (obj_id as Integer, sender as Integer)
		    
		    pasteFont(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PerformFindPanelAction(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub performFindPanelAction lib CocoaLib selector "performFindPanelAction:" (obj_id as Integer, sender as Integer)
		    
		    performFindPanelAction(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PreferencesIdentifier(Extends v as HTMLViewer) As String
		  
		  #if TargetCocoa
		    
		    declare function preferencesIdentifier lib CocoaLib selector "preferencesIdentifier" (obj_id as Integer) as CFStringRef
		    
		    return preferencesIdentifier(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PreferencesIdentifier(Extends v as HTMLViewer, Assigns anIdentifier as String)
		  
		  #if TargetCocoa
		    
		    declare sub setPreferencesIdentifier lib CocoaLib selector "setPreferencesIdentifier:" (obj_id as Integer, anIdentifier as CFStringRef)
		    
		    setPreferencesIdentifier(v.Handle, anIdentifier)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused anIdentifier
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reload(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub reload lib CocoaLib selector "reload:" (obj_id as Integer, sender as Integer)
		    
		    reload(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReloadFromOrigin(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub reloadFromOrigin lib CocoaLib selector "reloadFromOrigin:" (obj_id as Integer, sender as Integer)
		    
		    reloadFromOrigin(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveDragCaret(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub removeDragCaret lib CocoaLib selector "removeDragCaret" (obj_id as Integer)
		    
		    removeDragCaret(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReplaceSelectionWithMarkupString(Extends v as HTMLViewer, markupString as String)
		  
		  #if TargetCocoa
		    
		    declare sub replaceSelectionWithMarkupString lib CocoaLib selector "replaceSelectionWithMarkupString:" (obj_id as Integer, markupString as CFStringRef)
		    
		    replaceSelectionWithMarkupString(v.Handle, markupString)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused markupString
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReplaceSelectionWithText(Extends v as HTMLViewer, text as String)
		  
		  #if TargetCocoa
		    
		    declare sub replaceSelectionWithText lib CocoaLib selector "replaceSelectionWithText:" (obj_id as Integer, text as CFStringRef)
		    
		    replaceSelectionWithText(v.Handle, text)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused text
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SearchFor(Extends v as HTMLViewer, text as String, forward as Boolean, caseSensitive as Boolean, wrap as Boolean) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function searchFor lib CocoaLib selector "searchFor:direction:caseSensitive:wrap:" (obj_id as Integer, _
		    text as CFStringRef, _
		    forward as Boolean, _
		    caseSensitive as Boolean, _
		    wrap as Boolean) as Boolean
		    
		    return searchFor(v.Handle, text, forward, caseSensitive, wrap)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused text
		    #pragma unused forward
		    #pragma unused caseSensitive
		    #pragma unused wrap
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectSentence(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub selectSentence lib CocoaLib selector "selectSentence:" (obj_id as Integer, sender as Integer)
		    
		    selectSentence(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldCloseWithWindow(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function shouldCloseWithWindow lib CocoaLib selector "shouldCloseWithWindow" (obj_id as Integer) as Boolean
		    
		    return shouldCloseWithWindow(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShouldCloseWithWindow(Extends v as HTMLViewer, Assigns flag as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setShouldCloseWithWindow lib CocoaLib selector "setShouldCloseWithWindow:" (obj_id as Integer, flag as Boolean)
		    
		    setShouldCloseWithWindow(v.Handle, flag)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused flag
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShouldUpdateWhileOffscreen(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function shouldUpdateWhileOffscreen lib CocoaLib selector "shouldUpdateWhileOffscreen" (obj_id as Integer) as Boolean
		    
		    return shouldUpdateWhileOffscreen(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShouldUpdateWhileOffscreen(Extends v as HTMLViewer, Assigns flag as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setShouldUpdateWhileOffscreen lib CocoaLib selector "setShouldUpdateWhileOffscreen:" (obj_id as Integer, flag as Boolean)
		    
		    setShouldUpdateWhileOffscreen(v.Handle, flag)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused flag
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowGuessPanel(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub showGuessPanel lib CocoaLib selector "showGuessPanel:" (obj_id as Integer, sender as Integer)
		    
		    showGuessPanel(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SmartInsertDeleteEnabled(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function smartInsertDeleteEnabled lib CocoaLib selector "smartInsertDeleteEnabled" (obj_id as Integer) as Boolean
		    
		    return smartInsertDeleteEnabled(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SmartInsertDeleteEnabled(Extends v as HTMLViewer, Assigns flag as Boolean)
		  
		  #if TargetCocoa
		    
		    declare sub setSmartInsertDeleteEnabled lib CocoaLib selector "setSmartInsertDeleteEnabled:" (obj_id as Integer, flag as Boolean)
		    
		    setSmartInsertDeleteEnabled(v.Handle, flag)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused flag
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SpellCheckerDocumentTag(Extends v as HTMLViewer) As Integer
		  
		  #if TargetCocoa
		    
		    declare function spellCheckerDocumentTag lib CocoaLib selector "spellCheckerDocumentTag" (obj_id as Integer) as Integer
		    
		    return spellCheckerDocumentTag(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StartSpeaking(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub startSpeaking lib CocoaLib selector "startSpeaking:" (obj_id as Integer, sender as Integer)
		    
		    startSpeaking(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopLoading(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub stopLoading lib CocoaLib selector "stopLoading:" (obj_id as Integer, sender as Integer)
		    
		    stopLoading(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopSpeaking(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub stopSpeaking lib CocoaLib selector "stopSpeaking:" (obj_id as Integer, sender as Integer)
		    
		    stopSpeaking(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SupportsTextEncoding(Extends v as HTMLViewer) As Boolean
		  
		  #if TargetCocoa
		    
		    declare function supportsTextEncoding lib CocoaLib selector "supportsTextEncoding" (obj_id as Integer) as Boolean
		    
		    return supportsTextEncoding(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextSizeMultiplier(Extends v as HTMLViewer) As Single
		  
		  #if TargetCocoa
		    
		    declare function textSizeMultiplier lib CocoaLib selector "textSizeMultiplier" (obj_id as Integer) as Single
		    
		    return textSizeMultiplier(v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextSizeMultiplier(Extends v as HTMLViewer, Assigns multiplier as Single)
		  
		  #if TargetCocoa
		    
		    declare sub setTextSizeMultiplier lib CocoaLib selector "setTextSizeMultiplier:" (obj_id as Integer, multiplier as Single)
		    
		    setTextSizeMultiplier(v.Handle, multiplier)
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused multiplier
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleContinuousSpellChecking(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub toggleContinuousSpellChecking lib CocoaLib selector "toggleContinuousSpellChecking:" (obj_id as Integer, sender as Integer)
		    
		    toggleContinuousSpellChecking(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleSmartInsertDelete(Extends v as HTMLViewer)
		  
		  #if TargetCocoa
		    
		    declare sub toggleSmartInsertDelete lib CocoaLib selector "toggleSmartInsertDelete:" (obj_id as Integer, sender as Integer)
		    
		    toggleSmartInsertDelete(v.Handle, v.Handle)
		    
		  #else
		    
		    #pragma unused v
		    
		  #endif
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserAgentForURL(Extends v as HTMLViewer, URL as String) As String
		  
		  #if TargetCocoa
		    
		    declare function userAgentForURL lib CocoaLib selector "userAgentForURL:" (obj_id as Integer, URL as Ptr) as CFStringRef
		    declare function NSClassFromString lib CocoaLib (aClassName as CFStringRef) as Ptr
		    declare function alloc lib CocoaLib selector "alloc" (classRef as Ptr) as Ptr
		    declare function initWithString lib CocoaLib selector "initWithString:" (id as Ptr, URLString as CFStringRef) as Ptr
		    
		    dim url_id as Ptr = initWithString(alloc(NSClassFromString("NSURL")), URL)
		    
		    dim ret as String = userAgentForURL(v.Handle, url_id)
		    
		    declare sub release lib CocoaLib selector "release" (id as Ptr)
		    release url_id
		    
		    return ret
		    
		  #else
		    
		    #pragma unused v
		    #pragma unused URL
		    
		  #endif
		  
		End Function
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
