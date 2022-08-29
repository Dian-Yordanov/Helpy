; Numpad1 & Numpad6::
; ; SendInput {Lctrl down}
; ; sleep, 300
; ; SendInput {Lctrl up}
; ; sleep, 200
; ; SendInput {Lctrl up}
; Return
; Numpad3 & WheelDown::
; ; SendInput {Lctrl down}
; ; SendInput {Lctrl down}
; SendInput {f3}
; ; SendInput {Lctrl up}
; ; sleep, 1000
; ; SendInput, |SEARCHINDICATOR|
; ; SendInput {Lctrl up}
; ; sleep, 100
; ; SendInput, |SEARCHINDICATOR|
; ; SendInput {Esc}
; ; sleep, 1000
; ; SendInput, |SEARCHINDICATOR|
; Return
; Numpad3 & WheelUp::
; ; SendInput {Lshift down}
; ; SendInput {Lctrl down}
; ; SendInput {f}
; ; SendInput {Lctrl up}
; ; SendInput {Lshift up}
; ; sleep, 100
; ; SendInput, |SEARCHINDICATOR|
; ; SendInput {Lshift down}
; ; SendInput {Lctrl down}
; SendInput +{f3}
; ; SendInput {Lctrl up}
; ; SendInput {Lshift up}
; ; sleep, 1000
; ; SendInput, |SEARCHINDICATOR|
; Return
; ctrlFfunction(searchTextF="|SEARCHINDICATOR|"){
; ; SendInput {Lshift down}
; SendInput {Lctrl down}
; SendInput {f}
; SendInput {Lctrl up}
; ; SendInput {Lshift up}
; sleep, 100
; SendInput, %searchTextF%
; }
;//|NEW SECTION NAME| |SEARCHINDICATOR|
;//|NEW SECTION NAME| |SEARCHINDICATOR|
; Numpad3::Backspace

; Changing this now to f3 + remindersTag