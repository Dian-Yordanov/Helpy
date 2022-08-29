/*
Title: MessageLib (v0.0 December 27, 2013)

Introduction
------------

	'MessageLib' enables to manage the display of the info and error messages in a standard
	way.
	
Compatibility
-------------

   This library was designed to run on AutoHotkey v1.1.06+ (32 and 64-bit)), on Windows XP
	and greater.

Links
-----

Credit
------



How to used it
--------------

	All the messages have to be placed in the Enum_ProgramMessage array.
	
	You can call the ShowProgramMessage() function to let the system manage the display of
	the dialog boxes or
	you can call the GetProgramMessage() function if you want to manage the	messages.
	
	In both cases, the functions return the message number and the message text completed
	with the additional parameters (up to 3).

Author
------

	JPV alias Oldman
*/

#Include %A_ScriptDir%\Directory_For_ScrollBar_example.ahk\Lib\SendTrace.ahk

global Enum_ProgramMessage := {1000: "Unknown error (%s)."
	, 1001: "File does not exist`n%s."
	, 1002: "%s array is missing."
	, 1003: "Your operating system (%s) is no longer supported by this AutoHotkey version %s."
	, 1004: "It is possible that the script is not fully operational on your AutoHotkey version %s.`nDo you want to continue anyway ?"
	, 1006: "%s array is empty."
	, 1007: "SysGet command failed for %s(%s)."
	, 1008: "%s coordinates (%s,%s) are outside the screen area."
	, 1009: "Gui handle parameter is missing."
	, 1010: "The control number (%s) is invalid."
	, 1011: "GetWindowInfo() failed due to LastError %s."
	, 1012: "The control list handle is empty."
	, 1013: "PostMessage, WM_QUIT to %s`nfailed due to error %s."
	, 1014: "Invalid ScrollBarSpeed parameter (%s). Must be between 1 and 4."
	, 1015: "SendMessage, WM_COPYDATA to %s`nfailed due to error %s - LastError %s."
	, 1016: "ScrollWindowEx() failed due to LastError %s."
	, 1017: "%s`ncannot be launched due to LastError %s."
	, 1018: "WinWait timed out failed for`n%s."
	, 1019: "GetScrollInfo(%s) failed due to LastError %s."
	, 1020: "SendMessage, WM_CLOSE to %s`nfailed due to error %s."}

global ProgramMessage1=""		; message text with LF
global ProgramMessage2=""		; message text without LF

if !VerifyProgramMessage(MinAhkVersion)
	ExitApp

/*
	==========================================================================================
	ShowProgramMessage(label, options, msgnr[, field1="", field2="", field3="", timeout=""])
	
		label   = name of the calling procedure or function (in)
		options = options to be used by the MsgBox command (in)
		msgnr   = message number (in)
		field1  = field 1 to be insert in the message (in optional)
		field2  = field 2 to be insert in the message (in optional)
		field3  = field 3 to be insert in the message (in optional)
		timeout = MsgBox timeout (in optional)
	==========================================================================================
*/
ShowProgramMessage(_label, _options, _msgnr, ByRef _field1="", ByRef _field2=""
								 , ByRef _field3="", _timeout="")
{
	
	msgnr := _msgnr
	
	if (_options < 0)
		_options := - _options
	else
	{
		if !GetProgramMessage2(_msgnr, _field1, _field2, _field3)
		{
			msgnr := 1000
			
			if !GetProgramMessage2(1000, _msgnr)
			{
				msgnr := 1006
				
				
				
				if !GetProgramMessage2(1006, "Enum_ProgramMessage")
				{
					ProgramMessage1 := "Enum_ProgramMessage array is empty."
					ProgramMessage2 := ProgramMessage1
				}
			}
			
			_options := 0x10
		}
	}
	
	SendTrace(_label, msgnr " - " ProgramMessage2)
	
	iconOption := _options & 0xF0
	
	if (iconOption = 0x10)			; Icon Hand (stop/error)
		MsgBox, % _options, % ScriptName, % ProgramMessage1 "`nThe program is interrupted."
	
	else if (iconOption = 0x40)	; Icon Asterisk (info)
		MsgBox, % _options, % ScriptName, % ProgramMessage1, %_timeout%
	
	else
		MsgBox, % _options, % ScriptName, % ProgramMessage1
	
	return msgnr
}

