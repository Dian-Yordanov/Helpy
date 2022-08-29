; AutoHotkey Scripts Manager
; Derived from a script written by tmplinshi
; Tested on AHK v1.1.24.04 Unicode 32-bit, Windows XP/7/10

#NoEnv
#SingleInstance Force
#NoTrayIcon
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows On
SetBatchLines -1
Menu Tray, UseErrorLevel

#Include %A_ScriptDir%\..\Lib\AutoXYWH.ahk

Global AppName := "AutoHotkey Scripts Manager"
     , Version := "1.1.0"
     , Commands := {"Reload Script": 65400
           , "Edit Script": 65401
           , "Suspend Hotkeys": 65404
           , "Pause Script": 65403
           , "Exit Script": 65405
           , "Recent Lines": 65406
           , "Variables": 65407
           , "Hotkeys": 65408
           , "Key history": 65409
           , "AHK User Manual": 65411}
    , IconLib := "..\Icons\Scripts Manager.icl"

Menu Tray, Icon, %IconLib%

Gui +hWndhMainWnd +Resize

AddMenu("ActionMenu", "&Reload Script`tCtrl+R",, IconLib, 2)
AddMenu("ActionMenu", "&Edit Script`tCtrl+E",, IconLib, 3)
AddMenu("ActionMenu", "Edit with &AutoGUI`tCtrl+G", "EditWithAutoGUI", "..\Icons\AutoGUI.icl", 1)
Menu ActionMenu, Add
AddMenu("ActionMenu", "&Suspend Hotkeys`tCtrl+S",, IconLib, 4)
AddMenu("ActionMenu", "&Pause Script`tPause",, IconLib, 5)
Menu ActionMenu, Add
AddMenu("ActionMenu", "E&xit Script`tDel",, IconLib, 6)
Menu ActionMenu, Add
AddMenu("ActionMenu", "&Open Folder`tCtrl+O", "OpenFolder", IconLib, 11)
AddMenu("ActionMenu", "&Copy Path`tCtrl+P", "CopyPath", IconLib, 12)
Menu ActionMenu, Add
AddMenu("ActionMenu", "Exi&t Scripts Manager`tEsc", "GuiClose", IconLib, 13)

AddMenu("InspectMenu", "Recent &Lines`tCtrl+L",, IconLib, 7)
AddMenu("InspectMenu", "&Variables`tCtrl+V",, IconLib, 8)
AddMenu("InspectMenu", "&Hotkeys`tCtrl+H",, IconLib, 9)
AddMenu("InspectMenu", "&Key history`tCtrl+K",, IconLib, 10)

AddMenu("HelpMenu", "AHK User &Manual`tF1",, "hh.exe")
Menu HelpMenu, Add
AddMenu("HelpMenu", "&About", "ShowAbout", "user32.dll", 5)

Menu MenuBar, Add, &Action, :ActionMenu
Menu MenuBar, Add, &Inspect, :InspectMenu
Menu MenuBar, Add, &Help, :HelpMenu
Gui Menu, MenuBar

Gui Font, s9, Segoe UI
Gui Add, ListView, hWndhLV vList gLVHandler x0 y28 w620 h285 +LV0x14000 AltSubmit, Filename|Path|PID
LV_ModifyCol(1, 174)
LV_ModifyCol(2, 387)
LV_ModifyCol(3, "53 Integer Left")

ImageList := IL_Create(10)
IL_Add(ImageList, A_AhkPath)
LV_SetImageList(ImageList)

Gui Show, w620 h336, %AppName%

Gui, Add, Custom, ClassToolbarWindow32 hWndhToolbar gToolbarHandler 0x900 ; Flat, tooltips
GoSub SetToolbar

Gui Add, StatusBar
Gui Font
;Started:|CPU Usage:|Working Size:|Virtual Size:|32/64-bit (Image Type)
SB_SetParts(175, 105, 141, 141)
SB_SetText("Started:", 1)
;SB_SetText("CPU Usage:", 2)
SB_SetText("Working Size:", 3)
SB_SetText("Virtual Size:", 4)

