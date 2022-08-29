; Numpad6::
; SendInput {f3}
; SendInput, remindersTag
; SendInput {enter}
; MouseMove, 0, 30, 100, R
; MouseClick, left
; Return

; SendInput {Lwin down}
; sleep, 10
; SendInput {Lwin up}
; return
;GroupAdd, EvEGroup, ahk_class triuiScreen
;Numpad7::
;FileReadLine, line, %A_ScriptDir%\BooleanFile2.txt, 1
;var1 = %line%
;var2 := "True"
;if (var1 = var2)
;{
;SendInput {LAlt Down}
;sleep, 1
;SendInput {Tab}
;sleep, 10
;FileReadLine, line, %A_ScriptDir%\SecondsLeftFile.txt, 1
;loopIndexOfSeconds = %line%
;Loop, %loopIndexOfSeconds%
;        {
;            SendInput {Tab}
;        sleep, 1000
;        }
;sleep, 100
;BooleanLaunchForkChangeToFalse2()
;SecondsLeftLaunchForkChange(1)
;SendInput {enter}
;sleep, 1
;SendInput {LAlt Up}
;}
;if (var1 != var2)
;{
;BooleanLaunchForkChangeToTrue2()
;loopIndexOfSeconds += 1
;var1 = %loopIndexOfSeconds%
;SecondsLeftLaunchForkChange(var1)
;}
;SendInput {LAlt Down}
;sleep, 1
;SendInput {Tab}
;sleep, 10
;FileReadLine, line, %A_ScriptDir%\SecondsLeftFile.txt, 1
;loopIndexOfSeconds = %line%
;Loop, %loopIndexOfSeconds%
;        {
;        SendInput {Tab}
;    loopIndexOfSeconds += 1
;    var1 = %loopIndexOfSeconds%
;    sleep, 1000
;        }
;SecondsLeftLaunchForkChange(var1)
;sleep, 100
;SendInput {enter}
;sleep, 1
;SendInput {LAlt Up}
;return