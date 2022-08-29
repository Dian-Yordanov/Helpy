#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

global AHI := new AutoHotInterception()
; id1 := AHI.GetKeyboardId(0x046D, 0xC232)
; id1 := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100") 

id1 := AHI.GetDeviceIdFromHandle(false, "HID\VID_046D&PID_C232", 1) 
id2 := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100", 1) 

; id1 := AHI.GetKeyboardId(0x046D, 0xC232)

cm1 := AHI.CreateContextManager(id1)
cm1 := AHI.CreateContextManager(id2)


#if cm1.IsActive
; a::JACKPOT

b:: 
	MsgBox, "fff"
	; ToolTip % "KEY DOWN EVENT @ " A_TickCount
return

NumpadEnd:: 
	MsgBox, "fff"
	; ToolTip % "KEY DOWN EVENT @ " A_TickCount
return
	
NumpadEnd up::
	MsgBox, "fff"
	; ToolTip % "KEY UP EVENT @ " A_TickCount
return

#if

^Esc::
	ExitApp

 