RegRead Sep, HKEY_CURRENT_USER\Control Panel\International, ssThousand
If (Sep == "") {
    Sep := "."
}

DllCall("UxTheme.dll\SetWindowTheme", "Ptr", hLV, "WStr", "Explorer", "Ptr", 0)

GoSub LoadList

Menu ContextMenu, Add, Reload Script, MenuHandler
Menu ContextMenu, Add, Edit Script, MenuHandler
Menu ContextMenu, Add, Edit with AutoGUI, EditWithAutoGUI
Menu ContextMenu, Add
Menu ContextMenu, Add, Suspend Hotkeys, MenuHandler
Menu ContextMenu, Add, Pause Script, MenuHandler
Menu ContextMenu, Add
Menu ContextMenu, Add, Exit Script, MenuHandler
Menu ContextMenu, Add
Menu ContextMenu, Add, Open Folder, OpenFolder
Menu ContextMenu, Add, Copy Path, CopyPath

SetTimer AutoReload, 1000

Hotkey IfWinActive, ahk_id %hMainWnd%
Hotkey F5, ReloadList
Hotkey ^A, SelectAll
Hotkey ^C, CopySelectedItems

Return ; End of the auto-execute section

ReloadList:
    LV_Delete()
    IL_Destroy(ImageList)
    ImageList := IL_Create(10)
    IL_Add(ImageList, A_AhkPath)
    IL_Add(ImageList, IconLib)
    LV_SetImageList(ImageList)

LoadList:
    SetTimer AutoReload, Off

    StrQuery := "Select * from Win32_Process Where Name Like 'AutoHotkey%'"
    For Process in ComObjGet("winmgmts:").ExecQuery(StrQuery) {
        CommandLine := StrReplace(Process.CommandLine, Process.ExecutablePath)
        If RegExMatch(CommandLine, "(.:[^:]+\\([^\x22]+))", m) {
            PID := Process.ProcessId

            hIcon := GetWindowIconByPID(PID)
            If (hIcon) {
                IconIndex := IL_Add(ImageList, "HICON: " . hIcon)
                Icon := (IconIndex) ? IconIndex : 2
            } Else {
                Icon := 1
            }

            LV_Add("Icon" . Icon, m2, m1, PID)
        }
    }

    LV_Modify(1, "Select")
    GoSub UpdateStatusBar

    SetTimer AutoReload, On
Return

GuiSize:
    If (A_EventInfo == 1) {
        Return
    }

    AutoXYWH("wh", hLV)
    ControlMove ToolbarWindow321,,, %A_GuiWidth%
Return

GuiContextMenu:
    If (A_GuiControl == "List" && LV_GetNext()) {
        Menu ContextMenu, Show    
    }
Return

GuiEscape:
GuiClose:
    ExitApp

GetSelectedItems() {
    Local Row := 0, Items := []

    While (Row := LV_GetNext(Row)) {
        LV_GetText(Path, Row, 2)
        LV_GetText(PID, Row, 3)
        Items.Push({"PID": PID, "Path": Path})
    }

    Return Items
}

MenuHandler:
    MenuItem := StrReplace(RegExReplace(A_ThisMenuItem, "\t.*"), "&")
    ExecCommand(MenuItem)
Return

