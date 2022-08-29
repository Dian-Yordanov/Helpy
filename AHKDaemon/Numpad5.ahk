Numpad5::
If ifInTopEdge(){
WinGet, active_id1, PID, A

; AltTabVersion2() ; the Ring 3 method one

WinGet, active_id2, PID, A

; if(active_id1 == active_id2)
; {
    OldAltTabFunctionNumpad8Copy()
; }

; AltTabRing0() ; the Ring 0 method one

; AltTabFunctionNumpad8(offset:=1)

}
Else
{
SendInput {Lwin down}
sleep, 10
SendInput {d}
sleep, 10
SendInput {Lwin up}
}
return

OldAltTabFunctionNumpad8Copy()
{
SendInput {Lshift up}
SendInput {Lctrl up}
SendInput {LAlt up}
SendInput {Lwin up}

SendInput {LAlt Down}
sleep, 10
SendInput {Esc}
sleep, 10
SendInput {LAlt Up}

SendInput {Lshift up}
SendInput {Lctrl up}
SendInput {LAlt up}
SendInput {Lwin up}
}

AltTabVersion2Copy(){
    list := ""
    WinGet, id, list
    Loop, %id%
    {
        this_ID := id%A_Index%
        IfWinActive, ahk_id %this_ID%
            continue    
        WinGetTitle, title, ahk_id %this_ID%
        If (title = "")
            continue
        If (!IsWindow(WinExist("ahk_id" . this_ID))) 
            continue
        WinActivate, ahk_id %this_ID%, ,2
            break
    }
}