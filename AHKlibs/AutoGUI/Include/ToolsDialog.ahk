ShowToolsDialog:
    Gui ToolsDlg: New, +LabelToolsDlg +hWndhToolsDlg
    SetWindowIcon(hToolsDlg, IconLib, 43)
    Gui Color, White

    ; Header
    Gui Add, Progress, x-1 y0 w808 h49 -Smooth +Background008EBC +Border, 0
    Gui Add, Picture, x8 y9 w32 h32 +BackgroundTrans +Icon43, %IconLib%
    Gui Font, s12 cWhite, Segoe UI
    Gui Add, Text, x44 y10 w120 h23 +0x200 +BackgroundTrans, Tools
    Gui Font
    Gui Add, Text, x0 y46 w810 h2 0x10 ; Separator

    Gui Font, s9, Segoe UI
    Gui Add, ListView, hWndhToolList gToolListHandler x8 y56 w224 h308 -Hdr -Multi +LV0x14000 +AltSubmit, Tools
    Gui Add, Button, gAddTool x6 y370 w84 h24 +Default, &Add
    Gui Add, Button, gRemoveTool x93 y370 w84 h24, &Remove
    Gui Add, Button, hWndhBtnUp gMoveToolUp x181 y370 w24 h24
    GuiButtonIcon(hBtnUp, IconLib, 127, "L2 T1")
    Gui Add, Button, hWndhBtnDown gMoveToolDown x209 y370 w24 h24
    GuiButtonIcon(hBtnDown, IconLib, 128, "L2 T1")

    Gui Add, Text, x243 y67 w88 h23 +0x200 Right Hidden, Title
    Gui Add, Edit, vEdtToolTitle gUpdateToolTitle x341 y67 w450 h22 Hidden

    Gui Add, Text, x243 y105 w88 h23 +0x200 Right Hidden, File
    Gui Add, Edit, vEdtToolFile x341 y105 w362 h22 Hidden
    Gui Add, Button, vBtnToolFile gSelectTool x708 y103 w84 h24 Hidden, Browse...

    Gui Add, Text, x243 y143 w88 h23 +0x200 Right Hidden, Parameters
    Gui Add, Edit, vEdtToolParams x341 y143 w362 h22 Hidden
    Gui Add, Button, hWndhBtnToolParams vBtnToolParams gShowToolParamsMenu x708 y141 w84 h24 Hidden, Choose

    Gui Add, Text, x243 y181 w88 h23 +0x200 Right Hidden, Working Dir
    Gui Add, Edit, vEdtToolWorkingDir x341 y181 w362 h22 Hidden
    Gui Add, Button, vBtnToolWorkingDir gSelectWorkingDir x708 y179 w84 h24 Hidden, Browse...

    Gui Add, Text, x243 y219 w88 h23 +0x200 Right Hidden, Icon
    Gui Add, Edit, vEdtToolIcon x341 y219 w314 h22 Hidden
    Gui Add, Edit, vEdtToolIconIndex x656 y219 w47 h22 Hidden
    Gui Add, Button, vBtnToolIcon gChooseToolIcon x708 y217 w84 h24 Hidden, Browse...

    ; Footer
    Gui Add, Text, x-1 y400 w809 h48 +0x200 -Background +Border
    Gui Add, Button, gToolsDlgOK x523 y412 w84 h24, &OK
    Gui Add, Button, gToolsDlgClose x616 y412 w84 h24, Cancel
    Gui Add, Button, gToolsDlgApply x708 y412 w84 h24, Apply

    Gui Show, w806 h447, Configure Tools

    GoSub LoadTools

    DllCall("UxTheme.dll\SetWindowTheme", "Ptr", hToolList, "WStr", "Explorer", "Ptr", 0)
Return

LoadTools:
    Global Tools := []
    Global CurrentRow := 0
    Global ToolsImageList := IL_Create(100)

    IniRead IniSections, %g_IniTools%

    Loop Parse, IniSections, `n, `r
    {
        File       := ReadIni(g_IniTools, A_LoopField, "File")
        Params     := ReadIni(g_IniTools, A_LoopField, "Params", "")
        WorkingDir := ReadIni(g_IniTools, A_LoopField, "WorkingDir", "")
        Icon       := ReadIni(g_IniTools, A_LoopField, "Icon", "")
        IconIndex  := ReadIni(g_IniTools, A_LoopField, "IconIndex", 1)

        ILIndex := IL_Add(ToolsImageList, GetToolIconPath(Icon), IconIndex)
        LV_Add("Icon" . ILIndex, A_LoopField)

        SetToolValues(A_Index, A_LoopField, File, Params, WorkingDir, Icon, IconIndex)
    }

    LV_SetImageList(ToolsImageList)

    LV_ModifyCol(1, "AutoHdr")
