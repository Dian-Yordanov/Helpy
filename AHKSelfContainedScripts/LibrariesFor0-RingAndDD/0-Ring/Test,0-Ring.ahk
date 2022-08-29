WinRing := new WinRing0

tooltip Sending in... 3...
sleep 1000
tooltip Sending in... 2...
sleep 1000
tooltip Sending in... 1...
sleep 1000

WinRing.KeyPress("a") ; Same as KeyDown + KeyUp
WinRing.SendStr("12345677890")

ExitApp

#Include Class_WinRing0.ahk