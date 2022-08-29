; Numpad9::^z
;Numpad0::^x
;Numpad0::
; NumpadSub::^c
;^c
; NumpadAdd::^v
;Numpad7::
;Loop, read, ProgramUsedLogger.txt
;LineCount := A_Index
;A_Index2 = %LineCount%
;A_Index2-=1
;FileReadLine, A_Index2OutputVar, ProgramUsedLogger.txt, %A_Index2%
;WinActivate ahk_id %A_Index2OutputVar%
;return
;Numpad2::^Backspace
;Numpad3::Backspace
; Numpad2::
; SendInput {Lshift down}
; sleep, 10
; SendInput {home}
; sleep, 10
; SendInput {Lshift up}
; sleep, 10
; SendInput {backspace}
; return