/*
	==========================================================================================
	GetProgramMessage(msgnr[, field1="", field2="", field3=""])
	
		msgnr  = message number (in)
		field1 = field 1 to be insert in the message (in optional)
		field2 = field 2 to be insert in the message (in optional)
		field3 = field 3 to be insert in the message (in optional)
	==========================================================================================
*/
GetProgramMessage(_msgnr, ByRef _field1="", ByRef _field2="", ByRef _field3="")
{
	msgnr := _msgnr
	
	if !GetProgramMessage2(_msgnr, _field1, _field2, _field3)
	{
		msgnr := 1000
		
		if !GetProgramMessage2(1000, _msgnr)
		{
			msgnr := 1006
			
			if !GetProgramMessage2(1006, "Enum_ProgramMessage")
			{
				ProgramMessage1 := "Enum_ProgramMessage array is empty."
				ProgramMessage2 := ProgramMessage1
			}
		}
	}
	
	return msgnr
}

/*
	==========================================================================================
	GetProgramMessage2(msgnr[, field1="", field2="", field3=""])
	
		msgnr  = message number (in)
		field1 = field 1 to be insert in the message (in optional)
		field2 = field 2 to be insert in the message (in optional)
		field3 = field 3 to be insert in the message (in optional)
	==========================================================================================
*/
GetProgramMessage2(_msgnr, ByRef _field1="", ByRef _field2="", ByRef _field3="")
{
	if !ProgramMessage1 := Enum_ProgramMessage[_msgnr]
		return false
	
	if (_field1 <> "")
		StringReplace, ProgramMessage1, ProgramMessage1, `%s, %_field1%
	
	if (_field2 <> "")
		StringReplace, ProgramMessage1, ProgramMessage1, `%s, %_field2%
	
	if (_field3 <> "")
		StringReplace, ProgramMessage1, ProgramMessage1, `%s, %_field3%
	
	;--------------------------------------
	; Replace LF in `n (1 char in 2 chars)
	;--------------------------------------
	StringReplace, ProgramMessage2, ProgramMessage1, `n, ``n, all
	ErrorLevel := 0
	
	return true
}

/*
	=========================================================================================
	VerifyProgramMessage(ahkversion)
	
		ahkversion : AutoHotkey version required to run the script (in)
		
	Verify some requirements to run the script.
	=========================================================================================
*/
VerifyProgramMessage(ByRef _ahkversion)
{
	if TraceLevel
		SendTrace(A_ThisFunc, "START")
	
	;-----------------------------------------------------------------------------------
	; Enum_ProgramMessage array does not exist, then the messages does not exist either
	;-----------------------------------------------------------------------------------
	if !IsObject(Enum_ProgramMessage)
	{
		ProgramMessage1 := "Enum_ProgramMessage array is missing."
		ProgramMessage2 := ProgramMessage1
		ShowProgramMessage(A_ThisFunc, -16, 1002)
		return false
	}
	
	;----------------------
	; Check the OS Version
	;----------------------
	if A_OSVersion in WIN_NT4,WIN_95,WIN_98,WIN_ME
	{
		ShowProgramMessage(A_ThisFunc, 16, 1003, A_OSVersion, A_AhkVersion)
		return false
	}
	
	;------------------------------
	; Check the AutoHotkey Version
	;------------------------------
	if (CompareAhkVersion(A_AhkVersion, _ahkversion) = "<")
	{
		ShowProgramMessage(A_ThisFunc, 49, 1004, A_AhkVersion)
		
		IfMsgBox, Cancel
			return false
	}
	
	if TraceLevel
		SendTrace(A_ThisFunc, "END")
	
	return true
}

/*
	=========================================================================================
	CompareAhkVersion(version1, version2)
	
		version1 : AutoHotkey version 1
		version2 : AutoHotkey version 2
		
	Compare AutoHotkey version number.
	=========================================================================================
*/
CompareAhkVersion(ByRef _version1, ByRef _version2)
{
	Loop, Parse, _version1, .
		version1%A_Index% := A_LoopField
	
	Loop, Parse, _version2, .
		version2%A_Index% := A_LoopField
	
	Loop, 4
		if (version1%A_Index% < version2%A_Index%)
			return "<"
		else
			if (version1%A_Index% > version2%A_Index%)
				return ">"
	
	return "="
}
