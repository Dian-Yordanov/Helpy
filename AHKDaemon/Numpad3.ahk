Numpad3::
KeyWait,Numpad3,T2 ;wait 0.5 seconds for release key
If (ErrorLevel) ;more than 0.5 sec have passed
{

SplashTextOn, , , Triggers reset
Sleep, 2000

SendInput {Lshift up}
SendInput {Lctrl up}
SendInput {LAlt up}
SendInput {Lwin up}

KeyWait,Numpad3 ;prevent sending n after notepad opened
SplashTextOff

}
Else ;less than 2 sec have passed
{
If ifInLeftEdge(){
SendInput {Lshift down}
sleep, 10
SendInput {home}
sleep, 10
SendInput {Lshift up}
sleep, 10
SendInput {backspace}
}
Else
{
SendInput {Backspace}
}
}
return