OpenFolder:
    Items := GetSelectedItems()
    For Each, Item in Items {
        Filename := Item.Path
        Run *open explorer.exe /select`,"%Filename%"
    }
Return

CopyPath:
    Filenames := ""
    Items := GetSelectedItems()
    For Each, Item in Items {
        Filenames .= Item.Path . "`r`n"
    }
    Clipboard := RTrim(Filenames, "`r`n")
Return

CopySelectedItems:
    ControlGet SelectedItems, List, Selected, SysListView321
    Clipboard := SelectedItems
Return

SelectAll:
    GuiControl Focus, %hLV%
    LV_Modify(0, "Select")
Return

EditWithAutoGUI:
    Items := GetSelectedItems()

    If (!hWnd := WinExist("AutoGUI v")) {
        Try {
            Run ..\AutoGUI.ahk,,, AutoGUIPID
        } Catch e {
            MsgBox 0x10, Error %A_LastError%, % e.Message . "`n`n" . e.Extra
            Return
        }

        WinWaitActive ahk_pid %AutoGUIPID%,, 3
        If (ErrorLevel) {
            MsgBox 0x15, %AppName%, Window activation timed out. Try again?
            IfMsgBox Retry, {
                GoSub EditWithAutoGUI
            }
            Return
        } Else {
            WinGet hWnd, ID, ahk_pid %AutoGUIPID%
        }
    }

    Sent := False
    For Each, Item in Items {
        Loop 10 {
            If (SendData(Item.Path, hWnd) == True) {
                Sent := True
                Break
            } Else {
                Sent := False
                Sleep 100
            }
        }

        If (!Sent) {
            MsgBox 0x10, %AppName%, % "IPC Error: failed to send filename to AutoGUI:`n" . Item.Path
        }
    }

    WinActivate ahk_id %hWnd%
Return

SendData(ByRef String, ByRef hWnd) {
    VarSetCapacity(COPYDATASTRUCT, 3 * A_PtrSize, 0)
    cbSize := (StrLen(String) + 1) * (A_IsUnicode ? 2 : 1)
    NumPut(cbSize, COPYDATASTRUCT, A_PtrSize)
    NumPut(&String, COPYDATASTRUCT, 2 * A_PtrSize)
    SendMessage 0x4A, 0, &COPYDATASTRUCT,, ahk_id %hWnd%
    Return ErrorLevel
}

GetWindowIconByPID(PID) {
    WinGet WinIDs, List, ahk_class AutoHotkeyGUI ahk_PID %PID%

    Loop %WinIDs% {
        SendMessage 0x7F, 0, 0,, % "ahk_id " WinIDs%A_Index% ; WM_GETICON
        If (ErrorLevel) {
            Return ErrorLevel
        }
    }
    Return 0
}

GetScriptState(PID, State) {
    WinGet hWnd, ID, ahk_class AutoHotkey ahk_pid %PID%
    If (WinExist("ahk_id " . hWnd)) {
        Command := (State == "S") ? 65404 : 65403
        hMenu := DllCall("GetMenu", "Ptr", hWnd)
        Checked := DllCall("GetMenuState", "Ptr", hMenu, "UInt", Command, "UInt", 0x0) ; By command
        Return Checked == 0x8
    } Else {
        Return 0
    }
}

UpdateToolbar:
    LV_GetText(PID, LV_GetNext(), 3)
    SendMessage 0x402, 10003, % GetScriptState(PID, "S"),, ahk_id %hToolbar% ; TB_CHECKBUTTON
    SendMessage 0x402, 10004, % GetScriptState(PID, "P"),, ahk_id %hToolbar% ; Pause is set on WM_ENTERMENULOOP
Return

ShowAbout:
    Gui +OwnDialogs
    MsgBox 0x40, About, %AppName% %Version%
Return

LVHandler:
    If (A_GuiEvent == "C" || A_GuiEvent == "K") {
        SetTimer UpdateStatusBar, -1
        GoSub UpdateToolbar
    }
Return

UpdateStatusBar:
    LV_GetText(PID, LV_GetNext(), 3)

    StrQuery := "SELECT * FROM Win32_Process WHERE ProcessId=" . PID
    QueryEnum := ComObjGet("winmgmts:").ExecQuery(StrQuery)._NewEnum()
    If (QueryEnum[Process]) {

        CreationDate := Process.CreationDate
        SubStr(CreationDate, 1, InStr(CreationDate, ".") - 1)
        FormatTime CreationDate, %CreationDate% D1 T0 ; Short date and time with seconds

        WorkingSetSize := "Working Size: " . FormatBytes(Process.WorkingSetSize, Sep)
        VirtualSize := "Virtual Size: " . FormatBytes(Process.VirtualSize, Sep)

        SB_SetText("Started: " . CreationDate, 1)
        SB_SetText(WorkingSetSize, 3)
        SB_SetText(VirtualSize, 4)
        SB_SetText(Is32Bit(PID) ? "32-bit" : "64-bit", 5)
    }

    /*
    If (CPU := GetCPUUsage(PID)) {
        SB_SetText("CPU Usage: " . CPU, 2)
    }
    */
