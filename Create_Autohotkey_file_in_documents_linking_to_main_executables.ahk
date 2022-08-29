; MsgBox, %A_MyDocuments%

AHK_File := A_MyDocuments "\Autohotkey.ahk"

FileDelete, %AHK_File%
; FileAppend,
; (
; #Include %A_ScriptDir%\HelpyMainExecutable_Class0.ahk
; )
; , %AHK_File%


FileCreateShortcut, %A_ScriptDir%\HelpyMainExecutable_Class0.ahk, %A_MyDocuments%\Autohotkey.lnk, C:\, "%A_ScriptFullPath%", My Description, %A_ScriptDir%\mouse.ico, i