Clipy2DeleteContent:
    FileRemoveDir, AhkClipboardLib, 1
return
Clipy2Initialize:
    FileRemoveDir, AhkClipboardLib, 1
    FileCreateDir, AhkClipboardLib

    Loop, 16
        {
            clipboardAppendNumber%a_index% := a_Index
            clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
            FileAppend, %clipboardAppendvariableDynamic%, AhkClipboardLib/clipyText%a_index%.txt
        }
return
OpenClipy2Directory:
Run, AhkClipboardLib
return
Clipy2:
WinActivate ahk_id %previous_ID%
  MC_NumClip := 32
  MC_MaxLen := 64
  MC_NullMenu := " "
Goto, MC_PasteMenu
MC_Paste:
  Send, ^v
return
MC_Cut:
  IfWinNotActive, Visual SlickEdit
    Send, ^x
  Else
    Send, +{DEL}
return
; Commented because of Ditto integration replacing the selfwritten ahk clipboard manager
; OnClipboardChange:

MC_PasteMenu:
  MyShow := false
ArrayElement := Object()
element := Object()
ArrayCount = 0
Loop, 16
    {
    FileRead, OutputVarForDynamicBulding%a_index%, AhkClipboardLib/clipyText%a_index%.txt
    }
  Menu, MC_Temp, Add
  Menu, MC_Temp, DeleteAll
  Loop 16
  {
    MyText := SubStr(OutputVarForDynamicBulding%a_index%, 1, 64)
    if (MyText <> "")
    {
      Menu, MC_Temp, Add, %MyText%, MC_Select1
      MyShow := true
    }
  }
    if (MyShow)
    Menu, MC_Temp, Show
return
MC_Select1:
    clipboard := OutputVarForDynamicBulding%A_ThisMenuItemPos%
    Gosub, MC_Paste
    WinClose ahk_class AutoHotkeyGUI
return
MC_Select:
    textToCopy := ArrayElement%A_ThisMenuItemPos%
    MsgBox %textToCopy%
    Gosub, MC_Paste
return
return