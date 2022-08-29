; Gui, Add, Text, cWhite xp+50 yp+10 , Page 2

; MultilingualScripts:
; Gui, Destroy
; Gui, Font, s12 cRed Bold, Verdana
; Gui, Add, Groupbox, h250 w950,
Gui, Add, Checkbox, vPythonRedditScript gPythonRedditScript, PythonRedditScript
Gui, Add, Button, %k_Position% gManuallyStartPythonRedditScript, ManuallyStartPythonRedditScript
; Gui, Add, Checkbox,vPythonRedditScript1 gPythonRedditScript1, PythonRedditScript1
; Gui, Color, 000000, FFFFFF
; Gui, Show, h500 w550 x65 y65,

Gosub, AutoStartControllerV2
; return

; AutoStartController:

; IniRead, OutputVar, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; If (OutputVar == 1)
; {
;   Gosub, CheckCheckbox19
; }

; return

; PythonRedditScript:
; return

; ChangeIni19:
; IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; IniWrite, 0, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; return
; UnChangeIni19:
; IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; IniWrite, 1, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; return
; CheckCheckbox19:
; GuiControl, Focus, PythonRedditScript,
; ControlSend,, {Space}, Autohotkey.ahk
; return
; UncheckCheckbox19:
; GuiControl, Focus, PythonRedditScript,
; ControlSend,, {Space}, Autohotkey.ahk
; return

; ; GuiClose:
; 19GuiClose:
; Gui Cancel
; GuiControlGet, Checked,,PythonRedditScript
; ; MsgBox, %Checked%
; If (Checked == 1)
; {
;     Gosub, UnChangeIni19
; }
; If (Checked == 0)
; {
;     Gosub, ChangeIni19
; }
; Return

; ManuallyStartPythonRedditScript:
;   FileLocation = %A_ScriptDir%\StringBank.txt
;   KxzCWi_RiFqi81eDi = % getStringFromBank("sFgLhE4EiiLUmiCF", FileLocation)
;   K2hHnguiQDvyiCWlm = % getStringFromBank("3i1Hb0q8Bkb9Ri8m", FileLocation)
;   KA0Su6ickIUkZpjNi = % getStringFromBank("i6EOUbEivkLs9s2e", FileLocation)
;   KiviPiiqnRvnivNxi = % getStringFromBank("i5i3tHTfrlqgii_0", FileLocation)
;   KvRziCrD_VjPi8ORi = % getStringFromBank("3ai45tJ3S3sy5piw", FileLocation)

;   commands=
;   (join&
;   echo off
;   cd `%userprofile`%\Documents\AHKHelpy\AHKassociatedFiles\BilingualScrips\PythonBot
;   python .\bot.py %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%
;   )
;   runwait, %comspec% /c %commands%
; Return