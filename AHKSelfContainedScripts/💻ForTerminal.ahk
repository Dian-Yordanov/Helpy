#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; WinActivate ahk_id %previous_ID%
; sleep, 1
; SendInput {Lctrl down}
; sleep, 1
; SendInput {Raw}A long series of raw characters sent via the fastest method.
; sleep, 1
; SendInput {Lctrl up}
; sleep, 300
; WinClose ahk_class AutoHotkeyGUI


WinGet, active_id1, PID, A

AltTabVersion2() ; the Ring 3 method one

WinGet, active_id2, PID, A

if(active_id1 == active_id2)
{
    OldAltTabFunctionNumpad8()
}


SendInput {LCtrl Down}
sleep, 10
SendInput {a}
sleep, 10
SendInput {k}
sleep, 50
SendInput {LCtrl Up}


OldAltTabFunctionNumpad8()
{
SendInput {Lshift up}
SendInput {Lctrl up}
SendInput {LAlt up}
SendInput {Lwin up}

SendInput {LAlt Down}
sleep, 10
SendInput {Tab}
sleep, 50
SendInput {enter}
sleep, 10
SendInput {LAlt Up}

SendInput {Lshift up}
SendInput {Lctrl up}
SendInput {LAlt up}
SendInput {Lwin up}
}



; taken from https://stackoverflow.com/questions/35971452/what-is-the-right-way-to-send-alt-tab-in-ahk/55321752#55321752
AltTabFunctionNumpad8(offset:=1)
{
    ; ****************************
    ; Function for switching windows by ALT-TAB (offset = number of windows to "tab")
    ; ****************************
    ; Get list of all windows.
    WinGet, AllWinsHwnd, List
    WinGetTitle, active_title, A ; Get title of active window.

    ; Find index of the current window.
    counter_of_none_hidden_windows := 0 ; Initiate counter for counting only the none-hidden windows.
    Loop, % AllWinsHwnd
    {
        ; Find title for window in this loop.
        WinGetTitle, CurrentWinTitle, % "ahk_id " AllWinsHwnd%A_Index%

        ; From [1]: "Retrieves an 8-digit hexadecimal number representing the extended style of a window.".
        ; [1] : https://autohotkey.com/docs/commands/WinGet.htm
        WinGet, exStyle, exStyle, % "ahk_id" AllWinsHwnd%A_Index%

        ; Skip hidden windows by checking exStyle.
        If !(exStyle & 0x100){
            Continue
        }

        ; Window is not hidden. Increase counter.
        counter_of_none_hidden_windows := counter_of_none_hidden_windows+1

        ; Set flag.
        titles_match := CurrentWinTitle = active_title
        If (titles_match) {
            window_index_to_switch_to := counter_of_none_hidden_windows+offset
            break
        }
    }

    ; Find index of the window to switch to and do the actual switch
    counter_of_none_hidden_windows := 0 ; Initiate counter for counting only the none-hidden windows.
    Loop, % AllWinsHwnd
    {
        ; From [1]: "Retrieves an 8-digit hexadecimal number representing the extended style of a window.".
        ; [1] : https://autohotkey.com/docs/commands/WinGet.htm
        WinGet, exStyle, exStyle, % "ahk_id" AllWinsHwnd%A_Index%

        ; Skip hidden windows by checking exStyle.
        If !(exStyle & 0x100){
            Continue
        }

        ; Window is not hidden. Increase counter.
        counter_of_none_hidden_windows := counter_of_none_hidden_windows+1

        ; Set flag.
        found_window_to_switch_to := counter_of_none_hidden_windows = window_index_to_switch_to

        ; Switch window.
        If (found_window_to_switch_to) {
            ; Get title.
            WinGetTitle, CurrentWinTitle, % "ahk_id " AllWinsHwnd%A_Index%
            ; Activate by title.
            WinActivate, %CurrentWinTitle%
            ; Stop loop.
            break
        }
    }
    return ; Nothing to return
}

AltTabVersion2(){
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

; AltTabMenu-replacement for Windows 8:
AltTabMenu(){
    list := ""
    Menu, windows, Add
    Menu, windows, deleteAll
    WinGet, id, list
    Loop, %id%
    {
        this_ID := id%A_Index%
        WinGetTitle, title, ahk_id %this_ID%
        If (title = "")
            continue            
        If (!IsWindow(WinExist("ahk_id" . this_ID))) 
            continue
        Menu, windows, Add, %title%, ActivateTitle      
        WinGet, Path, ProcessPath, ahk_id %this_ID%
        Try 
            Menu, windows, Icon, %title%, %Path%,, 0
        Catch 
            Menu, windows, Icon, %title%, %A_WinDir%\System32\SHELL32.dll, 3, 0 
    }
    CoordMode, Mouse, Screen
    MouseMove, (0.4*A_ScreenWidth), (0.35*A_ScreenHeight)
    CoordMode, Menu, Screen
    Xm := (0.25*A_ScreenWidth)
    Ym := (0.25*A_ScreenHeight)
    Menu, windows, Show, %Xm%, %Ym%
}

ActivateTitle:
    SetTitleMatchMode 3
    WinActivate, %A_ThisMenuItem%
return

;-----------------------------------------------------------------
; Check whether the target window is activation target
;-----------------------------------------------------------------
IsWindow(hWnd){
    WinGet, dwStyle, Style, ahk_id %hWnd%
    if ((dwStyle&0x08000000) || !(dwStyle&0x10000000)) {
        return false
    }
    WinGet, dwExStyle, ExStyle, ahk_id %hWnd%
    if (dwExStyle & 0x00000080) {
        return false
    }
    WinGetClass, szClass, ahk_id %hWnd%
    if (szClass = "TApplication") {
        return false
    }
    return true
}

; Ring 0 method:

AltTabRing0(){


    DD._key_press("Alt", "Tab")

    ; SendInput {Lshift up}
    ; SendInput {Lctrl up}
    ; SendInput {LAlt up}
    ; SendInput {Lwin up}

    ; SendInput {LAlt Down}
    ; sleep, 10
    ; SendInput {Tab}
    ; sleep, 50
    ; SendInput {enter}
    ; sleep, 10
    ; SendInput {LAlt Up}

    ; SendInput {Lshift up}
    ; SendInput {Lctrl up}
    ; SendInput {LAlt up}
    ; SendInput {Lwin up}
}


altTab(){
    SendInput {LAlt Down}
    sleep, 10
    SendInput {Tab}
    sleep, 50
    SendInput {enter}
    sleep, 10
    SendInput {LAlt Up}
}