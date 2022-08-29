#SingleInstance force
#Persistent
#include %A_ScriptDir%\Lib\AutoHotInterception.ahk

#MaxHotkeysPerInterval 99999999

#InstallKeybdHook
#InstallMouseHook
#UseHook

global MouseUpState

global boolean_for_double_click_1 = 0
global boolean_for_double_click_2 = 0

global AHI := new AutoHotInterception()

try  ; Attempts to execute code.
{

  keyboardId := AHI.GetDeviceIdFromHandle(false, "HID\VID_046D&PID_C232", 1) 
  MouseId := AHI.GetDeviceId(true, 0x046D, 0xC07E) 

  AHI.SubscribeMouseButton(MouseId, 5, false, Func("MouseEvent"))
  AHI.SubscribeKey(keyboardId, GetKeySC("NumpadEnd"), true, Func("KeyEvent"), 0)
  
}
catch e  ; Handles the first error/exception raised by the block above.
{
    MsgBox, An exception was thrown!`nSpecifically: %e%

    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Subscription_based_daemon.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

    WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
    Process, Close, % PID

    WinClose ahk_class AutoHotkeyGUI
}

MouseEvent(state){
  global MouseUpState
  MouseUpState := state
  settimer, resetMouseState, -500
  ; MsgBox, "ggg"
}

resetMouseState(){
  MouseUpState := 0
}

UpdateScript(){
  ; SendInput {Lctrl down}
  ; sleep, 1
  ; SendInput {s}
  ; sleep, 1
  ; SendInput {Lctrl up}

  ; FileGetAttrib,attribs,%A_ScriptFullPath%
  ; FileSetAttrib,-A,%A_ScriptFullPath%
  SplashTextOn,,,Updated script,
  Sleep,500

  SendInput {Lshift up}
  Send +
  SendInput {Rshift up}
  SendInput {shift up}
  SendInput {Lctrl up}
  SendInput {LAlt up}
  SendInput {Lwin up}
	
  Sleep,50
  
  settimer, delayed_reload_function, -5
  
}

emptry_label_to_stop_auto_execution_update_script:
return

hookCheck:
    ; sendlevel 1
    #InputLevel 100

    SendInput {Lshift up}

    SendInput {Lctrl up}
    SendInput {LAlt up}
    SendInput {Lwin up}

    ; Send {Lshift down}
    ; sleep 1
    ; Send {Lshift up}

    Send {Lshift down}{Lshift up}

    SendInput {Lctrl up}

    SendInput {LAlt up}
    SendInput {Lwin up}
    #InputLevel 0

return

delayed_reload_function:
  MouseUpState = 0 
  Reload
return

hookCheck2:
    ; sendlevel 1
    #InputLevel 100

    Send {Alt Up}{Ctrl Up}{Shift Up}

    #InputLevel 0

return

KeyEvent(state){
  global boolean_for_double_click
;  settimer, hookCheck2, -500

  ; state 1 (pressed)
  if (state == 1)
  {
    ; MsgBox, %MouseUpState%
    if (MouseUpState == 1)
    {
      ; MsgBox, "ggg"
	  
      UpdateScript()
    }
  }

  ; state 0 (released)
  else if (state == 0)
  {
    ; MsgBox, % "Mouse Button - Code: " code ", State: " state
    
    If !ifInScreenMiddle_Left_Right() || !ifInScreenMiddle_Top_Bottom()
    {
      settimer, hookCheck2, -500
      settimer, hookCheck, -1
    }

    else If ifInScreenMiddle_Left_Right() and ifInScreenMiddle_Top_Bottom()
    {

      Send {Lshift down}{Lshift up}

      settimer, set_boolean_for_double_click_to_0, -1000

      if( boolean_for_double_click_1 == 1 )
      {
        boolean_for_double_click_2 = 1
      }
      else
      {
        boolean_for_double_click_1 = 1
      }
      
      IfWinActive, ahk_class AutoHotkeyGUI
      {
          DetectHiddenWindows, On  ; Detect hidden windows
          SetTitleMatchMode, RegEx ; Find window titles by regex
          
          Script := "Cyber_Helpy.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

          WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
          Process, Close, % PID

          WinClose ahk_class AutoHotkeyGUI
      }
      Else
      {
          DetectHiddenWindows, On  ; Detect hidden windows
          SetTitleMatchMode, RegEx ; Find window titles by regex
          
          Script := "Cyber_Helpy.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

          WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
          Process, Close, % PID
      if(boolean_for_double_click_2 == 1){
        settimer, set_boolean_for_double_click_to_0, -10
          Run, %A_ScriptDir%\Cyber_Helpy.ahk
          WinActivate, PID Cyber_Helpy.ahk
        }
      }
    }
  }
}

set_boolean_for_double_click_to_0(){
  boolean_for_double_click_1 = 0
  boolean_for_double_click_2 = 0
}





; Numpad1::
;   #InstallKeybdHook
;   #InstallMouseHook
;   #UseHook
;   #SingleInstance force
;   CoordMode, Mouse, Screen
;   MouseGetPos, xpos, ypos
;   Sleep,1

;   MsgBox, "ggssdfsdfewwe"

;   ; For duo-monitor settup on the same pc: https://www.reddit.com/r/AutoHotkey/comments/k3e3gb/switch_displays_via_hotkey_problems_with_code/
;   ; The problem with lose of focus was solved ( I hope ) on 30/11/2020 by installing AHK compiled script on all PCs

;   If !ifInScreenMiddle_Left_Right() || !ifInScreenMiddle_Top_Bottom()
;   {
    

;       ; SendInput {Lshift down}
;       ; sleep 1
;       ; SendInput {Lshift up}

;       ; if GetKeyState("Shift")
;       ;     SendInput {Lshift up}
;           ; MsgBox At least one Shift key is down.
;       ; else
;       ;     SendInput {Lshift down}11
;           ; MsgBox Neither Shift key is down.

;       ; MsgBox, "ddddd"

;       settimer, hookCheck, -1

;       ; FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt, 1
;       ; WinActivate, ahk_id %line%
;   }

;   ; else If ifInScreenMiddle_Left_Right() and ifInScreenMiddle_Top_Bottom()
;   ; {
;   ;   IfWinActive, ahk_class AutoHotkeyGUI
;   ;   {
;   ;       DetectHiddenWindows, On  ; Detect hidden windows
;   ;       SetTitleMatchMode, RegEx ; Find window titles by regex
        
;   ;       Script := "Cyber_Helpy.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

;   ;       WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
;   ;       Process, Close, % PID

;   ;       WinClose ahk_class AutoHotkeyGUI
;   ;   }
;   ;   Else
;   ;   {
;   ;       DetectHiddenWindows, On  ; Detect hidden windows
;   ;       SetTitleMatchMode, RegEx ; Find window titles by regex
        
;   ;       Script := "Cyber_Helpy.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

;   ;       WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
;   ;       Process, Close, % PID

;   ;       Run, %A_ScriptDir%\Cyber_Helpy.ahk
;   ;       WinActivate, PID Cyber_Helpy.ahk
;   ;   }
;   ; }
; return



CleanEx_AHKDaemon_Version(Needle)
{ ; Sanitize the RegEx input
    StringReplace, Needle, Needle, \, \\, All
    StringReplace, Needle, Needle, ., \., All
    StringReplace, Needle, Needle, *, \*, All
    StringReplace, Needle, Needle, ?, \?, All
    StringReplace, Needle, Needle, +, \+, All
    StringReplace, Needle, Needle, [, \[, All
    StringReplace, Needle, Needle, `{, \`{, All
    StringReplace, Needle, Needle, |, \|, All
    StringReplace, Needle, Needle, (, \(, All
    StringReplace, Needle, Needle, ), \), All
    StringReplace, Needle, Needle, ^, \^, All
    StringReplace, Needle, Needle, $, \$, All
    Return Needle
}

ifInScreenMiddle_Left_Right(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 15
ScreenWidth2 := A_ScreenWidth - 5
ScreenHeight := 15
ScreenHeight2 := A_ScreenHeight - 5
Sleep,1
If (ScreenWidth <= xpos)
{
    If (ScreenWidth2 >= xpos)
        { 
            return true
        }
}
return false
}

ifInScreenMiddle_Top_Bottom(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 15
ScreenWidth2 := A_ScreenWidth - 5
ScreenHeight := 15
ScreenHeight2 := A_ScreenHeight - 5
Sleep,1
If (ScreenHeight <= ypos)
{
    If (ScreenHeight2 >= ypos)
        { 
            return true
        }
}
return false
}


ifOnTheTopOfTheScreen(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 10
ScreenHeight := 10
Sleep,1
If (xpos <> 960)
{
    If (ScreenHeight >= ypos)
    {
    return true
    }
}
return false
}

ifInCorner(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth >= xpos)
{
  If (ScreenHeight >= ypos)
    {
      return true
    }
}

ScreenWidth := 5
ScreenHeight := A_ScreenHeight - 10
If (ScreenWidth >= xpos)
{
  If (ScreenHeight <= ypos)
    {
      return true
    }
}

ScreenWidth := A_ScreenWidth - 5
ScreenHeight := 5
If (ScreenWidth <= xpos)
{
  If (ScreenHeight >= ypos)
    {
      return true
    }
}

ScreenWidth := A_ScreenWidth - 5
ScreenHeight := A_ScreenHeight - 10
If (ScreenWidth <= xpos)
{
  If (ScreenHeight <= ypos)
    {
      return true
    }
}

; }
return false
}