Return

ReloadTools:
    Gui ToolsDlg: Default

    ToolsImageList := IL_Create(100)
    LV_Delete()
    LV_SetImageList(ToolsImageList)

    For Each, Item in Tools {
        If (Item.Icon != "") {
            IconIndex := IL_Add(ToolsImageList, GetToolIconPath(Item.Icon), Item.IconIndex)
        } Else {
            IconIndex := 0
        }

        LV_Add("Icon" . IconIndex, Item.Title)
    }

    LV_ModifyCol(1, "AutoHdr")
Return

ToolsDlgEscape:
ToolsDlgClose:
    Gui ToolsDlg: Destroy
Return

ToolsDlgClear:
    GuiControl,, EdtToolTitle
    GuiControl,, EdtToolFile
    GuiControl,, EdtToolParams
    GuiControl,, EdtToolWorkingDir
    GuiControl,, EdtToolIcon
    GuiControl,, EdtToolIconIndex
Return

AddTool:
    GoSub ShowToolFields

    Gui ListView, %hToolList%
    CurrentRow := LV_Add("Icon 0", "")
    LV_Modify(CurrentRow, "Select")

    GoSub ToolsDlgClear

    GoSub SelectTool

    LV_ModifyCol(1, "AutoHdr")
    SendMessage 0x115, 7, 0,, ahk_id %hToolList% ; WM_VSCROLL, SB_BOTTOM
Return

RemoveTool:
    Gui ListView, %hToolList%
    Row := LV_GetNext()
    If (Row) {
        LV_Delete(Row)
        Tools.RemoveAt(Row)
        GoSub ToolsDlgClear
        CurrentRow := 0
        LV_ModifyCol(1, "AutoHdr")
    }
Return

MoveToolUp:
    Gui ListView, %hToolList%
    Index := LV_GetNext()
    If (Index == 0 || Index == 1) {
        Return
    }

    Gui ToolsDlg: Submit, NoHide
    SetToolValues(Index, EdtToolTitle, EdtToolFile, EdtToolParams, EdtToolWorkingDir, EdtToolIcon, EdtToolIconIndex)

    TempItem := Tools[Index]
    PrevItem := Tools[Index - 1]
    Tools[Index] := PrevItem
    Tools[Index - 1] := TempItem
    CurrentRow--

    GoSub ReloadTools

    GuiControl Focus, %hToolList%
    LV_Modify(Index - 1, "Select")
Return

MoveToolDown:
    Gui ListView, %hToolList%
    Index := LV_GetNext()
    If (Index == 0 || Index == LV_GetCount()) {
        Return
    }

    TempItem := Tools[Index]
    NextItem := Tools[Index + 1]
    Tools[Index] := NextItem
    Tools[Index + 1] := TempItem
    CurrentRow++

    GoSub ReloadTools

    GuiControl Focus, %hToolList%
    LV_Modify(Index + 1, "Select")
Return

SelectTool:
    Gui ToolsDlg: +OwnDialogs
    FileSelectFile SelectedFile, 3,, Select File
    If (ErrorLevel) {
        Return
    }

    GuiControl, ToolsDlg:, EdtToolFile, %SelectedFile%

    Gui ToolsDlg: Submit, NoHide

    SplitPath SelectedFile,,, Extension, NameNoExt

    If (EdtToolTitle == "" && IsToolTitleAvailable(NameNoExt)) {
        GuiControl, ToolsDlg:, EdtToolTitle, %NameNoExt%
    }

    If (Extension = "EXE") {
        GuiControl, ToolsDlg:, EdtToolIcon, %SelectedFile%
        ILIndex := IL_Add(ToolsImageList, SelectedFile, 1)
        LV_Modify(LV_GetNext(), "Icon" . ILIndex)
    }
Return

