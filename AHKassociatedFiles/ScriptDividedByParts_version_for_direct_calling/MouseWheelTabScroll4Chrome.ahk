;|MouseWheelTabScroll4Chrome||SEARCHINDICATOR|
;
;  __  __                       __          ___               _   _______    _        _____                _ _   _  _      _____ _
; |  \/  |                      \ \        / / |             | | |__   __|  | |      / ____|              | | | | || |    / ____| |
; | \  / | ___  _   _ ___  ___   \ \  /\  / /| |__   ___  ___| |    | | __ _| |__   | (___   ___ _ __ ___ | | | | || |_  | |    | |__  _ __ ___  _ __ ___   ___
; | |\/| |/ _ \| | | / __|/ _ \   \ \/  \/ / | '_ \ / _ \/ _ \ |    | |/ _` | '_ \   \___ \ / __| '__/ _ \| | | |__   _| | |    | '_ \| '__/ _ \| '_ ` _ \ / _ \
; | |  | | (_) | |_| \__ \  __/    \  /\  /  | | | |  __/  __/ |    | | (_| | |_) |  ____) | (__| | | (_) | | |    | |   | |____| | | | | | (_) | | | | | |  __/
; |_|  |_|\___/ \__,_|___/\___|     \/  \/   |_| |_|\___|\___|_|    |_|\__,_|_.__/  |_____/ \___|_|  \___/|_|_|    |_|    \_____|_| |_|_|  \___/|_| |_| |_|\___|
;

#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome (1.0.3)
WheelUp::
WheelDown::
    MouseGetPos,, ypos, id
    WinGetClass, class, ahk_id %id%
    If (ypos < 45 and InStr(class,"Chrome_WidgetWin"))
    {
        IfWinNotActive ahk_id %id%
            WinActivate ahk_id %id%
        If A_ThisHotkey = WheelUp
            Send ^{PgUp}
        Else
            Send ^{PgDn}
    }
    Else
    {
        If A_ThisHotkey = WheelUp
            Send {WheelUp}
        Else
            Send {WheelDown}
    }
    Return
