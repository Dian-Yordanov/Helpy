TRANSFERBrowserAddons()

TRANSFERBrowserAddons(){
WinActivate ahk_id %previous_ID%
global BkColor2   := 0x000000   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0x000000   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

; Export links of all extensions
; https://chrome.google.com/webstore/detail/export-links-of-all-exten/cmeckkgeamghjhkepejgjockldoblhcb
; file:///D:/Downloads/extensions.html



InputBox, NumberOfExtensions, Number Of Extensions, Please enter the number of extensions, , 240, 180
if ErrorLevel
    {
    MsgBox, CANCEL was pressed.
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI
    ; WinClose ahk_class AutoHotkeyGUI

    ExitApp

    }
else
    {
    loop, %NumberOfExtensions%
    {  
    SendInput, {Tab}
    Sleep, 10
    SendInput, {Enter}
    Sleep, 2500
    ; SendInput, {Tab}
    ; Sleep, 10
    ; SendInput, {Tab}
    ; Sleep, 10
    ; SendInput, {Tab}
    ; Sleep, 10
    ; SendInput, {Tab}
    ; Sleep, 10
    ; SendInput, {Enter}
    Click, 1400, 240 
    Sleep, 2000
    SendInput, {ShiftDown}
    Sleep, 10
    SendInput, {Tab}
    Sleep, 10
    SendInput, {ShiftUp}
    Sleep, 100
    SendInput, {Enter}
    Sleep, 2000
    WinActivate ahk_id %previous_ID%
    Sleep, 100
    SendInput, {Ctrl Down}
    Sleep, 10
    SendInput, {PgUp}
    Sleep, 10
    SendInput, {Ctrl Up}
    Sleep, 2500
    }
    }

; MsgBox, You entered "%NumberOfExtensions%"
global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

return
}