ChooseToolIcon:
    If !(Row := LV_GetNext()) {
        Return
    }

    Gui ToolsDlg: Submit, NoHide

    SplitPath EdtToolFile,,, ToolExt
    If (FileExist(EdtToolIcon)) {
        ToolIcon := EdtToolIcon
    } Else {
        ToolIcon := (ToolExt = "exe") ? EdtToolFile : "shell32.dll"
    }

    If (ChooseIcon(ToolIcon, EdtToolIconIndex, hToolsDlg)) {
        Gui ToolsDlg: Default
        GuiControl,, EdtToolIcon, %ToolIcon%
        GuiControl,, EdtToolIconIndex, %EdtToolIconIndex%
        ILIndex := IL_Add(ToolsImageList, ToolIcon, EdtToolIconIndex)
        LV_Modify(Row, "Icon" . ILIndex)
    }
Return

ToolsDlgOK:
ToolsDlgApply:
    Gui ToolsDlg: Submit, NoHide
    Gui ListView, %hToolList%

    Row := LV_GetNext()
    If (Row) {
        SetToolValues(Row, EdtToolTitle, EdtToolFile, EdtToolParams, EdtToolWorkingDir, EdtToolIcon, EdtToolIconIndex)
    }

    ; Check for tools with the same title
    Loop % Tools.Length() {
        i := A_Index
        Loop % Tools.Length() {
            If (i <= A_Index) {
                Continue
            }

            If (Tools[i].Title == Tools[A_Index].Title) {
                Message := "More than one tool has the title """ . Tools[i].Title . """."
                Edit_ShowBalloonTip(hEdtToolTitle, Message, "The title must be unique", 2)
            }
        }
    }

    Loop % GetMenuItemCount(MenuGetHandle("AutoToolsMenu")) {
        Try {
            Menu AutoToolsMenu, Delete, 3&
        }
    }

    Loop % Tools.Length() {
        If (Tools[A_Index].Title == "" || Tools[A_Index].File == "") {
            Continue
        }

        Icon := GetToolIconPath(Tools[A_Index].Icon)
        Try {
            AddMenu("AutoToolsMenu", Tools[A_Index].Title, "RunTool", Icon, Tools[A_Index].IconIndex)
        }
    }

    If (Tools.Length()) {
        Menu AutoToolsMenu, Add
    }
    AddMenu("AutoToolsMenu", "Configure Tools...", "ShowToolsDialog", IconLib, 43)

    ; Check for writing permission
    FileAppend,, %g_IniTools%, UTF-16
    If (ErrorLevel) {
        FileCreateDir %A_AppData%\AutoGUI
        g_IniTools := A_AppData . "\AutoGUI\Tools.ini"
    }

    FileDelete %g_IniTools%

    Loop % Tools.Length() {
        Section := Tools[A_Index].Title
        If (Section == "" || Tools[A_Index].File == "") {
            Continue
        }

        IniWrite % Tools[A_Index].File, %g_IniTools%, %Section%, File

        If (Tools[A_Index].Params != "") {
            IniWrite % Tools[A_Index].Params, %g_IniTools%, %Section%, Params
        }

        If (Tools[A_Index].WorkingDir != "") {
            IniWrite % Tools[A_Index].WorkingDir, %g_IniTools%, %Section%, WorkingDir
        }

        If (Tools[A_Index].Icon != "") {
            IniWrite % Tools[A_Index].Icon, %g_IniTools%, %Section%, Icon
            If (Tools[A_Index].IconIndex > 1) {
                IniWrite % Tools[A_Index].IconIndex, %g_IniTools%, %Section%, IconIndex
            }
        }
    }

    If (A_ThisLabel == "ToolsDlgOK") {
        Gui ToolsDlg: Destroy
    } Else {
        If (Row) {
            ILIndex := IL_Add(ToolsImageList, GetToolIconPath(Tools[Row].Icon), Tools[Row].IconIndex)
            LV_Modify(Row, "Icon" . ILIndex)
        }
    }
Return

ToolListHandler:
    If ((A_GuiEvent == "Normal" || A_GuiEvent == "K") && LV_GetNext()) {
        If (CurrentRow) {
            Gui ToolsDlg: Submit, NoHide
            SetToolValues(CurrentRow, EdtToolTitle, EdtToolFile, EdtToolParams, EdtToolWorkingDir, EdtToolIcon, EdtToolIconIndex)
        }

        Gui ToolsDlg: Default
        CurrentRow := LV_GetNext()
        GuiControl,, EdtToolTitle, % Tools[CurrentRow].Title
        GuiControl,, EdtToolFile, % Tools[CurrentRow].File
        GuiControl,, EdtToolParams, % Tools[CurrentRow].Params
        GuiControl,, EdtToolWorkingDir, % Tools[CurrentRow].WorkingDir
        GuiControl,, EdtToolIcon, % Tools[CurrentRow].Icon
        GuiControl,, EdtToolIconIndex, % Tools[CurrentRow].IconIndex
        GoSub ShowToolFields
    }
Return

SetToolValues(Index, Title, File, Params, WorkingDir, Icon, IconIndex) {
    Tools[Index] := {}
    Tools[Index].Title := Title
    Tools[Index].File := File
    Tools[Index].Params := Params
    Tools[Index].WorkingDir := WorkingDir
    Tools[Index].Icon := Icon
    Tools[Index].IconIndex := IconIndex
}

UpdateToolTitle:
    Gui ToolsDlg: Submit, NoHide
    Gui ListView, %hToolList%
    Row := LV_GetNext()
    If (Row) {
        LV_Modify(Row,, EdtToolTitle)
        Tools[Row].Title := EdtToolTitle
    }
Return

SelectWorkingDir:
    GuiControlGet ToolFile, ToolsDlg:, EdtToolFile
    SplitPath ToolFile,, StartingFolder
    Gui ToolsDlg: +OwnDialogs
    FileSelectFolder SelectedFolder, *%StartingFolder%,, Select Folder
    If (!ErrorLevel) {
        GuiControl, ToolsDlg:, EdtToolWorkingDir, %SelectedFolder%
    }
Return

ShowToolFields:
    Gui ToolsDlg: Default
    GuiControl Show, Title
    GuiControl Show, EdtToolTitle

    GuiControl Show, File
    GuiControl Show, EdtToolFile
    GuiControl Show, BtnToolFile

    GuiControl Show, Parameters
    GuiControl Show, EdtToolParams
    GuiControl Show, BtnToolParams

    GuiControl Show, Working Dir
    GuiControl Show, EdtToolWorkingDir
    GuiControl Show, BtnToolWorkingDir

    GuiControl Show, Icon
    GuiControl Show, EdtToolIcon
    GuiControl Show, EdtToolIconIndex
    GuiControl Show, BtnToolIcon
Return

GetToolIconPath(Icon) {
    If (Icon != "" && !FileExist(Icon)) {
        If (FileExist(A_ScriptDir . "\Icons\" . Icon)) {
            Return A_ScriptDir . "\Icons\" . Icon
        }
    }
    Return Icon
}

ShowToolParamsMenu:
    Menu Placeholders, Add, "{FILENAME}", InsertPlaceholder
    Menu Placeholders, Add, "{FILEDIR}", InsertPlaceholder
    Menu Placeholders, Add, "{SELECTEDTEXT}", InsertPlaceholder
    Menu Placeholders, Add, "{AUTOGUIDIR}", InsertPlaceholder

    hParamsMenu := MenuGetHandle("Placeholders")
    WingetPos wx, wy, ww, wh, ahk_id %hToolsDlg%
    ControlGetPos cx, cy, cw, ch,, ahk_id %hBtnToolParams%
    x := wx + cx + cw
    y := wy + cy + ch
    DllCall("TrackPopupMenu", "Ptr", hParamsMenu, "UInt", 0x8, "Int", x, "Int", y, "Int", 0, "Ptr", hToolsDlg, "Ptr", 0)
Return

InsertPlaceholder:
    GuiControlGet hWnd, ToolsDlg: Hwnd, EdtToolParams
    Control EditPaste, %A_ThisMenuItem%,, ahk_id %hWnd%
Return

IsToolTitleAvailable(ToolTitle) {
    For Each, Tool in Tools {
        If (Tool.Title == ToolTitle) {
            Return False
        }
    }
    Return True
}

; IniRead doesn't preserve trailing quotes
ReadIni(IniFile, Section, Key, Default := "ERROR") {
    IniRead IniSections, %IniFile%
    Loop Parse, IniSections, `n, `r
    {
        SectionName := A_LoopField

        If (SectionName == Section) {
            IniRead SectionContent, %IniFile%, %SectionName%
            Loop Parse, SectionContent, `n, `r
            {
                SectionKey := SubStr(A_LoopField, 1, Pos := InStr(A_LoopField, "=") - 1)
                If (SectionKey == Key) {
                    Value := SubStr(A_LoopField, Pos + 2)
                    Return (Value == "") ? Default : Value
                }
            }
        }
    }

    Return Default
}
