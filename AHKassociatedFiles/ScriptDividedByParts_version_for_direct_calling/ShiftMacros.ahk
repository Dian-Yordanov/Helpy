;|ShiftMacros||SEARCHINDICATOR|
;   _____ _     _  __ _
;  / ____| |   (_)/ _| |
; | (___ | |__  _| |_| |_   _ __ ___   __ _  ___ _ __ ___  ___
;  \___ \| '_ \| |  _| __| | '_ ` _ \ / _` |/ __| '__/ _ \/ __|
;  ____) | | | | | | | |_  | | | | | | (_| | (__| | | (_) \__ \
; |_____/|_| |_|_|_|  \__| |_| |_| |_|\__,_|\___|_|  \___/|___/

; ~a::
; splashy("NumpadEnd down||ClickSpammer")
; FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt, 1
; var1 = %line%
; var2 := "True"
; if (var1 = var2)
; {
; BooleanLaunchForkChangeToFalse()
; domino66Click()
; Gosub, shiftyUp
; }
; if (var1 != var2)
; {
; BooleanLaunchForkChangeToTrue()
; domino66Click()
; }
; domino66Click(Interval=0.005){
;    static Toggler
;    Toggler := !Toggler
;    TPer := Toggler ? Interval : "off"
;    SetTimer, ClickClick, %TPer%
;    return
;    ClickClick:
;    Click
;    return
; }
; return
; NumpadDown::
; splashy("NumpadDown down||ClickSpammer")
; BooleanLaunchForkChangeToFalse := BooleanLaunchForkChangeToFalse()
; MsgBox % BooleanLaunchForkChangeToFalse
; return
; NumpadPgDn::
; splashy("NumpadPgDn down||ClickSpammer")
; BooleanLaunchForkChangeToTrue := BooleanLaunchForkChangeToTrue()
; MsgBox % BooleanLaunchForkChangeToTrue
; return
; NumpadLeft::
; domino66Click()
; return
; NumpadClear::
; domino66ClickMID()
; domino66ClickMID(Interval=0.005){
;    static Toggler
;    Toggler := !Toggler
;    TPer := Toggler ? Interval : "off"
;    SetTimer, ClickClickMID, %TPer%
;    return
;    ClickClickMID:
;    MouseClick, Middle
;    return
; }
; return
; NumpadRight::
; splashy("NumpadRight")
; SendInput !+o
; Gosub, shiftyUp
; return
; NumpadHome::
; splashy("NumpadHome")
; SendInput !+r
; Gosub, shiftyUp
; return
; NumpadUp::
; splashy("setSoundTo100")
; setSoundTo100()
; Gosub, shiftyUp
; return
; NumpadPgUp::
; splashy("setSoundTo0")
; setSoundTo0()
; Gosub, shiftyUp
; return
splashy(stringText)
{
SplashTextOn,,,%stringText%,
Sleep,300
SplashTextOff
return
}
shiftyUp:
SendEvent % "{Blind}{lShift " . ((lshift:=!lshift) ? "Down}" : "Up}")
SplashTextOn,,,Shift Up,
Sleep,300
SplashTextOff
return
shiftyDown:
SendEvent % "{Blind}{lShift " . ((lshift:=!lshift) ? "Down}" : "Up}")
SplashTextOn,,,Shift Down,
Sleep,300
SplashTextOff
return
BooleanLaunchForkChangeToFalse()
{
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, False`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt, 1
return line
}
BooleanLaunchForkChangeToTrue()
{
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, True`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt, 1
return line
}
; BooleanLaunchFork:
; WinActivate ahk_id %previous_ID%
; FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, False`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, test, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; :*:kkkkkh::
; FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt, 1
; MsgBox, %line%
; if ( False = %line% ){
; FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, True`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; FileAppend,, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; GoTo, Keyloggerino
; }
; else if ( True = %line% ){
; FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, False`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
; FileReadLine, line2, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt, 1
; StringTrimLeft, line2, line2, 1
; MsgBox, %line2%
; }
; return
; return
