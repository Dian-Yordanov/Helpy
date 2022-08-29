Numpad1 & WheelUp::
SendInput {Lctrl down}
sleep, 1
SendInput {s}
sleep, 1
SendInput {Lctrl up}
FileGetAttrib,attribs,%A_ScriptFullPath%
FileSetAttrib,-A,%A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
Return