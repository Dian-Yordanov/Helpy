#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

global AHI := new AutoHotInterception()

keyboardId := AHI.GetKeyboardId(0x046D, 0xC232)

AHI.SubscribeKey(keyboardId, GetKeySC("2"), true, Func("KeyEvent"))

cm1 := AHI.CreateContextManager(keyboardId)
return

KeyEvent(state){
	static ctrlCode := GetKeySC("Ctrl")
	global keyboardId
	;~ AHI.SendKeyEvent(keyboardId, ctrlCode, state)
	ToolTip % "State: " state
}

#if cm1.IsActive
::aaa::JACKPOT
NumpadEnd:: 
	ToolTip % "KEY DOWN EVENT @ " A_TickCount
	return
	
NumpadEnd up::
	ToolTip % "KEY UP EVENT @ " A_TickCount
	return
#if

^Esc::
	ExitApp