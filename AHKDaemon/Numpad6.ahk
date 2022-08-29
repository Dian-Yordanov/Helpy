Numpad6::
KeyWait,Numpad6,T1
If (ErrorLevel)
{

SplashTextOn, , , Ctrl+W pressed
Sleep, 1000

SendInput {Ctrl Down}
SendInput {w}
SendInput {Ctrl Up}

KeyWait,Numpad6

SplashTextOff
}
Else ;less than 2 sec have passed
{
SendInput {Enter}
}
return