; MTGAimprovements.ahk
;   __  __ _______ _____          _                                                         _       
;  |  \/  |__   __/ ____|   /\   (_)                                                       | |      
;  | \  / |  | | | |  __   /  \   _ _ __ ___  _ __  _ __ _____   _____ _ __ ___   ___ _ __ | |_ ___ 
;  | |\/| |  | | | | |_ | / /\ \ | | '_ ` _ \| '_ \| '__/ _ \ \ / / _ \ '_ ` _ \ / _ \ '_ \| __/ __|
;  | |  | |  | | | |__| |/ ____ \| | | | | | | |_) | | | (_) \ V /  __/ | | | | |  __/ | | | |_\__ \
;  |_|  |_|  |_|  \_____/_/    \_\_|_| |_| |_| .__/|_|  \___/ \_/ \___|_| |_| |_|\___|_| |_|\__|___/
;                                            | |                                                    
;                                            |_|                                                    

loop
{
IfWinActive, ahk_class UnityWndClass 
{
    settimer, MTGAKeepCtrlUP, -1
}
sleep, 1000
}
; }
MTGAKeepCtrlUP:
    ; sendlevel 1

    CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
    PixelSearch, FoundX, FoundY, 1500,600, A_ScreenWidth, A_ScreenHeight, 0x999999, 3, Fast
    if ErrorLevel = 2
        MsgBox Could not conduct the search.
    else if ErrorLevel = 1
        return
    else if (FoundX==1839 && FoundY==738)
        ; MsgBox The icon was found at %FoundX%x%FoundY%.
        
        SendInput {Lctrl down}
        SendInput {Lctrl up}
        SendInput {Lctrl up}
        SendInput {Lctrl up}
return
