
tooltip YOU MUST RUN THIS AS ADMIN!!!!
sleep 1000

#Include Directory_For_TestScriptFor0RingCommands\DD\class_DD.ahk

; MsgBox This is the 1-parameter method. Commas (,) do not need to be escaped.

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