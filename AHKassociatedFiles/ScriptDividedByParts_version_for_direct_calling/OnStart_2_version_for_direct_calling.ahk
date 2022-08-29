OnStart_2_f()

OnStart_2_f()
{

  IniRead, OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

  ; If (OutputVar == 0)
  ; {
  ;   ; http://www.autohotkey.com/board/topic/90589-how-to-get-pid-just-by-a-scripts-title/

  ;   DetectHiddenWindows, On  ; Detect hidden windows
  ;   SetTitleMatchMode, RegEx ; Find window titles by regex

  ;   Script := "LeftMouseClick.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

  ;   ; Get the PID of the window with the title matching the format "*\Scriptname - AutoHotkey v*"
  ;   WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"
  ;   ; MsgBox, % Script "'s PID is:`n" PID

  ;   Process, Close, % PID

  ; }
  ; Else 
  ; {
  ;   Run, %A_ScriptDir%\AHKDaemon\LeftMouseClick.ahk, , , PID1
  ; }

  Return 
}

CleanEx(Needle)
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