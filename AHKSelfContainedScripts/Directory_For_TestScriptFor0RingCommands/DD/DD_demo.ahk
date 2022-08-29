#Include, class_DD.ahk
SetWorkingDir %A_ScriptDir%

dd._key_press("LWin", "R")

WinWait, ahk_class #32770 ahk_exe explorer.exe,, 1

dd.str("notepad")
dd._key_press("Enter")

WinWait, ahk_exe notepad.exe
WinActivate

dd.str("Hello World")
dd._key_press("Enter")
dd.str("Demo End.")
dd._key_press("Shift", "Home")
