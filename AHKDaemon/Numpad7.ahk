Numpad7::
OldAltTabFunctionNumpad7()

; Test switch of 1 window
; F1::AltTabFunction(offset:=1)

; Test switch of 2 windows
; F2::AltTabFunction(offset:=2)

; AltTabFunction(offset:=1)

return

SecondsLeftLaunchForkChange(intForSeconds)
{
FileDelete, %A_ScriptDir%\SecondsLeftFile.txt
FileAppend, %intForSeconds%`n, %A_ScriptDir%\SecondsLeftFile.txt
FileReadLine, line, %A_ScriptDir%\SecondsLeftFile.txt, 1
return line
}
BooleanLaunchForkChangeToFalse2()
{
FileDelete, %A_ScriptDir%\BooleanFile2.txt
FileAppend, False`n, %A_ScriptDir%\BooleanFile2.txt
FileReadLine, line, %A_ScriptDir%\BooleanFile2.txt, 1
return line
}
BooleanLaunchForkChangeToTrue2()
{
FileDelete, %A_ScriptDir%\BooleanFile2.txt
FileAppend, True`n, %A_ScriptDir%\BooleanFile2.txt
FileReadLine, line, %A_ScriptDir%\BooleanFile2.txt, 1
return line
}

OldAltTabFunctionNumpad7()
{
SendInput {LAlt Down}
sleep, 1
SendInput {Tab}
sleep, 50
SendInput {Tab}
sleep, 10
SendInput {enter}
sleep, 1
SendInput {LAlt Up}
}

; taken from https://stackoverflow.com/questions/35971452/what-is-the-right-way-to-send-alt-tab-in-ahk/55321752#55321752
AltTabFunctionNumpad7(offset:=1)
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