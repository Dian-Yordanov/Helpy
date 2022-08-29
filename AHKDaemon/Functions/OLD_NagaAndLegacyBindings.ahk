; Numpad6 & WheelUp::
; SendInput {Lctrl down}
; SendInput {c}
; SendInput {Lctrl up}
; SplashTextOn,400,80,,This Button+WheelDown=Ctrlc
; Sleep,1000
; SplashTextOff
; Return
; Numpad6 & WheelDown::
; SendInput {Lctrl down}
; SendInput {v}
; SendInput {Lctrl up}
; SplashTextOn,400,80,,This Button+WheelDown=Ctrlv
; Sleep,1000
; SplashTextOff

; Loop, 3
; {
; Loop, 3
; {
;     ; sleep,50
;     SendInput {Lshift down}
;     sleep,50
;     SendInput {End}
;     sleep,50
;     SendInput {Lshift up}
;     Sleep,50
;     SendInput {Lctrl down}
;     sleep,50
;     SendInput {c}
;     sleep,50
;     SendInput {Lctrl up}
;     Sleep,50
;     SendInput {LAlt Down}
;     sleep,50
;     SendInput {Tab}
;     sleep,50
;     SendInput {LAlt Up}
;     sleep,10
;     SendInput {Lctrl down}
;     sleep,50
;     SendInput {v}
;     sleep,50
;     SendInput {Lctrl up}
;     sleep,50
;     SendInput {Tab}
;     Sleep,50
;     SendInput {LAlt Down}
;     sleep,50
;     SendInput {Tab}
;     sleep,50
;     SendInput {LAlt Up}
;     Sleep,50
;     ; SendInput {Right}
;     Sleep,50
;     Loop, 18
;     {
;     sleep,100
;     SendInput {Right}
;     Sleep,50
;     }
; }
; CoordMode, Mouse, Screen
; click, 1480, 1050
; Sleep,1500
; click, 1307, 1050
; Sleep,500

; SendInput {LAlt Down}
; sleep, 50
; SendInput {Tab}
; sleep, 50
; SendInput {LAlt Up}
; sleep, 100
; }
; SendInput {Down}
; SendInput {Lshift down}
; SendInput {End}
; SendInput {Lshift up}
; Sleep,10
; SendInput {Lctrl down}
; SendInput {c}
; SendInput {Lctrl up}
; Sleep,10
; SendInput {LAlt Down}
; SendInput {Tab}
; SendInput {LAlt Up}
; sleep, 1
; SendInput {Tab}
; SendInput {Lctrl down}
; SendInput {v}
; SendInput {Lctrl up}
; Sleep,10
; SendInput {LAlt Down}
; SendInput {Tab}
; SendInput {LAlt Up}
; Sleep,10
; Sleep,10
; SendInput {Down}
; SendInput {Lshift down}
; SendInput {End}
; SendInput {Lshift up}
; Sleep,10
; SendInput {Lctrl down}
; SendInput {c}
; SendInput {Lctrl up}
; Sleep,10
; SendInput {LAlt Down}
; SendInput {Tab}
; SendInput {LAlt Up}
; sleep, 1
; SendInput {Tab}
; SendInput {Lctrl down}
; SendInput {v}
; SendInput {Lctrl up}
; Sleep,10
; SendInput {LAlt Down}
; SendInput {Tab}
; SendInput {LAlt Up}
; Sleep,10
; SplashTextOn,400,80,,MultiWindowCopyAndPaste
; Sleep,1000
; SplashTextOff