Return

/*
GetCPUUsage(PID) {
    Static Processors := 0
    winmgmts := ComObjGet("winmgmts:") 
    If (!Processors) {
        Sys := winmgmts.ExecQuery("Select * from Win32_ComputerSystem")._NewEnum
        Processors := Sys[Sys] ? Sys.NumberOfLogicalProcessors : 1
    }

    StrQuery := "SELECT PercentProcessorTime FROM Win32_PerfFormattedData_PerfProc_Process WHERE IDProcess = " . PID
    For Process in winmgmts.ExecQuery(StrQuery) {
        CPUUsage := Format("{1:0.2f}", Process.PercentProcessorTime / Processors)
    }

    Return CPUUsage := (CPUUsage) ? CPUUsage : "0.00"
}
*/

FormatBytes(n, sThousand := ".") {
    If (n > 999) {
        n /= 1024
        Unit := " K"
    } Else {
        Unit := " B"
    }

    a := ""
    Loop % StrLen(n) {
        a .= SubStr(n, 1 - A_Index, 1)
        If (Mod(A_Index, 3) == 0) {
            a .= sThousand
        }
    }

    a := RTrim(a, sThousand)

    b := ""
    Loop % StrLen(a) {
        b .= SubStr(a, 1 - A_Index, 1)
    }

    Return b . Unit
}

Is32Bit(PID) {
    hProc := DllCall("OpenProcess", "UInt", 0x400, "Int", False, "UInt", PID, "Ptr") ; PROCESS_QUERY_INFORMATION

    If (A_Is64bitOS) {
        ; Determines whether the specified process is running under WOW64.
        Try DllCall("IsWow64Process", "Ptr", hProc, "Int*", Is32Bit := True)
    } Else {
        Is32Bit := True
    }

    DllCall("CloseHandle", "Ptr", hProc)

    Return Is32Bit
}

AutoReload:
    PIDSum1 := 0 
    StrQuery := "Select * from Win32_Process Where Name Like 'AutoHotkey%'"
    For Process in ComObjGet("winmgmts:").ExecQuery(StrQuery) {
        PIDSum1 += Process.ProcessId
    }

    PIDSum2 := 0
    Loop % LV_GetCount() {
        LV_GetText(PID, A_Index, 3)
        PIDSum2 += PID
    }

    If (PIDSum1 != PIDSum2) {
        GoSub ReloadList
    }
Return

AddMenu(MenuName, MenuItemName := "", Subroutine := "MenuHandler", Icon := "", IconIndex := 1) {
    Menu, %MenuName%, Add, %MenuItemName%, %Subroutine%

    If (Icon != "") {
        Menu, %MenuName%, Icon, %MenuItemName%, %Icon%, %IconIndex%
    }
}

ExecCommand(Command) {
    Static WM_COMMAND := 0x111

    Items := GetSelectedItems()
    If (Items.Lenght() != "") {
        Return
    }

    If ((Command == "Reload Script" || Command == "Exit Script") && !GetKeyState("Shift", "P")) {
        If (Items.Length() > 1) {
            Filename := "the selected scripts"
        } Else {
            LV_GetText(Filename, LV_GetNext(), 1)
        }

        Verb := (SubStr(Command, 1, 1) == "R") ? "reload" : "exit"
        MsgBox 0x31, %AppName%, % "Are you sure you want to " . Verb . " " . Filename . "?"
        IfMsgBox Cancel, Return
    }

    For Each, Item in Items {
        ;OutputDebug % Command . " (" Commands[Command] "), PID: " Item.PID
        PostMessage WM_COMMAND, % Commands[Command],,, % "ahk_class AutoHotkey ahk_pid" . Item.PID

        If (Command == "Suspend Hotkeys" || Command == "Pause Script") {
            SetTimer UpdateToolbar, -1
        }
    }

    If (Command == "Exit Script") {
        GoSub ReloadList
    } Else {
        GoSub UpdateStatusBar    
    }
}

