AppsKey::

CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1

If (ypos <= 10){
    SendInput {Lctrl down}
    sleep, 300
    SendInput {Lctrl up}
    sleep, 200
    SendInput {Lctrl up}
    return
}
If ifInLeftEdge(){
    SendInput {Lctrl down}
    sleep, 300
    SendInput {Lctrl up}
    sleep, 200
    SendInput {Lctrl up}
}
Else If ifInRightEdge(){
    SendInput {Lctrl down}
    sleep, 300
    SendInput {Lctrl up}
    sleep, 200
    SendInput {Lctrl up}
}
Else
IfWinActive, ahk_class AutoHotkeyGUI
{
    WinClose ;
}
Else
{
 ;   Gosub, helpy2
}
return