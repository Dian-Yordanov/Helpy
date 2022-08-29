; Test switch of 1 window
F1::AltTabFunction(offset:=1)

; Test switch of 2 windows
F2::AltTabFunction(offset:=2)

AltTabFunction(offset:=1)
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