SetToolbar:
    TBIL := IL_Create(11)
    IL_Add(TBIL, IconLib, 2)
    IL_Add(TBIL, IconLib, 3)
    IL_Add(TBIL, IconLib, 4)
    IL_Add(TBIL, IconLib, 5)
    IL_Add(TBIL, IconLib, 6)

    IL_Add(TBIL, IconLib, 7)
    IL_Add(TBIL, IconLib, 8)
    IL_Add(TBIL, IconLib, 9)
    IL_Add(TBIL, IconLib, 10)

    IL_Add(TBIL, IconLib, 11)
    IL_Add(TBIL, IconLib, 12)

    Buttons = 
    (LTrim
        Reload Script
        Edit Script
        Suspend Hotkeys
        Pause Script
        Exit Script
        -
        Recent Lines
        Variables
        Hotkeys
        Key History
        -
        Open Folder
        Copy Path
    )
    Buttons := StrSplit(Buttons, "`n")
    
    TBBUTTON_Size := A_PtrSize == 8 ? 32 : 20
    cButtons := Buttons.Length()
    VarSetCapacity(TBBUTTONS, TBBUTTON_Size * cButtons , 0)

    Index := 0
    Loop %cButtons% {
        If (Buttons[A_Index] == "-") {
            iBitmap := 0
            idCommand := 0
            fsStyle := 1 ; BTNS_SEP
            iString := -1
        } Else {
            Index++
            iBitmap := Index - 1
            idCommand := 10000 + Index
            fsStyle := 0
            iString := &(ButtonText%Index% := Buttons[A_Index])
        }

        Offset := (A_Index - 1) * TBBUTTON_Size
        NumPut(iBitmap, TBBUTTONS, Offset, "Int") ; iBitmap
        NumPut(idCommand, TBBUTTONS, Offset + 4, "Int") ; idCommand
        NumPut(0x4, TBBUTTONS, Offset + 8, "UChar") ; fsState (TBSTATE_ENABLED)
        NumPut(fsStyle, TBBUTTONS, Offset + 9, "UChar") ; fsStyle
        NumPut(iString, TBBUTTONS, Offset + (A_PtrSize == 8 ? 24 : 16), "Ptr") ; iString
    }

    SendMessage 0x430, 0, %TBIL%,, % "ahk_id " . hToolbar ; TB_SETIMAGELIST
    SendMessage 0x43C, 0, 0,, % "ahk_id " . hToolbar ; TB_SETMAXTEXTROWS
    SendMessage % A_IsUnicode ? 0x444 : 0x414, %cButtons%, % &TBBUTTONS,, % "ahk_id " . hToolbar ; TB_ADDBUTTONS
    SendMessage 0x421, 0, 0,, % "ahk_id " hToolbar ;TB_AUTOSIZE
Return

ToolbarHandler:
    Code := NumGet(A_EventInfo + 0, A_PtrSize * 2, "Int")
    If (Code == -2) { ; NM_CLICK
        ButtonId := NumGet(A_EventInfo + (3 * A_PtrSize))

        VarSetCapacity(Text, 128)
        SendMessage % A_IsUnicode ? 0x44B : 0x42D, ButtonId, &Text,, ahk_id %hToolbar% ; TB_GETBUTTONTEXT

        If (Text == "Open Folder") {
            GoSub OpenFolder
        } Else If (Text == "Copy Path") {
            GoSub CopyPath
        } Else {
            ExecCommand(Text)
        }
    }
Return
