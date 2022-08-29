;|UtilityHotkeys||SEARCHINDICATOR|
;          _   _ _ _ _           _           _   _
;         | | (_) (_) |         | |         | | | |
;    _   _| |_ _| |_| |_ _   _  | |__   ___ | |_| | _____ _   _ ___
;   | | | | __| | | | __| | | | | '_ \ / _ \| __| |/ / _ \ | | / __|
;   | |_| | |_| | | | |_| |_| | | | | | (_) | |_|   <  __/ |_| \__ \
;    \__,_|\__|_|_|_|\__|\__, | |_| |_|\___/ \__|_|\_\___|\__, |___/
;                         __/ |                            __/ |
;                        |___/                            |___/
; ^+a::
;     SendInput {Lwin down}
;     sleep, 10
;     SendInput {d}
;     sleep, 10
;     SendInput {Lwin up}
;     sleep, 1000
;     MouseMove, 200, 100
;     Run, Control Panel
;     WinWait, ahk_class CabinetWClass
;     RepeatCount = 9
;     Loop %RepeatCount% {
;         SendInput {tab}
;     }
;     sleep, 1
;     SendInput {enter}
;     sleep, 1
;     RepeatCount1 = 3
;     sleep, 1
;     Loop %RepeatCount1% {
;         SendInput {tab}
;     }
;     sleep, 500
;     SendInput {enter}
;     sleep, 1000
;     RepeatCount2 = 6
;     sleep, 1
;     Loop %RepeatCount2% {
;         SendInput {tab}
;     }
;     RepeatCount2 = 5
;     sleep, 1
;     Loop %RepeatCount2% {
;         SendInput {right}
;     }
;     RepeatCount2 = 2
;     sleep, 1
;     Loop %RepeatCount2% {
;         SendInput {tab}
;     }
;     SendInput {enter}
;     sleep, 1
;     SendInput {Lalt down}
;     sleep, 1
;     SendInput {a}
;     sleep, 1
;     SendInput {Lalt up}
;     sleep, 1
;     SendInput {enter}
; return
#c::
    SendInput {Lctrl down}
    sleep, 1
    SendInput {c}
    sleep, 1
    SendInput {Lctrl up}
    sleep, 1
    fileappend, %Clipboard%`n, Clipy.txt
return