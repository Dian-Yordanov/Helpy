#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()

keyboardId := AHI.GetDeviceIdFromHandle(false, "HID\VID_046D&PID_C232", 1) 
; keyboardId := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100", 1) 
; id2 := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100", 1) 
AHI.SubscribeKey(keyboardId, GetKeySC("NumpadEnd"), true, Func("KeyEvent"))
return

KeyEvent(){
	SendInput {Lshift down}
    sleep 1
    SendInput {Lshift up}
}

^Esc::
	ExitApp


