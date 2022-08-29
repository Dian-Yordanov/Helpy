; ***************** ///////////////////////////// ****************************** ////////////////////////// *****************************************************************

;   _   _ ________          __  _   _                                 _ __ 
;  | \ | |  ____\ \        / / | \ | |                               | /_ |
;  |  \| | |__   \ \  /\  / /  |  \| |_   _ _ __ ___  _ __   __ _  __| || |
;  | . ` |  __|   \ \/  \/ /   | . ` | | | | '_ ` _ \| '_ \ / _` |/ _` || |
;  | |\  | |____   \  /\  /    | |\  | |_| | | | | | | |_) | (_| | (_| || |
;  |_| \_|______|   \/  \/     |_| \_|\__,_|_| |_| |_| .__/ \__,_|\__,_||_|
;                                                    | |                   
;                                                    |_|                   

; ***************** ///////////////////////////// ****************************** ////////////////////////// *****************************************************************



; #SingleInstance force
; #Persistent
; #include %A_ScriptDir%\AHKDaemon\AutoHotInterception\Lib\AutoHotInterception.ahk

; global AHI := new AutoHotInterception()

; keyboardId := AHI.GetDeviceIdFromHandle(false, "HID\VID_046D&PID_C232") 
; ; keyboardId := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100", 1) 
; ; id2 := AHI.GetDeviceIdFromHandle(false, "ACPI\VEN_IDEA&DEV_0100", 1) 
; AHI.SubscribeKey(keyboardId, GetKeySC("NumpadEnd"), true, Func("KeyEvent"))
; return

; KeyEvent(){
;     MsgBox, "gg"
; 	  SendInput {Lshift down}
;     sleep 1
;     SendInput {Lshift up}
; }







; Numpad1::
; MsgBox, %A_ScriptDir%\AHKDaemon\AutoHotInterception\Lib\AutoHotInterception.ahk
; return






; ***************** ///////////////////////////// ****************************** ////////////////////////// *****************************************************************

;    ____  _      _____    _   _                                 _ __ 
;   / __ \| |    |  __ \  | \ | |                               | /_ |
;  | |  | | |    | |  | | |  \| |_   _ _ __ ___  _ __   __ _  __| || |
;  | |  | | |    | |  | | | . ` | | | | '_ ` _ \| '_ \ / _` |/ _` || |
;  | |__| | |____| |__| | | |\  | |_| | | | | | | |_) | (_| | (_| || |
;   \____/|______|_____/  |_| \_|\__,_|_| |_| |_| .__/ \__,_|\__,_||_|
;                                               | |                   
;                                               |_|                   

; ***************** ///////////////////////////// ****************************** ////////////////////////// *****************************************************************












Numpad1::
  #InstallKeybdHook
  #InstallMouseHook
  #UseHook
  #SingleInstance force
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1

  ; MsgBox, "ggssdfsdfewwe"

  ; For duo-monitor settup on the same pc: https://www.reddit.com/r/AutoHotkey/comments/k3e3gb/switch_displays_via_hotkey_problems_with_code/
  ; The problem with lose of focus was solved ( I hope ) on 30/11/2020 by installing AHK compiled script on all PCs

  If !ifInScreenMiddle_Left_Right() || !ifInScreenMiddle_Top_Bottom()
  {
      ; SendInput {Lshift down}
      ; sleep 1
      ; SendInput {Lshift up}

      ; if GetKeyState("Shift")
      ;     SendInput {Lshift up}
          ; MsgBox At least one Shift key is down.
      ; else
      ;     SendInput {Lshift down}11
          ; MsgBox Neither Shift key is down.

      ; MsgBox, "ddddd"

      settimer, hookCheck, -1

      ; FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt, 1
      ; WinActivate, ahk_id %line%
  }

  else If ifInScreenMiddle_Left_Right() and ifInScreenMiddle_Top_Bottom(){
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

        Run, %A_ScriptDir%\Cyber_Helpy.ahk
        WinActivate, PID Cyber_Helpy.ahk
    }
  }
return

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


hookCheck:
    sendlevel 1

    SendInput {Lshift up}

    SendInput {Lctrl up}
    SendInput {LAlt up}
    SendInput {Lwin up}

    SendInput {Lshift down}
    sleep 1
    SendInput {Lshift up}

    SendInput {Lctrl up}
    SendInput {LAlt up}
    SendInput {Lwin up}

return


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















; ; USED BY OTHER SCRIPTS

; ifInRightEdge(){
;   WinActivate ahk_id %previous_ID%
;   CoordMode, Mouse, Screen
;   MouseGetPos, xpos, ypos
;   Sleep,1
;   ScreenWidth := A_ScreenWidth - 5
;   ScreenHeight := 5
;   Sleep,1
;   If (ScreenWidth <= xpos)
;   {
;   return true
;   }
;   return false
; }

; ifInLeftEdge(){
;   WinActivate ahk_id %previous_ID%
;   CoordMode, Mouse, Screen
;   MouseGetPos, xpos, ypos
;   Sleep,1
;   ScreenWidth := 5
;   ScreenHeight := 5
;   Sleep,1
;   If (ScreenWidth >= xpos)
;   {
;   return true
;   }
;   return false
; }