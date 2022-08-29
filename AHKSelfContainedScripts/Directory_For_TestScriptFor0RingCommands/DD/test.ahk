#Include, class_DD.ahk

tooltip Sending in... 3...
sleep 1000
tooltip Sending in... 2...
sleep 1000
tooltip Sending in... 1...
sleep 1000

DD.str("abc")                     ; Send string abc
DD._key_press("F11")              ; Send hotkey F11
DD._key_press("LWin", "R")        ; Send Win+R
DD._key_press("Ctrl", "Alt", "S") ; Send Ctrl+Alt+S