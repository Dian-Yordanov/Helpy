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

#IfWinActive ahk_exe chrome.exe
RButton::
        MouseGetPos,x, y, id
        WinGetClass, class, ahk_id %id%
        ; If (y < 40 and InStr(class,"Chrome_WidgetWin"))
        ;     {
        ;       Run, "D:\Electron\electron-quick-start\test-win32-x64\test.exe"
        ;     }
        ; Else
            Send {RButton}
Return