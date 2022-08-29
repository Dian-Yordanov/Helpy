/*
AutoHotkey Version: 1.1.13.01
Language:   English
Platform:   Windows XP
Author:     JPV alias Oldman <myemail@nowhere.com>

Script Function:
				Test Scroll Bar 1 without keyboard and wheel navigation
*/

#SingleInstance force
#NoEnv            ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input    ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetFormat, IntegerFast, D
SetWorkingDir, %A_ScriptDir%  ; Ensures a consistent starting directory.
;------------------------------------------------------------------------------
; Required to leave in the hands subroutine to finish before any interruption,
; especially the 'GuiSize' window events.
;------------------------------------------------------------------------------
Critical

#Include %A_ScriptDir%\Directory_For_ScrollBar_example.ahk\Lib\Stddef.1.1.12.0.ahk
; #Include %A_ScriptDir%\Test Scroll Bar 1 - keys_h.ahk
#Include %A_ScriptDir%\Directory_For_ScrollBar_example.ahk\Lib\__MessageLib.ahk
#Include %A_ScriptDir%\Directory_For_ScrollBar_example.ahk\Lib\__GuiScrollBarClass.ahk



; #Include <Stddef.1.1.12.0>
; #Include *i Test Scroll Bar 1 - keys_h.ahk
; #Include <__MessageLib>
; #Include <__GuiScrollBarClass>

TraceLevel=0

; gosub, Initialization
; gosub, Main
; return

; Main:

	global WS_HSCROLL=0x100000, WS_VSCROLL=0x200000

	if TraceLevel
		SendTrace(A_ThisLabel, "START")
	
	; GuiTitle := "Test Scroll Bar 1 without navigation key"
	
;	Gui, Main:new, HwndMainHwnd, % GuiTitle

	Gui, Main:new, HwndMainHwnd +Resize

;	Gui, Main:new, HwndMainHwnd +Resize +%WS_HSCROLL% +%WS_VSCROLL%, % GuiTitle
;	Gui, Font, s10, Verdana

	Gui, Main:Add, Edit, W100 X10 HwndEdit1Hwnd vEdit1, Text1
	Gui, Main:Add, Edit, W300 X+5        vEdit2    , Text2
	Gui, Main:Add, Text, W25  X10        vText1    , Text
	Gui, Main:Add, Edit, W300 X+5 R5     vEdit3    , Text3 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30        vEdit4    , Text4
	Gui, Main:Add, Edit, W300 X25 R5     vEdit5    , Text5 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X20        vEdit6    , Text6
	Gui, Main:Add, Edit, W300 X25 R5     vEdit7    , Text7 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30        vEdit8    , Text8
	Gui, Main:Add, Edit, W200 X35 R5     vEdit9    , Text9 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30        vEdit10   , Text10
	Gui, Main:Add, Edit, W300 X35 R5     vEdit11   , Text11 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30        vEdit12   , Text12
	Gui, Main:Add, Edit, W300 X25 R5     vEdit13   , Text13 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
    Gui, Main:Add, Edit, W200 X35 R5         , Text9 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text10
	Gui, Main:Add, Edit, W300 X35 R5        , Text11 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text12
	Gui, Main:Add, Edit, W300 X25 R5        , Text13 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
    Gui, Main:Add, Edit, W200 X35 R5         , Text9 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text10
	Gui, Main:Add, Edit, W300 X35 R5        , Text11 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text12
	Gui, Main:Add, Edit, W300 X25 R5        , Text13 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
    Gui, Main:Add, Edit, W200 X35 R5         , Text9 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text10
	Gui, Main:Add, Edit, W300 X35 R5        , Text11 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text12
	Gui, Main:Add, Edit, W300 X25 R5        , Text13 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
    Gui, Main:Add, Edit, W200 X35 R5         , Text9 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text10
	Gui, Main:Add, Edit, W300 X35 R5        , Text11 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	Gui, Main:Add, Edit, W300 X30           , Text12
	Gui, Main:Add, Edit, W300 X25 R5        , Text13 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl
	
;	Gui, Add, Edit, W300 X20        vEdit14   , Text14
;	Gui, Add, Edit, W300 X25 R5     vEdit15   , Text15 `na`nb`nc`nd`ne`nf`ng`nh`ni`nj`nk`nl

	; Gui, Add, Button, H20 Default, &Nothing1
	; Gui, Add, Button, H20 X+10   , &Nothing2
	; Gui, Add, Button, H20 X+10   , &Cancel

	if !MainGui := new GuiScrollBarClass(MainHwnd)
;	if !MainGui := new GuiScrollBarClass(MainHwnd, 2)
;	if !MainGui := new GuiScrollBarClass(MainHwnd, Edit1Hwnd)
	{
		gosub, Termination
		ExitApp
	}
	
	if !MainGui.Show()							; centered
;	if !MainGui.Show("X50 Y30")				; X50, Y30 discarded ==> centered
;	if !MainGui.Show("X+50 Y+30 Center")	; Right 50, Down 30, Center discarded
	; if !MainGui.Show("W1920 H1200")			; screen emulatation 1920x1200
;	if !MainGui.Show("W1280 H1024")			; screen emulatation 1280x1024
;	if !MainGui.Show("W1200 H800")			; screen emulatation 1200x800
;	if !MainGui.Show("W1024 H768")			; screen emulatation 1024x768
;	if !MainGui.Show("W640 H480")				; screen emulatation 640x480
	{
		gosub, Termination
		ExitApp
	}
	
	return

MainGuiClose:
MainGuiEscape:
MainButtonCancel:
	if TraceLevel
		SendTrace(A_ThisLabel)
	
	Gui, Main:Destroy
	
	gosub, Termination
	ExitApp

MainGuiSize:
	if TraceLevel
		SendTrace(A_ThisLabel)
	
	if !IsObject(MainGui)
		return
	
	if !MainGui.UpdateScrollBars()
	{
		gosub, Termination
		ExitApp
	}
		
	return

; MainButtonNothing1:
; 	Enum_ExStyle := {}
	
; 	WinGet, myControlList, ControlList, Test Scroll Bar 1 without navigation key
	
; 	Loop, Parse, myControlList, `n
; 	{
; 		ControlGet, ExStyle, ExStyle,, %A_LoopField%, Test Scroll Bar 1 without navigation key
		
; 		if ExStyle
; 			Enum_ExStyle[A_LoopField] := ExStyle
; 	}
	
; 	for controlName, ExStyle in Enum_ExStyle
; 		SendTrace(A_ThisLabel, controlName, ExStyle)
	
; 	if TraceLevel
; 		SendTrace(A_ThisLabel, name)
	
; 	return

; MainButtonNothing2:
; 	GuiControlGet, name, Focus
	
; 	MsgBox, % "Nothing2 is launched - " name
	
; 	if TraceLevel
; 		SendTrace(A_ThisLabel, name)
	
; 	return

; Initialization:
; 	; Window style constants
; 	global WS_HSCROLL=0x100000, WS_VSCROLL=0x200000
	
; 	return

Termination:
	;----------------------------------------------------------------------------
	; Required to free the object
	;----------------------------------------------------------------------------
	if IsObject(MainGui)
		MainGui.StopScrollBars()
	
	MainGui := ""
	return




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