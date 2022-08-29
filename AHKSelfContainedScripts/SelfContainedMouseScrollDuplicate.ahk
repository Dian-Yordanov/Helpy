IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked
IniWrite, "False", %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked

IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43

43RefreshPosition()
OnClipboardChange("ClipChanged")

ClipChanged() {
    Critical

    if (WinExist("FastClipboardWMouseWheelCustom_43"))
        {
            GuiControl,43:, EditFieldForClipboard_43Dynamic, % Clipboard

            GuiControlGet, Holdtoclick2_43, 43:
            if(Holdtoclick2_43==0)
            {
                43RefreshPosition()
            }   
        }

    Critical Off
}

global GuiName43 = 43
FastClipboardWMouseWheelRibbonInterface_43:
GuiName43 := 43
Gui, %GuiName43%:Destroy

    ListLines Off
    SetBatchLines, -1
    SetWinDelay, -1
    SetControlDelay, -1
    SendMode, Input

    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos
    previous_ID := 0
    k_Position = x+0 0
    WinGet, current_ID, ID, A
    k_Position = x+0 0
    global BkColor2   := 0x000000   ; Background Color | BGR (BLUE - GREEN - RED)
    global BkColor   := 0x000000   ; Background Color | BGR (BLUE - GREEN - RED)
    global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
    OnMessage(0x0138, "43WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
    OnMessage(0x0133, "43WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
    OnMessage(0x0132, "43WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

    ; This is the lines that make problem with the menu

    OnMessage(0x0083, "43WM_NCCALCSIZE")
    OnMessage(0x0086, "43WM_NCACTIVATE")
    OnMessage(0x0084, "43WM_NCHITTEST")

    Gui, %GuiName43%:New, +Hwnd43hwnd +LastFound +Resize -Caption -Border -DPIScale +MinSize1380x600 -MinimizeBox
    Gui, %GuiName43%:Margin, 10, 10
    Gui, %GuiName43%:Color, 000000
    Gui, %GuiName43%:Color,, Black

    Gui, %GuiName43%:Add, Picture, v43BorderTop, %A_ScriptDir%\ImagesForSelfContainedScripts\\border-top-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderBottom, %A_ScriptDir%\ImagesForSelfContainedScripts\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderLeft, %A_ScriptDir%\ImagesForSelfContainedScripts\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderRight, %A_ScriptDir%\ImagesForSelfContainedScripts\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackN Hwnd43hBtnBackN Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-back-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackH Hwnd43hBtnBackH Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-back-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackP Hwnd43hBtnBackP Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-back-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseN Hwnd43hBtnCloseN, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-close-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseH Hwnd43hBtnCloseH Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-close-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseP Hwnd43hBtnCloseP Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-close-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxN Hwnd43hBtnMaxN, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-maximize-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxH Hwnd43hBtnMaxH Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-maximize-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxP Hwnd43hBtnMaxP Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-maximize-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreN Hwnd43hBtnRestoreN Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-restore-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreH Hwnd43hBtnRestoreH Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-restore-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreP Hwnd43hBtnRestoreP Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-restore-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinN Hwnd43hBtnMinN, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-minimize-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinH Hwnd43hBtnMinH Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-minimize-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinP Hwnd43hBtnMinP Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-minimize-pressed.png

    Gui, %GuiName43%:Add, Picture, v43MenuHover Hwnd43hMenuHover Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-menu-hover.png
    Gui, %GuiName43%:Add, Picture, v43MenuPressed Hwnd43hMenuPressed Hidden1, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-menu-pressed.png
    Gui, %GuiName43%:Add, Picture, v43MenuSelect Hwnd43hMenuSelect, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-menusel.png
    Gui, %GuiName43%:Add, Picture, v43MenuSelectPurple Hwnd43hMenuSelectPurple, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-menusel-purple.png
    Gui, %GuiName43%:Add, Picture, v43MenuAlternativeColour Hwnd43hMenuAlternativeColour, %A_ScriptDir%\ImagesForSelfContainedScripts\\button-menu-hover-alternative-colour.png

    ; VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(43GuiHwnd, TME, 8)

    pic1Location = %A_ScriptDir%\ImagesForSelfContainedScripts\icons\\ahk-icon24x24.png

    Gui, %GuiName43%:Add, Text, x14 y8 vTitleText BackgroundTrans, 
    Gui, %GuiName43%:Add, Text, v43WhiteLineNumberMain x10 yp+2 w1280 0x10

    TextLabelNoPicture("33 33 33", 43, "100", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Information:")
    Gui, %GuiName43%:Add, Text, yp-10 x480 w10 h140 0x11
    Gui, %GuiName43%:Add, Text, yp+40 xp-460 w450 h20 cWhite , You can paste parts of your clipboard very fast using the mouse wheel. 
    Gui, %GuiName43%:Add, Text, yp+16 xp w450 h20 cWhite , The parts are separated by space and you paste the next or last word by going up or down. 
    Gui, %GuiName43%:Add, Text, yp+16 xp w450 h20 cWhite , Copy while the first tick is selected and use the mouse wheel while the second teck is selected.
    Gui, %GuiName43%:Add, Text, yp+16 xp w450 h20 cRed , Hotkey:ctrl+alt+z can be used to start/stop the scroll wheel duplicating
    TextLabelNoPicture("33 33 33", 43, "530", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Check an option:")
    Gui, %GuiName43%:Add, Checkbox , yp+30 xp-80 w250 h20 cWhite vHoldtoclickClipboardOrText_43, Use either clipboard ot SendInput to type text
    GuiControl,43:, HoldtoclickClipboardOrText_43 , 1
    Gui, %GuiName43%:Add, Text, yp+40 xp w350 h20 cWhite , Custom delimeter:
    Gui, %GuiName43%:Add, Edit, cFFFFFF BackgroundTrans Center 0x200 E0x200 yp+20 xp w250 h20 vEditFieldForClipboardMain_43 +Hwnd43EditField_43,(((|||CustomDelimeter|||)))
    Gui, %GuiName43%:Add, Text, yp-100 xp+270 w10 h140 0x11
    TextLabelNoPicture("33 33 33", 43, "825", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Index options:")
    Gui, %GuiName43%:Add, Text, yp+40 xp-90 w300 h20 cWhite, Paste the clipboard into the text field bellow:
    Gui, %GuiName43%:Add, Picture, yp-10 xp+220 h34 w34 g43RefreshButton, %A_ScriptDir%\ImagesForSelfContainedScripts\icons\\refresh-button2.png
    Gui, %GuiName43%:Add, Text, yp+30 xp-220 w150 h20 cWhite, Position of the string list:
    Gui, %GuiName43%:Add, Edit, cFFFFFF BackgroundTrans Center 0x200 E0x200 yp xp+130 w30 h20 vStringListPosition43_43,
    Gui, %GuiName43%:Add, Text, yp-70 x1080 w10 h140 0x11
    TextLabelNoPicture("33 33 33", 43, "1130", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Start the script:")
    Gui, %GuiName43%:Add, Checkbox , yp+30 xp-80 w250 h40 cWhite vHoldtoclick2_43, Use mouse scroll to quickly insert parts of the `n copied text
    Gui, %GuiName43%:Add, Text, y200 x20 v43WhiteLineNumberLesser1 w1380 0x10
    GuiControl,%GuiName43%:, StringListPosition43_43, 0

    SBHelp := {"BTSTB": "Bold (Alt+B)"
            , "BTSTI": "Italic (Alt+I)"
            , "BTSTU": "Underline (Alt+U)"
            , "BTSTS": "Strikeout (Alt+S)"
            , "BTSTH": "Superscript (Ctrl+Shift+""+"")"
            , "BTSTL": "Subscript (Ctrl+""+"")"
            , "BTSTN": "Normal (Alt+N)"
            , "BTTXC": "Text color (Alt+T)"
            , "BTBGC": "Text background"
            , "BTCHF": "Choose font"
            , "BTSIP": "Increase size (Alt+""+"")"
            , "BTSIM": "Decrease size (Alt+""-"")"
            , "BTTAL": "Align left (Ctrl+L)"
            , "BTTAC": "Align center (Ctrl+E)"
            , "BTTAR": "Align right (Ctrl+R)"
            , "BTTAJ": "Align justified"
            , "BTL10": "Linespacing 1 line (Ctrl+1)"
            , "BTL15": "Linespacing 1.5 lines (Ctrl+5)"
            , "BTL20": "Linespacing 2 lines (Ctrl+2)"}
    ; Initial values -------------------------------------------------------------------------------------------------------
    EditW := 800
    EditH := 400
    MarginX := 10
    MarginY := 10
    GuiTitle := "AHK Rich Edit"
    BackColor := "Auto"
    FontName := "Arial"
    FontSize := "10"
    FontStyle := "N"
    FontCharSet := 1
    TextColor := "Auto"
    TextBkColor := "Lime"
    WordWrap := False
    AutoURL := False
    Zoom := "100 %"
    ShowWysiwyg := False
    CurrentLine := 0
    CurrentLineCount := 0
    HasFocus := False
    ; Menus ----------------------------------------------------------------------------------------------------------------
    Menu, Zoom, Add, 200 `%, Zoom
    Menu, Zoom, Add, 150 `%, Zoom
    Menu, Zoom, Add, 125 `%, Zoom
    Menu, Zoom, Add, 100 `%, Zoom100
    Menu, Zoom, Check, 100 `%
    Menu, Zoom, Add, 75 `%, Zoom
    Menu, Zoom, Add, 50 `%, Zoom
    Menu, File, Add, &Open, FileOpen
    Menu, File, Add, &Append, FileAppend
    Menu, File, Add, &Insert, FileInsert
    Menu, File, Add, &Close, FileClose
    Menu, File, Add, &Save, FileSave
    Menu, File, Add, Save &as, FileSaveAs
    Menu, File, Add
    Menu, File, Add, Page &Margins, PageSetup
    Menu, File, Add, &Print, Print
    Menu, File, Add
    ; Menu, File, Add, &Exit, GuiClose
    Menu, Edit, Add, &Undo`tCtrl+Z, Undo
    Menu, Edit, Add, &Redo`tCtrl+Y, Redo
    Menu, Edit, Add
    Menu, Edit, Add, C&ut`tCtrl+X, Cut
    Menu, Edit, Add, &Copy`tCtrl+C, Copy
    Menu, Edit, Add, &Paste`tCtrl+V, Paste
    Menu, Edit, Add, C&lear`tDel, Clear
    Menu, Edit, Add
    Menu, Edit, Add, Select &all `tCtrl+A, SelALL
    Menu, Edit, Add, &Deselect all, Deselect
    Menu, Search, Add, &Find, Find
    Menu, Search, Add, &Replace, Replace
    Menu, Alignment, Add, Align &left`tCtrl+L, AlignLeft
    Menu, Alignment, Add, Align &center`tCtrl+E, AlignCenter
    Menu, Alignment, Add, Align &right`tCtrl+R, AlignRight
    Menu, Alignment, Add, Align &justified, AlignRight
    Menu, Indentation, Add, &Set, Indentation
    Menu, Indentation, Add, &Reset, ResetIndentation
    Menu, LineSpacing, Add, 1 line`tCtrl+1, Spacing10
    Menu, LineSpacing, Add, 1.15 line`tCtrl+3, Spacing11.5
    Menu, LineSpacing, Add, 1.5 lines`tCtrl+5, Spacing15
    Menu, LineSpacing, Add, 2 lines`tCtrl+2, Spacing20
    Menu, Numbering, Add, &Set, Numbering
    Menu, Numbering, Add, &Reset, ResetNumbering
    Menu, Tabstops, Add, &Set Tabstops, SetTabstops
    Menu, Tabstops, Add, &Reset to Default, ResetTabStops
    Menu, Tabstops, Add
    Menu, Tabstops, Add, Set &Default Tabs, SetDefTabs
    Menu, ParaSpacing, Add, &Set, ParaSpacing
    Menu, ParaSpacing, Add, &Reset, ResetParaSpacing
    Menu, Paragraph, Add, &Alignment, :Alignment
    Menu, Paragraph, Add, &Indentation, :Indentation
    Menu, Paragraph, Add, &Numbering, :Numbering
    Menu, Paragraph, Add, &Linespacing, :LineSpacing
    Menu, Paragraph, Add, &Space before/after, :ParaSpacing
    Menu, Paragraph, Add, &Tabstops, :Tabstops
    Menu, Character, Add, &Font, ChooseFont
    Menu, TextColor, Add, &Choose, MTextColor
    Menu, TextColor, Add, &Auto, MTextColor
    Menu, Character, Add, &Text color, :TextColor
    Menu, TextBkColor, Add, &Choose, MTextBkColor
    Menu, TextBkColor, add, &Auto, MTextBkColor
    Menu, Character, Add, Text &Background, :TextBkColor
    Menu, Format, Add, &Character, :Character
    Menu, Format, Add, &Paragraph, :Paragraph
    MenuWordWrap := "&Word-wrap"
    Menu, View, Add, %MenuWordWrap%, WordWrap
    MenuWysiwyg := "Wrap as &printed"
    Menu, View, Add, %MenuWysiwyg%, Wysiwyg
    Menu, View, Add, &Zoom, :Zoom
    Menu, View, Add
    Menu, Background, Add, &Choose, BackGroundColor
    Menu, Background, Add, &Auto, BackgroundColor
    Menu, View, Add, &Background Color, :Background
    Menu, View, Add, &URL Detection, AutoURLDetection
    Menu, GuiMenu, Add, &File, :File
    Menu, GuiMenu, Add, &Edit, :Edit
    Menu, GuiMenu, Add, &Search, :Search
    Menu, GuiMenu, Add, F&ormat, :Format
    Menu, GuiMenu, Add, &View, :View
    Menu, ContextMenu, Add, &Edit, :Edit
    Menu, ContextMenu, Add, &File, :File
    Menu, ContextMenu, Add, &Search, :Search
    Menu, ContextMenu, Add, &Format, :Format
    Menu, ContextMenu, Add, &View, :View
    ; Main Gui -------------------------------------------------------------------------------------------------------------
    GuiNum := 1


    Gui, %GuiName43%:Menu, GuiMenu, x15 y15 h15 w15
    Hotkey, ^!z, MyLabelForNotepad

    Gui, Margin, %MarginX%, %MarginY%
    ; Style buttons
    Gui, %GuiName43%:Font, Bold, Arial
    Gui, %GuiName43%:Add, Picture, x480 y200 w20 h20 vBTSTB gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\font_bold.png
    Gui, %GuiName43%:Font, Norm Italic
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTI gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\font_italic.png
    Gui, %GuiName43%:Font, Norm Underline
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTU gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\font_underline.png
    Gui, %GuiName43%:Font, Norm Strike
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTS gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\Strikethrough.jpg
    Gui, %GuiName43%:Font, Norm, Arial
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTH gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\superscript.jpg
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTL gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\subscript.jpg
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTN gSetFontStyle, %A_ScriptDir%\ImagesForSelfContainedScripts\\broom.jpg
    Gui, %GuiName43%:Add, Picture, x+10 yp wp hp vBTTXC gBTextColor, %A_ScriptDir%\ImagesForSelfContainedScripts\\textcolor48.png
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBGC gBackGroundColor, %A_ScriptDir%\ImagesForSelfContainedScripts\\colorpalette48.png
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTBGC gBTextBkColor, %A_ScriptDir%\ImagesForSelfContainedScripts\\fillcolor48.png
    Gui, %GuiName43%:Add, Edit, x+110 yp w70 hp ReadOnly cFFFFFF vFNAME, %FontName%
    Gui, %GuiName43%:Font, Bold, MS Comic Sans
    Gui, %GuiName43%:Add, Button, x+10 yp w25 hp vBTCHF gChooseFont, F
    Gui, %GuiName43%:Font
    Gui, %GuiName43%:Add, Edit, x+5 yp cFFFFFF vFSIZE ReadOnly, 8888
    Gui, %GuiName43%:Add, UpDown, gChangeSize vUDVAL range4-120, 10

    ;****************************************************************;
    ; RichEdit #18
    ;****************************************************************;

    Gui, %GuiName43%:Font, Bold Italic, Arial
    Gui, %GuiName43%:Add, Text, x+10 yp hp vT1,
    GuiControlGet, T, Pos, T1
    TX := EditW - TW + MarginX
    GuiControl, Move, T1, x%TX%
    Gui, Font, s8, Arial
    Options := " x" . 980 . " y" . TY . " w" . 100 . " h" . TH 
    If !IsObject(RE1 := New RichEdit(43, Options, False)) {
    MsgBox, 16, Error, %ErrorLevel%
    ExitApp
    }
    RE1.ReplaceSel("AaBbYyZz")
    RE1.AlignText("CENTER")
    RE1.SetOptions(["READONLY"], "SET")
    Gui, %GuiName43%:Font, Norm, Arial


    ; Alignment & line spacing
    Gui, %GuiName43%:Add, Text, x480 y226 w600 h2 0x1000

    ; This is the second line 
    Gui, %GuiName43%:Add, Picture, xp yp+10 w20 h20 vBTTAL gAlignLeft, %A_ScriptDir%\ImagesForSelfContainedScripts\align_left.bmp
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAC gAlignCenter, %A_ScriptDir%\ImagesForSelfContainedScripts\align_center.bmp
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAR gAlignRight, %A_ScriptDir%\ImagesForSelfContainedScripts\align_right.bmp
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAJ gAlignJustify, %A_ScriptDir%\ImagesForSelfContainedScripts\align_none.bmp
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp gIndentation, %A_ScriptDir%\ImagesForSelfContainedScripts\format_indent.bmp
    Gui, %GuiName43%:Add, Picture, x+2 yp wp hp gResetIndentation, %A_ScriptDir%\ImagesForSelfContainedScripts\format_outdent.bmp
    Gui, %GuiName43%:Add, Picture, x+30 yp wp hp, %A_ScriptDir%\ImagesForSelfContainedScripts\spacing-button.jpg
    Gui, %GuiName43%:Add, Edit, x+5 yp cFFFFFF BackgroundTrans Center 0x200 E0x200 vLSPC ReadOnly, 1111
    Gui, %GuiName43%:Add, UpDown, gChangeLS vLSVAL range1-5, 1

    ; ; RichEdit #2
    Gui, %GuiName43%:Font, s10, Arial
    Gui, %GuiName43%:Add, Edit, x8 y246 w292 h300 cFFFFFF BackgroundTrans 0x200 E0x200 vEditFieldForClipboard_43Dynamic +hwndhEditFieldForClipboard_43HWNDDynamic, % Clipboard

    ; THIS IS THE EDIT FIELD
    Global EditFieldForClipboard_43
    Global RE2
    Options := "x480 y246 w" . EditW . " r20 gRE2MessageHandler vEditFieldForClipboard_43 +hwndhEditFieldForClipboard_43HWND" ; " h" . EditH

    If !IsObject(RE2 := New RichEdit(43, Options)) {
    MsgBox, 16, Error, %ErrorLevel%
    ExitApp
    }

    GuiControl,%GuiName43%:, EditFieldForClipboard_43, "The Quick Brown Fox Jumps Over The Lazddddddy Dog`r`n"
    GuiControlGet, RE, Pos, % RE2.HWND
    RE_SetOleCallback(RE2.HWND)
    OnMessage(0x204, "RightClick") ; WM_RIGHTBUTTONDOWN added - burque505
    RE2.SetBkgndColor(BackColor)
    RE2.SetEventMask(["SELCHANGE"])
    Gui, %GuiName43%:Font
    ; The rest
    Gui, %GuiName43%:Add, Statusbar
    SB_SetParts(10, 200)

    Stats := RE2.GetStatistics()
    SB_SetText(Stats.Line . " : " . Stats.LinePos . " (" . Stats.LineCount . ")  [" . Stats.CharCount . "]", 2)

    WM_KEYDOWN := 0x100
    OnMessage(WM_KEYDOWN, "43WM_KeyDown")
    
    xpos := xpos
    ypos := ypos
    Gui, %GuiName43%:Show, h900 w1370 x100 y65, FastClipboardWMouseWheelCustom_43

    WinWaitNotActive, ahk_id %current_ID%
    previous_ID := current_ID
    OnMessage(0x114, "OnScroll") ; WM_HSCROLL
    Gui, +LastFound
    WinSet, Redraw ; 0x800000 is WS_BORDER.

return

MyLabelForNotepad:
^!z::
GuiControlGet, Holdtoclick2_43, 43:
if(Holdtoclick2_43==1)
{
    GuiControl,43:, Holdtoclick2_43 , 0
}
else
{
    GuiControl,43:, Holdtoclick2_43 , 1
}
return

Label1:
    run,notepad
return

mh1a:
    gui,43:submit,nohide
    if A_thisMenuItem=calc
    run,calc
    if A_thisMenuItem=charmap
    run,charmap
return

43WM_KeyDown() {

	Stats := RE2.GetStatistics()
    SB_SetText(Stats.Line . " : " . Stats.LinePos . " (" . Stats.LineCount . ")  [" . Stats.CharCount . "]", 2)

}

43GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, 43BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 43BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 43BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 43BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 43BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 43BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 43BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31

    GuiControl, MoveDraw, 43BtnMinN, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnMinH, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnMinP, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnMaxN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnMaxH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnMaxP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnRestoreN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnRestoreH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnRestoreP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnCloseN, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnCloseH, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 43BtnCloseP, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    
    GuiControl, MoveDraw, 43Gui3CommonlyUsedFunctionsBackground, % "x" 1 " y" 1 " w" (Width - 1) - 138 " h" 31
    GuiControl, MoveDraw, 43Gui2CommonlyUsedFunctionsBackground, % "x" 1 " y" 34 " w" 226 " h" (Height - 4) - 31

    GuiControl, MoveDraw, 43MenuHover, % "x" 1 " y" 1 " w" Width " h" 48
    GuiControl, MoveDraw, 43MenuPressed, % "x" 1 " y" 1 " w" Width " h" 48

    GuiControl, MoveDraw, 43WhiteLineNumber2, % "x" 10 " y" 108 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain1, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain2, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain3, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain4, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain5, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain6, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain7, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberMain8, % "x" 10 " y" 52 " w" Width - 18 " h" 2 

    GuiControl, MoveDraw, 43WhiteLineNumberMain, % "x" 10 " y" 32 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberLesser1, % "x" 10 " y" 180 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 43WhiteLineNumberLesser2, % "x" 230 " y" 260 " w" Width - 236 " h" 2 

    GuiControl, MoveDraw, EditFieldForClipboard_43, % "x" 480 " y" 270 " w" Width  - 468 - 8 - 8 - 4 " h" (Height - 290) - 8
    GuiControl, MoveDraw, EditFieldForClipboard_43Dynamic, % "x" 8 " y" 270 " w" 468 " h" (Height - 290) - 8
    
}

43GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "43BtnRestoreN,43BtnRestoreH,43BtnRestoreP")
    CtlShowHide("Show", "43BtnMaxN")

}

43GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "43BtnMaxN,43BtnMaxH,43BtnMaxP")
    CtlShowHide("Show", "43BtnRestoreN")
}

43CtlShowHide(ShowHide, Controls*) {
    Static K, V

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

43WM_LBUTTONDBLCLK(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0203, "43WM_LBUTTONDBLCLK")



    If (!MouseCtrl) {
        If (cY < 31) {
            WinGet, MinMaxState, MinMax

            If (MinMaxState = 1) {
                GuiRestore()
            } Else {
                GuiMaximize()
            }
        }
    }
}

43WM_MOUSELEAVE(wParam, lParam, Msg, Hwnd) {
	Global ; Assume-global mode
    Static Init := OnMessage(0x2A3, "WM_MOUSELEAVE")

    CtlShowHide("Hide", "43BtnBackH,43BtnMinH,43BtnMaxH,43BtnRestoreH,43BtnCloseH,43MenuHover")
    CtlShowHide("Hide", "43BtnBackP,43BtnMinP,43BtnMaxP,43BtnRestoreP,43BtnCloseP,43MenuPressed")

}

; Redefine where the sizing borders are.  This is necessary since
; returning 0 for WM_NCCALCSIZE effectively gives borders zero size.
43WM_NCHITTEST(wParam, lParam)
{
    static border_size = 6
    
    if !A_Gui
        return
    
    WinGetPos, gX, gY, gW, gH
    
    x := lParam<<48>>48, y := lParam<<32>>48
    
    hit_left    := x <  gX+border_size
    hit_right   := x >= gX+gW-border_size
    hit_top     := y <  gY+border_size
    hit_bottom  := y >= gY+gH-border_size
    
    if hit_top
    {
        if hit_left
            return 0xD
        else if hit_right
            return 0xE
        else
            return 0xC
    }
    else if hit_bottom
    {
        if hit_left
            return 0x10
        else if hit_right
            return 0x11
        else
            return 0xF
    }
    else if hit_left
        return 0xA
    else if hit_right
        return 0xB
    
    ; else let default hit-testing be done
}

43WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {

    ; return (A_Gui ? 0 : "")
    
        ; if A_Gui
        ;     return 0
    
}

43WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

43RefreshButton(){

    resetClipboardTime43()
    GuiControl,%GuiName43%:, StringListPosition43_43, 0
    
}

43CopiedTextFromGuiElement:
    Clipboard = "(((|||CustomDelimeter|||)))" 
return

43RefreshPosition(){
    resetClipboardTime43()
    GuiControl,%GuiName43%:, StringListPosition43_43, 0
}

AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated){

    ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, Edit1, FastClipboardWMouseWheelCustom_43

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, OutputVar_For_EditFieldForClipboardMain_43)
    MaxValue := % ColorArray.MaxIndex()

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        
        GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%
    }

    if (keyCounter <= 1) {
        keyCounter := 1
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        
        
        GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%
    }


    IniRead, BooleanBlocked, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked

    if (keyCounter >= 1 && keyCounter <= MaxValue && BooleanBlocked == "False")

    {

        ; If you give commands to do this method very fast, you will be blocked from doing it and have to wait for it to end. 
        BooleanBlocked = "True"
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked
        IniWrite, %BooleanBlocked%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked


        AbsValueDividedValue := % keyCounter
        this_color := % ColorArray[AbsValueDividedValue]

        FileAppend, %this_color% `n, C:\Users\Fallar\Desktop\Test.txt

        SplashTextOn,,,%AbsValueDividedValue%,

        ; LengthValueDividedValue := % StrLen(this_color)

        SetKeyDelay -1
        SetBatchLines -1

        this_color := StrReplace(this_color, "`t`r", "")
        FileAppend, %this_color% `n, C:\Users\Fallar\Desktop\Test1.txt
        Clipboard := % this_color

        ; T=how to count
        Loop, Parse, this_color
            {
                LengthValueDividedValue1++
            }

        FileAppend, %this_color% `n, C:\Users\Fallar\Desktop\Test2.txt

        GuiControlGet, HoldtoclickClipboardOrText_43, %GuiName43%:
        if(HoldtoclickClipboardOrText_43==1)
        {
            ; SendInput ^v

            SendInput {LCtrl down}
            Sleep, 100
            SendInput {v}
            Sleep, 100
            SendInput {LCtrl up}

            LengthValueDividedValue1 -= % FindNumberOfCharactersInAString(this_color, "`t")
            LengthValueDividedValue1 -= % FindNumberOfCharactersInAString(this_color, "`n")

            ; MsgBox,  % LengthValueDividedValue1

            SendInput {Shift down}
            Sleep, 100
            SendInput {Left %LengthValueDividedValue1%}
            Sleep, 100
            SendInput {Shift up}

        }   
        if(HoldtoclickClipboardOrText_43==0)
        {

            FileAppend, %this_color% `n, C:\Users\Fallar\Desktop\Test3.txt

            ; SendInput, %this_color%
            SendEvent, %this_color%

            SendInput {Shift down}
            Sleep, 100
            SendInput {Left %LengthValueDividedValue1%}
            Sleep, 100
            SendInput {Shift up}

        }   

        Sleep, 500
        BooleanBlocked = "False"
        RemoveToolTipClipboard()
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked
        IniWrite, %BooleanBlocked%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, BooleanBlocked
        

    }

}

ClipboardWScrollCustomPlus_43(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
    ++keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43

    
    GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollCustomMinus_43(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
    --keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43

    GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

resetClipboardTime43()
{
    IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
}


FindNumberOfCharactersInAString(Haystack, Needle){
    Count = 0
    Loop, Parse, Haystack
    {
        LengthValueDividedValue1++
    }

    ; Haystack := StrReplace(Haystack, Needle, "",, 1)
    ; Count++

    Loop %LengthValueDividedValue1% {
        If InStr(Haystack, Needle)
        {
            Count++
        }
        Haystack := StrReplace(Haystack, Needle, "",, 1)
    }

  return Count
}

;*******************
;*                 *
;*    Functions    *
;*                 *
;*******************

































;    _____ _         _ _             _ ____        _   _               __          ___ _   _                                                   _              _     _    
;   / ____| |       | (_)           | |  _ \      | | | |              \ \        / (_) | | |       /\                                        | |            | |   | |   
;  | (___ | |_ _   _| |_ _______  __| | |_) |_   _| |_| |_ ___  _ __  __\ \  /\  / / _| |_| |__    /  \   _ __ __ _ _   _ _ __ ___   ___ _ __ | |_ ___   __ _| |__ | | __
;   \___ \| __| | | | | |_  / _ \/ _` |  _ <| | | | __| __/ _ \| '_ \/ __\ \/  \/ / | | __| '_ \  / /\ \ | '__/ _` | | | | '_ ` _ \ / _ \ '_ \| __/ __| / _` | '_ \| |/ /
;   ____) | |_| |_| | | |/ /  __/ (_| | |_) | |_| | |_| || (_) | | | \__ \\  /\  /  | | |_| | | |/ ____ \| | | (_| | |_| | | | | | |  __/ | | | |_\__ \| (_| | | | |   < 
;  |_____/ \__|\__, |_|_/___\___|\__,_|____/ \__,_|\__|\__\___/|_| |_|___/ \/  \/   |_|\__|_| |_/_/    \_\_|  \__, |\__,_|_| |_| |_|\___|_| |_|\__|___(_)__,_|_| |_|_|\_\
;               __/ |                                                                                          __/ |                                                     
;              |___/                                                                                          |___/                                                      


GrayRoundButton(NameOFGui, Options, FunctionName, VariableName, hwndName, StringName) { 
    
    Gui, %NameOFGui%:Add, Button, %Options% g%FunctionName% v%VariableName% hwnd%hwndName%, %StringName%
    Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%hwndName%, Opt1, Opt2, , , Opt5)
}

GrayRoundButtonWithPicture(ButtonNameOFGui, ButtonXCoordinate, ButtonYCoordinate, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) { 
    



    Gui, %ButtonNameOFGui%:Add, Button, %ButtonXCoordinate% %ButtonYCoordinate% g%ButtonFunctionName% v%ButtonVariableName% hwnd%ButtonhwndName%, %ButtonStringName%
    Gui, %ButtonNameOFGui%:Add, Picture, xp-30 yp, %PictureLocationOnDrive%
    


    Opt1 := [0, 0x80333333, , "White", "8", "0x00333333", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%ButtonhwndName%, Opt1, Opt2, , , Opt5)
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, 41:Add, Picture, v%VariableName% %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableNameExperimental(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 33 | 33 33 22 22 | 33 44 36 44 | AA AA 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 11 11 | BB BB BB BB | AA AA 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, 41:Add, Picture, v%VariableName% %Options%, %FileName%

    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
42Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, 42:Add, Picture, v%VariableName% %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
42Gui_AddPicture_VariableNameExperimental(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 33 | 33 33 22 22 | 33 44 36 44 | AA AA 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 11 11 | BB BB BB BB | AA AA 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, 42:Add, Picture, v%VariableName% %Options%, %FileName%

    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
43Gui_AddPicture_VariableNameExperimental(Options, Colour) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, 43:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
TextLabelNoPicture(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName) {  ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, %ButtonNameOFGui%:Add, Picture, x%ButtonX% y%ButtonY% w%ButtonW% h%ButtonH% v%ButtonVariableName%, %FileName%

    ; ButtonX += 4
    ; ButtonY += 4

    StringLen, LengthVar, ButtonStringName

    ButtonX := ButtonX + (ButtonW / 2) - (LengthVar * 3)
    ButtonY := ButtonY + (ButtonH / 2) - 7

    ; Gui, %ButtonNameOFGui%:Add, Picture, %ButtonXCoordinate% %ButtonYCoordinate% , PictureLocationOnDrive
    Gui, %ButtonNameOFGui%:Add, Text, x%ButtonX% y%ButtonY% cFFFFFF BackgroundTrans Center 0x200,%ButtonStringName%


    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
TextLabelWithpicture(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) {  ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, %ButtonNameOFGui%:Add, Picture, x%ButtonX% y%ButtonY% w%ButtonW% h%ButtonH% v%ButtonVariableName%, %FileName%

    ; ButtonX += 4
    ; ButtonY += 4

    StringLen, LengthVar, ButtonStringName

    ButtonX := ButtonX + (ButtonW / 2) - (LengthVar * 3)
    ButtonY := ButtonY + (ButtonH / 2) - 7

    ; Gui, %ButtonNameOFGui%:Add, Picture, %ButtonXCoordinate% %ButtonYCoordinate% , PictureLocationOnDrive
    Gui, %ButtonNameOFGui%:Add, Text, x%ButtonX% y%ButtonY% cFFFFFF BackgroundTrans Center 0x200,%ButtonStringName%


    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

































;   ______                _   _                 
;  |  ____|              | | (_)                
;  | |__ _   _ _ __   ___| |_ _  ___  _ __  ___ 
;  |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;  | |  | |_| | | | | (__| |_| | (_) | | | \__ \
;  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                              
                                              

CtlShowHide(ShowHide, Controls*) {
    Static K, V

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}



GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "BtnRestoreN,BtnRestoreH,BtnRestoreP")
    CtlShowHide("Show", "BtnMaxN")

}

GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "BtnMaxN,BtnMaxH,BtnMaxP")
    CtlShowHide("Show", "BtnRestoreN")

}

RemoveToolTipClipboard()
{
SplashTextOff
}


HideOtherTabs() {
    GuiControl, Hide, MyCheckbox2
    GuiControl, Hide, ExperimentsSubTabs
    GuiControl, Hide, LineA
    GuiControl, Hide, LineB
    GuiControl, Hide, LineC
    GuiControl, Hide, LineD
    GuiControl, Hide, MenuTextExperimentsSubTabs1
    GuiControl, Hide, MenuTextExperimentsSubTabs2
    GuiControl, Hide, MenuTextExperimentsSubTabs3
    GuiControl, Hide, MenuTextExperimentsSubTabs4
    GuiControl, Hide, WhiteLineNumber2

}

ShowOtherTabs() {
    GuiControl, Show, MyCheckbox2
    GuiControl, Show, ExperimentsSubTabs
    GuiControl, Show, LineA
    GuiControl, Show, LineB
    GuiControl, Show, LineC
    GuiControl, Show, LineD
    GuiControl, Show, MenuTextExperimentsSubTabs1
    GuiControl, Show, MenuTextExperimentsSubTabs2
    GuiControl, Show, MenuTextExperimentsSubTabs3
    GuiControl, Show, MenuTextExperimentsSubTabs4
    GuiControl, Show, WhiteLineNumber2


}

ExitSub:
    WinClose ahk_class AutoHotkeyGUI
    ExitApp ; Terminate the script unconditionally
return




























;  __          ___               _ _    _                 __          ___               _ _____                             _     _    
;  \ \        / / |             | | |  | |                \ \        / / |             | |  __ \                           | |   | |   
;   \ \  /\  / /| |__   ___  ___| | |  | |_ __             \ \  /\  / /| |__   ___  ___| | |  | | _____      ___ __    __ _| |__ | | __
;    \ \/  \/ / | '_ \ / _ \/ _ \ | |  | | '_ \             \ \/  \/ / | '_ \ / _ \/ _ \ | |  | |/ _ \ \ /\ / / '_ \  / _` | '_ \| |/ /
;     \  /\  /  | | | |  __/  __/ | |__| | |_) |             \  /\  /  | | | |  __/  __/ | |__| | (_) \ V  V /| | | || (_| | | | |   < 
;      \/  \/   |_| |_|\___|\___|_|\____/| .__/               \/  \/   |_| |_|\___|\___|_|_____/ \___/ \_/\_/ |_| |_(_)__,_|_| |_|_|\_\
;                                        | |______ ______ ______                                                                       
;                                        |_|______|______|______|                                                                      

#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome (1.0.3)
WheelUp::
    if WinExist("FastClipboardWMouseWheelCustom_43")
    {
      ;   SetTimer, ClickClick , Off
        GuiControlGet, Holdtoclick2_43, 43:
        if(Holdtoclick2_43==1)
        {
            ClipboardWScrollCustomPlus_43()
        }
        else
        {
            ChromeTabsMouseWheelScrolling()
        }
    }
    else
        {
            ChromeTabsMouseWheelScrolling()
        }
    ; }
    ; Control, uncheck,, Holdtoclick1
    GuiControl,41:, Holdtoclick1 , 0
    GuiControl,42:, Holdtoclick1_42 , 0
    GuiControl,43:, Holdtoclick1_43 , 0
Return

WheelDown::
    if WinExist("FastClipboardWMouseWheelCustom_43")
        {
            ; SetTimer, ClickClick , Off
            GuiControlGet, Holdtoclick2_43, 43:
            if(Holdtoclick2_43==1)
            {
                ClipboardWScrollCustomMinus_43()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else
        {
            ChromeTabsMouseWheelScrolling()
        }
    
    GuiControl,41:, Holdtoclick1 , 0
    GuiControl,42:, Holdtoclick1_42 , 0
    GuiControl,43:, Holdtoclick1_43 , 0
Return

ChromeTabsMouseWheelScrolling(){
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
}




































;  __          ____  __   __  __  ____  _    _  _____ ______ __  __  ______      ________   _      ____  _    _ _______ _______ ____  _   _ _____   ______          ___   _   _      ____  _    _ _______ _______ ____  _   _ _    _ _____      _     _    
;  \ \        / /  \/  | |  \/  |/ __ \| |  | |/ ____|  ____|  \/  |/ __ \ \    / /  ____| | |    |  _ \| |  | |__   __|__   __/ __ \| \ | |  __ \ / __ \ \        / / \ | | | |    |  _ \| |  | |__   __|__   __/ __ \| \ | | |  | |  __ \    | |   | |   
;   \ \  /\  / /| \  / | | \  / | |  | | |  | | (___ | |__  | \  / | |  | \ \  / /| |__    | |    | |_) | |  | |  | |     | | | |  | |  \| | |  | | |  | \ \  /\  / /|  \| | | |    | |_) | |  | |  | |     | | | |  | |  \| | |  | | |__) |_ _| |__ | | __
;    \ \/  \/ / | |\/| | | |\/| | |  | | |  | |\___ \|  __| | |\/| | |  | |\ \/ / |  __|   | |    |  _ <| |  | |  | |     | | | |  | | . ` | |  | | |  | |\ \/  \/ / | . ` | | |    |  _ <| |  | |  | |     | | | |  | | . ` | |  | |  ___/ _` | '_ \| |/ /
;     \  /\  /  | |  | | | |  | | |__| | |__| |____) | |____| |  | | |__| | \  /  | |____  | |____| |_) | |__| |  | |     | | | |__| | |\  | |__| | |__| | \  /\  /  | |\  | | |____| |_) | |__| |  | |     | | | |__| | |\  | |__| | |_ | (_| | | | |   < 
;      \/  \/   |_|  |_| |_|  |_|\____/ \____/|_____/|______|_|  |_|\____/   \/   |______| |______|____/ \____/   |_|     |_|  \____/|_| \_|_____/ \____/   \/  \/   |_| \_| |______|____/ \____/   |_|     |_|  \____/|_| \_|\____/|_(_) \__,_|_| |_|_|\_\
;                    ______                                                            ______                                                                            ______                                                                            
;                   |______|                                                          |______|                                                                          |______|                                                                           


WM_MOUSEMOVE(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0200, "WM_MOUSEMOVE"), Hover := 0, Curr := ""

	DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    if (WinExist("FastClipboardWMouseWheelCustom_43"))
    {

    If (MouseCtrl ~= 43hBtnBackH "|" 43hBtnMinH "|" 43hBtnMaxH "|" 43hBtnRestoreH "|" 43hBtnCloseH) {
        return
    }

    ; CtlShowHide("Hide", "42MenuHover"), Hover := 0

    GuiControl, % (MouseCtrl = 43hBtnBackN ? "Show" : "Hide"), 43BtnBackH
    GuiControl, % (MouseCtrl = 43hBtnMinN ? "Show" : "Hide"), 43BtnMinH
    GuiControl, % (MouseCtrl = 43hBtnMaxN ? "Show" : "Hide"), 43BtnMaxH
    GuiControl, % (MouseCtrl = 43hBtnRestoreN ? "Show" : "Hide"), 43BtnRestoreH
    GuiControl, % (MouseCtrl = 43hBtnCloseN ? "Show" : "Hide"), 43BtnCloseH
    IfEqual, MouseCtrl,, Try CtlShowHide("Hide", "43BtnBackH,43BtnBackP,43BtnMinH,43BtnMinP,43BtnMaxH,43BtnMaxP,43BtnCloseH,43BtnCloseP")

    }
    ; }
    ; }

}

WM_LBUTTONDOWN(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0201, "WM_LBUTTONDOWN")

    if (WinExist("FastClipboardWMouseWheelCustom_43"))
    {
        If (MouseCtrl ~= 43hBtnBackP "|" 43hBtnMinP "|" 43hBtnMaxP "|" 43hBtnRestoreP "|" 43hBtnCloseP) {
            return
        }

        GuiControl, % (MouseCtrl = 43hBtnBackH ? "Show" : "Hide"), 43BtnBackP
        GuiControl, % (MouseCtrl = 43hBtnMinH ? "Show" : "Hide"), 43BtnMinP
        GuiControl, % (MouseCtrl = 43hBtnMaxH ? "Show" : "Hide"), 43BtnMaxP
        GuiControl, % (MouseCtrl = 43hBtnRestoreH ? "Show" : "Hide"), 43BtnRestoreP
        GuiControl, % (MouseCtrl = 43hBtnCloseH ? "Show" : "Hide"), 43BtnCloseP
    }
    ; }

    If (!MouseCtrl) {
        cX := X - gX, cY := Y - gY

        If (cY < 31) {
            PostMessage, 0xA1, 2
        }
    }
}

WM_LBUTTONUP(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0202, "WM_LBUTTONUP")

    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    if (WinExist("FastClipboardWMouseWheelCustom_43"))
    {
        If (MouseCtrl = 43hBtnBackP) {
            CtlShowHide("Hide", "43BtnBackN")
            GuiControl,, TitleText, 
            GuiControl, MoveDraw, TitleText, x14
            ; GuiControl,, ClickBtn, Click Here!
        }

        IfEqual, MouseCtrl, % 43hBtnMinP, WinMinimize
        IfEqual, MouseCtrl, % 43hBtnCloseP, GoSub, ExitSub
        IfEqual, MouseCtrl, % 43hBtnMaxP, Try GuiMaximize()
        IfEqual, MouseCtrl, % 43hBtnRestoreP, Try GuiRestore()
        ; IfEqual, MouseCtrl, % 42EditField, GoSub, 42CopiedTextFromGuiElement
        CtlShowHide("Hide", "43BtnBackP,43BtnMinP,43BtnMaxP,43BtnRestoreP,43BtnCloseP,43MenuPressed")
    }
    ; ; }


}





































;    _____            _ _        _     _    
;   / ____|          | | |      | |   | |   
;  | (___  _ __   ___| | |  __ _| |__ | | __
;   \___ \| '_ \ / _ \ | | / _` | '_ \| |/ /
;   ____) | |_) |  __/ | || (_| | | | |   < 
;  |_____/| .__/ \___|_|_(_)__,_|_| |_|_|\_\
;         | |                               
;         |_|                               



/*
Title: Spell v2.0 (Preview)

Group: Introduction

    The Spell library is a wrapper for the Hunspell API with additional
    functions to support custom libraries.

Group: Compatibility

    This library was designed to run on most versions of Windows (Windows XP+)
    and on all versions of AutoHotkey including AutoHotkey Basic and AutoHotkey
    v1.1+ (ANSI and Unicode, 32-bit and 64-bit).

Group: Credit:

    Credit and thanks to *majkinetor* for developing the original Spell library.
    Thanks to *Prodigy* (AutoIt forum) for the idea to use the NHunspell API for
    version 2.0 of this library and thanks to *ProgAndy* (AutoIt German forum)
    for providing a copy of the NHunspell DLL files.

Group: Functions:
*/

;------------------------------
;
; Function: Spell_Add
;
; Description:
;
;   Add a word or list or words to the dictionary which is/are valid until the
;   spell object is destroyed.
;
; Parameters:
;
;   hSpell - Variable that contains the current dictionary information.
;
;   p_Word - Word or list of words (delimited by a LF (line feed) or CR+LF
;       (carriage return and line feed)) to add to the dictionary.
;
;   p_AddCase - [Optional] See the *Add Case* section for more information.
;
; Add Case:
;
;   Preface: For the most part, the affix file (Ex: en_US.aff) contains the
;   rules that determine how words in a dictionary are treated.  What may be
;   true for words in one dictionary (Ex: en_US) may not be true for words in
;   other dictionaries (Ex: en_GB).  The p_AddCase parameter was added to deal
;   with possible shortcomings in all dictionaries but it has only been tested
;   using the en_US dictionary files.  Be sure to test thoroughly.
;
;   Mixed case words (Ex: "Kevin" or "KevinWasHere") added to the dictionary may
;   be treated as case sensitive.  Under most circumstances this is the desired
;   behavior.  However, there are certain words or group of words that are
;   commonly (and validly) used in other forms.  One example is a list of
;   commands and/or key words for a programming language.  For many programming
;   languages, the commands and/or key words are not case sensitive, so adding
;   different variations of the command/key word to the dictionary might reduce
;   the number of "word not found" errors when running a spell check on the
;   source code.
;
;   The p_AddCase parameter will add up to 3 additional words to the dictionary
;   for every word found in the p_Word parameter.  The following options are
;   available.
;
;   U - Add an all uppercase version of the word(s) to the dictionary.  Ex:
;       "KEVIN".  Note: Most dictionaries automatically recognize an all
;       uppercase version of every word so this option is usually superfluous.
;       Be sure to test your dictionary to be sure.
;
;   L - Add an all lowercase version of the word(s) to the dictionary.  Ex:
;       "kevin".  Observation: For the English (US) dictionary, this option
;       provides the most value out of all the options.  I suspect this may be
;       true for other dictionaries.
;
;   T - Add a title case (first letter is uppercase, all others are lowercase)
;       version of the word(s) to the dictionary.  Ex: "Kevin".  Note:  Most
;       dictionaries automatically recognize a title case version of a word if a
;       lowercase version of the word exists so this option may be unnecessary
;       if the word is already all lowercase or if the "L" option is specified.  Be sure to test your dictionary to be sure.
;
;   A - Add an all uppercase, an all lowercase, and a title case version of the
;       word(s) to the dictionary.  This option is the same as "ULT".
;
;   To use more than one option, just add it next to the previous option.  For
;   example, "UL".
;
;   The additional word will not be added if the original word is already in
;   that case.  For example, if the original word is already all lowercase (Ex:
;   "kevin"), then the all lowercase version of the word is not added.
;
;   Important: This function uses the AutoHotkey
;   <StringUpper at http://www.autohotkey.com/docs/commands/StringLower.htm> and
;   <StringLower at http://www.autohotkey.com/docs/commands/StringLower.htm>
;   commands to convert the word(s) to uppercase, lowercase, and title case.
;   The rules and limitations of these commands could affect the results for
;   some words.
;
; Returns:
;
;   The number of words added to the dictionary.
;
; Remarks:
;
;   The performance of this function is excellent under almost all
;   circumstances.  However, when adding a very large number of words (>2000?),
;   performance can be improved by setting
;   *<SetBatchLines at http://ahkscript.org/docs/commands/SetBatchLines.htm>*
;   to a higher value before calling this function.  For example:
;
;       (start code)
;       SetBatchLines 100ms
;       Spell_Add(hSpell,...)
;       SetBatchLines 10ms  ;-- This is the system default
;       (end)
;
;-------------------------------------------------------------------------------
Spell_Add(ByRef hSpell,p_Word,p_AddCase="")
    {
    ;-- Initialize
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"
    StrType:=A_IsUnicode ? "Str":A_PtrSize ? "WStr":"UInt"
    l_Count:=0

    ;-- Parameters
    StringUpper p_AddCase,p_AddCase
        ;-- Just in case StringCaseSense is On

    ;-- Process p_Word
    Loop Parse,p_Word,`n,`r
        {
        ;-- Drop null/blank words
        if A_LoopField is Space
            Continue

        ;-- Assign and AutoTrim
        ;   Note: This variable only contains a single word initially but
        ;   additional words can be added later.
        l_ListOfWords=%A_LoopField%

        ;-- Add case version(s) of the word?
        if p_AddCase
            {
            l_OriginalWord:=l_ListOfWords
            if p_AddCase Contains A,U
                {
                StringUpper l_UCWord,l_OriginalWord
                if not (l_OriginalWord==l_UCWord)
                    l_ListOfWords.="`n" . l_UCWord
                }

            if p_AddCase Contains A,L
                {
                StringLower l_LCWord,l_OriginalWord
                if not (l_OriginalWord==l_LCWord)
                    l_ListOfWords.="`n" . l_LCWord
                }

            if p_AddCase Contains A,T
                {
                StringUpper l_TCWord,l_OriginalWord,T
                if not (l_OriginalWord==l_TCWord)
                    l_ListOfWords.="`n" . l_TCWord
                }
            }

        ;-- Add 'em
        Loop Parse,l_ListOfWords,`n
            {
            l_Count++
            l_Word:=A_LoopField
            RC:=DllCall(NumGet(hSpell,16)
                ,PtrType,NumGet(hSpell,0)
                ,StrType,A_PtrSize ? l_Word:Spell_ANSI2Unicode(&l_Word,wString)
                ,"Cdecl")
            }
        }

    Return l_Count
    }


;------------------------------
;
; Function: Spell_AddCustom
;
; Description:
;
;   Add a word to a custom dictionary file.
;
; Parameters:
;
;   p_CustomDic - Path to a custom dictionary file.
;
;   p_Word - Word or list of words (delimited by a LF (line feed) or CR+LF
;       (carriage return and line feed)) to add.
;
;   p_EOL - End-Of-Line (EOL) characters. [Optional] The default is CR+LF.
;
; Returns:
;
;   The number of words loaded to the custom dictionary file if successful
;   (can be 0) or -1 if there was an error (custom dictionary file not found or
;   error writing to the custom dictionary file).
;
; Remarks:
;
; * This function does _not_ update the active dictionary.  If needed, call
;   <Spell_Add> to add the word(s) to the active dictionary.
;
; * The custom dictionary file must already exist, even if it's empty.  The file
;   must be in a Unix (EOL=LF) or DOS/Windows (EOL=CR+LF) format.  This function
;   will add a word followed by the characters in p_EOL parameter
;   (default=CR+LR) to the end of the file.  If editing the custom dictionary
;   file manually, make sure there is a LF or CR+LF after the last word.
;
; * This function (via the
;   *<FileAppend at http://ahkscript.org/docs/commands/FileAppend.htm>* command)
;   uses the default file encoding which is the system default ANSI code page.
;   For AutoHotkey v1.1+, this default can be changed by calling the
;   *<FileEncoding at http://ahkscript.org/docs/commands/FileEncoding.htm>*
;   command any time before calling this function.
;
;-------------------------------------------------------------------------------
Spell_AddCustom(p_CustomDic,p_Word,p_EOL="`r`n")
    {
    IfNotExist %p_CustomDic%
        {
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            Custom dictionary file not found: %p_CustomDic%
           )

        Return -1
        }

    ;-- Initialize
    l_Count:=0

    ;-- Process p_Word
    Loop Parse,p_Word,`n,`r
        {
        ;-- Drop null/blank words
        if A_LoopField is Space
            Continue

        ;-- Assign and AutoTrim
        l_Word=%A_LoopField%

        ;-- Count it
        l_Count++

        ;-- Save it
        FileAppend % l_Word . p_EOL,*%p_CustomDic%
        if ErrorLevel
            {
            outputdebug,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unable to add word to custom dictionary file: %p_CustomDic%
               )

            Return -1
            }
        }

    Return l_Count
    }


;-----------------------------
;
; Function: Spell_ANSI2Unicode
;
; Description:
;
;   Maps a character string (ANSI) to a UTF-16 (wide character) string.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Parameters:
;
;   lpMultiByteStr - Address to a character string (ANSI).
;
;   WideCharStr - Variable to store the UTF-16 (wide character) string.
;
;-------------------------------------------------------------------------------
Spell_ANSI2Unicode(lpMultiByteStr,ByRef WideCharStr)
    {
    Static CP_ACP:=0    ;-- The system default Windows ANSI code page.

    ;-- Workaround for AutoHotkey Basic
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"

    ;-- Collect size, in characters
    nSize:=DllCall("MultiByteToWideChar"
            ,"UInt",CP_ACP
                ;-- CodePage [UINT,in]
            ,"UInt",0
                ;-- dwFlags [DWORD,in]
            ,PtrType,lpMultiByteStr
                ;-- lpMultiByteStr [LPCSTR,in].  Pointer to the character
                ;   string to convert.
            ,"Int",-1
                ;-- cbMultiByte [Int,in].  Size, in bytes, of the string
                ;   indicated by the lpMultiByteStr parameter.  -1=Process the
                ;   entire string, including terminating null.
            ,PtrType,0
                ;-- lpWideCharStr [LPWSTR,out].  Pointer to a buffer that
                ;   receives the converted string.  Not used here.
            ,"Int",0)
                ;-- cchWideChar [Int,in].  Size, in characters, of the buffer
                ;   indicated by lpWideCharStr.  If 0, the function returns the
                ;   required buffer size, in characters, including any
                ;   terminating null character.

    ;-- Convert
    VarSetCapacity(WideCharStr,nSize*2,0)  ;-- Size in bytes
    DllCall("MultiByteToWideChar"
            ,"UInt",CP_ACP
                ;-- CodePage [UINT,in]
            ,"UInt",0
                ;-- dwFlags [DWORD,in]
            ,PtrType,lpMultiByteStr
                ;-- lpMultiByteStr [LPCSTR,in].  Pointer to the character
                ;   string to convert.
            ,"Int",nSize
                ;-- cbMultiByte [Int,in].  Size, in bytes, of the string
                ;   indicated by the lpMultiByteStr parameter.
            ,"Str",WideCharStr
                ;-- lpWideCharStr [LPWSTR,out].  Pointer to a buffer that
                ;   receives the converted string.
            ,"Int",nSize)
                ;-- cchWideChar [Int,in].  Size, in characters, of the buffer
                ;   indicated by lpWideCharStr.

    Return &WideCharStr
    }


;------------------------------
;
; Function: Spell_Init
;
; Description:
;
;   Initialize Hunspell.
;
; Parameters:
;
;   hSpell - Variable that will contain the current dictionary information.
;
;   p_Aff - Path to affix file.
;
;   p_Dic - Path to dictionary file.
;
;   DLLPath - Path to the folder of the Hunspell DLL files (Ex: "lib\") or the
;       full path and file name of the Hunspell DLL file (Ex:
;       "lib\Hunspellx86.dll") . [Optional]  If null or not specified, the
;       Hunspell DLL files must be located in the local folder or in the path.
;
; Returns:
;
;   TRUE if initialization was successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Spell_InitCustom>
;
; Remarks:
;
;   hSpell map :
;
;       (begin code)
;       Offset  Description
;       ------  -----------
;
;          0    Handle to the spell object
;          8    Handle to the Hunspell DLL library module
;         16    Address to the HunspellAdd function
;         24    Address to the HunspellAddWithAffix function
;         32    Address to the HunspellAnalyze function
;         40    Address to the HunspellFree function
;         48    Address to the HunspellGenerate function
;         56    Address to the HunspellInit function
;         64    Address to the HunspellSpell function
;         72    Address to the HunspellStem function
;         80    Address to the HunspellSuggest function
;         88    Address to the HyphenFree function
;         96    Address to the HyphenHyphenate function
;        104    Address to the HyphenInit function
;        112    Address to the MyThesFree function
;        120    Address to the MyThesInit function
;        128    Address to the MyThesLookup function
;        ---
;        136    Total bytes
;       (end code)
;
;   This map is the same for all versions of AutoHotkey.  Addresses and handles
;   are 4 bytes for the 32-bit versions of AutoHotkey and 8 bytes for the 64-bit
;   version.  All of the API functions are mapped but only key spell functions
;   are used by the Spell library.
;
;   As the name implies, this function should be called first.  If key
;   dictionary or library files are not found, this function will display a
;   strong error message and will return FALSE.  If this function returns FALSE,
;   _do not_ call any other library function.  Calling other library functions
;   when Hunspell has not been initialized may (read: will) cause AutoHotkey to
;   crash.
;
;-------------------------------------------------------------------------------
Spell_Init(ByRef hSpell,p_Aff,p_Dic,DLLPath="")
    {
    ;-- Initialize
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"
    VarSetCapacity(hSpell,136,0)

    ;-- Convert DLLPath if needed
    if DLLPath is Space  ;-- Null or not specified
        DLLPath:=(A_PtrSize=8) ? "Hunspellx64.dll":"Hunspellx86.dll"
     else
        if InStr(FileExist(DLLPath),"D")  ;-- Path is a folder
            {
            ;-- Append backslash if needed
            if (SubStr(DLLPath,0)<>"\")
                DllPath.="\"

            ;-- Add DLL
            DLLPath.=(A_PtrSize=8) ? "Hunspellx64.dll":"Hunspellx86.dll"
            }

    ;-- Check to see if the files exist
    IfNotExist %DLLPath%
        {
        MsgBox
            ,0x10  ;-- 0x0 (OK button) + 0x10 (Stop icon)
            ,Spell Library Error,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unable to find the Hunspell DLL file.  Initialization
                aborted.
               )

        Return False
        }

    if !FileExist(p_Aff) or !FileExist(p_Dic)
        {
        MsgBox
            ,0x10  ;-- 0x0 (OK button) + 0x10 (Stop icon)
            ,Spell Library Error,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unable to find the dictionary and/or affix file.  Initialization
                aborted.
               )

        Return False
        }

    if p_CustomDic and !FileExist(p_CustomDic)
        {
        MsgBox
            ,0x10  ;-- 0x0 (OK button) + 0x10 (Stop icon)
            ,Spell Library Error,
               (ltrim join`s
                Function: %A_ThisFunc% -
                A custom dictionary file has been specified but it cannot be
                found.  Initialization aborted.
               )

        Return False
        }

    ;-- Load DLL library into the address space of the current process
    ;   Programming note: Return type is necessary for x64
    if not hModule:=DllCall("LoadLibrary","Str",DLLPath,PtrType)
        {
        MsgBox
            ,0x10  ;-- 0x0 (OK button) + 0x10 (Stop icon)
            ,Spell Library Error,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unable to load the Hunspell DLL file.  %A_Space%
               )

        Return False
        }

    ;-- Store the handle to the DLL module
    NumPut(hModule,hSpell,8)

    ;-- Store function addresses
    ;   Programming note: Return type when calling "GetProcAddress" is necessary for x64
    StrType:=A_IsUnicode ? "AStr":"Str"
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellAdd",PtrType),         hSpell,16)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellAddWithAffix",PtrType),hSpell,24)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellAnalyze",PtrType),     hSpell,32)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellFree",PtrType),        hSpell,40)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellGenerate",PtrType),    hSpell,48)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellInit",PtrType),        hSpell,56)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellSpell",PtrType),       hSpell,64)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellStem",PtrType),        hSpell,72)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HunspellSuggest",PtrType),     hSpell,80)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HyphenFree",PtrType),          hSpell,88)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HyphenHyphenate",PtrType),     hSpell,96)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"HyphenInit",PtrType),          hSpell,104)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"MyThesFree",PtrType),          hSpell,112)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"MyThesInit",PtrType),          hSpell,120)
    NumPut(DllCall("GetProcAddress",PtrType,hModule,StrType,"MyThesLookup",PtrType),        hSpell,128)

    ;-- Initialize and store the handle to the Spell object
    DataType:=A_IsUnicode ? "Str":A_PtrSize ? "WStr":"UInt"
    RC:=DllCall(NumGet(hSpell,56)
        ,DataType,A_PtrSize ? p_Aff:Spell_ANSI2Unicode(&p_Aff,wAff)
        ,DataType,A_PtrSize ? p_Dic:Spell_ANSI2Unicode(&p_Dic,wDic)
        ,"UInt",0
        ,"Cdecl")

    NumPut(RC,hSpell,0)
    Return True
    }


;------------------------------
;
; Function: Spell_InitCustom
;
; Description:
;
;   Add words from a custom dictionary file to the dictionary.  Words are valid
;   until spell object is destroyed.
;
; Parameters:
;
;   hSpell - Variable that contains the current dictionary information.
;
;   p_CustomDic - Path to a custom dictionary file.
;
;   p_AddCase - See <Spell_Add> for the syntax/rules of this parameter.
;       [Optional]
;
; Returns:
;
;   The number of words loaded to the spell object if successful (can be 0) or
;   -1 if the custom dictionary file is not found.
;
; Calls To Other Functions:
;
; * <Spell_Add>
;
; Remarks:
;
; * This function must be called _after_ <Spell_Init>.
;
; * The custom dictionary file must be in Unix (EOL=LF) or DOS/Windows
;   (EOL=CR+LF) format.
;
; * Call this function directly to load more than one custom dictionary or if
;   use of the p_AddCase parameter is required.  Otherwise, specify the custom
;   dictionary when calling <Spell_Init>.
;
;-------------------------------------------------------------------------------
Spell_InitCustom(ByRef hSpell,p_CustomDic,p_AddCase="")
    {
    FileRead l_ListOfWords,%p_CustomDic%
    if ErrorLevel
        {
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            Unable to read from custom dictionary: %p_CustomDic%
           )

        Return -1
        }

    Return Spell_Add(hSpell,l_ListOfWords,p_AddCase)
    }


;------------------------------
;
; Function: Spell_Spell
;
; Description:
;
;   Check the spelling of the specified word.
;
; Returns:
;
;   TRUE if the word was found in the active dictionary, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Spell_Spell(ByRef hSpell,p_Word)
    {
    Static Dummy0250
          ,FirstCall:=True
          ,PtrType
          ,StrType

    ;-- Set values for the dynamic static variables
    if FirstCall
        {
        PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"
        StrType:=A_IsUnicode ? "Str":A_PtrSize ? "WStr":"UInt"
        FirstCall:=False
        }

    ;-- Word in the dictionary?
    Return DllCall(NumGet(hSpell,64)
        ,PtrType,NumGet(hSpell,0)
        ,StrType,A_PtrSize ? p_Word:Spell_ANSI2Unicode(&p_Word,wString)
        ,"Cdecl")
    }

;------------------------------
;
; Function: Spell_Suggest
;
; Description:
;
;   Suggest words for word.
;
; Parameters:
;
;   hSpell - Variable that contains the current dictionary information.
;
;   p_Word - Word for which to look up for suggestions.
;
;   r_SuggestList - [Output] Variable that is loaded with a newline ("`n")
;       delimited list of suggest words.
;
; Returns:
;
;   Number of words in r_SuggestList.
;
;-------------------------------------------------------------------------------
Spell_Suggest(ByRef hSpell,p_Word,ByRef r_SuggestList)
    {
    ;-- Initialize
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"
    PtrSize:=(A_PtrSize=8) ? 8:4
    r_SuggestList:=""

    ;-- Suggest words
    StrType:=A_IsUnicode ? "Str":A_PtrSize ? "WStr":"UInt"
    RC:=DllCall(NumGet(hSpell,80)
        ,PtrType,NumGet(hSpell,0)
        ,StrType,A_PtrSize ? p_Word:Spell_ANSI2Unicode(&p_Word,wString)
        ,"Cdecl " . PtrType)

    ;-- Return 0 if there are no suggest words
    if (RC=0)
        Return 0

    ;-- Build a list of suggest words
    pArrayOfPointers:=RC
    l_Count:=0
    Loop
        {
        ;-- Get the address to the next suggest word.  Break if there are no more.
        if not pSuggestWord:=NumGet(pArrayOfPointers+((A_Index-1)*PtrSize))
            Break

        ;-- Count it
        l_Count++

        ;-- Extract the suggest word from memory
        if A_IsUnicode
            {
            nSize:=DllCall("lstrlenW",PtrType,pSuggestWord)
                ;-- Length of string in characters.  Size does NOT includes
                ;   terminating null character.

            VarSetCapacity(l_SuggestWord,nSize*2,0)
            DllCall("lstrcpynW"
                ,"Str",l_SuggestWord                    ;-- lpString1 [out]
                ,PtrType,pSuggestWord                   ;-- lpString2 [in]
                ,"Int",nSize+1)                         ;-- iMaxLength [in]

            VarSetCapacity(l_SuggestWord,-1)
            }
         else
            Spell_Unicode2ANSI(pSuggestWord,l_SuggestWord)

        ;-- Add it to the list
        r_SuggestList.=(StrLen(r_SuggestList) ? "`n":"") . l_SuggestWord
        }

    Return l_Count
    }


;-----------------------------
;
; Function: Spell_Unicode2ANSI
;
; Description:
;
;   Maps a UTF-16 (wide character) string to a character string (ANSI).
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Parameters:
;
;   lpWideCharStr - Address to a UTF-16 (wide character) string.
;
;   MultiByteStr - Variable to store character string (ANSI).
;
;-------------------------------------------------------------------------------
Spell_Unicode2ANSI(lpWideCharStr,ByRef MultiByteStr)
    {
    Static CP_ACP:=0    ;-- The system default Windows ANSI code page.

    ;-- Workaround for AutoHotkey Basic
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"

    ;-- Collect size
    nSize:=DllCall("WideCharToMultiByte"
            ,"UInt",CP_ACP
                ;-- CodePage [UINT,in]
            ,"UInt",0
                ;-- dwFlags [DWORD,in]
            ,PtrType,lpWideCharStr
                ;-- lpWideCharStr [LPCWSTR,in].  Pointer to Unicode string.
            ,"Int",-1
                ;-- cchWideChar [Int,in].  Size, in characters, of the string
                ;   indicated by lpWideCharStr.  -1=String is null terminated.
            ,PtrType,0
                ;-- lpMultiByteStr [LPSTR,out].  Pointer to a buffer that
                ;   receives the converted string.  Not used/specified here.
            ,"Int",0
                ;-- cbMultiByte [Int,in].  Size, in bytes, of the buffer
                ;   indicated by lpMultiByteStr.  When set to 0, the function
                ;   returns the required buffer size for lpMultiByteStr.
            ,PtrType,0
                ;-- lpDefaultChar [LPCSTR,in].  Not used.
            ,PtrType,0)
                ;-- lpUsedDefaultChar [LPBOOL,out].  Not used.

    ;-- Convert to ANSI
    VarSetCapacity(MultiByteStr,nSize,0)  ;-- Size includes terminating null
    DllCall("WideCharToMultiByte"
            ,"UInt",CP_ACP
                ;-- CodePage [UINT,in]
            ,"UInt",0
                ;-- dwFlags [DWORD,in]
            ,PtrType,lpWideCharStr
                ;-- lpWideCharStr [LPCWSTR,in].  Pointer to Unicode string.
            ,"Int",nSize
                ;-- cchWideChar [Int,in].  Size, in characters, of the string
                ;   indicated by lpWideCharStr.  For this function, nSize
                ;   includes the terminating null if found.
            ,"Str",MultiByteStr
                ;-- lpMultiByteStr [LPSTR,out].  Pointer to a buffer that
                ;   receives the converted string.
            ,"Int",nSize
                ;-- cbMultiByte [Int,in].  Size, in bytes, of the buffer
                ;   indicated by lpMultiByteStr.
            ,PtrType,0
                ;-- lpDefaultChar [LPCSTR,in].  Not used.
            ,PtrType,0)
                ;-- lpUsedDefaultChar [LPBOOL,out].  Not used.

    Return &MultiByteStr
    }


;------------------------------
;
; Function: Spell_Uninit
;
; Description:
;
;   Frees the spell object and the memory allocated to the dynamic link library
;   (DLL) (unless the DLL was loaded outside of this function library).
;
;-------------------------------------------------------------------------------
Spell_Uninit(ByRef hSpell)
    {
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"
    RC:=DllCall(NumGet(hSpell,40),PtrType,NumGet(hSpell,0),"Cdecl")
    RC:=DllCall("FreeLibrary",PtrType,NumGet(hSpell,8))
    }















































;  __          ___        _____      _   _____          ______             _     _    
;  \ \        / (_)      / ____|    | | |  __ \        |  ____|           | |   | |   
;   \ \  /\  / / _ _ __ | |  __  ___| |_| |__) |__  ___| |__  __  __  __ _| |__ | | __
;    \ \/  \/ / | | '_ \| | |_ |/ _ \ __|  ___/ _ \/ __|  __| \ \/ / / _` | '_ \| |/ /
;     \  /\  /  | | | | | |__| |  __/ |_| |  | (_) \__ \ |____ >  < | (_| | | | |   < 
;      \/  \/   |_|_| |_|\_____|\___|\__|_|   \___/|___/______/_/\_(_)__,_|_| |_|_|\_\
                                                                                    
                                                                                    


;------------------------------
;
; Function: WinGetPosEx
;
; Description:
;
;   Gets the position, size, and offset of a window. See the *Remarks* section
;   for more information.
;
; Parameters:
;
;   hWindow - Handle to the window.
;
;   X, Y, Width, Height - Output variables. [Optional] If defined, these
;       variables contain the coordinates of the window relative to the
;       upper-left corner of the screen (X and Y), and the Width and Height of
;       the window.
;
;   Offset_X, Offset_Y - Output variables. [Optional] Offset, in pixels, of the
;       actual position of the window versus the position of the window as
;       reported by GetWindowRect.  If moving the window to specific
;       coordinates, add these offset values to the appropriate coordinate
;       (X and/or Y) to reflect the true size of the window.
;
; Returns:
;
;   If successful, the address of a RECTPlus structure is returned.  The first
;   16 bytes contains a RECT structure that contains the dimensions of the
;   bounding rectangle of the specified window.  The dimensions are given in
;   screen coordinates that are relative to the upper-left corner of the screen.
;   The next 8 bytes contain the X and Y offsets (4-byte integer for X and
;   4-byte integer for Y).
;
;   Also if successful (and if defined), the output variables (X, Y, Width,
;   Height, Offset_X, and Offset_Y) are updated.  See the *Parameters* section
;   for more more information.
;
;   If not successful, FALSE is returned.
;
; Requirement:
;
;   Windows 2000+
;
; Remarks, Observations, and Changes:
;
; * Starting with Windows Vista, Microsoft includes the Desktop Window Manager
;   (DWM) along with Aero-based themes that use DWM.  Aero themes provide new
;   features like a translucent glass design with subtle window animations.
;   Unfortunately, the DWM doesn't always conform to the OS rules for size and
;   positioning of windows.  If using an Aero theme, many of the windows are
;   actually larger than reported by Windows when using standard commands (Ex:
;   WinGetPos, GetWindowRect, etc.) and because of that, are not positioned
;   correctly when using standard commands (Ex: gui Show, WinMove, etc.).  This
;   function was created to 1) identify the true position and size of all
;   windows regardless of the window attributes, desktop theme, or version of
;   Windows and to 2) identify the appropriate offset that is needed to position
;   the window if the window is a different size than reported.
;
; * The true size, position, and offset of a window cannot be determined until
;   the window has been rendered.  See the example script for an example of how
;   to use this function to position a new window.
;
; * 20150906: The "dwmapi\DwmGetWindowAttribute" function can return odd errors
;   if DWM is not enabled.  One error I've discovered is a return code of
;   0x80070006 with a last error code of 6, i.e. ERROR_INVALID_HANDLE or "The
;   handle is invalid."  To keep the function operational during this types of
;   conditions, the function has been modified to assume that all unexpected
;   return codes mean that DWM is not available and continue to process without
;   it.
;
; Credit:
;
;   Idea and some code from *KaFu* (AutoIt forum)
;
;-------------------------------------------------------------------------------
WinGetPosEx(hWindow,ByRef X="",ByRef Y="",ByRef Width="",ByRef Height="",ByRef Offset_X="",ByRef Offset_Y="")
    {
    Static Dummy5693
          ,RECTPlus
          ,S_OK:=0x0
          ,DWMWA_EXTENDED_FRAME_BOUNDS:=9
          ,ERROR_INVALID_HANDLE:=6

    ;-- Workaround for AutoHotkey Basic
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"

    ;-- Get the window's dimensions
    ;   Note: Only the first 16 bytes of the RECTPlus structure are used by the
    ;   DwmGetWindowAttribute and GetWindowRect functions.
    VarSetCapacity(RECTPlus,24,0)
    DWMRC:=DllCall("dwmapi\DwmGetWindowAttribute"
        ,PtrType,hWindow                                ;-- hwnd
        ,"UInt",DWMWA_EXTENDED_FRAME_BOUNDS             ;-- dwAttribute
        ,PtrType,&RECTPlus                              ;-- pvAttribute
        ,"UInt",16)                                     ;-- cbAttribute

    if (DWMRC<>S_OK)
        {
        if ErrorLevel in -3,-4  ;-- Dll or function not found (older than Vista)
            {
            ;-- Do nothing (for now)
            }
         else if (A_LastError=ERROR_INVALID_HANDLE)
                {
                ;-- DWM is not enabled.  Do nothing (fow now)
                }
         else
            outputdebug,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unknown error calling "dwmapi\DwmGetWindowAttribute".
                RC=%DWMRC%,
                ErrorLevel=%ErrorLevel%,
                A_LastError=%A_LastError%.
                "GetWindowRect" used instead.
               )

        ;-- Collect the position and size from "GetWindowRect"
        DllCall("GetWindowRect",PtrType,hWindow,PtrType,&RECTPlus)
        }

    ;-- Populate the output variables
    X:=Left :=NumGet(RECTPlus,0,"Int")
    Y:=Top  :=NumGet(RECTPlus,4,"Int")
    Right   :=NumGet(RECTPlus,8,"Int")
    Bottom  :=NumGet(RECTPlus,12,"Int")
    Width   :=Right-Left
    Height  :=Bottom-Top
    OffSet_X:=0
    OffSet_Y:=0

    ;-- If DWM is not used (older than Vista or DWM not enabled), we're done
    if (DWMRC<>S_OK)
        Return &RECTPlus

    ;-- Collect dimensions via GetWindowRect
    VarSetCapacity(RECT,16,0)
    DllCall("GetWindowRect",PtrType,hWindow,PtrType,&RECT)
    GWR_Width :=NumGet(RECT,8,"Int")-NumGet(RECT,0,"Int")
        ;-- Right minus Left
    GWR_Height:=NumGet(RECT,12,"Int")-NumGet(RECT,4,"Int")
        ;-- Bottom minus Top

    ;-- Calculate offsets and update output variables
    NumPut(Offset_X:=(Width-GWR_Width)//2,RECTPlus,16,"Int")
    NumPut(Offset_Y:=(Height-GWR_Height)//2,RECTPlus,20,"Int")
    Return &RECTPlus
    }





































;   __  __                 _____ _     _ _     ___          ___           _                    _     _    
;  |  \/  |               / ____| |   (_) |   | \ \        / (_)         | |                  | |   | |   
;  | \  / | _____   _____| |    | |__  _| | __| |\ \  /\  / / _ _ __   __| | _____      ____ _| |__ | | __
;  | |\/| |/ _ \ \ / / _ \ |    | '_ \| | |/ _` | \ \/  \/ / | | '_ \ / _` |/ _ \ \ /\ / / _` | '_ \| |/ /
;  | |  | | (_) \ V /  __/ |____| | | | | | (_| |  \  /\  /  | | | | | (_| | (_) \ V  V / (_| | | | |   < 
;  |_|  |_|\___/ \_/ \___|\_____|_| |_|_|_|\__,_|   \/  \/   |_|_| |_|\__,_|\___/ \_/\_(_)__,_|_| |_|_|\_\
                                                                                                        
                                                                                                        
;-----------------------------
;
; Function: MoveChildWindow v0.2.2 (Preview)
;
; Description:
;
;   Moves a child or pop-up window relative to the parent window.  If needed,
;   the coordinates are adjusted so that the window will fit within the primary
;   monitor work area.
;
; Parameters:
;
;   p_Parent - Parent window.  On all versions of AutoHotkey, this parameter
;       can contain a GUI window number (1 thru 99) or a window handle (hWnd).
;       On AutoHotkey v1.1+, this parameter can also contain a GUI name.
;       Exception: If the "Mouse" or "x,y" options are used, this parameter is
;       ignored.
;
;   p_Child - Child window.  On all versions of AutoHotkey, this parameter
;       can contain a GUI window number (1 thru 99) or a window handle (hWnd).
;       On AutoHotkey v1.1+, this parameter can also contain a GUI name.
;
;   p_Options - Options that determine the position of the child window
;       relative to the parent.  See the *Options* section for the details.
;
; Options:
;
;   The p_Options parameter contains a combination of options that determine
;   how the child window is positioned and/or modified.  The following
;   position options are available.
;
;   Attach - If included, the child window is positioned outside of the parent
;       window as though it were "attached" to one of the borders. The order of
;       the positional parameters ("Left", "Top", etc.) becomes important if
;       selected.  For example if "Attach Right Top" is specified, the child
;       window is positioned on the right border of the parent at the top of the
;       window.  However, if "Attach Top Right" is specified, the child window
;       is positioned immediately above the parent window on the right side of
;       the window.
;
;   Bottom - Positions the child window relative to the bottom of the parent
;       window.  Often used with the "Left", "Center", or "Right options.
;
;   Center - Positions the child window relative to the center of the parent
;       window.  Often used with the "Top", "Bottom", "Left", or "Right"
;       options.  This option is the default positioning option and it has the
;       lowest precedence of all the positioning options.  If no positioning (or
;       competing) options are specified, "Center" is assumed.
;
;   Left - Positions the child window relative to the left side of the parent
;       window.  Often used with the "Top", "Center", or "Bottom" options.
;
;   Mouse - Positions the child window relative to the current cursor (i.e.
;       mouse) position.  If this option is specified, all other positioning
;       options are ignored.
;
;   Right - Positions the child window relative to the right side of the parent
;       windows.  Often used with the "Top", "Center", or "Bottom" options.
;
;   Top - Positions the child window relative to the top of the parent window.
;       Often used with the "Left" , "Center", or "Right" options. This option
;       takes precedence over the "Bottom" option.
;
;   x,y - Position the child window to specific X and/or Y coordinates.  For
;       example, "10,10" will position the dialog in the top left corner of the
;       monitor, 10 pixels in.  If either coordinate is omitted, the dialog will
;       be centered in that dimension.  However, the "," (comma character) must
;       always be specified.  Ex: "120," (X coordinate only) or ",90" (Y
;       coordinate only).  If this option is included, all other positional
;       options are ignored.
;
;   In addition, the following miscellaneous options are available.
;
;   NoMove - Calculates the new position but the child window is not moved.  The
;       coordinates of the child window can be collected via the function's
;       return value.
;
;   Show - Shows (unhides) the child window after it has been moved.  Note: This
;       option should only be specified if the child/pop-up window is hidden
;       _and_ the script doesn't already show (unhide) the window.
;
;   ShowNA - Same as the "Show" option except that the window is not activated
;       after it shown.  This option takes precedence over the "Show" option.
;
;   If more than one option is specified, it should be delimited by a space.
;   For example: "Attach Left Top".
;
; Returns:
;
;   If successful, the address to a <POINT at http://tinyurl.com/mfv6fpz>
;   structure which contains the new coordinates of the child window, otherwise
;   FALSE.
;
; Calls To Other Functions:
;
; * WinGetPosEx
;
; Remarks:
;
;   This version of the function will work on all versions of AutoHotkey but
;   when using AutoHotkey v1.1+, the function may generate a run-time error if
;   p_Parent or p_Child contains an invalid GUI number (1 thru 99) or GUI name.
;   Future versions of this function (when AutoHotkey Basic is no longer
;   supported) will include additional code to ensure that the function will not
;   generate run-time errors.
;
;   At this writing, the function only supports the primary monitor.  Support
;   for multiple monitors may be included in future versions.
;
;-------------------------------------------------------------------------------
MoveChildWindow(p_Parent,p_Child,p_Options="")
    {
    Static Dummy5202
          ,POINT
          ,SW_SHOWNA:=8

    ;[==============]
    ;[  Initialize  ]
    ;[==============]
    VarSetCapacity(POINT,8,0)

    ;-- Workaround for AutoHotkey Basic
    PtrType:=(A_PtrSize=8) ? "Ptr":"UInt"

    ;-- Environment
    l_DetectHiddenWindows:=A_DetectHiddenWindows
    DetectHiddenWindows On
    SysGet l_MonitorWorkArea,MonitorWorkArea
    StringUpper p_Options,p_Options,T   ;-- Just in case StringCaseSense is On

    ;[==============]
    ;[  Parameters  ]
    ;[==============]
    ;------------
    ;-- p_Parent
    ;------------
    ;-- Ignore the parent, i.e. allow invalid or no parent, if "Mouse" or 
    ;   coordinates (Ex: 100,400) options are specified
    if p_Options Contains ,,,Mouse  ;-- "," character or "Mouse"
        hParent:=0
     else
        {
        ;-- Not already a window handle?
        if ((hParent:=WinExist("ahk_id " . p_Parent))<100)
            {
            ;-- GUI number or GUI name
            gui %p_Parent%:+LastFoundExist
            IfWinExist
                {
                gui %p_Parent%:+LastFound
                hParent:=WinExist()
                }
            }

        ;-- Bounce if the parent window is not found
        if not hParent
            {
            outputdebug,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Unable to find the parent window. Request aborted.
                p_Parent=%p_Parent%
               )

            ;-- Reset environment
            DetectHiddenWindows %l_DetectHiddenWindows%
            Return False
            }

        ;-- Collect window position/size
        WinGetPosEx(hParent,l_ParentX,l_ParentY,l_ParentW,l_ParentH)
        }

    ;-----------
    ;-- p_Child
    ;-----------
    ;-- Not already a window handle?
    if ((hChild:=WinExist("ahk_id " . p_Child))<100)
        {
        ;-- GUI number or GUI name
        gui %p_Child%:+LastFoundExist
        IfWinExist
            {
            gui %p_Child%:+LastFound
            hChild:=WinExist()
            }
        }

    ;-- Bounce if the child window is not found
    if not hChild
        {
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% - 
            Unable to find the child window. Request aborted.
            p_Child=%p_Child%
           )

        ;-- Reset environment
        DetectHiddenWindows %l_DetectHiddenWindows%
        Return False
        }

    ;-- Collect window position/size
    WinGetPosEx(hChild,l_ChildX,l_ChildY,l_ChildW,l_ChildH,l_ChildOffset_X,l_ChildOffset_Y)

    ;[=========================]
    ;[  Determine coordinates  ]
    ;[=========================]
    ;-- Mouse
    if p_Options Contains Mouse
        {
        DllCall("GetCursorPos",PtrType,&POINT)
        l_ChildX:=NumGet(POINT,0,"Int")+l_ChildOffset_X
        l_ChildY:=NumGet(POINT,4,"Int")+l_ChildOffset_Y
        }
     else
        {
        ;-- Specific X and/or Y coordinates
        if p_Options Contains ,,
            {
            ;-- Parse until the coordinates option is found
            l_Coords:=""
            Loop Parse,p_Options,%A_Space%
                if A_LoopField Contains ,,
                    {
                    l_Coords:=A_LoopField
                    Break
                    }

            ;-- Set defaults
            l_ChildX:=Round(((l_MonitorWorkAreaRight-l_MonitorWorkAreaLeft)/2)-(l_ChildW/2))+l_ChildOffset_X
            l_ChildY:=Round(((l_MonitorWorkAreaBottom-l_MonitorWorkAreaTop)/2)-(l_ChildH/2))+l_ChildOffset_Y

            ;-- Extract coordinates
            Loop Parse,l_Coords,`,
                {
                if (A_Index=1)
                    if A_LoopField is Integer
                        l_ChildX:=A_LoopField+l_ChildOffset_X

                if (A_Index=2)
                    if A_LoopField is Integer
                        l_ChildY:=A_LoopField+l_ChildOffset_Y
                }
            }
         else
            {
            ;-- Default if none of the associated positional options are included
            l_ChildX:=Round(l_ParentX+((l_ParentW-l_ChildW)/2))+l_ChildOffset_X
            l_ChildY:=Round(l_ParentY+((l_ParentH-l_ChildH)/2))+l_ChildOffset_Y

            ;-- Attach
            if p_Options Contains Attach
                {
                ;-- Initialize
                l_PosParmCount:=0

                ;-- Extract options from left to right
                Loop Parse,p_Options,%A_Space%
                    {
                    if A_LoopField not in Left,Top,Right,Bottom
                        Continue

                    l_PosParmCount++
                    if (l_PosParmCount=1)
                        {
                        if (A_LoopField="Left")
                            l_ChildX:=l_ParentX-l_ChildW+l_ChildOffset_X
                         else if (A_LoopField="Top")
                            l_ChildY:=l_ParentY-l_ChildH+l_ChildOffset_Y
                         else if (A_LoopField="Right")
                            l_ChildX:=l_ParentX+l_ParentW+l_ChildOffset_X
                         else if (A_LoopField="Bottom")
                            l_ChildY:=l_ParentY+l_ParentH+l_ChildOffset_Y
                        }
                     else  ;-- l_PosParmCount>1
                        {
                        if (A_LoopField="Left")
                            l_ChildX:=l_ParentX+l_ChildOffset_X
                         else if (A_LoopField="Top")
                            l_ChildY:=l_ParentY+l_ChildOffset_Y
                         else if (A_LoopField="Right")
                            l_ChildX:=l_ParentX+l_ParentW-l_ChildW+l_ChildOffset_X
                         else if (A_LoopField="Bottom")
                            l_ChildY:=l_ParentY+l_ParentH-l_ChildH+l_ChildOffset_Y
                        }
                    }
                }
             else
                {
                ;-- X
                if p_Options Contains Left
                    l_ChildX:=l_ParentX+l_ChildOffset_X
                 else
                    if p_Options Contains Right
                        l_ChildX:=l_ParentX+l_ParentW-l_ChildW+l_ChildOffset_X

                ;-- Y
                if p_Options Contains Top
                    l_ChildY:=l_ParentY+l_ChildOffset_Y
                 else
                    if p_Options Contains Bottom
                        l_ChildY:=l_ParentY+l_ParentH-l_ChildH+l_ChildOffset_Y
                }
            }
        }

    ;-- If needed, adjust so that the window fits within the monitor work area
    if (l_ChildX<l_MonitorWorkAreaLeft+l_ChildOffset_X)
        l_ChildX:=l_MonitorWorkAreaLeft+l_ChildOffset_X

    if (l_ChildY<l_MonitorWorkAreaTop+l_ChildOffset_Y)
        l_ChildY:=l_MonitorWorkAreaTop+l_ChildOffset_Y

    l_MaximumX:=l_MonitorWorkAreaRight-l_ChildW+l_ChildOffset_X
    if (l_ChildX>l_MaximumX)
        l_ChildX:=l_MaximumX

    l_MaximumY:=l_MonitorWorkAreaBottom-l_ChildH+l_ChildOffset_Y
    if (l_ChildY>l_MaximumY)
        l_ChildY:=l_MaximumY

    ;[========]
    ;[  Move  ]
    ;[========]
    if p_Options not Contains Nomove
        {
        ;-- Move to new position using the window's current width and height
        WinGetPos,,,l_Width,l_Height,ahk_id %hChild%
        if not DllCall("MoveWindow"
                ,PtrType,hChild
                ,"Int",l_ChildX
                ,"Int",l_ChildY
                ,"Int",l_Width
                ,"Int",l_Height
                ,"Int",True)
            {
            outputdebug,
               (ltrim join`s
                Function: %A_ThisFunc% - 
                Unable to move the child window. Request aborted.
               )
    
            ;-- Reset environment
            DetectHiddenWindows %l_DetectHiddenWindows%
            Return False
            }

        ;-- Yield the remainder of the script's timeslice to other processes
        ;   that need it, if any
        Sleep 0
        }

    ;[========]
    ;[  Show  ]
    ;[========]
    if p_Options Contains Showna
        DllCall("ShowWindow",PtrType,hChild,"Int",SW_SHOWNA)
     else
        if p_Options Contains Show
            WinShow ahk_id %hChild%

    ;[=======================]
    ;[  Housekeeping/Return  ]
    ;[=======================]
    ;-- Reset environment 
    DetectHiddenWindows %l_DetectHiddenWindows%

    ;-- Populate POINT structure
    NumPut(l_ChildX,POINT,0,"Int")
    NumPut(l_ChildY,Point,4,"Int")

    ;-- Return address of POINT structure
    Return &POINT
    }



























































;               _     _ _______          _ _   _             _     _    
;      /\      | |   | |__   __|        | | | (_)           | |   | |   
;     /  \   __| | __| |  | | ___   ___ | | |_ _ _ __   __ _| |__ | | __
;    / /\ \ / _` |/ _` |  | |/ _ \ / _ \| | __| | '_ \ / _` | '_ \| |/ /
;   / ____ \ (_| | (_| |  | | (_) | (_) | | |_| | |_) | (_| | | | |   < 
;  /_/    \_\__,_|\__,_|  |_|\___/ \___/|_|\__|_| .__(_)__,_|_| |_|_|\_\
;                                               | |                     
;                                               |_|                     

;------------------------------
;
; Function: AddToolTip
;
; Description:
;
;   Add/Update tooltips to GUI controls.
;
; Parameters:
;
;   hControl - Handle to a GUI control.  Alternatively, this field can be set
;       to "Deactivate" to disable the tooltip control, "Activate" to enable the
;       tooltip control, or "AutoPopDelay" to set the Autopop delay time.
;
;   p_Text - Tooltip text.  Exception: If the hControl parameter contains
;       "AutoPopDelay", set to the desired AutoPop delay time, in seconds.
;       Ex: 10.  Note: The maximum AutoPop delay time is ~32 seconds.
;
; Returns:
;
;   Handle to the tooltip control.
;
; Remarks:
;
; * This function accomplishes this task by creating a single Tooltip control
;   and then creates, updates, or delete tools which are/were attached to the
;   individual GUI controls.
;
; * This function returns the handle to the Tooltip control so that, if desired,
;   additional actions can be performed on the Tooltip control outside of this
;   function.  Once created, this function reuses the same Tooltip control.
;   If the tooltip control is destroyed outside of this function, subsequent
;   calls to this function will fail.  If desired, the tooltip control can be
;   destroyed just before the script ends.
;
; * The tooltip control is enabled by default.  There is no need to "Activate"
;   the tooltip control unless it has been "Deactivated" previously.
;
; Credit and History:
;
; * Original author: Superfraggle
;   Post: <http://www.autohotkey.com/board/topic/27670-add-tooltips-to-controls/>
;
; * Updated to support Unicode: art
;   Post: <http://www.autohotkey.com/board/topic/27670-add-tooltips-to-controls/page-2#entry431059>
;
; * Additional: jballi
;   Bug fixes.  Added support for x64.  Removed Modify parameter.  Added
;   additional functionality, documentation, and constants.
;
;-------------------------------------------------------------------------------
AddToolTip(hControl,p_Text="")
    {
    Static hTT

          ;-- Misc. constants
          ,CW_USEDEFAULT:=0x80000000
          ,HWND_DESKTOP :=0

          ;-- Tooltip delay time constants
          ,TTDT_AUTOPOP:=2
                ;-- Set the amount of time a tooltip window remains visible if
                ;   the pointer is stationary within a tool's bounding
                ;   rectangle.

          ;-- Tooltip styles
          ,TTS_ALWAYSTIP:=0x1
                ;-- Indicates that the ToolTip control appears when the cursor
                ;   is on a tool, even if the ToolTip control's owner window is
                ;   inactive.  Without this style, the ToolTip appears only when
                ;   the tool's owner window is active.

          ,TTS_NOPREFIX:=0x2
                ;-- Prevents the system from stripping ampersand characters from
                ;   a string or terminating a string at a tab character.
                ;   Without this style, the system automatically strips
                ;   ampersand characters and terminates a string at the first
                ;   tab character. This allows an application to use the same
                ;   string as both a menu item and as text in a ToolTip control.

          ;-- TOOLINFO uFlags
          ,TTF_IDISHWND:=0x1
                ;-- Indicates that the uId member is the window handle to the
                ;   tool.  If this flag is not set, uId is the identifier of the
                ;   tool.

          ,TTF_SUBCLASS:=0x10
                ;-- Indicates that the ToolTip control should subclass the
                ;   window for the tool in order to intercept messages, such
                ;   as WM_MOUSEMOVE.  If you do not set this flag, you must use
                ;   the TTM_RELAYEVENT message to forward messages to the
                ;   ToolTip control.  For a list of messages that a ToolTip
                ;   control processes, see TTM_RELAYEVENT.

          ;-- Extended styles
          ,WS_EX_TOPMOST:=0x8

          ;-- Messages
          ,TTM_ACTIVATE      :=0x401                    ;-- WM_USER + 1
          ,TTM_ADDTOOLA      :=0x404                    ;-- WM_USER + 4
          ,TTM_ADDTOOLW      :=0x432                    ;-- WM_USER + 50
          ,TTM_DELTOOLA      :=0x405                    ;-- WM_USER + 5
          ,TTM_DELTOOLW      :=0x433                    ;-- WM_USER + 51
          ,TTM_GETTOOLINFOA  :=0x408                    ;-- WM_USER + 8
          ,TTM_GETTOOLINFOW  :=0x435                    ;-- WM_USER + 53
          ,TTM_SETDELAYTIME  :=0x403                    ;-- WM_USER + 3
          ,TTM_SETMAXTIPWIDTH:=0x418                    ;-- WM_USER + 24
          ,TTM_UPDATETIPTEXTA:=0x40C                    ;-- WM_USER + 12
          ,TTM_UPDATETIPTEXTW:=0x439                    ;-- WM_USER + 57

    ;-- Save/Set DetectHiddenWindows
    l_DetectHiddenWindows:=A_DetectHiddenWindows
    DetectHiddenWindows On

    ;-- Tooltip control exists?
    if not hTT
        {
        ;-- Create Tooltip window
        hTT:=DllCall("CreateWindowEx"
            ,"UInt",WS_EX_TOPMOST                       ;-- dwExStyle
            ,"Str","TOOLTIPS_CLASS32"                   ;-- lpClassName
            ,"Ptr",0                                    ;-- lpWindowName
            ,"UInt",TTS_ALWAYSTIP|TTS_NOPREFIX          ;-- dwStyle
            ,"UInt",CW_USEDEFAULT                       ;-- x
            ,"UInt",CW_USEDEFAULT                       ;-- y
            ,"UInt",CW_USEDEFAULT                       ;-- nWidth
            ,"UInt",CW_USEDEFAULT                       ;-- nHeight
            ,"Ptr",HWND_DESKTOP                         ;-- hWndParent
            ,"Ptr",0                                    ;-- hMenu
            ,"Ptr",0                                    ;-- hInstance
            ,"Ptr",0                                    ;-- lpParam
            ,"Ptr")                                     ;-- Return type

;;;;;        ;-- ##### Temporary/Experimental 
;;;;;        ;-- Disable visual style
;;;;;        DllCall("uxtheme\SetWindowTheme","Ptr",hTT,"Ptr",0,"UIntP",0)

        ;-- Set the maximum width for the tooltip window
        ;   Note: This message makes multi-line tooltips possible
        SendMessage TTM_SETMAXTIPWIDTH,0,A_ScreenWidth,,ahk_id %hTT%
        }

    ;-- Other commands
    if hControl is not Integer
        {
        StringUpper hControl,hControl,T
            ;-- Just in case StringCaseSense is On

        if (hControl="Activate")
            SendMessage TTM_ACTIVATE,True,0,,ahk_id %hTT%

        if (hControl="Deactivate")
            SendMessage TTM_ACTIVATE,False,0,,ahk_id %hTT%

        if (InStr(hControl,"Autopop")=1)  ;-- Starts with "AutoPop"
            SendMessage TTM_SETDELAYTIME,TTDT_AUTOPOP,p_Text*1000,,ahk_id %hTT%
        
        ;-- Restore DetectHiddenWindows
        DetectHiddenWindows %l_DetectHiddenWindows%
    
        ;-- Return the handle to the tooltip control
        Return hTT
        }

    ;-- Create/Populate TOOLINFO structure
    uFlags:=TTF_IDISHWND|TTF_SUBCLASS
    cbSize:=VarSetCapacity(TOOLINFO,(A_PtrSize=8) ? 64:44,0)
    NumPut(cbSize,      TOOLINFO,0,"UInt")              ;-- cbSize
    NumPut(uFlags,      TOOLINFO,4,"UInt")              ;-- uFlags
    NumPut(HWND_DESKTOP,TOOLINFO,8,"Ptr")               ;-- hwnd
    NumPut(hControl,    TOOLINFO,(A_PtrSize=8) ? 16:12,"Ptr")
        ;-- uId

    VarSetCapacity(l_Text,4096,0)
    NumPut(&l_Text,     TOOLINFO,(A_PtrSize=8) ? 48:36,"Ptr")
        ;-- lpszText

    ;-- Check to see if tool has already been registered for the control
    SendMessage
        ,A_IsUnicode ? TTM_GETTOOLINFOW:TTM_GETTOOLINFOA
        ,0
        ,&TOOLINFO
        ,,ahk_id %hTT%

    RegisteredTool:=ErrorLevel

    ;-- Update TOOLTIP structure
    NumPut(&p_Text,TOOLINFO,(A_PtrSize=8) ? 48:36,"Ptr")
        ;-- lpszText

    ;-- Add, Update, or Delete tool
    if RegisteredTool
        {
        if StrLen(p_Text)
            SendMessage
                ,A_IsUnicode ? TTM_UPDATETIPTEXTW:TTM_UPDATETIPTEXTA
                ,0
                ,&TOOLINFO
                ,,ahk_id %hTT%
         else
            SendMessage
                ,A_IsUnicode ? TTM_DELTOOLW:TTM_DELTOOLA
                ,0
                ,&TOOLINFO
                ,,ahk_id %hTT%
        }
    else
        if StrLen(p_Text)
            SendMessage
                ,A_IsUnicode ? TTM_ADDTOOLW:TTM_ADDTOOLA
                ,0
                ,&TOOLINFO
                ,,ahk_id %hTT%

    ;-- Restore DetectHiddenWindows
    DetectHiddenWindows %l_DetectHiddenWindows%

    ;-- Return the handle to the tooltip control
    Return hTT
    }



















































;   ______    _ _ _          _     _    
;  |  ____|  | (_) |        | |   | |   
;  | |__   __| |_| |_   __ _| |__ | | __
;  |  __| / _` | | __| / _` | '_ \| |/ /
;  | |___| (_| | | |_ | (_| | | | |   < 
;  |______\__,_|_|\__(_)__,_|_| |_|_|\_\
                                      
                                      


/*
Title: Edit Library v2.0

Group: Introduction

    This library is designed for use on the standard Edit control.

Group: Issues/Consideration

    A few considerations...

 *  Some of functions are only for use on single-line Edit controls and some
    are only for use on multiline Edit controls.  See the documentation for each
    function for any restrictions.

 *  AutoHotkey supports the creation and manipulation of the standard edit
    control.  For this reason, there are a small number functions that were
    intentionally left out of this library because they provide no additional
    value to what the standard AutoHotkey commands provide.

 *  The Edit control does not support several key messages that are needed by
    this library.  Absent messages include EM_GETSELTEXT, EM_GETTEXTRANGE, and
    EM_FINDTEXT.  These messages have been replaced with AutoHotkey commands or
    with other messages.  Although the substitute code/messages are very
    capable, they are not quite as efficient (memory and/or speed) as the
    messages they replace (if they existed).  These inefficiencies are not
    really noticable if the control only contains a limited amount of text
    (~512K or less), but they become more pronounced with increasing text sizes.
    Efficiency also depends on the where work in the control is being done.  For
    example, extracting text from the top of the control uses less resources
    that extracting text from the end of the control.

Group: Credit

    This library was inspired by the Edit mini-library created by *Lexikos* and
    the HiEditor library created by *majkinetor*.  Some of the syntax and code
    ideas were extracted from these libraries.  Thanks to these authors for
    sharing their work.

Group: Functions
*/


;-----------------------------
;
; Function: Edit_ActivateParent
;
; Description:
;
;   Activates (makes foremost) the parent window of the Edit control if needed.
;   If the window is minimized, it is automatically restored prior to being
;   activated.
;
; Returns:
;
;   TRUE if successful, or FALSE otherwise.
;
; Remarks:
;
;   This function only actives the parent window of the Edit control.  It does
;   not give focus to the Edit control.  If needed, call <Edit_SetFocus> instead
;   of (or in addition to) this function.
;
;-------------------------------------------------------------------------------
Edit_ActivateParent(hEdit)
    {
    ;-- Get handle to the parent window
    hParent:=DllCall("GetParent","Ptr",hEdit,"Ptr")

    ;-- Activate if needed
    IfWinNotActive ahk_id %hParent%
        {
        WinActivate ahk_id %hParent%

        ;-- Still not active? (relatively rare)
        IfWinNotActive ahk_id %hParent%
            {
            ;-- Give the window an additional 250 ms to activate
            WinWaitActive ahk_id %hParent%,,0.25
            if ErrorLevel
                Return False
            }
        }

    Return True
    }


;-----------------------------
;
; Function: Edit_CanUndo
;
; Description:
;
;   Returns TRUE if there are any actions in the Edit control's undo queue,
;   otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_CanUndo(hEdit)
    {
    Static EM_CANUNDO:=0xC6
    SendMessage EM_CANUNDO,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_CharFromPos
;
; Description:
;
;   Gets information about the character and/or line closest to a specified
;   point in the the client area of the Edit control.
;
; Parameters:
;
;   X, Y - The coordinates of a point in the Edit control's client area
;       relative to the upper-left corner of the client area.
;
;   r_CharPos - [Output] The zero-based index of the character nearest the
;       specified point. [Optional] This index is relative to the beginning of
;       the control, not the beginning of the line.  If the specified point is
;       beyond the last character in the Edit control, the return value
;       indicates the last character in the control.  See the *Remarks* section
;       for more information.
;
;   r_LineIdx - [Output] Zero-based index of the line that contains the
;       character. [Optional] For single-line Edit controls, this value is zero.
;       The index indicates the line delimiter if the specified point is beyond
;       the last visible character in a line.  See the *Remarks* section for
;       more information.
;
; Returns:
;
;   The value of the r_CharPos variable.
;
; Calls To Other Functions:
;
; * <Edit_GetFirstVisibleLine>
; * <Edit_LineIndex>
;
; Remarks:
;
;   If the specified point is outside the bounds of the Edit control, the
;   return value and all output variables (r_CharPos and r_LineIdx) are set to
;   -1.
;
;-------------------------------------------------------------------------------
Edit_CharFromPos(hEdit,X,Y,ByRef r_CharPos="",ByRef r_LineIdx="")
    {
    Static Dummy3902

          ;-- Messages
          ,EM_CHARFROMPOS        :=0xD7
          ,EM_GETFIRSTVISIBLELINE:=0xCE
          ,EM_LINEINDEX          :=0xBB

    ;-- Collect character position from coordinates
    SendMessage EM_CHARFROMPOS,0,(Y<<16)|X,,ahk_id %hEdit%

    ;-- Out of bounds?
    if (ErrorLevel<<32>>32=-1)
        {
        r_CharPos:=-1
        r_LineIdx:=-1
        Return -1
        }

    ;-- Extract values (UShort)
    r_CharPos:=ErrorLevel&0xFFFF    ;-- LOWORD
    r_LineIdx:=ErrorLevel>>16       ;-- HIWORD

    ;-- Convert from UShort to UInt using known UInt values as reference
    SendMessage EM_GETFIRSTVISIBLELINE,0,0,,ahk_id %hEdit%
    FirstLine:=ErrorLevel-1
    if (FirstLine>r_LineIdx)
        r_LineIdx:=r_LineIdx+(65536*Floor((FirstLine+(65535-r_LineIdx))/65536))

    SendMessage EM_LINEINDEX,(FirstLine<0) ? 0:FirstLine,0,,ahk_id %hEdit%
    FirstCharPos:=ErrorLevel
    if (FirstCharPos>r_CharPos)
        r_CharPos:=r_CharPos+(65536*Floor((FirstCharPos+(65535-r_CharPos))/65536))

    Return r_CharPos
    }


;-----------------------------
;
; Function: Edit_Clear
;
; Description:
;
;   Clear (delete) the current selection, if any, from the Edit control.
;
; Remarks:
;
;   Undo can be used to reverse this action.
;
;-------------------------------------------------------------------------------
Edit_Clear(hEdit)
    {
    Static WM_CLEAR:=0x303
    SendMessage WM_CLEAR,0,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_ContainsSoftLineBreaks
;
; Description:
;
;   Returns TRUE if the Edit control contains any soft line-break characters
;   in the text.
;
; Type:
;
;   Experimental/Preview.  Subject to change.
;
; Calls To Other Functions:
;
; * <Edit_FmtLines>
; * <Edit_GetText>
; * <Edit_IsWordWrap>
;
; Remarks:
;
;   This function is resource intensive.  The entire document is formatted to
;   include soft line-break characters (if any) and then reverted back to the
;   original format.  Use sparingly.  When used on large documents, performance
;   can be significantly improved by setting *SetBatchLines* to a high value
;   before calling this function.  For example:
;
;       (start code)
;       SetBatchLines 100ms  ;-- Large bump in priority
;       RC:=Edit_ContainsSoftLineBreaks(hEdit)
;       SetBatchLines 10ms   ;-- Default priority
;       (end)
;
;   Warning: There is an extremely remote possiblity that a library function
;   that uses the WM_GETTEXT message (Ex: <Edit_GetSelText>) can collect
;   formatted text, i.e. text that includes soft line-break characters, while
;   this function is running.  This can occur if the the thread running this
;   function is interrupted by another thread immediately after formatting the
;   Edit control to include soft line-break characters.  In this scenario, the
;   interrupting thread uses a function that uses the WM_GETTEXT message and
;   collects formatted text.  The chances of this occurring are virtually nil
;   for small and medium-sized documents but the chances increase (although
;   still very unlikely) as the size of the document increases.  To
;   significantly reduce the chance of interruption, set *SetBatchLines* to a
;   high value (or -1) before calling this function.
;
;-------------------------------------------------------------------------------
Edit_ContainsSoftLineBreaks(hEdit)
    {
    ;-- Bounce if Word Wrap is not enabled
    ;
    ;   Note 1: The Edit_IsWordWrap function can return a false positive (very
    ;   rare, but possible) but so far, no false negatives have been identified
    ;   so it should be safe to use here.
    ;
    ;   Note 2: The Edit_IsWordWrap function does a lot of testing to exclude
    ;   invalid conditions (Ex: Is multiline Edit control?) so these same tests
    ;   do not have to be performed here.
    ;
    if not Edit_IsWordWrap(hEdit)
        Return FALSE

    ;-- Get formatted text from the control
    Edit_FmtLines(hEdit,True)
    l_FormattedText:=Edit_GetText(hEdit)
    Edit_FmtLines(hEdit,False)

    ;-- Any soft line-break characters?
    if l_FormattedText Contains `r`r`n
        Return True

    Return False
    }


;-----------------------------
;
; Function: Edit_Convert2DOS
;
; Description:
;
;   Converts Unix, DOS/Unix mix, and Mac EOL formats to DOS format.
;
;-------------------------------------------------------------------------------
Edit_Convert2DOS(p_Text)
    {
    StringReplace p_Text,p_Text,`r`n,`n,All             ;-- Convert DOS to Unix
    StringReplace p_Text,p_Text,`r,`n,All               ;-- Convert Mac to Unix
    StringReplace p_Text,p_Text,`n,`r`n,All             ;-- Convert Unix to DOS
    Return p_Text
    }


;-----------------------------
;
; Function: Edit_Convert2Mac
;
; Description:
;
;   Convert DOS, DOS/Unix mix, and Unix EOL formats to Mac format.
;
;-------------------------------------------------------------------------------
Edit_Convert2Mac(p_Text)
    {
    StringReplace p_Text,p_Text,`r`n,`r,All             ;-- Convert DOS to Mac
    StringReplace p_Text,p_Text,`n,`r,All               ;-- Convert Unix to Mac
    if StrLen(p_Text)
        if (SubStr(p_Text,0)<>"`r")
            p_Text.="`r"

    Return p_Text
    }


;-----------------------------
;
; Function: Edit_Convert2Unix
;
; Description:
;
;   Convert DOS, DOS/Unix mix, and Mac formats to Unix format.
;
;-------------------------------------------------------------------------------
Edit_Convert2Unix(p_Text)
    {
    StringReplace p_Text,p_Text,`r`n,`n,All             ;-- Convert DOS to Unix
    StringReplace p_Text,p_Text,`r,`n,All               ;-- Convert Mac to Unix
    if StrLen(p_Text)
        if (SubStr(p_Text,0)<>"`n")
            p_Text.="`n"

    Return p_Text
    }


;-----------------------------
;
; Function: Edit_ConvertCase
;
; Description:
;
;   Convert case of selected text.
;
; Parameters:
;
;   p_Case - Set to "Upper", "Lower", "Capitalize", "Sentence", or "Toggle".
;
; Calls To Other Functions:
;
; * <Edit_GetSel>
; * <Edit_GetSelText>
; * <Edit_ReplaceSel>
; * <Edit_SetSel>
;
;-------------------------------------------------------------------------------
Edit_ConvertCase(hEdit,p_Case)
    {
    StringUpper,p_Case,p_Case,T  ;-- Just in case StringCaseSense is On

    ;-- Collect current select postions
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
    if (l_StartSelPos=l_EndSelPos)  ;-- Nothing selected
        Return

    ;-- Collect selected text
    l_SelectedText:=Edit_GetSelText(hEdit)
    if l_SelectedText is Space
        Return

    ;-- Convert
    if p_Case in U,Upper,Uppercase
        StringUpper l_SelectedText,l_SelectedText
     else
        if p_Case in L,Lower,Lowercase
            StringLower l_SelectedText,l_SelectedText
         else
            if p_Case in C,Capitalize,Title,Titlecase
                StringLower l_SelectedText,l_SelectedText,T
             else
                if p_Case in S,Sentence,Sentencecase
                    {
                    StringLower l_SelectedText,l_SelectedText
                    l_SelectedText:=RegExReplace(l_SelectedText,"((?:^|[.!?]\s+)[a-z])","$u1")
                        ;-- Note: Pattern provided by ManaUser
                    }
                 else
                    if p_Case in T,Toggle,Togglecase,I,Invert,Invertcase
                        {
                        t_SelectedText:=""
                        Loop Parse,l_SelectedText
                            {
                            t_Char:=A_LoopField
                            if t_Char is Upper
                                StringLower t_Char,t_Char
                             else
                                if t_Char is Lower
                                    StringUpper t_Char,t_Char

                            t_SelectedText.=t_Char
                            }

                        l_SelectedText:=t_SelectedText
                        }

    ;-- Replace selected text with converted text
    Edit_ReplaceSel(hEdit,l_SelectedText)

    ;-- Reselect to the user's original positions
    Edit_SetSel(hEdit,l_StartSelPos,l_EndSelPos)
    }


;-----------------------------
;
; Function: Edit_Copy
;
; Description:
;
;   Copy the current selection to the clipboard in CF_TEXT format.
;
;-------------------------------------------------------------------------------
Edit_Copy(hEdit)
    {
    Static WM_COPY:=0x301
    SendMessage WM_COPY,0,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_Cut
;
; Description:
;
;   Delete the current selection, if any, and copy the deleted text to the
;   clipboard in CF_TEXT format.
;
;-------------------------------------------------------------------------------
Edit_Cut(hEdit)
    {
    Static WM_CUT:=0x300
    SendMessage WM_CUT,0,0,,ahk_id %hEdit%
    }


;------------------------------
;
; Function: Edit_Disable
;
; Description:
;
;   Disables ("greys out") an Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   For AutoHotkey GUIs, use the *GUIControl* command for improved efficiency.
;   Ex: GUIControl 24:Disable,MyEdit
;
;-------------------------------------------------------------------------------
Edit_Disable(hEdit)
    {
    Control Disable,,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_DisableAllScrollBars
;
; Description:
;
;   Disables the horizontal and vertical scroll bars.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_DisableAllScrollBars(hEdit)
    {
    Static SB_BOTH:=3,ESB_DISABLE_BOTH:=0x3
    Return Edit_EnableScrollBar(hEdit,SB_BOTH,ESB_DISABLE_BOTH)
    }


;------------------------------
;
; Function: Edit_DisableHScrollBar
;
; Description:
;
;   Disables the horizontal scroll bar.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_DisableHScrollBar(hEdit)
    {
    Static SB_HORZ:=0,ESB_DISABLE_BOTH:=0x3
    Return Edit_EnableScrollBar(hEdit,SB_HORZ,ESB_DISABLE_BOTH)
    }


;------------------------------
;
; Function: Edit_DisableVScrollBar
;
; Description:
;
;   Disables the vertical scroll bar.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_DisableVScrollBar(hEdit)
    {
    Static SB_VERT:=1,ESB_DISABLE_BOTH:=0x3
    Return Edit_EnableScrollBar(hEdit,SB_VERT,ESB_DISABLE_BOTH)
    }


;-----------------------------
;
; Function: Edit_EmptyUndoBuffer
;
; Description:
;
;   Resets the undo flag of the Edit control.  The undo flag is set whenever an
;   operation within the Edit control can be undone.
;
;-------------------------------------------------------------------------------
Edit_EmptyUndoBuffer(hEdit)
    {
    Static EM_EMPTYUNDOBUFFER:=0xCD
    SendMessage EM_EMPTYUNDOBUFFER,0,0,,ahk_id %hEdit%
    }


;------------------------------
;
; Function: Edit_Enable
;
; Description:
;
;   Enables a Edit control if it was previously disabled.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   For AutoHotkey GUIs, use the *GUIControl* command for improved efficiency.
;   Ex: GUIControl 12:Enable,MyEdit
;
;-------------------------------------------------------------------------------
Edit_Enable(hEdit)
    {
    Control Enable,,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_EnableAllScrollBars
;
; Description:
;
;   Enables the horizontal and vertical scroll bars.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_EnableAllScrollBars(hEdit)
    {
    Static SB_BOTH:=3,ESB_ENABLE_BOTH:=0x0
    Return Edit_EnableScrollBar(hEdit,SB_BOTH,ESB_ENABLE_BOTH)
    }


;------------------------------
;
; Function: Edit_EnableHScrollBar
;
; Description:
;
;   Enables the horizontal scroll bar.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_EnableHScrollBar(hEdit)
    {
    Static SB_HORZ:=0,ESB_ENABLE_BOTH:=0x0
    Return Edit_EnableScrollBar(hEdit,SB_HORZ,ESB_ENABLE_BOTH)
    }


;------------------------------
;
; Function: Edit_EnableVScrollBar
;
; Description:
;
;   Enables the vertical scroll bar.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_EnableScrollBar>
;
; Remarks:
;
;   See <Edit_EnableScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_EnableVScrollBar(hEdit)
    {
    Static SB_VERT:=1,ESB_ENABLE_BOTH:=0x0
    Return Edit_EnableScrollBar(hEdit,SB_VERT,ESB_ENABLE_BOTH)
    }


;------------------------------
;
; Function: Edit_EnableScrollBar
;
; Description:
;
;   Enables or disables one or both scroll bar arrows.
;
; Parameters:
;
;   wSBflags - Specifies the scroll bar type.  See the function's static
;       variables for a list of possible values.
;
;   wArrows - Specifies whether the scroll bar arrows are enabled or disabled
;       and indicates which arrows are enabled or disabled.  See the function's
;       static variables for a list of possible values.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   The function will return FALSE (not successful) if the scroll bar(s) are
;   already in the requested state (enabled/disabled).  To determine if a scroll
;   bar is already enabled, use <Edit_IsHScrollBarEnabled> and/or
;   <Edit_IsVScrollBarEnabled>.
;
;-------------------------------------------------------------------------------
Edit_EnableScrollBar(hEdit,wSBflags,wArrows)
    {
    Static Dummy5401

          ;-- Scrollbar Type
          ,SB_HORZ:=0
                ;-- Enables or disables the arrows on the horizontal scroll bar
                ;   associated with the specified window.

          ,SB_VERT:=1
                ;-- Enables or disables the arrows on the vertical scroll bar
                ;   associated with the specified window.

          ,SB_CTL:=2
                ;-- Indicates that the scroll bar is a scroll bar control.  The
                ;   hWnd  must be the handle to the scroll bar control.

          ,SB_BOTH:=3
                ;-- Enables or disables the arrows on the horizontal and
                ;   vertical scroll bars associated with the specified window.

          ;-- Scrollbar Arrows
          ,ESB_ENABLE_BOTH:=0x0
                ;-- Enables both arrows on a scroll bar.

          ,ESB_DISABLE_LEFT:=0x1
                ;-- Disables the left arrow on a horizontal scroll bar.

          ,ESB_DISABLE_BOTH:=0x3
                ;-- Disables both arrows on a scroll bar.

          ,ESB_DISABLE_DOWN:=0x2
                ;-- Disables the down arrow on a vertical scroll bar.

          ,ESB_DISABLE_UP:=0x1
                ;-- Disables the up arrow on a vertical scroll bar.

          ,ESB_DISABLE_LTUP:=0x1  ;-- Same as ESB_DISABLE_LEFT
                ;-- Disables the left arrow on a horizontal scroll bar or the up
                ;   arrow of a vertical scroll bar.

          ,ESB_DISABLE_RIGHT:=0x2
                ;-- Disables the right arrow on a horizontal scroll bar.

          ,ESB_DISABLE_RTDN:=0x2  ;-- Same as ESB_DISABLE_RIGHT
                ;-- Disables the right arrow on a horizontal scroll bar or the
                ;   down arrow of a vertical scroll bar.

    RC:=DllCall("EnableScrollBar"
        ,"Ptr",hEdit                                    ;-- hWnd
        ,"UInt",wSBflags                                ;-- wSBflags
        ,"UInt",wArrows)                                ;-- wArrows

    Return RC ? True:False
    }


;-----------------------------
;
; Function: Edit_FindText
;
; Description:
;
;   Find text within the Edit control.
;
; Parameters:
;
;   p_SearchText - Search text.
;
;   p_Min, p_Max -  Zero-based search range within the Edit control.  p_Min is
;       the character index of the first character in the range and p_Max is the
;       character index immediately following the last character in the range.
;       (Ex: To search the first 5 characters of the text, set p_Min to 0 and
;       p_Max to 5)  Set p_Max to -1 to search to the end of the text.  To
;       search backward, the roles and descriptions of the p_Min and p_Max are
;       reversed. (Ex: To search the first 5 characters of the control in
;       reverse, set p_Min to 5 and p_Max to 0)
;
;   p_Flags - Valid flags are as follows:
;
;       (Start code)
;       Flag        Description
;       ----        -----------
;       MatchCase   Search is case sensitive.  This flag is ignored if the
;                   "RegEx" flag is also defined.
;
;       RegEx       Regular expression search.
;
;       Static      [Advanced feature]
;                   Text collected from the Edit control remains in memory is
;                   used to satisfy the search request.  The text remains in
;                   memory until the "Reset" flag is used or until the
;                   "Static" flag is not used.
;
;                   Advantages: Search time is reduced 10 to 60 percent
;                   (or more) depending on the size of the text in the control.
;                   There is no speed increase on the first use of the "Static"
;                   flag.
;
;                   Disadvantages: Any changes in the Edit control are not
;                   reflected in the search.
;
;                   Hint: Don't use this flag unless performing multiple search
;                   requests on a control that will not be modified while
;                   searching.
;
;       Reset       [Advanced feature]
;                   Clears the saved text created by the "Static" flag so that
;                   the next use of the "Static" flag will get the text directly
;                   from the Edit control.  To clear the saved memory without
;                   performing a search, use the following syntax:
;
;                       Edit_FindText("","",0,0,"Reset")
;       (end)
;
;
;   r_RegExOutput - Variable that contains the part of the source text that
;       matched the RegEx pattern. [Optional]
;
; Returns:
;
;   Zero-based character index of the first character of the match or -1 if no
;   match is found.
;
; Calls To Other Functions:
;
; * <Edit_GetText>
; * <Edit_GetTextLength>
; * <Edit_GetTextRange>
;
; Programming Notes:
;
;   Searching using regular expressions (RegEx) can produce results that have a
;   dynamic number of characters.  For this reason, searching for the "next"
;   pattern (forward or backward) may produce different results from developer
;   to developer depending on how the values of p_Min and p_Max are determined.
;
;-------------------------------------------------------------------------------
Edit_FindText(hEdit,p_SearchText,p_Min=0,p_Max=-1,p_Flags="",ByRef r_RegExOut="")
    {
    Static s_Text

    ;-- Initialize
    r_RegExOut:=""
    if InStr(p_Flags,"Reset")
        s_Text:=""

    ;-- Anything to search?
    if not StrLen(p_SearchText)
        Return -1

    l_MaxLen:=Edit_GetTextLength(hEdit)
    if (l_MaxLen=0)
        Return -1

    ;-- Parameters
    if (p_Min<0 or p_Max>l_MaxLen)
        p_Min:=l_MaxLen

    if (p_Max<0 or p_Max>l_MaxLen)
        p_Max:=l_MaxLen

    ;-- Anything to search?
    if (p_Min=p_Max)
        Return -1

    ;-- Get text
    if InStr(p_Flags,"Static")
        {
        if not StrLen(s_Text)
            s_Text:=Edit_GetText(hEdit)

        l_Text:=SubStr(s_Text,(p_Max>p_Min) ? p_Min+1:p_Max+1,(p_Max>p_Min) ? p_Max:p_Min)
        }
     else
        {
        s_Text:=""
        l_Text:=Edit_GetTextRange(hEdit,(p_Max>p_Min) ? p_Min:p_Max,(p_Max>p_Min) ? p_Max:p_Min)
        }

    ;-- Look for it
    if not InStr(p_Flags,"RegEx")  ;-- Not RegEx
        l_FoundPos:=InStr(l_Text,p_SearchText,InStr(p_Flags,"MatchCase"),(p_Max>p_Min) ? 1:0)-1
     else  ;-- RegEx
        {
        p_SearchText:=RegExReplace(p_SearchText,"^P\)?","",1)   ;-- Remove P or P)
        if (p_Max>p_Min)  ;-- Search forward
            {
            l_FoundPos:=RegExMatch(l_Text,p_SearchText,r_RegExOut,1)-1
            if ErrorLevel
                {
                outputdebug,
                   (ltrim join`s
                    Function: %A_ThisFunc% - RegExMatch error.
                    ErrorLevel=%ErrorLevel%
                   )

                l_FoundPos:=-1
                }
            }
         else  ;-- Search backward
            {
            ;-- Programming notes:
            ;
            ;    -  The first search begins from the user-defined minimum
            ;       position.  This will establish the true minimum position to
            ;       begin search calculations.  If nothing is found, no
            ;       additional searching is necessary.
            ;
            ;    -  The RE_MinPos, RE_MaxPos, and RE_StartPos variables contain
            ;       1-based values.
            ;
            RE_MinPos     :=1
            RE_MaxPos     :=StrLen(l_Text)
            RE_StartPos   :=RE_MinPos
            Saved_FoundPos:=-1
            Saved_RegExOut:=""
            Loop
                {
                ;-- Positional search.  Last found match (if any) wins
                l_FoundPos:=RegExMatch(l_Text,p_SearchText,r_RegExOut,RE_StartPos)-1
                if ErrorLevel
                    {
                    outputdebug,
                       (ltrim join`s
                        Function: %A_ThisFunc% - RegExMatch error.
                        ErrorLevel=%ErrorLevel%
                       )

                    l_FoundPos:=-1
                    Break
                    }

                ;-- If found, update saved and RE_MinPos, else update RE_MaxPos
                if (l_FoundPos>-1)
                    {
                    Saved_FoundPos:=l_FoundPos
                    Saved_RegExOut:=r_RegExOut
                    RE_MinPos     :=l_FoundPos+2
                    }
                else
                    RE_MaxPos:=RE_StartPos-1

                ;-- Are we done?
                if (RE_MinPos>RE_MaxPos or RE_MinPos>StrLen(l_Text))
                    {
                    l_FoundPos:=Saved_FoundPos
                    r_RegExOut:=Saved_RegExOut
                    Break
                    }

                ;-- Calculate new start position
                RE_StartPos:=RE_MinPos+Floor((RE_MaxPos-RE_MinPos)/2)
                }
            }
        }

    ;-- Adjust FoundPos
    if (l_FoundPos>-1)
        l_FoundPos+=(p_Max>p_Min) ? p_Min:p_Max

    Return l_FoundPos
    }

;-----------------------------
;
; Function: Edit_FindTextReset
;
; Description:
;
;   Clears the saved text created by the "Static" flag.
;
; Calls To Other Functions:
;
; * <Edit_FindText>
;
;-------------------------------------------------------------------------------
Edit_FindTextReset()
    {
    Edit_FindText("","",0,0,"Reset")
    }


;-----------------------------
;
; Function: Edit_FmtLines
;
; Description:
;
;   Sets a flag that determines whether a multiline Edit control includes soft
;   line-break characters.  A soft line break consists of two carriage return
;   characters and a line feed character (CR+CR+LF) and is inserted at the end
;   of a line that is broken because of word wrapping.
;
; Parameters:
;
;   p_Flag - Set to TRUE to insert soft line-break characters characters, FALSE
;       to removes them.
;
; Returns:
;
;   The value of p_Flag.
;
; Remarks:
;
;   This message has no effect on the display of the text within the edit
;   control.  It affects the buffer returned by the EM_GETHANDLE message and
;   the text returned by the WM_GETTEXT message.  Since the WM_GETTEXT message
;   is used by other functions in this library, be sure to un-format the text as
;   soon as possible.  Example of use:
;
;       (start code)
;       Edit_FmtLines(hEdit,True)
;       FormattedText:=Edit_GetText(hEdit)
;       Edit_FmtLines(hEdit,False)
;       (end)
;
;-------------------------------------------------------------------------------
Edit_FmtLines(hEdit,p_Flag)
    {
    Static EM_FMTLINES:=0xC8
    SendMessage EM_FMTLINES,p_Flag,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetActiveHandles
;
; Description:
;
;   Finds the handles for the active control and active window.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   hEdit - Variable that contains the handle of the active Edit control.
;       [Optional] Value is zero if the active control is not an Edit control.
;
;   hWindow - Variable that contains the handle of the active window. [Optional]
;
;   p_MsgBox - Display error message. [Optional] If TRUE, an error MsgBox is
;       displayed if the active control is not an Edit control.
;
; Returns:
;
;   Handle of the active Edit control or FALSE (0) if the active control is not
;   an Edit control.
;
;-------------------------------------------------------------------------------
Edit_GetActiveHandles(ByRef hEdit="",ByRef hWindow="",p_MsgBox=False)
    {
    WinGet hWindow,ID,A
    ControlGetFocus l_Control,A
    if (SubStr(l_Control,1,4)="Edit")
        {
        ControlGet hEdit,hWnd,,%l_Control%,A
        Return hEdit
        }

    if p_MsgBox
        MsgBox
            ,0x40010
                ;-- 0x0 (OK button) + 0x10 ("Error" icon) + 0x40000 (AOT)
            ,Error
            ,This request cannot be performed on this control.  %A_Space%

    Return False
    }


;------------------------------
;
; Function: Edit_GetComboBoxEdit
;
; Description:
;
;   Returns the handle to the Edit control attached to a combo box.
;
; Parameters:
;
;   hCombo - Handle to a combo box control.
;
; Credit:
;
;   Code adapted from an example posted by *just me*.
;   Post: http://www.autohotkey.com/community/viewtopic.php?p=569444#p569444
;
;-------------------------------------------------------------------------------
Edit_GetComboBoxEdit(hCombo)
    {
    ;-- Define/Populate the COMBOBOXINFO structure
    cbSize:=(A_PtrSize=8) ? 64:52
    VarSetCapacity(COMBOBOXINFO,cbSize,0)
    NumPut(cbSize,COMBOBOXINFO,0,"UInt")                ;-- cbSize

    ;-- Get ComboBox info
    DllCall("GetComboBoxInfo","Ptr",hCombo,"Ptr",&COMBOBOXINFO)
    Return NumGet(COMBOBOXINFO,(A_PtrSize=8) ? 48:44,"Ptr")
        ;-- hwndItem
    }


;-----------------------------
;
; Function: Edit_GetCueBanner
;
; Description:
;
;   Gets the text that is displayed as the textual cue, or tip, in an edit
;   control.
;
; Parameters:
;
;   p_MaxSize - The maximum number of characters including the terminating null.
;       [Optional] The default is 1024.
;
; Returns:
;
;   Cue bannter text from the designated control.
;
; Requirements:
;
;   Documented:  Windows XP+,
;   Observation: Vista+
;
; Remarks:
;
;   Single-line Edit control only.
;
;-------------------------------------------------------------------------------
Edit_GetCueBanner(hEdit,p_MaxSize=1024)
    {
    Static EM_GETCUEBANNER:=0x1502                      ;-- ECM_FIRST+2
    VarSetCapacity(wText,p_MaxSize*(A_IsUnicode ? 2:1),0)
    SendMessage EM_GETCUEBANNER,&wText,p_MaxSize,,ahk_id %hEdit%
    if ErrorLevel  ;-- Cue banner text found
        Return A_IsUnicode ? wText:StrGet(&wText,-1,"UTF-16")
    }


;-----------------------------
;
; Function: Edit_GetFirstVisibleLine
;
; Description:
;
;   Returns the zero-based index of the uppermost visible line.  For single-line
;   Edit controls, the return value is the zero-based index of the first visible
;   character.
;
;-------------------------------------------------------------------------------
Edit_GetFirstVisibleLine(hEdit)
    {
    Static EM_GETFIRSTVISIBLELINE:=0xCE
    SendMessage EM_GETFIRSTVISIBLELINE,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;------------------------------
;
; Function: Edit_GetFont
;
; Description:
;
;   Gets the font with which the Edit control is currently drawing its text.
;
; Parameters:
;
;   hEdit - Handle to the Edit control.
;
; Returns:
;
;   The handle to the font (HFONT) used by the Edit control or 0 if the
;   using the system font.
;
; Remarks:
;
;   This function can be used to get the font of any control.  Just specify
;   the handle to the desired control as the first parameter.
;   Ex: Edit_GetFont(hLV) where "hLV" is the handle to a ListView control.
;
;-------------------------------------------------------------------------------
Edit_GetFont(hEdit)
    {
    Static WM_GETFONT:=0x31
    SendMessage WM_GETFONT,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetLastVisibleLine
;
; Description:
;
;   Returns the zero-based line index of the last visible line on the edit
;   control.
;
; Calls To Other Functions:
;
; * <Edit_GetRect>
; * <Edit_LineFromPos>
;
; Remarks:
;
;   To calculate the total number of visible lines, use the following...
;
;       (start code)
;       Edit_GetLastVisibleLine(hEdit) - Edit_GetFirstVisibleLine(hEdit) + 1
;       (end)
;
;-------------------------------------------------------------------------------
Edit_GetLastVisibleLine(hEdit)
    {
    Edit_GetRect(hEdit,Left,Top,Right,Bottom)
    Return Edit_LineFromPos(hEdit,0,Bottom-1)
    }


;-----------------------------
;
; Function: Edit_GetLimitText
;
; Description:
;
;   Returns the current text limit for the Edit control.
;
; Remarks:
;
;   Windows NT+: The maximum text length is 0x7FFFFFFE (2,147,483,646)
;   characters for single-line Edit controls and 0xFFFFFFFF (4,294,967,295) for
;   multiline Edit controls.  These values are returned if no limit has been set
;   on the Edit control.
;
;-------------------------------------------------------------------------------
Edit_GetLimitText(hEdit)
    {
    Static EM_GETLIMITTEXT:=0xD5
    SendMessage EM_GETLIMITTEXT,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetLine
;
; Description:
;
;   Get the text of the desired line from the Edit control.
;
; Parameters:
;
;   p_LineIdx - The zero-based index of the line to retrieve. [Optional] Use
;       -1 (the default) to get the current line.  This parameter is ignored if
;       used for a single-line Edit control.
;
;   p_Length - Length of the line or length of the text to be extracted.
;       [Optional] Use -1 (the default) to automatically determine the length
;       of the line.
;
; Returns:
;
;   The text of the specified line up to the length (p_Length) specified.  An
;   empty string is returned if the line number specified by p_LineIdx is
;   greater than the number of lines in the Edit control.
;
; Calls To Other Functions:
;
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineLength>
;
;-------------------------------------------------------------------------------
Edit_GetLine(hEdit,p_LineIdx=-1,p_Length=-1)
    {
    Static EM_GETLINE:=0xC4
    if (p_LineIdx<0)
        p_LineIdx:=Edit_LineFromChar(hEdit,Edit_LineIndex(hEdit))

    l_TCHARs:=(p_Length<0) ? Edit_LineLength(hEdit,p_LineIdx):p_Length
    if (l_TCHARs=0)
        Return

    ;-- Create and initialize buffer
    nSize:=A_IsUniCode ? l_TCHARs*2:(l_TCHARs=1) ? 2:l_TCHARs
        ;-- Programming note: This is size of the buffer, not necessarily the
        ;   size of the string returned.  Since the first WORD (aka UShort) of
        ;   the buffer is set to the size, in TCHARs, of the buffer, the
        ;   minimum buffer size is 2 bytes.

    VarSetCapacity(l_Text,nSize,0)
    NumPut((l_TCHARs=1) ? 2:l_TCHARs,l_Text,0,"UShort")

    ;-- Get Line
    SendMessage EM_GETLINE,p_LineIdx,&l_Text,,ahk_id %hEdit%
    Return SubStr(l_Text,1,l_TCHARs)
    }


;-----------------------------
;
; Function: Edit_GetLineCount
;
; Description:
;
;   Returns an integer specifying the total number of text lines in a multiline
;   Edit control.  If the control has no text, the return value is 1.  The
;   return value will never be less than 1.
;
; Remarks:
;
;   The value returned is for the number of lines in the Edit control.  Very
;   long lines (>1024 characters) or word wrap may introduce additional lines to
;   the control.
;
;-------------------------------------------------------------------------------
Edit_GetLineCount(hEdit)
    {
    Static EM_GETLINECOUNT:=0xBA
    SendMessage EM_GETLINECOUNT,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetMargins
;
; Description:
;
;   Gets the widths of the left and right margins for the Edit control.  If
;   defined, these values are returned in the r_LeftMargin and r_RightMargin
;   variables.
;
; Parameters:
;
;   r_LeftMargin - Left margin, in pixels. [Optional]
;   r_RightMargin - Right margin, in pixels. [Optional]
;
; Returns:
;
;   The Edit control's left margin.
;
;-------------------------------------------------------------------------------
Edit_GetMargins(hEdit,ByRef r_LeftMargin="",ByRef r_RightMargin="")
    {
    Static EM_GETMARGINS:=0xD4
    SendMessage EM_GETMARGINS,0,0,,ahk_id %hEdit%
    r_LeftMargin :=ErrorLevel&0xFFFF    ;-- LOWORD of result
    r_RightMargin:=ErrorLevel>>16       ;-- HIWORD of result
    Return r_LeftMargin
    }


;-----------------------------
;
; Function: Edit_GetModify
;
; Description:
;
;   Gets the state of the Edit control's modification flag.  The flag indicates
;   whether the contents of the Edit control have been modified.
;
; Returns:
;
;   TRUE if the Edit control has been modified, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_GetModify(hEdit)
    {
    Static EM_GETMODIFY:=0xB8
    SendMessage EM_GETMODIFY,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetPasswordChar
;
; Description:
;
;   Gets the password character that an Edit control displays when the user
;   enters text.
;
; Returns:
;
;   The decimal value of the character that is displayed in place of the
;   characters typed by the user.  If a password character has not been set, 0
;   is returned.
;
; Remarks:
;
; * Single-line Edit controls only.
;
; * If the return value is an ANSI value (between 1 and 255), the built-in
;   AutoHotkey *Chr* function can be used to convert the value to a character.
;   For example:
;
;       (start code)
;       Character:=Chr(Edit_GetPasswordChar(hEdit))
;       (end code)
;
; * For most versions of Windows, the default password character decimal value
;   is 9679 (black circle).
;
; Requirements:
;
;   Windows 2000+
;
;-------------------------------------------------------------------------------
Edit_GetPasswordChar(hEdit)
    {
    Static EM_GETPASSWORDCHAR:=0xD2
    Return DllCall("SendMessageW","Ptr",hEdit,"UInt",EM_GETPASSWORDCHAR,"UInt",0,"UInt",0)
    }


;------------------------------
;
; Function: Edit_GetPos
;
; Description:
;
;   Gets the position and size of the Edit control.  See the *Remarks* section
;   for more information.
;
; Parameters:
;
;   X, Y, W, H - Output variables. [Optional]  If defined, these variables
;       contain the coordinates of the Edit control relative to the client-area
;       of the parent window (X and Y), and the width and height of the Edit
;       control (W and H).
;
; Remarks:
;
;   This function returns the same values as the *GUIControlGet,OutputVar,Pos*
;   command and can be used when the *GUIControlGet* command is not available
;   (non-AutoHotkey GUI, GUI name unknown, variable name unknown, etc.)
;
;   If only interested in the W (Width) and/or H (Height) values, the
;   AutoHotkey *ControlGetPos* or *WinGetPos* commands can be used instead.
;
;   Hint: The built-in AutoHotkey *GUIControlGet*, *ControlGetPos*, and
;   *WinGetPos* commands are more efficient and should be used whenever
;   possible.
;
;-------------------------------------------------------------------------------
Edit_GetPos(hEdit,ByRef X="",ByRef Y="",ByRef W="",ByRef H="")
    {
    ;-- Initialize
    VarSetCapacity(RECT,16,0)

    ;-- Get the dimensions of the bounding rectangle of the Edit control
    DllCall("GetWindowRect","Ptr",hEdit,"Ptr",&RECT)
    W:=NumGet(RECT,8,"Int")-NumGet(RECT,0,"Int")        ;-- W=right-left
    H:=NumGet(RECT,12,"Int")-NumGet(RECT,4,"Int")       ;-- H=bottom-top

    ;-- Convert the screen coordinates of the Edit control to client-area
    ;   coordinates.  Note: The API reads/updates the first 8-bytes of the RECT
    ;   structure.
    DllCall("ScreenToClient"
        ,"Ptr",DllCall("GetParent","Ptr",hEdit,"Ptr")
        ,"Ptr",&RECT)

    X:=NumGet(RECT,0,"Int")                             ;-- left
    Y:=NumGet(RECT,4,"Int")                             ;-- top
    }


;-----------------------------
;
; Function: Edit_GetRect
;
; Description:
;
;   Gets the formatting rectangle of the Edit control.
;
; Parameters:
;
;   r_Left..r_Bottom - Output variables. [Optional]
;
; Returns:
;
;   The address to a RECT structure that contains the formatting rectangle.
;
;-------------------------------------------------------------------------------
Edit_GetRect(hEdit,ByRef r_Left="",ByRef r_Top="",ByRef r_Right="",ByRef r_Bottom="")
    {
    Static EM_GETRECT:=0xB2,RECT
    VarSetCapacity(RECT,16,0)
    SendMessage EM_GETRECT,0,&RECT,,ahk_id %hEdit%
    r_Left  :=NumGet(RECT,0,"Int")
    r_Top   :=NumGet(RECT,4,"Int")
    r_Right :=NumGet(RECT,8,"Int")
    r_Bottom:=NumGet(RECT,12,"Int")
    Return &RECT
    }


;------------------------------
;
; Function: Edit_GetScrollBarInfo
;
; Description:
;
;   Gets information about the specified scroll bar.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Parameters:
;
;   idObject - Specifies the scroll bar object.  See the function's static
;       variables for a list of possible values.
;
; Returns:
;
;   The address to a SCROLLBARINFO structure that contains the information
;   requested.
;
;-------------------------------------------------------------------------------
Edit_GetScrollBarInfo(hEdit,idObject)
    {
    Static Dummy4820
          ,SCROLLBARINFO

          ;-- Object identifiers
          ,OBJID_HSCROLL:=0xFFFFFFFA
          ,OBJID_VSCROLL:=0xFFFFFFFB
          ,OBJID_CLIENT :=0xFFFFFFFC

          ;-- rgstate flags
          ,STATE_SYSTEM_UNAVAILABLE:=0x1
          ,STATE_SYSTEM_PRESSED    :=0x8
          ,STATE_SYSTEM_INVISIBLE  :=0x8000
          ,STATE_SYSTEM_OFFSCREEN  :=0x10000

    ;-- Create and initialize SCROLLBARINFO structure
    VarSetCapacity(SCROLLBARINFO,60,0)
    NumPut(60,SCROLLBARINFO,0,"UInt")                   ;-- cbSize

    ;-- Collect scrollbar info
    DllCall("GetScrollBarInfo"
        ,"Ptr",hEdit                                    ;-- hwnd
        ,"Int",idObject                                 ;-- idObject
        ,"Ptr",&SCROLLBARINFO)                          ;-- psbi

    ;-- Return address of SCROLLBARINFO structure
    Return &SCROLLBARINFO
    }


;------------------------------
;
; Function: Edit_GetScrollBarState
;
; Description:
;
;   Gets the state of specified scroll bar.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Parameters:
;
;   idObject - Specifies the scroll bar object.  See the function's static
;       variables for a list of possible values.
;
; Returns:
;
;   The state of the specified scrollbar.  See the function's static variables
;   for a list of possible return values.
;
; Remarks:
;
;   This function returns the state of the scroll bar itself.  It does not
;   include the state of the arrow buttons, scroll box, etc.  If needed, use
;   <Edit_GetScrollBarInfo> to get this information.
;
;-------------------------------------------------------------------------------
Edit_GetScrollBarState(hEdit,idObject)
    {
    Static Dummy8290

          ;-- Object identifiers
          ,OBJID_HSCROLL:=0xFFFFFFFA
          ,OBJID_VSCROLL:=0xFFFFFFFB
          ,OBJID_CLIENT :=0xFFFFFFFC

          ;-- rgstate flags
          ,STATE_SYSTEM_UNAVAILABLE:=0x1
          ,STATE_SYSTEM_PRESSED    :=0x8
          ,STATE_SYSTEM_INVISIBLE  :=0x8000
          ,STATE_SYSTEM_OFFSCREEN  :=0x10000

    ;-- Create and initialize SCROLLBARINFO structure
    VarSetCapacity(SCROLLBARINFO,60,0)
    NumPut(60,SCROLLBARINFO,0,"UInt")                   ;-- cbSize

    ;-- Collect scrollbar info
    DllCall("GetScrollBarInfo"
        ,"Ptr",hEdit                                    ;-- hwnd
        ,"Int",idObject                                 ;-- idObject
        ,"Ptr",&SCROLLBARINFO)                          ;-- psbi

    ;-- Return scroll bar state
    Return NumGet(SCROLLBARINFO,36,"UInt")              ;-- rgstate
    }


;-----------------------------
;
; Function: Edit_GetSel
;
; Description:
;
;   Gets the starting and ending character positions of the current selection in
;   the Edit control.  If defined, these values are returned in the
;   r_StartSelPos and r_EndSelPos variables.
;
; Parameters:
;
;   r_StartSelPos - [Output] Variable that contains the starting position of the
;       selection. [Optional]
;
;   r_EndSelPos - [Output] Variable that contains the end position of the
;       selection. [Optional]
;
; Returns:
;
;   Starting position of the selection.
;
;-------------------------------------------------------------------------------
Edit_GetSel(hEdit,ByRef r_StartSelPos="",ByRef r_EndSelPos="")
    {
    Static Dummy3304
          ,s_StartSelPos
          ,s_EndSelPos
          ,Dummy1:=VarSetCapacity(s_StartSelPos,4,0)
          ,Dummy2:=VarSetCapacity(s_EndSelPos,4,0)

          ;-- Message
          ,EM_GETSEL:=0xB0

    ;-- Get the select positions
    SendMessage EM_GETSEL,&s_StartSelPos,&s_EndSelPos,,ahk_id %hEdit%
    r_StartSelPos:=NumGet(s_StartSelPos,0,"UInt")
    r_EndSelPos  :=NumGet(s_EndSelPos,0,"UInt")
    Return r_StartSelPos
    }

;-----------------------------
;
; Function: Edit_GetSelText
;
; Description:
;
;   Returns the currently selected text (if any).
;
; Calls To Other Functions:
;
; * <Edit_GetLine>
; * <Edit_GetSel>
; * <Edit_GetText>
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineLength>
;
; Remarks:
;
;   Since the Edit control does not support the EM_GETSELTEXT message, the
;   EM_GETLINE (if the selection is on one line) and the WM_GETTEXT messages are
;   used instead.
;
;-------------------------------------------------------------------------------
Edit_GetSelText(hEdit)
    {
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
    if (l_StartSelPos=l_EndSelPos)
        Return

    ;-- Get line indexes of the selection
    l_FirstSelectedLine:=Edit_LineFromChar(hEdit,l_StartSelPos)
    l_LastSelectedLine :=Edit_LineFromChar(hEdit,l_EndSelPos)

    ;-- Get selected text
    l_FirstPos:=Edit_LineIndex(hEdit,l_FirstSelectedLine)
     if (l_FirstSelectedLine=l_LastSelectedLine)
    and (l_EndSelPos<=l_FirstPos+Edit_LineLength(hEdit,l_FirstSelectedLine))
        Return SubStr(Edit_GetLine(hEdit,l_FirstSelectedLine,l_EndSelPos-l_FirstPos),l_StartSelPos-l_FirstPos+1)
     else
        Return SubStr(Edit_GetText(hEdit,l_EndSelPos),l_StartSelPos+1)
    }


;------------------------------
;
; Function: Edit_GetStyle
;
; Description:
;
;   Returns an integer that represents the styles currently set for the Edit
;   control.
;
; Remarks:
;
;   For a complete list of syles:
;
;       <http://msdn.microsoft.com/en-us/library/windows/desktop/bb775464(v=vs.85).aspx>
;
;-------------------------------------------------------------------------------
Edit_GetStyle(hEdit)
    {
    ControlGet l_Style,Style,,,ahk_id %hEdit%
    Return l_Style
    }


;-----------------------------
;
; Function: Edit_GetText
;
; Description:
;
;   Returns all text from the control up to p_Length length.  If p_Length=-1
;   (the default), all text is returned.
;
; Calls To Other Functions:
;
; * <Edit_GetTextLength>
;
; Remarks:
;
;   This function is similar to the AutoHotkey *GUIControlGet* command (for AHK
;   GUIs) and the *ControlGetText* command except that end-of-line (EOL)
;   characters from the retrieved text are not automatically converted
;   (CR+LF to LF).  If needed, use <Edit_Convert2Unix> to convert the text to
;   the AutoHotkey text format.
;
;-------------------------------------------------------------------------------
Edit_GetText(hEdit,p_Length=-1)
    {
    Static WM_GETTEXT:=0xD
    if (p_Length<0)
        p_Length:=Edit_GetTextLength(hEdit)

    VarSetCapacity(l_Text,p_Length*(A_IsUnicode ? 2:1)+1,0)
    SendMessage WM_GETTEXT,p_Length+1,&l_Text,,ahk_id %hEdit%
    Return l_Text
    }


;-----------------------------
;
; Function: Edit_GetTextLength
;
; Description:
;
;   Returns the length, in characters, of the text in the Edit control.
;
;-------------------------------------------------------------------------------
Edit_GetTextLength(hEdit)
    {
    Static WM_GETTEXTLENGTH:=0xE
    SendMessage WM_GETTEXTLENGTH,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_GetTextRange
;
; Description:
;
;   Get a range of characters.
;
; Parameters:
;
;   p_Min - Character position index immediately preceding the first character
;       in the range.
;
;   p_Max - Character position immediately following the last character in the
;       range.  Set to -1 to indicate the end of the text.
;
; Calls To Other Functions:
;
; * <Edit_GetText>
;
; Remarks:
;
;   Since the Edit control does not support the EM_GETTEXTRANGE message,
;   <Edit_GetText> (WM_GETTEXT message) is used to collect the desired range of
;   of characters.
;
;-------------------------------------------------------------------------------
Edit_GetTextRange(hEdit,p_Min=0,p_Max=-1)
    {
    Return SubStr(Edit_GetText(hEdit,p_Max),p_Min+1)
    }


;------------------------------
;
; Function: Edit_HasFocus
;
; Description:
;
;   Determines if the Edit control has functional input focus, aka "keyboard
;   focus".
;
; Returns:
;
;   TRUE if the Edit control has functional input focus, otherwise FALSE.
;
; Credit:
;
;   Adapted from an example in the AutoHotkey documentation.
;
;-------------------------------------------------------------------------------
Edit_HasFocus(hEdit)
    {
    Static Dummy7291
          ,GUITHREADINFO

          ;-- Create and initialize GUITHREADINFO structure
          ,cbSize:=(A_PtrSize=8) ? 72:48
          ,Dummy1:=VarSetCapacity(GUITHREADINFO,cbSize)
          ,Dummy2:=NumPut(cbSize,GUITHREADINFO,0,"UInt")

    ;-- Collect GUI Thread Info
    if not DllCall("GetGUIThreadInfo","UInt",0,"Ptr",&GUITHREADINFO)
        {
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            DllCall to "GetGUIThreadInfo" API failed. A_LastError=%A_LastError%
           )

        Return False
        }

    Return (hEdit=NumGet(GUITHREADINFO,(A_PtrSize=8) ? 16:12,"Ptr"))
        ;-- hwndFocus
    }


;------------------------------
;
; Function: Edit_Hide
;
; Description:
;
;   Hides a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
; * For AutoHotkey GUIs, use the *GUIControl* command for improved efficiency.
;   Ex: GUIControl 33:Hide,MyEdit
;
; * This command only hides the control, it does not disable it.  To prevent use
;   of the control's shortcut keys, be sure to disable the control as well.
;
;-------------------------------------------------------------------------------
Edit_Hide(hEdit)
    {
    Control Hide,,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_HideAllScrollBars
;
; Description:
;
;   Hides the horizontal and vertical scroll bars on a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_HideAllScrollBars(hEdit)
    {
    Static SB_BOTH:=3
    Return Edit_ShowScrollBar(hEdit,SB_BOTH,False)
    }


;-----------------------------
;
; Function: Edit_HideBalloonTip
;
; Description:
;
;   Hides any balloon tip associated with an Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   This function is usually unnecessary.  A balloon tip will usually auto-hide
;   after short period of time (5 to 15 seconds).  In addition, the balloon tip
;   will auto-hide if the contents of the control are changed or if focus is
;   moved to another control.
;
; Requirements:
;
;   Windows XP+
;
;-------------------------------------------------------------------------------
Edit_HideBalloonTip(hEdit)
    {
    Static EM_HIDEBALLOONTIP:=0x1504
    SendMessage EM_HIDEBALLOONTIP,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;------------------------------
;
; Function: Edit_HideHScrollBar
;
; Description:
;
;   Hides the horizontal scroll bar on a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_HideHScrollBar(hEdit)
    {
    Static SB_HORZ:=0
    Return Edit_ShowScrollBar(hEdit,SB_HORZ,False)
    }


;------------------------------
;
; Function: Edit_HideVScrollBar
;
; Description:
;
;   Hides the vertical scroll bar on a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_HideVScrollBar(hEdit)
    {
    Static SB_VERT:=1
    Return Edit_ShowScrollBar(hEdit,SB_VERT,False)
    }


;------------------------------
;
; Function: Edit_IsDisabled
;
; Description:
;
;   Returns TRUE if the Edit control is disabled.
;
; Calls To Other Functions:
;
; * <Edit_GetStyle>
;
;-------------------------------------------------------------------------------
Edit_IsDisabled(hEdit)
    {
    Static WS_DISABLED:=0x8000000
    Return Edit_GetStyle(hEdit) & WS_DISABLED ? True:False
    }


;-----------------------------
;
; Function: Edit_IsHScrollBarEnabled
;
; Description:
;
;   Determines if the horizontal scroll bar is enabled.
;
; Returns:
;
;   TRUE if the horizontal scroll bar is enabled, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetScrollBarState>
;
; Observation:
;
; * The return value from this function is unusable (always returns TRUE) if
;   the scroll bar is hidden.  The scroll bar can still be enabled or disabled
;   while the scroll bar is hidden.  There is just no way to determine the
;   current enabled/disabled status while the scroll bar is hidden.
;
;-------------------------------------------------------------------------------
Edit_IsHScrollBarEnabled(hEdit)
    {
    Static OBJID_HSCROLL:=0xFFFFFFFA
          ,STATE_SYSTEM_UNAVAILABLE:=0x1

    Return Edit_GetScrollBarState(hEdit,OBJID_HSCROLL) & STATE_SYSTEM_UNAVAILABLE ? False:True
    }


;-----------------------------
;
; Function: Edit_IsHScrollBarVisible
;
; Description:
;
;   Determines if the horizontal scroll bar is visible.
;
; Returns:
;
;   TRUE if the horizontal scroll bar is visible, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetScrollBarState>
;
;-------------------------------------------------------------------------------
Edit_IsHScrollBarVisible(hEdit)
    {
    Static OBJID_HSCROLL:=0xFFFFFFFA
          ,STATE_SYSTEM_INVISIBLE:=0x8000
          ,STATE_SYSTEM_OFFSCREEN:=0x10000

    Return Edit_GetScrollBarState(hEdit,OBJID_HSCROLL) & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN) ? False:True
    }


;-----------------------------
;
; Function: Edit_IsMultiline
;
; Description:
;
;   Returns TRUE if the Edit control is multiline, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_IsMultiline(hEdit)
    {
    Static ES_MULTILINE:=0x4
    Return Edit_GetStyle(hEdit) & ES_MULTILINE ? True:False
    }


;-----------------------------
;
; Function: Edit_IsReadOnly
;
; Description:
;
;   Returns TRUE if the ES_READONLY style has been set, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_IsReadOnly(hEdit)
    {
    Static ES_READONLY:=0x800
    Return Edit_GetStyle(hEdit) & ES_READONLY ? True:False
    }


;-----------------------------
;
; Function: Edit_IsStyle
;
; Description:
;
;   Returns TRUE if the specified style has been set, otherwise FALSE.
;
; Parameters:
;
;   p_Style - Style of the Edit control.
;
;   Some common Edit control styles...
;
;   (start code)
;   ES_LEFT       :=0x0         ;-- Can't actually check this style.  It's the absence of ES_CENTER or ES_RIGHT.
;   ES_CENTER     :=0x1
;   ES_RIGHT      :=0x2
;   ES_MULTILINE  :=0x4
;   ES_UPPERCASE  :=0x8
;   ES_LOWERCASE  :=0x10
;   ES_PASSWORD   :=0x20        ;-- Single-line Edit control only
;   ES_AUTOVSCROLL:=0x40
;   ES_AUTOHSCROLL:=0x80
;   ES_NOHIDESEL  :=0x100
;   ES_COMBO      :=0x200
;   ES_OEMCONVERT :=0x400
;   ES_READONLY   :=0x800
;   ES_WANTRETURN :=0x1000
;   ES_NUMBER     :=0x2000
;   WS_TABSTOP    :=0x10000
;   WS_HSCROLL    :=0x100000
;   WS_VSCROLL    :=0x200000
;   (end)
;
;-------------------------------------------------------------------------------
Edit_IsStyle(hEdit,p_Style)
    {
    Return Edit_GetStyle(hEdit) & p_Style ? True:False
    }


;-----------------------------
;
; Function: Edit_IsVScrollBarEnabled
;
; Description:
;
;   Determines if the vertical scroll bar is enabled.
;
; Returns:
;
;   TRUE if the vertical scroll bar is enabled, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetScrollBarState>
;
; Observation:
;
;   The return value from this function is unusable (always returns TRUE) if
;   the scroll bar is hidden.  The scroll bar can still be enabled and/or
;   disabled while the scroll bar is hidden.  There is just no way to determine
;   the current enabled/disabled status while the scroll bar is hidden.
;
;-------------------------------------------------------------------------------
Edit_IsVScrollBarEnabled(hEdit)
    {
    Static OBJID_VSCROLL:=0xFFFFFFFB
          ,STATE_SYSTEM_UNAVAILABLE:=0x1

    Return Edit_GetScrollBarState(hEdit,OBJID_VSCROLL) & STATE_SYSTEM_UNAVAILABLE ? False:True
    }


;-----------------------------
;
; Function: Edit_IsVScrollBarVisible
;
; Description:
;
;   Determines if the vertical scroll bar is visible.
;
; Returns:
;
;   TRUE if the vertical scroll bar is visible, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetScrollBarState>
;
;-------------------------------------------------------------------------------
Edit_IsVScrollBarVisible(hEdit)
    {
    Static OBJID_VSCROLL:=0xFFFFFFFB
          ,STATE_SYSTEM_INVISIBLE:=0x8000
          ,STATE_SYSTEM_OFFSCREEN:=0x10000

    Return Edit_GetScrollBarState(hEdit,OBJID_VSCROLL) & (STATE_SYSTEM_INVISIBLE|STATE_SYSTEM_OFFSCREEN) ? False:True
    }


;-----------------------------
;
; Function: Edit_IsWordWrap
;
; Description:
;
;   Returns TRUE if word wrap is enabled on the Edit control.
;
; Remarks:
;
;   This function may return a false positive, i.e. Word Wrap is enabled, by
;   hiding the horizontal scroll bar after the Edit control has been created.
;   Although this situation is rare, it is a possiblity.  One way to ensure that
;   the function always returns FALSE correctly (i.e. Word Wrap is not enabled)
;   is to always include the ES_AUTOHSCROLL style (0x80 or -Wrap) when the
;   WS_HSCROLL style (0x100000) is also included.
;
;-------------------------------------------------------------------------------
Edit_IsWordWrap(hEdit)
    {
    Static Dummy8256

          ;-- Styles
          ,ES_LEFT       :=0x0
          ,ES_CENTER     :=0x1
          ,ES_RIGHT      :=0x2
          ,ES_MULTILINE  :=0x4
          ,ES_AUTOHSCROLL:=0x80
          ,WS_HSCROLL    :=0x100000

    ;-- Get style
    l_Style:=Edit_GetStyle(hEdit)

    ;---------------------------------------------------------------------------
    ;
    ;   Note: The following tests must be performed in the current order.  All
    ;   tests assume that conditions from previous tests have been met.
    ;
    ;---------------------------------------------------------------------------

    ;-- FALSE if not multiline
    ;   Background: Word wrap is only an option of a multiline Edit control.
    if not (l_Style & ES_MULTILINE)
        Return False

    ;-- TRUE if ES_CENTER or ES_RIGHT style is set.
    ;   Background: ES_AUTOHSCROLL is ignored by a multiline Edit control that
    ;   is not left-aligned.  Centered and right-aligned multiline Edit controls
    ;   cannot be horizontally scrolled.
    if l_Style & (ES_CENTER|ES_RIGHT)
        Return True

    ;-- FALSE if ES_AUTOHSCROLL style is set
    if l_Style & ES_AUTOHSCROLL
        Return False

    ;-- FALSE if WS_HSCROLL style
    ;   Background: ES_AUTOHSCROLL is automatically applied to a left-aligned,
    ;   multiline Edit control that has a WS_HSCROLL style.
    if l_Style & WS_HSCROLL
        Return False

    ;-- Otherwise, TRUE
    Return True
    }


;-----------------------------
;
; Function: Edit_LineFromChar
;
; Description:
;
;   Gets the index of the line that contains the specified character index.
;
; Parameters:
;
;   p_CharPos - The character index of the character contained in the line
;       whose number is to be retrieved. [Optional] If �1 (the default), the
;       function retrieves either the line number of the current line (the line
;       containing the caret) or, if there is a selection, the line number of
;       the line containing the beginning of the selection.
;
; Returns:
;
;   The zero-based line number of the line containing the character index
;   specified by p_CharPos.
;
;-------------------------------------------------------------------------------
Edit_LineFromChar(hEdit,p_CharPos=-1)
    {
    Static EM_LINEFROMCHAR:=0xC9
    SendMessage EM_LINEFROMCHAR,p_CharPos,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_LineFromPos
;
; Description:
;
;   This function is the same as <Edit_CharFromPos> except the line index
;   (r_LineIdx) is returned.
;
;-------------------------------------------------------------------------------
Edit_LineFromPos(hEdit,X,Y,ByRef r_CharPos="",ByRef r_LineIdx="")
    {
    Edit_CharFromPos(hEdit,X,Y,r_CharPos,r_LineIdx)
    Return r_LineIdx
    }


;-----------------------------
;
; Function: Edit_LineIndex
;
; Description:
;
;   Gets the character index of the first character of a specified line.
;
; Parameters:
;
;   p_LineIdx - Zero-based line number. [Optional] Use -1 (the default) for the
;       current line.
;
; Returns:
;
;   The character index of the specified line or -1 if the specified line is
;   greater than the total number of lines in the Edit control.
;
;-------------------------------------------------------------------------------
Edit_LineIndex(hEdit,p_LineIdx=-1)
    {
    Static EM_LINEINDEX:=0xBB
    SendMessage EM_LINEINDEX,p_LineIdx,0,,ahk_id %hEdit%
    Return ErrorLevel<<32>>32  ;-- Convert UInt to Int
    }


;-----------------------------
;
; Function: Edit_LineLength
;
; Description:
;
;   Gets the length of a line.
;
; Parameters:
;
;   p_LineIdx - The zero-based line index of the desired line.  Use -1
;       (the default) for the current line.
;
; Returns:
;
;   The length, in characters, of the specified line.  If p_LineIndex is greater
;   than the total number of lines in the Edit control, the length of the last
;   (or only) line is returned.
;
; Calls To Other Functions:
;
; * <Edit_GetTextLength>
; * <Edit_LineIndex>
;
;-------------------------------------------------------------------------------
Edit_LineLength(hEdit,p_LineIdx=-1)
    {
    Static EM_LINELENGTH:=0xC1
    l_CharPos:=Edit_LineIndex(hEdit,p_LineIdx)
    if (l_CharPos<0)  ;-- Invalid p_LineIdx
        l_CharPos:=Edit_LineIndex(hEdit,Edit_GetTextLength(hEdit)-1)

    SendMessage EM_LINELENGTH,l_CharPos,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_LineScroll
;
; Description:
;
;   Scrolls the text vertically or horizontally in a multiline Edit control.
;
; Parameters:
;
;   xScroll, yScroll - The number of characters to scroll horizontally (xScroll)
;       or vertically (yScroll).  Use a negative number to scroll to the left
;       (xScroll) or up (yScroll) and a positive number to scroll to the right
;       (xScroll) or to scroll down (yScroll).  Alternatively, these parameters
;       can contain one or more of the following values:
;
;       (start code)
;       Option  Description
;       ------   -----------
;       Left    Scroll to the left edge of the control.
;       Right   Scroll to the right edge of the control.
;       Top     Scroll to the top of the control.
;       Bottom  Scroll to the bottom of the control.
;
;       If more than one option is specified, the options must be delimited by a
;       space.  Ex: "Top Left".  See the *Remarks* section for more information.
;       (end)
;       
; Remarks:
;
;   The xScroll parameter is processed first and then yScroll.  If either of
;   these parameters contains multiple values (Ex: "Top Left"), the values are
;   processed individually from left to right.  If there are conflicting values
;   (Ex: "Top Bottom"), the last value specified will take precedence.
;
;-------------------------------------------------------------------------------
Edit_LineScroll(hEdit,xScroll=0,yScroll=0)
    {
    Static Dummy3496

          ;-- Horizontal scroll values
          ,SB_LEFT :=6
          ,SB_RIGHT:=7

          ;-- Vertical scroll values
          ,SB_TOP   :=6
          ,SB_BOTTOM:=7

          ;-- Messages
          ,EM_LINESCROLL:=0xB6
          ,WM_HSCROLL   :=0x114
          ,WM_VSCROLL   :=0x115

    if xScroll is Integer
        {
        if xScroll  ;-- Any value other than 0
            SendMessage EM_LINESCROLL,xScroll,0,,ahk_id %hEdit%
        }
     else
        Loop Parse,xScroll,%A_Space%
            {
            if InStr(A_LoopField,"Left")
                SendMessage WM_HSCROLL,SB_LEFT,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Right")
                SendMessage WM_HSCROLL,SB_RIGHT,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Top")
                SendMessage WM_VSCROLL,SB_TOP,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Bottom")
                SendMessage WM_VSCROLL,SB_BOTTOM,0,,ahk_id %hEdit%
            }

    if yScroll is Integer
        {
        if yScroll  ;-- Any value other than 0
            SendMessage EM_LINESCROLL,0,yScroll,,ahk_id %hEdit%
        }
     else
        Loop Parse,yScroll,%A_Space%
            {
            if InStr(A_LoopField,"Left")
                SendMessage WM_HSCROLL,SB_LEFT,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Right")
                SendMessage WM_HSCROLL,SB_RIGHT,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Top")
                SendMessage WM_VSCROLL,SB_TOP,0,,ahk_id %hEdit%
             else if InStr(A_LoopField,"Bottom")
                SendMessage WM_VSCROLL,SB_BOTTOM,0,,ahk_id %hEdit%
            }
    }


;-----------------------------
;
; Function: Edit_LoadFile
;
; Description:
;
;   Calls <Edit_ReadFile> to load the contents of a file to the Edit control.
;   See <Edit_ReadFile> for the requirements.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   This function is deprecated.  Use <Edit_ReadFile> instead.
;
;-------------------------------------------------------------------------------
Edit_LoadFile(hEdit,p_File,p_Convert2DOS=False,ByRef r_EOLFormat="")
    {
    RC:=Edit_ReadFile(hEdit,p_File,A_FileEncoding,p_Convert2DOS,r_EOLFormat)
    Return (RC>-1) ? True:False
    }


;------------------------------
;
; Function: Edit_MouseInSelection
;
; Description:
;
;   Determines if the mouse is somewhere within selected text of a specified
;   Edit control.
;
; Returns:
;
;   Returns TRUE if the mouse is somewhere within selected text of the edit
;   control, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_CharFromPos>
; * <Edit_GetSel>
;
;-------------------------------------------------------------------------------
Edit_MouseInSelection(hEdit)
    {
    ;-- FALSE if nothing is selected
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
    if (l_StartSelPos=l_EndSelPos)
        Return False

    ;-- Initialize
    VarSetCapacity(POINT,8,0)

    ;-- Collect the cursor position and convert to coordinates relative to the
    ;   Edit control.  Note: This method is used instead of collecting the
    ;   position from the MouseGetPos command because the current coordinate
    ;   mode does not have to be considered.
    DllCall("GetCursorPos","Ptr",&POINT)
    DllCall("ScreenToClient","Ptr",hEdit,"Ptr",&POINT)

    ;-- Collect the character position of the mouse
    l_CharPos:=Edit_CharFromPos(hEdit,NumGet(POINT,0,"Int"),NumGet(POINT,4,"Int"))

    ;-- Determine if the mouse is somewhere within the selection
    Return (l_CharPos>=l_StartSelPos and l_CharPos<=l_EndSelPos) ? True:False
    }


;-----------------------------
;
; Function: Edit_Paste
;
; Description:
;
;   Copies the current content of the clipboard to the Edit control at the
;   current caret position.  Data is inserted only if the clipboard contains
;   data in CF_TEXT format.
;
;-------------------------------------------------------------------------------
Edit_Paste(hEdit)
    {
    Static WM_PASTE:=0x302
    SendMessage WM_PASTE,0,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_PosFromChar
;
; Description:
;
;   Gets the client area coordinates of a specified character in the edit
;   control.
;
; Parameters:
;
;   p_CharPos - The zero-based index of the character.
;
;   X, Y - Output variables.  [Optional] These variables are used to return the
;       x/y-coordinates of a point in the Edit control's client relative to the
;       upper-left corner of the client area.
;
; Returns:
;
;   Address to a POINT structure.
;
; Remarks:
;
;   If p_CharPos is greater than the index of the last character in the
;   control, the returned coordinates are of the position just past the last
;   character of the control.
;
;-------------------------------------------------------------------------------
Edit_PosFromChar(hEdit,p_CharPos,ByRef X="",ByRef Y="")
    {
    Static Dummy5026
          ,POINT

          ;-- Message
          ,EM_POSFROMCHAR:=0xD6

    ;-- Inialize
    VarSetCapacity(POINT,8,0)

    ;-- Collect information and populate POINT structure
    SendMessage EM_POSFROMCHAR,p_CharPos,0,,ahk_id %hEdit%
    NumPut(X:=(ErrorLevel&0xFFFF)<<48>>48,POINT,0,"Int")
        ;-- LOWORD of result and converted from UShort to Short
    NumPut(Y:=(ErrorLevel>>16)<<48>>48,POINT,0,"Int")
        ;-- HIWORD of result and converted from UShort to Short
    Return &POINT
    }


;-----------------------------
;
; Function: Edit_ReadFile
;
; Description:
;
;   Reads the contents of a file into the Edit control.
;
; Parameters:
;
;   p_File - The path of the file.
;
;   p_Encoding - The code page to use if the file does not contain a UTF-8 or
;       UTF-16 byte order mark. [Optional] If omitted or set to null (the
;       default), the current value of A_FileEncoding is used.  Set to "CP0" to
;       force the program to use the system default ANSI code page.
;
;   p_Convert2DOS - If set TRUE, the text will be converted from Unix, DOS/Unix
;       mix, or Mac format, to DOS format before it is loaded to the edit
;       control. [Optional]
;
;   r_EOLFormat - Contains the end-of-line (EOL) format variable. [Optional]
;       This variable is set to the EOL format of the loaded file which will be
;       "DOS", "Unix", or "Mac". This information is useful if the contents of
;       the Edit control will be be converted back to the original EOL format
;       when the file is saved.
;
; Returns:
;
;   The number of characters loaded to Edit control (can be 0) if successful,
;   otherwise -1 if the file could not be found, -2 if the file could not be
;   opened, or -3 if the text could not be loaded to the Edit control (very
;   rare).
;
; Calls To Other Functions:
;
; * <Edit_Convert2DOS>
; * <Edit_SetText>
; * <Edit_SystemMessage>
;
; Convert To DOS:
;
;   For text computing, a new line, also known as end of line (EOL) or
;   line break, is a special character or sequence of characters signifying the
;   end of a line of text and the start of a new line.  Internally, the Edit
;   control only supports the DOS EOL format which consists of a carriage return
;   and line feed (CR+LF) characters.  If a file is not already in the the DOS
;   format, the text will not display correctly when it loaded to the Edit
;   control _unless_ it is first converted to the DOS format.
;
;   If the p_Convert2DOS parameter is set to TRUE, the text read from the file
;   is converted into the DOS format before the text is loaded to the
;   Edit control.  This will ensure that the text is the correct format for
;   the Edit control.  This conversion is essential if the file is in a Unix
;   (EOL=LF) or Mac (EOL=CR) format but it can also be beneficial if the file
;   is in a DOS/Unix mix where the DOS and Unix new line sequences are both
;   used.
;
;   Conversion requires additional processing.  The extra processing is not
;   noticeable for small files, barely noticeable for medium-sized files, but
;   may be very noticeable for large and very-large text files.  When conversion
;   is performed on a large text file, performance can be significantly improved
;   by setting *SetBatchLines* to a high value before calling this function.
;   For example:
;
;       (start code)
;       SetBatchLines 100ms  ;-- Large bump in priority
;       RC:=Edit_ReadFile(hEdit,...)
;       SetBatchLines 10ms   ;-- Default priority
;       (end)
;
;   Note: The Mac EOL format (CR) is only used on Mac OS version 9 and earlier.
;   Mac OS 10+ uses the Unix (LF) format.
;
; Encoding:
;
;   When reading a text file using AutoHotkey's standard file commands
;   (FileRead, FileReadLine, the Read method of AutoHotkey's File object, etc.),
;   the file's byte order mark (BOM), if it exists, takes precedence over
;   whatever encoding the developer may specify, if anything.  However, if the
;   file has been encoding in some non-ANSI way and file does not contain a byte
;   order mark (BOM), the file will not decoded correctly.  This is mentioned
;   because many common programs/utilities will automatically detect and decode
;   a text file without a BOM, especially if the file contains UTF-8 characters.
;   AutoHotkey file commands do not include a mechanism to automatically
;   identify and decode a non-ANSI file so specifying the correct encoding
;   whether the file has a BOM or not is good practice.
;
; Remarks:
;
;   This request will replace the entire Edit control with the contents of the
;   the specified file.  Consequently, the Undo buffer is flushed.
;
;   If the p_Convert2DOS paramter is set to TRUE, the number of characters
;   loaded to the Edit control can be different that the number characters read
;   from the file.
;
;   If this function fails, i.e. returns a negative value, a developer-friendly
;   message is dumped to the debugger.  Use a debugger or debug viewer to see
;   the message.
;
;-------------------------------------------------------------------------------
Edit_ReadFile(hEdit,p_File,p_Encoding="",p_Convert2DOS=False,ByRef r_EOLFormat="")
    {
    ;-- File exists?
    IfNotExist %p_File%
        {
        outputdebug Function: %A_ThiSFunc% - File "%p_File%" not found.
        Return -1
        }

    ;-- Open for read
    if not File:=FileOpen(p_File,"r",StrLen(p_Encoding) ? p_Encoding:A_FileEncoding)
        {
        l_Message:=Edit_SystemMessage(A_LastError)
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            Unexpected return code from FileOpen function.
            A_LastError=%A_LastError% - %l_Message%
           )

        Return -2
        }

    ;-- Read the contents of the file into a variable
    l_Text:=File.Read()
    File.Close()

    ;-- Determine EOL format
    if l_Text Contains `r`n
        r_EOLFormat:="DOS"
     else
        if l_Text Contains `n
            r_EOLFormat:="UNIX"
         else
            if l_Text Contains `r
                r_EOLFormat:="MAC"
             else
                r_EOLFormat:="DOS"

    ;-- Convert EOL format?
    if p_Convert2DOS
        l_Text:=Edit_Convert2DOS(l_Text)

    ;-- Load text to the Edit control
    if not Edit_SetText(hEdit,l_Text)
        {
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            Unable to load text to the Edit control
           )

        Return -3
        }

    ;-- Return to sender
    Return StrLen(l_Text)
    }


;-----------------------------
;
; Function: Edit_ReplaceSel
;
; Description:
;
;   Replaces the selected text with the specified text.  If there is no
;   selection, the replacement text is inserted at the caret.
;
; Parameters:
;
;   p_Text - Text to replace selection with.
;   p_CanUndo - If TRUE (the default), replace can be undone.
;
;-------------------------------------------------------------------------------
Edit_ReplaceSel(hEdit,p_Text="",p_CanUndo=True)
    {
    Static EM_REPLACESEL:=0xC2
    SendMessage EM_REPLACESEL,p_CanUndo,&p_Text,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SaveFile
;
; Description:
;
;   Calls <Edit_WriteFile> to save the contents of the Edit control to a file.
;   See <Edit_WriteFile> for the requirements.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   [v2.0+] In previous versions of the library, this function created a new
;   file in all situations, deleting the old file first if needed.  This
;   function now calls <Edit_WriteFile> which will overwrite the file if it
;   already exist.
;
;   This function is deprecated.  Use <Edit_WriteFile> instead.
;
;-------------------------------------------------------------------------------
Edit_SaveFile(hEdit,p_File,p_Convert="")
    {
    RC:=Edit_WriteFile(hEdit,p_File,A_FileEncoding,p_Convert)
    Return (RC>-1) ? True:False
    }


;-----------------------------
;
; Function: Edit_SelectAll
;
; Description:
;
;   Selects all characters in an Edit control.
;
;-------------------------------------------------------------------------------
Edit_SelectAll(hEdit)
    {
    Static EM_SETSEL:=0x0B1
    SendMessage EM_SETSEL,0,-1,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_Scroll
;
; Description:
;
;   Scrolls the text vertically in a multiline Edit control.
;
; Parameters:
;
;   p_Pages - The number of pages to scroll.  Use a negative number to page up
;       and a positive number to page down.
;
;   p_Lines - The number of lines to scroll.  Use a negative number to scroll up
;       and a positive number to scroll down.
;
; Returns:
;
;   The number of lines that the command scrolls.  The value will be negative if
;   scrolling up, positive if scrolling down, and zero (0) if no scrolling
;   occurred.
;
;-------------------------------------------------------------------------------
Edit_Scroll(hEdit,p_Pages=0,p_Lines=0)
    {
    Static EM_SCROLL  :=0xB5
          ,SB_LINEUP  :=0x0     ;-- Scroll up one line
          ,SB_LINEDOWN:=0x1     ;-- Scroll down one line
          ,SB_PAGEUP  :=0x2     ;-- Scroll up one page
          ,SB_PAGEDOWN:=0x3     ;-- Scroll down one page

    ;-- Initialize
    l_ScrollLines:=0

    ;-- Pages
    Loop % Abs(p_Pages)
        {
        SendMessage EM_SCROLL,(p_Pages>0) ? SB_PAGEDOWN:SB_PAGEUP,0,,ahk_id %hEdit%
        if not ErrorLevel
            Break

        l_ScrollLines+=((ErrorLevel&0xFFFF)<<48>>48)
            ;-- LOWORD of result and converted from UShort to Short
        }

    ;-- Lines
    Loop % Abs(p_Lines)
        {
        SendMessage EM_SCROLL,(p_Lines>0) ? SB_LINEDOWN:SB_LINEUP,0,,ahk_id %hEdit%
        if not ErrorLevel
            Break

        l_ScrollLines+=((ErrorLevel&0xFFFF)<<48>>48)
            ;-- LOWORD of result and converted from UShort to Short
        }

    Return l_ScrollLines
    }


;-----------------------------
;
; Function: Edit_ScrollCaret
;
; Description:
;
;   Scrolls the caret into view in an Edit control.
;
;-------------------------------------------------------------------------------
Edit_ScrollCaret(hEdit)
    {
    Static EM_SCROLLCARET:=0xB7
    SendMessage EM_SCROLLCARET,0,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_ScrollPage
;
; Description:
;
;   Scrolls the Edit control by page.
;
; Parameters:
;
;   p_HPages - The number of horizontal pages to scroll.  Use a postive number
;       to page right and a negative number to page left.
;
;   p_VPages - The number of vertical pages to scroll. [Optional] Use a positive
;       number to page down and a negative number to page up.
;
; Remarks:
;
;   This function duplicates some of the functionality of <Edit_Scroll>.  If
;   scrolling vertically and the return value is needed, use the *Edit_Scroll*
;   function instead.
;
;------------------------------------------------------------------------------
Edit_ScrollPage(hEdit,p_HPages=0,p_VPages=0)
    {
    Static Dummy3535

          ;-- Horizontal scroll values
          ,SB_PAGELEFT :=2
          ,SB_PAGERIGHT:=3

          ;-- Vertical scroll values
          ,SB_PAGEUP  :=2
          ,SB_PAGEDOWN:=3

          ;-- Messages
          ,WM_HSCROLL :=0x114
          ,WM_VSCROLL :=0x115

    ;-- Horizontal
    Loop % Abs(p_HPages)
        SendMessage WM_HSCROLL,(p_HPages>0) ? SB_PAGERIGHT:SB_PAGELEFT,0,,ahk_id %hEdit%

    ;-- Vertical
    Loop % Abs(p_VPages)
        SendMessage WM_VSCROLL,(p_VPages>0) ? SB_PAGEDOWN:SB_PAGEUP,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetCueBanner
;
; Description:
;
;   Sets the textual cue, or tip, that is displayed by the Edit control to
;   prompt the user for information.
;
; Parameters:
;
;   p_Text - Cue banner text.
;
;   p_ShowWhenFocused - [Vista+] Set to TRUE to show the cue banner even if the
;       Edit control has focus.  The default is FALSE (don't show when the edit
;       control has focus).
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   Single-line Edit control only.
;
; Requirements:
;
;   Windows XP+
;
;-------------------------------------------------------------------------------
Edit_SetCueBanner(hEdit,p_Text,p_ShowWhenFocused=False)
    {
    Static EM_SETCUEBANNER:=0x1501  ;-- ECM_FIRST+1

    ;-- Initialize
    wText:=p_Text  ;-- Working and Unicode copy

    ;-- Convert to Unicode if needed
    if !A_IsUnicode and StrLen(p_Text)
        {
        VarSetCapacity(wText,StrLen(p_Text)*2,0)
        StrPut(p_Text,&wText,"UTF-16")
        }

    ;-- Set cue banner
    SendMessage EM_SETCUEBANNER,p_ShowWhenFocused,&wText,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_SetFocus
;
; Description:
;
;   Sets input focus to the specified Edit control.
;
; Parameters:
;
;   p_ActivateParent - If TRUE, the function will call <Edit_ActivateParent>
;       which will activate the parenet window if it is not already active.  The
;       default is FALSE.
;
; Returns:
;
;   TRUE if successful, or FALSE otherwise.
;
; Calls To Other Functions:
;
; * <Edit_ActivateParent>
; * <Edit_HasFocus>
;
; Remarks:
;
; * Functional input focus, aka "keyboard focus", can only be achieved if the
;   control has focus AND the parent window is active (foremost).  If requested,
;   this function will activate the parent window if is not already active.
;
; * For AutoHotkey GUIs, use the *GUIControl* command for improved efficiency.
;   Ex: GUIControl 32:Focus,MyEdit
;
; * This function uses the AutoHotKey *ControlFocus* command.  See the AHK
;   documentation for additional restrictions (Ex: SetControlDelay).
;
; * This function can be used to set focus on any control.  Just specify the
;   handle to the desired control as the first parameter.
;   Ex: Edit_SetFocus(hLV) where "hLV" is the handle to a ListView control.
;
;-------------------------------------------------------------------------------
Edit_SetFocus(hEdit,p_ActivateParent=False)
    {
    ;-- If requested, activate parent
    if p_ActivateParent
        if not Edit_ActivateParent(hEdit)
            Return False

    ;-- Does the control already have focus?
    if Edit_HasFocus(hEdit)
        Return True

    ;-- Set focus
    ControlFocus,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_SetFont
;
; Description:
;
;   Sets the font that the Edit control is to use when drawing text.
;
; Parameters:
;
;   hEdit - Handle to the Edit control.
;
;   hFont - Handle to the font (HFONT).  Set to 0 to use the default system
;       font.
;
;   p_Redraw - Specifies whether the control should be redrawn immediately upon
;       setting the font.  If set to TRUE, the control redraws itself.
;
; Remarks:
;
; * This function can be used to set the font on any control.  Just specify
;   the handle to the desired control as the first parameter.
;   Ex: Edit_SetFont(hLV,hFont) where "hLV" is the handle to ListView control.
;
; * The size of the control does not change as a result of receiving this
;   message.  To avoid clipping text that does not fit within the boundaries of
;   the control, the program should set/correct the size of the control before
;   the font is set.
;
;-------------------------------------------------------------------------------
Edit_SetFont(hEdit,hFont,p_Redraw=False)
    {
    Static WM_SETFONT:=0x30
    SendMessage WM_SETFONT,hFont,p_Redraw,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetLimitText
;
; Description:
;
;   Sets the text limit of the Edit control.
;
; Parameters:
;
;   p_Limit - The maximum number of characters the user can enter.
;       Windows NT+: If this parameter is zero, the text length is set to
;       0x7FFFFFFE (2,147,483,646) characters for single-line Edit controls and
;       0xFFFFFFFF (4,294,967,295) for multiline Edit controls.
;
; Remarks:
;
; * This message limits only the text the user can enter.  It does not affect
;   any text already in the Edit control when the message is sent, nor does it
;   affect the length of the text copied to the Edit control by the WM_SETTEXT
;   message.  For more information:
;
;       <http://msdn.microsoft.com/en-us/library/bb761607(VS.85).aspx>
;
; * For AutoHotkey GUI's, use the +Limitnn and -Limit options.
;
; * Warning: Although this message can be sent to any Edit control, not all
;   programs will respond well to a limit change.
;
;-------------------------------------------------------------------------------
Edit_SetLimitText(hEdit,p_Limit)
    {
    Static EM_LIMITTEXT:=0xC5
    SendMessage EM_LIMITTEXT,p_Limit,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetMargins
;
; Description:
;
;   Sets the width of the left and/or right margin, in pixels, for the edit
;   control.  The message automatically redraws the control to reflect the new
;   margins.
;
; Parameters:
;
;   p_LeftMargin - Left margin, in pixels.  If blank/null, the left margin is
;       not set.  Specify the EC_USEFONTINFO value (0xFFFF or 65535) to set the
;       left margin to a narrow width calculated using the text metrics of the
;       control's current font.
;
;   p_RightMargin - Right margin, in pixels.  If blank/null, the right margin is
;       not set.  Specify the EC_USEFONTINFO value (0xFFFF or 65535) to set the
;       right margin to a narrow width calculated using the text metrics of the
;       control's current font.
;
; Observations:
;
;   The documentation states that the EM_SETMARGINS message automatically
;   redraws the control to reflect the new margins.  However, only the left
;   margin is set correctly if the control contains text.  The only way to get
;   the right margin to show correctly is to reload the text to the control.
;   This is messy becase all selected data and the modify status of the Edit
;   control is lost when then data is reloaded to the control.  If possible, set
;   the margins before text is loaded to the control.  If this is not possible,
;   see the "Set Margins" example script for one way to work around the problem.
;
;   For the EM_SETMARGINS message, the Edit control does not appear to be DPI
;   aware.  The control assumes that the screen always has 96 pixels per inch,
;   i.e. 96 DPI.  This makes conversion from inches to pixel easy.  Simply
;   multiply inches by 96 to get the number of pixels.  Ex: 0.5 inches * 96 =
;   48 pixels.
;
;-------------------------------------------------------------------------------
Edit_SetMargins(hEdit,p_LeftMargin="",p_RightMargin="")
    {
    Static EM_SETMARGINS :=0xD3
          ,EC_LEFTMARGIN :=0x1
          ,EC_RIGHTMARGIN:=0x2
          ,EC_USEFONTINFO:=0xFFFF

    l_Flags  :=0
    l_Margins:=0
    if p_LeftMargin is Integer
        {
        l_Flags  |=EC_LEFTMARGIN
        l_Margins|=p_LeftMargin       ;-- LOWORD
        }

    if p_RightMargin is Integer
        {
        l_Flags  |=EC_RIGHTMARGIN
        l_Margins|=p_RightMargin<<16  ;-- HIWORD
        }

    if l_Flags
        SendMessage EM_SETMARGINS,l_Flags,l_Margins,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetModify
;
; Description:
;
;   Sets or clears the modification flag for the Edit control.  The modification
;   flag indicates whether the text within the control has been modified.
;
; Parameters:
;
;   p_Flag - Set to TRUE to set the modification flag.  Set to FALSE to clear
;       the modification flag.
;
;-------------------------------------------------------------------------------
Edit_SetModify(hEdit,p_Flag)
    {
    Static EM_SETMODIFY:=0xB9
    SendMessage EM_SETMODIFY,p_Flag,0,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetPasswordChar
;
; Description:
;
;   Sets or removes the password character for a single-line Edit control.
;
; Parameters:
;
;   p_CharValue - The decimal value of the character that is displayed in place
;       of the characters typed by the user. [Optional] The default is an 9679
;       (black circle).  Set to 0 (null) to remove the password character.
;
; Returns:
;
;   Documented: This message does not return a value.  Undocumented and/or does
;   not apply to all OS versions: Returns TRUE if successful or "FAIL" if
;   unsuccessful.
;
; Remarks:
;
; * The code for this function extracted from:
;   http://www.autohotkey.com/forum/viewtopic.php?p=392973#392973
;   Author: Unknown
;
; * Use <Edit_IsStyle> to determine if the ES_PASSWORD style has been set.
;
; Observations:
;
; * On Windows 2000+, the ES_Password style cannot be removed once added unless
;   the request is made from the same process that created the control.
;
; * This style is not supposed to work on multiline Edit control but it appears
;   work on more recent versions of Windows (tested on Windows 7) _if_ the style
;   is added after the Edit control is created.  Probably should still assume
;   that the style is only good for single-line Edit controls.
;
;-------------------------------------------------------------------------------
Edit_SetPasswordChar(hEdit,p_CharValue=9679)
    {
    Static EM_SETPASSWORDCHAR:=0xCC
    RC:=DllCall("SendMessageW","Ptr",hEdit,"UInt",EM_SETPASSWORDCHAR,"UInt",p_CharValue,"UInt",0)
    WinSet Redraw,,ahk_id %hEdit%  ;-- Force style change to show
    Return RC
    }


;-----------------------------
;
; Function: Edit_SetReadOnly
;
; Description:
;
;   Sets or removes the read-only style (ES_READONLY) of the Edit control.
;
; Parameters:
;
;   p_Flag - Set to TRUE to add the ES_READONLY style.  Set to FALSE to remove
;       the ES_READONLY style.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   For AutoHotkey GUIs, this is same as using the +ReadOnly or -ReadOnly
;   option when creating the Edit control or using the GUIControl command after
;   the Edit control has been created.  Ex: GUIControl +ReadOnly,Edit1
;
;-------------------------------------------------------------------------------
Edit_SetReadOnly(hEdit,p_Flag)
    {
    Static EM_SETREADONLY:=0xCF
    SendMessage EM_SETREADONLY,p_Flag,0,,ahk_id %hEdit%
    Return ErrorLevel ? True:False
    }


;-----------------------------
;
; Function: Edit_SetRect
;
; Description:
;
;   Sets the formatting rectangle of a multiline Edit control.  The formatting
;   rectangle is the limiting rectangle into which the control draws the text.
;   The limiting rectangle is independent of the size of the Edit control
;   window.
;
; Parameters:
;
;   p_Left..p_Bottom - Rectangle coordinates.
;
; Remarks:
;
;   Advanced feature.  For additional information, see the following...
;
;       <http://msdn.microsoft.com/en-us/library/bb761657(VS.85).aspx>
;
;-------------------------------------------------------------------------------
Edit_SetRect(hEdit,p_Left,p_Top,p_Right,p_Bottom)
    {
    Static EM_SETRECT:=0xB3
    VarSetCapacity(RECT,16,0)
    NumPut(p_Left,  RECT,0,"Int")
    NumPut(p_Top,   RECT,4,"Int")
    NumPut(p_Right, RECT,8,"Int")
    NumPut(p_Bottom,RECT,12,"Int")
    SendMessage EM_SETRECT,0,&RECT,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetTabStops
;
; Description:
;
;   Sets the tab stops in a multiline Edit control.  When text is copied to the
;   control, any tab character in the text causes space to be generated up to
;   the next tab stop.
;
; Parameters:
;
;   p_NbrOfTabStops - Number of tab stops. [Optional] Set to 0 (the default) to
;       set the tab stops to the system default.  Set to 1 to have all tab stops
;       set to the value of the p_DTU parameter or 32 if the p_DTU parameter is
;       not specified.  Any value greater than 1 will set that number of tab
;       stops.
;
;   p_DTU - Dialog Template Units. [Optional] This parameter can contain a
;       single value (Ex: 32), a comma-delimited list of values (Ex:
;       "29,72,122,174") or an AutoHotkey object with an array of values (Ex:
;       [150,180,205,255].  If p_NbrOfTabStops=0, this parameter is ignored.  If
;       this parameter contains a single value (Ex: 30), all tab stops will be
;       set to a factor of that value (Ex: 30, 60, 90, etc.).  Otherwise, this
;       parameter should contain values for all requested tab stops.
;
; Returns:
;
;   TRUE if all the tabs are set, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_SetTabStops(hEdit,p_NbrOfTabStops=0,p_DTU=32)
    {
    Static EM_SETTABSTOPS:=0xCB
    VarSetCapacity(l_TabStops,p_NbrOfTabStops*4,0)
    if IsObject(p_DTU)
        {
        l_NbrOfElements:=0  ;-- Not assuming correctly formed simple array
        For l_Key,l_Value in p_DTU
            {
            l_NbrOfElements++
            if (A_Index<=p_NbrOfTabStops)
                NumPut(l_Value+0,l_TabStops,(A_Index-1)*4,"UInt")
            }

        if (l_NbrOfElements=1 and p_NbrOfTabStops>1)
            Loop %p_NbrOfTabStops%
                NumPut(l_Value*A_Index,l_TabStops,(A_Index-1)*4,"UInt")
        }
     else
        if p_DTU Contains ,,
            {
            Loop Parse,p_DTU,`,,%A_Space%
                if (A_Index<=p_NbrOfTabStops)
                    NumPut(A_LoopField+0,l_TabStops,(A_Index-1)*4,"UInt")
            }
         else
            Loop %p_NbrOfTabStops%
                NumPut(p_DTU*A_Index,l_TabStops,(A_Index-1)*4,"UInt")

    SendMessage EM_SETTABSTOPS,p_NbrOfTabStops,&l_TabStops,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_SetText
;
; Description:
;
;   Set the text of the Edit control.
;
; Parameters:
;
;   p_Text - Text to set the Edit control.
;
;   p_SetModify - If set to TRUE, the modification flag is set after the text is
;       set.  If FALSE (the default), the modification flag is not set (remains
;       cleared) after the text is set.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
; * The system automatically clears the modification flag whenever an edit
;   control receives a WM_SETTEXT message.  Set the p_SetModify parameter
;   to TRUE to set the modification flag after the text is set.
;
; * The system automatically resets the undo flag whenever an Edit control
;   receives a WM_SETTEXT message.  Use <Edit_SetSel> (select all) and
;   <Edit_ReplaceSel> to populate the control if undo is desired.
;
; * This function is similar to the AutoHotkey *ControlSetText* command except
;   there is no delay after the command has executed.
;
;-------------------------------------------------------------------------------
Edit_SetText(hEdit,p_Text,p_SetModify=False)
    {
    Static WM_SETTEXT:=0xC
    SendMessage WM_SETTEXT,0,&p_Text,,ahk_id %hEdit%
    if RC:=ErrorLevel  ;-- Text set successfully
        if p_SetModify
            Edit_SetModify(hEdit,True)

    Return RC  ;-- Return code from the WM_SETTEXT message
    }


;-----------------------------
;
; Function: Edit_SetSel
;
; Description:
;
;   Selects a range of characters.
;
; Parameters:
;
;   p_StartSelPos - Starting character position of the selection.  If set to -1,
;       the current selection (if any) will be deselected.
;
;   p_EndSelPos - Ending character position of the selection.  Set to -1 to use
;       the position of the last character in the control.
;
;-------------------------------------------------------------------------------
Edit_SetSel(hEdit,p_StartSelPos=0,p_EndSelPos=-1)
    {
    Static EM_SETSEL:=0x0B1
    SendMessage EM_SETSEL,p_StartSelPos,p_EndSelPos,,ahk_id %hEdit%
    }


;-----------------------------
;
; Function: Edit_SetStyle
;
; Description:
;
;   Adds, removes, or toggles a style for an Edit control.
;
; Parameters:
;
;   p_Style - Style to set.
;
;   p_Option - Use "+" (the default) to add, "-" to remove, and "^" to toggle.
;
; Returns:
;
;   TRUE if the request completed successfully, otherwise FALSE.
;
; Remarks:
;
;   Styles that can be modified after the Edit control has been created include
;   the following:
;
;   (start code)
;   ES_UPPERCASE  :=0x8
;   ES_LOWERCASE  :=0x10
;   ES_PASSWORD   :=0x20    ;-- Use the Edit_SetPasswordChar function
;   ES_OEMCONVERT :=0x400
;   ES_READONLY   :=0x800   ;-- Use the Edit_SetReadOnly function
;   ES_WANTRETURN :=0x1000
;   ES_NUMBER     :=0x2000
;   (end)
;
;   Use <Edit_IsStyle> to determine if a style is currently set.
;
;-------------------------------------------------------------------------------
Edit_SetStyle(hEdit,p_Style,p_Option="+")
    {
    Control Style,%p_Option%%p_Style%,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_Show
;
; Description:
;
;   Shows a Edit control if it was previously hidden.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
;   For AutoHotkey GUIs, use the *GUIControl* command for improved efficiency.
;   Ex: GUIControl MyGUI:Show,MyEdit
;
;-------------------------------------------------------------------------------
Edit_Show(hEdit)
    {
    Control Show,,,ahk_id %hEdit%
    Return ErrorLevel ? False:True
    }


;------------------------------
;
; Function: Edit_ShowAllScrollBars
;
; Description:
;
;   Shows the horizontal and vertical scroll bars on a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_ShowAllScrollBars(hEdit)
    {
    Static SB_BOTH:=3
    Return Edit_ShowScrollBar(hEdit,SB_BOTH,True)
    }


;-----------------------------
;
; Function: Edit_ShowBalloonTip
;
; Description:
;
;   Displays a balloon tip associated with an Edit control.
;
; Parameters:
;
;   p_Title - Balloon tip title.  Can be empty/null.
;
;   p_Text - Balloon tip text.
;
;   p_Icon - Type of icon to associate with the balloon tip. [Optional]  The
;       default is 0 (No icon).  See the function's static variables for a list
;       of possible values.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Requirements:
;
;   Windows XP+
;
; Remarks:
;
; * Sending the EM_SHOWBALLOONTIP message will automatically move focus to the
;   designated Edit control.
;
; * A balloon tip will not show if the "EnableBalloonTips" registry key is
;       disabled (set to 0).  The key can be found here:
;           HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\
;
; * The balloon tip icon (if specified) will not be displayed unless a title
;       (p_Title) is also specified.
;
; Observations:
;
;   The EM_SHOWBALLOONTIP message does not fail (return FALSE) if the
;   "EnableBalloonTips" registry key is disabled (set to 0).
;
;-------------------------------------------------------------------------------
Edit_ShowBalloonTip(hEdit,p_Title,p_Text,p_Icon=0)
    {
    Static Dummy8144

          ;-- p_Icon values
          ,TTI_NONE         :=0
          ,TTI_INFO         :=1
          ,TTI_WARNING      :=2
          ,TTI_ERROR        :=3

          ;-- p_Icon values (Vista+ only)
          ,TTI_INFO_LARGE   :=4
          ,TTI_WARNING_LARGE:=5
          ,TTI_ERROR_LARGE  :=6

          ;-- Messages
          ,EM_SHOWBALLOONTIP:=0x1503

    ;-- Working and Unicode copies the title and text
    wTitle:=p_Title
    wText :=p_Text

    ;-- If necessary, convert title and text to Unicode
    if not A_IsUnicode
        {
        if StrLen(p_Title)
            {
            VarSetCapacity(wTitle,StrLen(p_Title)*2,0)
            StrPut(p_Title,&wTitle,"UTF-16")
            }

        if StrLen(p_Text)
            {
            VarSetCapacity(wText,StrLen(p_Text)*2,0)
            StrPut(p_Text,&wText,"UTF-16")
            }
        }

    ;-- Define and populate EDITBALLOONTIP structure
    cbSize:=(A_PtrSize=8) ? 32:16
    VarSetCapacity(EDITBALLOONTIP,cbSize)
    NumPut(cbSize, EDITBALLOONTIP,0,"Int")
    NumPut(&wTitle,EDITBALLOONTIP,(A_PtrSize=8) ? 8:4,"Ptr")
    NumPut(&wText, EDITBALLOONTIP,(A_PtrSize=8) ? 16:8,"Ptr")
    NumPut(p_Icon, EDITBALLOONTIP,(A_PtrSize=8) ? 24:12,"Int")

    ;-- Show it
    SendMessage EM_SHOWBALLOONTIP,0,&EDITBALLOONTIP,,ahk_id %hEdit%
    Return ErrorLevel
    }


;------------------------------
;
; Function: Edit_ShowHScrollBar
;
; Description:
;
;   Shows the horizontal scroll bar on a Edit control.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_ShowHScrollBar(hEdit)
    {
    Static SB_HORZ:=0
    Return Edit_ShowScrollBar(hEdit,SB_HORZ,True)
    }


;------------------------------
;
; Function: Edit_ShowScrollBar
;
; Description:
;
;   Shows or hides the specified scroll bar on a Edit control.
;
; Parameters:
;
;   wBar - Specifies the scroll bar(s) to be shown or hidden.  See the
;       function's static variables for a list of possible values.
;
;   p_Show - Determines whether the scroll bar is shown or hidden.  If set to
;       TRUE (the default), the scroll bar is shown; otherwise, it is hidden.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetScrollBarState>
;
; Remarks:
;
;   Do not call this function to show or hide a scroll bar while processing a
;   scroll bar message.
;
; Observations:
;
;   Unlike <Edit_EnableScrollBar>, this function returns TRUE (successful) even
;   if the scroll bar(s) are already in the requested state (showing/hidden).
;   To determine if a scroll bar is showing, use <Edit_IsHScrollBarVisible> or
;   <Edit_IsVScrollBarVisible>.
;
;-------------------------------------------------------------------------------
Edit_ShowScrollBar(hEdit,wBar,p_Show=True)
    {
    Static Dummy6622

          ;-- Object identifiers
          ,OBJID_HSCROLL:=0xFFFFFFFA
          ,OBJID_VSCROLL:=0xFFFFFFFB

          ;-- rgstate flags
          ,STATE_SYSTEM_UNAVAILABLE:=0x1
          ,STATE_SYSTEM_PRESSED    :=0x8
          ,STATE_SYSTEM_INVISIBLE  :=0x8000
          ,STATE_SYSTEM_OFFSCREEN  :=0x10000

          ;-- Scroll bar flags
          ,SB_HORZ:=0
            ;-- Shows or hides a window's standard horizontal scroll bars.

          ,SB_VERT:=1
            ;-- Shows or hides a window's standard vertical scroll bar.

          ,SB_CTL:=2
            ;-- Shows or hides a scroll bar control.  The hEdit parameter must
            ;   be the handle to the scroll bar control.

          ,SB_BOTH:=3
            ;-- Shows or hides a window's standard horizontal and vertical
            ;   scroll bars.

    ;-- Request to show?
    ;   If Status=STATE_SYSTEM_OFFSCREEN, (try to) hide first
    if p_Show
        {
        ;-- Horizontal
        if wBar in %SB_HORZ%,%SB_BOTH%
            if Edit_GetScrollBarState(hEdit,OBJID_HSCROLL) & STATE_SYSTEM_OFFSCREEN
                DllCall("ShowScrollBar","Ptr",hEdit,"UInt",wBar,"UInt",False)

        ;-- Vertical
        if wBar in %SB_VERT%,%SB_BOTH%
            if Edit_GetScrollBarState(hEdit,OBJID_VSCROLL) & STATE_SYSTEM_OFFSCREEN
                DllCall("ShowScrollBar","Ptr",hEdit,"UInt",wBar,"UInt",False)
        }

    ;-- Show/Hide scroll bar
    ;   Note: The return code from this DllCall is used when setting the
    ;   function's return value
    RC:=DllCall("ShowScrollBar"
        ,"Ptr",hEdit                                    ;-- hWnd
        ,"UInt",wBar                                    ;-- wbar
        ,"UInt",p_Show)                                 ;-- bShow

    ;-- Request to hide?
    ;   In rare situations, a request to hide a scroll bar may set off a series
    ;   of conditions that will change the status of the scroll bar to
    ;   STATE_SYSTEM_OFFSCREEN.  If this occurs, the program will attempt to
    ;   clear the "Offscreen" status by hiding the scroll bar again.  Without
    ;   this extra request to hide the scroll bar, the scroll bar may remain
    ;   hidden but will retain the "Offscreen" status or it may start showing
    ;   again (will appear that it was never hidden) if the opposing scroll bar
    ;   is hidden.
    if not p_Show
        {
        ;-- Horizontal
        if wBar in %SB_HORZ%,%SB_BOTH%
            if Edit_GetScrollBarState(hEdit,OBJID_HSCROLL) & STATE_SYSTEM_OFFSCREEN
                DllCall("ShowScrollBar","Ptr",hEdit,"UInt",wBar,"UInt",False)

        ;-- Vertical
        if wBar in %SB_VERT%,%SB_BOTH%
            if Edit_GetScrollBarState(hEdit,OBJID_VSCROLL) & STATE_SYSTEM_OFFSCREEN
                DllCall("ShowScrollBar","Ptr",hEdit,"UInt",wBar,"UInt",False)
        }

    Return RC ? True:False
    }


;------------------------------
;
; Function: Edit_ShowVScrollBar
;
; Description:
;
;   Shows the vertical scroll bar.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_ShowScrollBar>
;
; Remarks:
;
;   See <Edit_ShowScrollBar> for more information.
;
;-------------------------------------------------------------------------------
Edit_ShowVScrollBar(hEdit)
    {
    Static SB_VERT:=1
    Return Edit_ShowScrollBar(hEdit,SB_VERT,True)
    }


;------------------------------
;
; Function: Edit_SystemMessage
;
; Description:
;
;   Converts a system message number into a readable message.
;
; Type:
;
;   Internal function.  Subject to change.
;
;-------------------------------------------------------------------------------
Edit_SystemMessage(p_MessageNbr)
    {
    Static FORMAT_MESSAGE_FROM_SYSTEM:=0x1000

    ;-- Convert system message number into a readable message
    VarSetCapacity(l_Message,1024*(A_IsUnicode ? 2:1),0)
    DllCall("FormatMessage"
           ,"UInt",FORMAT_MESSAGE_FROM_SYSTEM           ;-- dwFlags
           ,"Ptr",0                                     ;-- lpSource
           ,"UInt",p_MessageNbr                         ;-- dwMessageId
           ,"UInt",0                                    ;-- dwLanguageId
           ,"Str",l_Message                             ;-- lpBuffer
           ,"UInt",1024                                 ;-- nSize (in TCHARS)
           ,"Ptr",0)                                    ;-- *Arguments

    ;-- Remove trailing CR+LF, if defined
    if (SubStr(l_Message,-1)="`r`n")
        StringTrimRight l_Message,l_Message,2

    ;-- Return system message
    Return l_Message
    }


;-----------------------------
;
; Function: Edit_TextIsSelected
;
; Description:
;
;   Returns TRUE if text is selected, otherwise FALSE.
;
; Parameters:
;
;   r_StartSelPos, r_EndSelPos - [Output] Variables that contains the starting
;       and ending position of the selection. [Optional]
;
; Calls To Other Functions:
;
; * <Edit_GetSel>
;
;-------------------------------------------------------------------------------
Edit_TextIsSelected(hEdit,ByRef r_StartSelPos="",ByRef r_EndSelPos="")
    {
    Edit_GetSel(hEdit,r_StartSelPos,r_EndSelPos)
    Return (r_StartSelPos<>r_EndSelPos)
    }


;-----------------------------
;
; Function: Edit_Undo
;
; Description:
;
;   Undo the last operation.
;
; Returns:
;
;   For a single-line Edit control, the return value is always TRUE.  For a
;   multiline Edit control, the return value is TRUE if the undo operation is
;   successful, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Edit_Undo(hEdit)
    {
    Static EM_UNDO:=0xC7
    SendMessage EM_UNDO,0,0,,ahk_id %hEdit%
    Return ErrorLevel
    }


;-----------------------------
;
; Function: Edit_WriteFile
;
; Description:
;
;   Write the contents of the Edit control to a file.  See the *File Processing*
;   section for more information.
;
; Parameters:
;
;   p_File - The file path.
;
;   p_Encoding - The code page for character encoding. [Optional]  If omitted
;       or if set to null (the default), the current value of A_FileEncoding is
;       used.  Set to "CP0" to force the program to use the system default ANSI
;       code page.
;
;   p_Convert - Convert end-of-line (EOL) format. [Optional]  If omitted or if
;       set to null (the default), no conversion is performed.  The EOL format
;       will remain in the DOS format which is the EOL format used by the Edit
;       control.  Set to "M" or "Mac" to convert to Mac.  Set to "U" or "Unix"
;       to convert to Unix.
;
; Returns:
;
;   The number bytes (not characters) written to the file (can be zero),
;   otherwise -1 if the file could not be created or opened.
;
; Calls To Other Functions:
;
; * <Edit_Convert2Mac>
; * <Edit_Convert2Unix>
; * <Edit_GetText>
; * <Edit_SystemMessage>
;
; File Processing:
;
;   If the file (p_File parameter) does not exist, it will be created and the
;   contents of the Edit control will be written to the file.
;
;   If the file already exists, the contents of the file will be overwritten
;   with the contents of the Edit control.  All other attributes of the file are
;   not modified.  This includes the standard attributes like creation date but
;   if the file is on NTFS, it can include permissions, compression, encryption,
;   properties, etc.  To force a new file to be created, the existing file must
;   be deleted before calling this function.
;
;   In all cases, a byte order mark (BOM) is automatically added to the
;   beginning of the file if encoding (p_Encoding parameter or A_FileEncoding if
;   p_Encoding is null) is set to UTF-8 or UTF-16.
;
; Remarks:
;
;   If the function fails, i.e. returns -1, a developer-friendly message is
;   dumped to the debugger.  Use a debugger or debug viewer to see the message.
;
;-------------------------------------------------------------------------------
Edit_WriteFile(hEdit,p_File,p_Encoding="",p_Convert="")
    {
    ;-- Open file for write
    ;   Note: File is created if it doesn't exist, overwritten otherwise
    if not File:=FileOpen(p_File,"w",StrLen(p_Encoding) ? p_Encoding:A_FileEncoding)
        {
        l_Message:=Edit_SystemMessage(A_LastError)
        outputdebug,
           (ltrim join`s
            Function: %A_ThisFunc% -
            Unexpected return code from FileOpen function.
            A_LastError=%A_LastError% - %l_Message%
           )

        Return -1
        }

    ;-- Get text from the Edit control
    l_Text:=Edit_GetText(hEdit)

    ;-- If requested, convert EOL format
    if p_Convert
        {
        StringUpper,p_Convert,p_Convert,T
            ;-- Just in case StringCaseSense is On

        if p_Convert in U,Unix
            l_Text:=Edit_Convert2Unix(l_Text)
         else
            if p_Convert in M,Mac
                l_Text:=Edit_Convert2Mac(l_Text)
        }

    ;-- Save to file
    l_NumberOfBytesWritten:=File.Write(l_Text)

    ;-- Close file
    File.Close()

    ;-- Return to sender
    Return l_NumberOfBytesWritten
    }





;   ______    _ _ _                   _        _____      _ _______    _     _____ _                         _     _    
;  |  ____|  | (_) |       /\        | |      / ____|    | |__   __|  | |   / ____| |                       | |   | |   
;  | |__   __| |_| |_     /  \  _   _| |_ ___| (___   ___| |_ | | __ _| |__| (___ | |_ ___  _ __  ___   __ _| |__ | | __
;  |  __| / _` | | __|   / /\ \| | | | __/ _ \\___ \ / _ \ __|| |/ _` | '_ \\___ \| __/ _ \| '_ \/ __| / _` | '_ \| |/ /
;  | |___| (_| | | |_   / ____ \ |_| | || (_) |___) |  __/ |_ | | (_| | |_) |___) | || (_) | |_) \__ \| (_| | | | |   < 
;  |______\__,_|_|\__| /_/    \_\__,_|\__\___/_____/ \___|\__||_|\__,_|_.__/_____/ \__\___/| .__/|___(_)__,_|_| |_|_|\_\
;                  ______                                                                  | |                          
;                 |______|                                                                 |_|                          

;------------------------------
;
; Function: Edit_AutoSetTabStops v0.2 (Preview)
;
; Description:
;
;   Automatically sets the tab stops for an Edit control by examining the
;   tab-delimited data in the control and then setting the tabs stops so that
;   each column is wide enough to show all fields in the column.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_ColumnGap - The amount of empty space, in dialog template units, to
;       separate each column.  The minimum is 1.  The default is 6 which is
;       equal to the width of 1.5 average characters of the edit control's font.
;
;   p_MaxSample - The maximum number of records to sample.  The default is 0
;       which indicates that all records will be sampled.
;
; Returns:
;
;   An AutoHotkey object that contains a simple array of tab stops (measured in
;   dialog template units) that were set for the edit control.  If the MaxIndex
;   property is null (tests as FALSE) then no data was found in the Edit control
;   and the tab stops were set to the system default.  Otherwise, the MaxIndex
;   property contains the number of elements in the array.
;
; Calls to other functions:
;
; * <Edit_GetFont>
; * <Edit_GetText>
; * <Edit_SetTabStops>
; * Fnt_Pixels2DialogTemplateUnits (Fnt library)
;
; Remarks:
;
;   The p_MaxSample parameter contains the maximum number of records to read
;   in order to determine the maximum width of the columns.  The default is 0
;   which indicates that all records will be processed.  For large or very large
;   files, setting a value to this parameter will ensure that the function will
;   return in a timely manner.  However, the results cannot be assured unless
;   all of the records are processed.
;
;   To correctly format tab-delimited data in an edit control, the _minimum_
;   number of tab stops that can be set is equal to the number of tab-delimited
;   columns minus 1.  So for 3 columns, 2 tab stops must be set.  There are two
;   problems with this approach.  First, the tab stop following the last column
;   is not set so if the user wants to manually add a column to the data, the
;   data will not be positioned correctly which is relative to the widest field
;   from the previous column.  Next, the last tab stop set also establishes the
;   default size for all subsequent tab stops.  This can be problematic, or
;   awkward at least, if the last tab stop set is unusually large or small.  To
;   resolve these problems, the number of tab stops set is equal to the number
;   of tab-delimited columns plus 1.  So for 3 columns, 4 tab stops are set.
;   The next-to-last tab stop establishes the width of the right-most column and
;   the final tab stop is set to 32 dialog template units which is the system
;   default.
;
;-------------------------------------------------------------------------------
Edit_AutoSetTabStops(hEdit,p_ColumnGap=6,p_MaxSample=0)
    {
    Static Dummy0105
          ,HWND_DESKTOP:=0
          ,MAXINT      :=0x7FFFFFFF
          ,s_ColumnGap :=6  ;-- Default column gap

    ;[==============]
    ;[  Parameters  ]
    ;[==============]
    if p_ColumnGap is not Integer
        p_ColumnGap:=s_ColumnGap
     else if (p_ColumnGap<1)
        p_ColumnGap:=s_ColumnGap

    if p_MaxSample is not Integer
        p_MaxSample:=MAXINT
     else if (p_MaxSample<1)
        p_MaxSample:=MAXINT

    ;[================]
    ;[  Process Prep  ]
    ;[================]
    ;-- Initialize
    ColumnWidth:=[]
    VarSetCapacity(SIZE,8,0)

    ;-- Get the Edit control's font
    hFont:=Edit_GetFont(hEdit)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    hFont_Old:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Get text from the Edit control
    l_Data:=Edit_GetText(hEdit)

    ;[===========]
    ;[  Process  ]
    ;[===========]
    ;-- Determine the maximum width, in pixels, for each column
    l_NbrOfColumns:=0
    Loop Parse,l_Data,`n,`r
        {
        ;-- Maximum sample limit?
        if (A_Index>p_MaxSample)
            Break

        Loop Parse,A_LoopField,%A_Tab%
            {
            ;-- Update number of columns?
            if (A_Index>l_NbrOfColumns)
                {
                l_NbrOfColumns:=A_Index

                ;-- Initialize ColumnWidth array value
                ColumnWidth[A_Index]:=0
                }

            ;-- Skip if null
            if not StrLen(A_LoopField)
                Continue

            ;-- Get the string size, in pixels
            DllCall("GetTextExtentPoint32"
                ,"Ptr",hDC                          ;-- hDC
                ,"Str",A_LoopField                  ;-- lpString
                ,"Int",StrLen(A_LoopField)          ;-- c (string length)
                ,"Ptr",&SIZE)                       ;-- lpSize

            l_Width:=NumGet(SIZE,0,"Int")

            ;-- Update the ColumnWidth array if needed
            if (l_Width>ColumnWidth[A_Index])
                ColumnWidth[A_Index]:=l_Width
            }
        }

    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",hFont_Old)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Create and populate an array of tab stops
    TabStops:=[]
    l_TabStop:=0  ;-- In dialog template units
    Loop % l_NbrOfColumns
        {
        Fnt_Pixels2DialogTemplateUnits(hFont,ColumnWidth[A_Index],0,l_HorzDTUs)
        l_TabStop+=l_HorzDTUs+p_ColumnGap
        TabStops[A_Index]:=l_TabStop
        }

    ;-- Set tab stops
    if (l_NbrOfColumns=0)
        Edit_SetTabStops(hEdit)  ;-- Set default tab stops
     else
        {
        TabStops.Push(l_TabStop+32)
        Edit_SetTabStops(hEdit,l_NbrOfColumns+1,TabStops)
        }

    ;-- Return tab stop array (can be a null)
    Return TabStops
    }






















;   ______    _ _ _     ____  _            _    __  __                       _     _    
;  |  ____|  | (_) |   |  _ \| |          | |  |  \/  |                     | |   | |   
;  | |__   __| |_| |_  | |_) | | ___   ___| | _| \  / | _____   _____   __ _| |__ | | __
;  |  __| / _` | | __| |  _ <| |/ _ \ / __| |/ / |\/| |/ _ \ \ / / _ \ / _` | '_ \| |/ /
;  | |___| (_| | | |_  | |_) | | (_) | (__|   <| |  | | (_) \ V /  __/| (_| | | | |   < 
;  |______\__,_|_|\__| |____/|_|\___/ \___|_|\_\_|  |_|\___/ \_/ \___(_)__,_|_| |_|_|\_\
;                  ______                                                               
;                 |______|                                                              

;-----------------------------
;
; Function: Edit_BlockMove
;
; Description:
;
;   Move selected text (one or more lines) up or down in a multiline edit
;   control.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_Command - Command to perform.  Use "Up" or "Down" to move the current or
;       selected line(s) up/down 1 line.
;
; Returns:
;
;   TRUE if the move was performed, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetLine>
; * <Edit_GetLineCount>
; * <Edit_GetSel>
; * <Edit_GetSelText>
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineScroll>
; * <Edit_ReplaceSel>
; * <Edit_SetSel>
;
; Remarks:
;
; - Undo can be used to reverse this action.
;
; - This function does not work correctly if Word Wrap is enabled unless all
;   affected lines are not wrapped.
;
;-------------------------------------------------------------------------------
Edit_BlockMove(hEdit,p_Command="")
    {
    StringUpper p_Command,p_Command,T  ;-- Just in case StringCaseSense is On

    ;[===============]
    ;[  Preliminary  ]
    ;[===============]
    l_LastLine:=Edit_GetLineCount(hEdit)-1

    ;-- Get user's select positions
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)

    ;-- Get line indexes of the beginning and end of the selection
    l_FirstSelectedLine:=Edit_LineFromChar(hEdit,l_StartSelPos)
    l_LastSelectedLine :=Edit_LineFromChar(hEdit,l_EndSelPos)

    ;-- Get first character index of the first selected line
    l_FirstPosOfFirstSelectedLine:=Edit_LineIndex(hEdit,l_FirstSelectedLine)

    ;-- Decrement l_LastSelectedLine if selection ends with EOL
    if (l_FirstSelectedLine<>l_LastSelectedLine) ;-- On more than one line
        if (l_EndSelPos=Edit_LineIndex(hEdit,l_LastSelectedLine))
            l_LastSelectedLine--

    ;-- Determine last character index of affected lines
    l_FirstPosOfLastSelectedLine:=Edit_LineIndex(hEdit,l_LastSelectedLine)
    l_LastSelectedLineLen       :=Edit_LineLength(hEdit,l_LastSelectedLine)
    l_LastPosOfLastSelectedLine :=l_FirstPosOfLastSelectedLine+l_LastSelectedLineLen

    ;-- If move is not possible, stop here
    if p_Command in U,Up
        {
        ;-- Already at the top?
        if (l_FirstSelectedLine=0)
            {
            SoundPlay *-1  ;-- System default sound
            Return False
            }
        }
     else
        ;-- Already at the bottom?
        if (l_LastSelectedLine=l_LastLine)
            {
            SoundPlay *-1  ;-- System default sound
            Return False
            }

    ;[============]
    ;[  Reselect  ]
    ;[============]
    ;-- Reselect if the user selection does not start at the beginning of the
    ;   line or does not end at the end of the line
    if (l_StartSelPos<>l_FirstPosOfFirstSelectedLine)
    or (l_EndSelPos<>l_LastPosOfLastSelectedLine)
        Edit_SetSel(hEdit
                 ,l_FirstPosOfFirstSelectedLine
                 ,l_LastPosOfLastSelectedLine)

    ;-- Get selected text
    l_SelectedText:=Edit_GetSelText(hEdit)

    ;[===========]
    ;[  Process  ]
    ;[===========]
    if p_Command in U,Up
        {
        ;[===========]
        ;[  Move Up  ]
        ;[===========]
        ;-- Get the line just before the selected text
        l_FirstPosOfTargetLine:=Edit_LineIndex(hEdit,l_FirstSelectedLine-1)
        l_TargetText          :=Edit_GetLine(hEdit,l_FirstSelectedLine-1)

        ;-- Determine the length of the target line's EOL char(s)
        l_LenOfTargetLineEOL:=l_FirstPosOfFirstSelectedLine
                           - (l_FirstPosOfTargetLine+StrLen(l_TargetText))

        ;-- Reselect to include the target line
        Edit_SetSel(hEdit
                 ,l_FirstPosOfTargetLine
                 ,l_LastPosOfLastSelectedLine)

        ;-- Replace selected text with new pattern
        Edit_ReplaceSel(hEdit,l_SelectedText . "`r`n" . l_TargetText)

        ;-- Reselect to the user's original positions
        l_NewStartSelPos:=l_StartSelPos-(StrLen(l_TargetText)+l_LenOfTargetLineEOL)
        l_NewEndSelPos  :=l_EndSelPos  -(StrLen(l_TargetText)+l_LenOfTargetLineEOL)

        if (l_EndSelPos>l_LastPosOfLastSelectedLine)
            l_NewEndSelPos:=l_NewEndSelPos
                      - ((l_EndSelPos-l_LastPosOfLastSelectedLine)-2)

        Edit_SetSel(hEdit,l_NewStartSelPos,l_NewEndSelPos)
        }
     else
        {
        ;[=============]
        ;[  Move Down  ]
        ;[=============]
        ;-- Get the line just after the selected text
        l_FirstPosOfTargetLine:=Edit_LineIndex(hEdit,l_LastSelectedLine+1)
        l_TargetText          :=Edit_GetLine(hEdit,l_LastSelectedLine+1)

        ;-- Determine the length of the last selected line's EOL char(s)
        l_LenOfLastSelectedLineEOL:=l_FirstPosOfTargetLine
                                  - l_FirstPosOfLastSelectedLine
                                  - l_LastSelectedLineLen

        ;-- Get the length of EOL char(s) after target line (if any)
        if (l_LastSelectedLine+2>l_LastLine)
            l_LenOfTargetLineEOL:=0
         else
            l_LenOfTargetLineEOL:=Edit_LineIndex(hEdit,l_LastSelectedLine+2)
                                - l_FirstPosOfTargetLine
                                - StrLen(l_TargetText)

        ;-- Reselect to include the target line
        Edit_SetSel(hEdit
                 ,l_FirstPosOfFirstSelectedLine
                 ,l_FirstPosOfTargetLine+StrLen(l_TargetText))

        ;-- Replace selected text with new pattern
        Edit_ReplaceSel(hEdit,l_TargetText . "`r`n" . l_SelectedText)

        ;-- Reselect to the user's original positions or to the end of the
        ;   control
        l_NewStartSelPos:=l_StartSelPos+StrLen(l_TargetText)+2
        l_NewEndSelPos  :=l_EndSelPos  +StrLen(l_TargetText)+2

        if (l_EndSelPos>l_LastPosOfLastSelectedLine)
            l_NewEndSelPos:=l_NewEndSelPos
                          - l_LenOfLastSelectedLineEOL
                          + l_LenOfTargetLineEOL

        Edit_SetSel(hEdit,l_NewStartSelPos,l_NewEndSelPos)
        }

    ;[==============]
    ;[  Reposition  ]
    ;[==============]
    Edit_LineScroll(hEdit,"Left")
        ;-- Fixes a display problem that sometimes occurs if moving lines that
        ;   are wider than the control

    ;-- Return to sender
    Return True
    }





;   ______    _ _ _  _______ _______ _____  _____ _    _ _____        _     _    
;  |  ____|  | (_) ||__   __|__   __/ ____|/ ____| |  | |_   _|      | |   | |   
;  | |__   __| |_| |_  | |     | | | (___ | |  __| |  | | | |    __ _| |__ | | __
;  |  __| / _` | | __| | |     | |  \___ \| | |_ | |  | | | |   / _` | '_ \| |/ /
;  | |___| (_| | | |_  | |     | |  ____) | |__| | |__| |_| |_ | (_| | | | |   < 
;  |______\__,_|_|\__| |_|     |_| |_____/ \_____|\____/|_____(_)__,_|_| |_|_|\_\
;                  ______                                                        
;                 |______|                                                       


;-----------------------------
;
; Function: Edit_TTSGUI v0.5
;
;   This function displays a Text-To-Speech player window to speak text from an
;   Edit control.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_Owner - Owner GUI.  Set to 0 for no owner.  See the *Owner* section for
;       more information.
;
;   hEdit - Handle to the Edit control.
;
;   p_Options - Program options. [Optional] Valid options include the following:
;
;   p_Title - Title to the Text-To-Speech window. [Optional]  If not defined
;       or null then "Text-To-Speech" is used.
;
; Returns:
;
;   If a Edit_TTSGUI window is created, the handle to the window is returned,
;   otherwise FALSE (0) is returned. See the "Remarks" for more information.
;
; Calls To Other Functions:
;
;   * AddTooltip
;   * Edit [Library]
;   * Fnt [Library]
;   * MoveChildWindow
;   * WinGetPosEx
;
; Font:
;
;   The Font option in the p_Options parameter allows for a specific logical
;   font to specified when creating all GUI controls except for the buttons that
;   control playback.  The syntax is as follows:
;   {OptionName}={FontName}:{FontOptions}. Ex: Font="Arial:s10 bold".  Most
;   components of the option value are optional. If a typeface name is not
;   specified (Ex: ":s12 bold"), the default GUI font is used.  If no font
;   options are specified (Ex: "Arial" or "Arial:"), the default font options
;   are used. See the AutoHotkey documentation for a list of (and syntax of)
;   font options.
;
;   Exception: If the option value is set to "Message" (Ex: Font=Message), the
;   system font used for Message Box dialog is used.  In general, the Message
;   font is a bit larger and easier to read than the default GUI font and it is
;   commonly used in dialogs.
;
; Options:
;
;   The p_Options parameter contains options for the display and operation of
;   the Edit_TTSGUI window.  Valid options include the following:
;
;   -Options - Hide all Text-To-Speech options.  If this option is set, the
;       "Show Options" button is hidden so that the user cannot show any of
;       of the dialog's Text-To-Speech options.  If specified, this option makes
;       all options that begin with the negative character (Ex: -Rate)
;       redundant.
;
;   Font={Font} - Allows the developer to set a specific font for the GUI
;       objects.  See the *Font* section for the syntax of this option.  If this
;       option is not specified, the default GUI font is used.
;
;   -Format - Hide the "Format" option.
;
;   Rate={PlaybackRate} - Specify a playback rate from -10 to 10.  For example:
;       Rate=3.  The user can override the rate if the "Rate" option is
;       displayed.
;
;   -Rate - Hide the "Rate" option.
;
;   Skip={NumberOfSentencesToSkip} - Specify the number of sentences to skip
;       forward when the Skip button is pressed.  For example: Skip=3.  The user
;       can override this value if the "Skip" option is displayed.
;
;   -Skip - Hide the "Skip" option.
;
;   Speak - Begin to speak immediately.
;
;   TrackWord={EnableOrDisable} - Specify whether the program will track the
;       word on the edit control when speaking.  Set to 1 to enable.  Set to 0
;       to disable.  For example: TrackWord=1.  The user can override this value
;       if the "TrackWord" option is displayed.
;
;   -TrackWord - Hide the "Word tracking" option.  Don't confuse this option
;       with the TrackWord=0" option.
;
;   Voice={NameOfVoice} - Specify a Text-To-Speech voice.  For example:
;       Voice="Microsoft Mary".  The user can override this voice if the "Voice"
;       option is displayed.  If the specified voice is not found, the default
;       voice is used.
;
;   -Voice - Hide the "Voice" option.
;
;   Volume={VolumeLevel} - Specify a volume level from 0 to 100.  For example:
;       Volume=80.  The user can override the volume level if the "Volume"
;       option is displayed.
;
;   -Volume - Hide the "Volume" option.
;
;   To use more than one option, include a space between each option.  For
;   example: Volume=80 Rate=3 -Format.  If an option value contains one or more
;   space characters, enclose the entire value in single or double quote
;   characters.  Ex: Voice='Microsoft Mike' or Voice="Microsoft Mary".
;   IMPORTANT: Only options that can possibly contain space characters will
;   support the value enclosed single or double quote characters.
;
; Owner:
;
;   The p_Owner parameter is used to specify the owner of the Edit_TTSGUI
;   window.  Set to 0 for no owner.  For an AutoHotkey GUI, specify a valid GUI
;   number (1-99), a GUI name, or the handle to the GUI.  For a non-AutoHotkey
;   window, specify the handle to the window.  For all owner windows, the
;   Edit_TTSGUI window is positioned in the center of the owner window or as
;   close to the center as possible.  If no owner is specified or if a
;   non-AutoHotkey window is specified, the AlwaysOnTop attribute is added to
;   the Edit_TTSGUI dialog to make sure that the dialog is not lost.
;
; Remarks:
;
;   Since the Edit_TTSGUI window remains open until the user closes it or until
;   the developer closes it (for whatever reason), it's best to check to see if
;   the Edit_TTSGUI window is already open before calling this function. For
;   example:
;
;       (start code)
;       IfWinNotExist ahk_id %hEdit_TTSGUI%
;           hEdit_TTSGUI:=Edit_TTSGUI(...
;           .
;           .
;       (end)
;
;   The correct way to force the Edit_TTSGUI window to close is the *WinClose*
;   command.  For example:
;
;       (start code)
;       WinClose ahk_id %hEdit_TTSGUI%
;       (end)
;
;   The *WinClose* command will automatically trigger the standard *GUIClose*
;   label which will destroy the Edit_TTSGUI window and release COM and Speech
;   resources.
;
;   Important: Some voices do not support all of the features of this
;   Text-To-Speech player.  Examples: 1) Most voices allow the volume and rate
;   to be changed while the voice is speaking but some do not.  2) Most
;   voices support the Skip command but some do not.  For some voices, pressing
;   the Skip button will lock the player until the voice is done speaking.
;
;-------------------------------------------------------------------------------
Edit_TTSGUI(p_Owner,hEdit,p_Options="",p_Title="")
    {
    Global Edit_TTSGUI_hEdit
          ,Edit_TTSGUI_StartSelPos
          ,Edit_TTSGUI_EndSelPos
          ,Edit_TTSGUI_TrackWord

    Static Dummy2101
          ,hEdit_TTSGUI
          ,s_Max
          ,s_MinW
          ,s_MinH
          ,s_NOHIDESEL
          ,s_PauseRequest
          ,s_SpVoice
          ,s_Sink
          ,s_Skip:=1

          ;-- Constants
          ,ES_NOHIDESEL:=0x100

          ,SRSEWaitingToSpeak:=0x0
                ;-- Active but not speaking.  This status can occur under the
                ;   following conditions:
                ;
                ;     - Before the voice has begun speaking
                ;     - The voice has been paused
                ;     - The voice has been interrupted by an Alert voice
                ;
                ;   Note: There is no documented constant name for this status.

          ,SRSEDone:=0x1
                ;-- The voice has finished rendering all queued phrases.

          ,SRSEIsSpeaking:=0x2
                ;-- The SpVoice currently claims the audio queue.

          ,SVSFlagsAsync:=0x1
                ;-- Specifies that the Speak call should be asynchronous.  That
                ;   is, it will return immediately after the speak request is
                ;   queued.

          ,SVSFPurgeBeforeSpeak:=0x2
                ;-- Purges all pending speak requests prior to this speak call.

    ;[=================]
    ;[  Already open?  ]
    ;[=================]
    ;-- Bounce (with prejudice) if a Edit_TTSGUI window already showing
    gui Edit_TTSGUI:+LastFoundExist
    IfWinExist
        {
        outputdebug,
           (ltrim join`s
            End Func: %A_ThisFunc% -
            A %A_ThisFunc% window already exists.
           )

        SoundPlay *-1  ;-- System default beep
        Return False
        }

    ;[==============]
    ;[  Initialize  ]
    ;[==============]
    SplitPath A_ScriptName,,,,l_ScriptName
    s_NOHIDESEL:=Edit_IsStyle(hEdit,ES_NOHIDESEL)
    l_AudioOutputStreamFormatTypeDescriptionList=
       (ltrim join|
        8kHz 8 Bit Mono
        8kHz 8 Bit Stereo
        8kHz 16 Bit Mono
        8kHz 16 Bit Stereo
        11kHz 8 Bit Mono
        11kHz 8 Bit Stereo
        11kHz 16 Bit Mono
        11kHz 16 Bit Stereo
        12kHz 8 Bit Mono
        12kHz 8 Bit Stereo
        12kHz 16 Bit Mono
        12kHz 16 Bit Stereo
        16kHz 8 Bit Mono
        16kHz 8 Bit Stereo
        16kHz 16 Bit Mono
        16kHz 16 Bit Stereo
        22kHz 8 Bit Mono
        22kHz 8 Bit Stereo
        22kHz 16 Bit Mono
        22kHz 16 Bit Stereo
        24kHz 8 Bit Mono
        24kHz 8 Bit Stereo
        24kHz 16 Bit Mono
        24kHz 16 Bit Stereo
        32kHz 8 Bit Mono
        32kHz 8 Bit Stereo
        32kHz 16 Bit Mono
        32kHz 16 Bit Stereo
        44kHz 8 Bit Mono
        44kHz 8 Bit Stereo
        44kHz 16 Bit Mono
        44kHz 16 Bit Stereo
        48kHz 8 Bit Mono
        48kHz 8 Bit Stereo
        48kHz 16 Bit Mono
        48kHz 16 Bit Stereo
       )

    ;[==================]
    ;[    Parameters    ]
    ;[  (Set defaults)  ]
    ;[==================]
    ;-- Owner
    if p_Owner  ;-- Not null/zero
        {
        ;-- Assign to hOwner if p_Owner is a valid window handle
        hOwner:=WinExist("ahk_id " . p_Owner)

        ;-- Determine if p_Owner is a valid AutoHotkey window and if so,
        ;   identify the window handle.  Note: The Try command is used because
        ;   AutoHotkey will generate a run-time error if p_Owner is not a valid
        ;   GUI number (1 thru 99), a valid GUI name, or a window handle that is
        ;   not an AutoHotkey GUI.
        Try
            {
            gui %p_Owner%:+LastFoundExist
            IfWinExist
                {
                gui %p_Owner%:+LastFound
                hOwner:=WinExist()
                }
             else  ;-- GUI not found
                p_Owner:=0
            }
         Catch  ;-- Not an AutoHotkey GUI
            p_Owner:=0
        }

    ;-- hEdit
    Edit_TTSGUI_hEdit:=hEdit

    ;-- Title
    p_Title:=Trim(p_Title," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    if not StrLen(p_Title)
        p_Title:="Text-To-Speech"
     else
        {
        ;-- Append to script name if p_title begins with "++"?
        if (SubStr(p_Title,1,2)="++")
            {
            StringTrimLeft p_Title,p_Title,2
            p_Title:=l_ScriptName . A_Space . p_Title
            }
        }

    ;[===================]
    ;[  Init COM/Speech  ]
    ;[===================]
    ;-- Create SpVoice instance
    s_SpVoice:=ComObjCreate("SAPI.SpVoice")

    ;-- Build list of Voices
    l_VoiceList:=""
    Loop % s_SpVoice.GetVoices.Count
        l_VoiceList.=(StrLen(l_VoiceList) ? "|":"")
            . s_SpVoice.GetVoices.Item(A_Index-1).GetAttribute("Name")

    ;[===========]
    ;[  Options  ]
    ;[===========]
    ;-- Initialize/Set defaults
    l_ContinueFont :=False
    l_ContinueVoice:=False
    o_ShowOptions  :=True
    o_ShowVoice    :=True
    o_ShowVolume   :=True
    o_ShowRate     :=True
    o_ShowFormat   :=True
    o_ShowSkip     :=True
    o_ShowTrackWord:=True
    o_Voice        :=s_SpVoice.Voice.GetAttribute("Name")
    o_Volume       :=s_SpVoice.Volume
    o_Rate         :=s_SpVoice.Rate
    o_Speak        :=False
    Edit_TTSGUI_TrackWord:=True

    ;-- Extract from p_Options
    Loop Parse,p_Options,%A_Space%
        {
        if l_ContinueFont
            {
            o_Font.=A_Space . A_LoopField
            if (SubStr(o_Font,0)="""" or SubStr(o_Font,0)="'")
                {
                StringTrimRight o_Font,o_Font,1
                o_Font:=Trim(o_Font," `f`n`r`t`v")
                    ;-- Remove all leading/trailing white space
                l_ContinueFont:=False
                }

            Continue
            }

        if l_ContinueVoice
            {
            o_Voice.=A_Space . A_LoopField
            if (SubStr(o_Voice,0)="""" or SubStr(o_Voice,0)="'")
                {
                StringTrimRight o_Voice,o_Voice,1
                o_Voice:=Trim(o_Voice," `f`n`r`t`v")
                    ;-- Remove all leading/trailing white space
                l_ContinueVoice:=False
                }

            Continue
            }

        if (A_LoopField="-Options")
            {
            o_ShowOptions:=False
            Continue
            }

        if (A_LoopField="-Voice")
            {
            o_ShowVoice:=False
            Continue
            }

        if (A_LoopField="-Volume")
            {
            o_ShowVolume:=False
            Continue
            }

        if (A_LoopField="-Rate")
            {
            o_ShowRate:=False
            Continue
            }

        if (A_LoopField="-Format")
            {
            o_ShowFormat:=False
            Continue
            }

        if (A_LoopField="-Skip")
            {
            o_ShowSkip:=False
            Continue
            }

        if (A_LoopField="-TrackWord")
            {
            o_ShowTrackWord:=False
            Continue
            }

        if (SubStr(A_LoopField,1,5)="Font=")
            {
            o_Font:=SubStr(A_LoopField,6)
            if (SubStr(o_Font,1,1)="""" or SubStr(o_Font,1,1)="'")
                {
                StringTrimLeft o_Font,o_Font,1
                if (SubStr(o_Font,0)="""" or SubStr(o_Font,0)="'")
                    StringTrimRight o_Font,o_Font,1
                 else
                    l_ContinueFont:=True
                }

            Continue
            }

        if (SubStr(A_LoopField,1,6)="Voice=")
            {
            o_Voice:=SubStr(A_LoopField,7)
            if (SubStr(o_Voice,1,1)="""" or SubStr(o_Voice,1,1)="'")
                {
                StringTrimLeft o_Voice,o_Voice,1
                if (SubStr(o_Voice,0)="""" or SubStr(o_Voice,0)="'")
                    StringTrimRight o_Voice,o_Voice,1
                 else
                    l_ContinueVoice:=True
                }

            Continue
            }

        if (SubStr(A_LoopField,1,7)="Volume=")
            {
            t_Volume:=SubStr(A_LoopField,8)
            if t_Volume is Integer
                if o_Volume between 0 and 100
                    o_Volume:=t_Volume

            Continue
            }

        if (SubStr(A_LoopField,1,5)="Rate=")
            {
            t_Rate:=SubStr(A_LoopField,6)
            if t_Rate is Integer
                if t_Rate between -10 and 10
                    o_Rate:=t_Rate

            Continue
            }

        if (SubStr(A_LoopField,1,5)="Skip=")
            {
            s_Skip:=SubStr(A_LoopField,6)
            Continue
            }

        if (SubStr(A_LoopField,1,10)="TrackWord=")
            {
            Edit_TTSGUI_TrackWord:=SubStr(A_LoopField,11)
            Continue
            }

        if (A_LoopField="Speak")
            {
            o_Speak:=True
            Continue
            }
        }

    ;-- Reset voice to default if specified voice is not found
    if not InStr("|" . l_VoiceList . "|","|" . o_Voice . "|")
        o_Voice:=s_SpVoice.Voice.GetAttribute("Name")

    ;-- Set Voice, Volume, and Rate
    s_SpVoice.Voice :=s_SpVoice.GetVoices("Name=" . o_Voice).Item(0)
    s_SpVoice.Volume:=o_Volume
    s_SpVoice.Rate  :=o_Rate

    ;-- Font
    hFont:=0
    l_Font:=""
    l_FontOptions:=""
    if o_ShowOptions and o_Font
        {
        Loop Parse,o_Font,:
            if (A_Index=1)
                l_Font:=A_LoopField
             else
                {
                l_FontOptions:=A_LoopField
                Break
                }

        if (l_Font="Message")
            {
            l_Font:=Fnt_GetMessageFontName()
            if not Fnt_FOGetSize(l_FontOptions)
                Fnt_FOSetSize(l_FontOptions,Fnt_GetMessageFontSize())
            }

        hFont:=Fnt_CreateFont(l_Font,l_FontOptions)
        }

    ;[===================]
    ;[  Calculate sizes  ]
    ;[===================]
    ;-- Margins
    Fnt_GetDefaultGUIMargins(hFont,l_MarginX,l_MarginY,False)
    l_MarginX:=l_MarginY

    ;-- Calculate size of objects
    l_ClientW:=Fnt_HorzDTUs2Pixels(hFont,120)+(l_MarginX*2)
        ;-- Enough space for 30 average characters + margins

    ;-- Button size
    l_ButtonW:=Round(l_ClientW/5)
    l_ButtonH:=Round(l_ButtonW*0.70)

    ;-- Recalculate client width in case there was rounding
    l_ClientW:=l_ButtonW*5

    ;-- Button font size
    hButtonFont:=Fnt_CreateFont("Webdings","s12")  ;-- starting point
    ButtonFontSize:=Fnt_FontSizeToFitHeight(hButtonFont,l_ButtonH-6)
    Fnt_DeleteFont(hButtonFont)

    ;[=============]
    ;[  Build GUI  ]
    ;[=============]
    ;-- Set ownership
    ;   Note: Ownership commands must be performed before any other GUI commands
    if p_Owner
        gui Edit_TTSGUI:+Owner%p_Owner%  ;-- Modeless ownership
     else
        gui Edit_TTSGUI:+Owner           ;-- Assign to the script window

    ;-- GUI options
    gui Edit_TTSGUI:-DPIScale +hWndhEdit_TTSGUI +LabelEdit_TTSGUI_ -MinimizeBox
    gui Edit_TTSGUI:Margin,0,0
    if not p_Owner
        gui Edit_TTSGUI:+AlwaysOnTop

    ;-- GUI objects

    ;-- Set font for buttons
    gui Edit_TTSGUI:Font,s%ButtonFontSize%,Webdings
    gui Edit_TTSGUI:Font,% "s" ButtonFontSize+2
        ;-- Play, i.e. Speak, button icon is smaller than the others so a slight
        ;   adjustment for the Speak button is made here
    gui Edit_TTSGUI:Add
       ,Button
       ,% ""
            . "xm ym "
            . "w" . l_ButtonW . A_Space
            . "h" . l_ButtonH . A_Space
            . "hWndhEdit_TTSGUI_Speak "
            . "gEdit_TTSGUI_Speak "
       ,4
    AddTooltip(hEdit_TTSGUI_Speak,"Speak")

    gui Edit_TTSGUI:Font,s%ButtonFontSize%
        ;-- Reset font size to the default button size
    gui Edit_TTSGUI:Add
       ,Button
       ,% ""
            . "x+0 wp hp "
            . "hWndhEdit_TTSGUI_Pause "
            . "gEdit_TTSGUI_Pause "
       ,;
    AddTooltip(hEdit_TTSGUI_Pause,"Pause")

    gui Edit_TTSGUI:Font,% "s" ButtonFontSize-2
        ;-- Stop button icon looks larger than the others so a slight adjustment
        ;   is made here
    gui Edit_TTSGUI:Add
       ,Button
       ,% ""
            . "x+0 wp hp "
            . "hWndhEdit_TTSGUI_Stop "
            . "gEdit_TTSGUI_Stop "
       ,<
    AddTooltip(hEdit_TTSGUI_Stop,"Stop")

    gui Edit_TTSGUI:Font,s%ButtonFontSize%
        ;-- Reset font size to the default button size
    gui Edit_TTSGUI:Add
       ,Button
       ,% ""
            . "x+0 wp hp "
            . "hWndhEdit_TTSGUI_Skip "
            . "gEdit_TTSGUI_Skip "
       ,8
    AddTooltip(hEdit_TTSGUI_Skip,"Skip")

    if o_ShowOptions
        {
        gui Edit_TTSGUI:Add
           ,Button
           ,% ""
                . "x+0 wp hp "
                . "hWndhEdit_TTSGUI_ToggleOptions "
                . "gEdit_TTSGUI_ToggleOptions "
           ,6
        AddTooltip(hEdit_TTSGUI_ToggleOptions,"Show/Hide Options")
        }

    ;-- Reset font
    gui Edit_TTSGUI:Font
 
    ;-- Size GUI for just the buttons
    gui Edit_TTSGUI:Show,Hide AutoSize,%p_Title%

    ;-- Collect the size for future use
    l_DetectHiddenWindows:=A_DetectHiddenWindows
    DetectHiddenWindows On
    WinGetPos,,,s_MinW,s_MinH,ahk_id %hEdit_TTSGUI%
    DetectHiddenWindows %l_DetectHiddenWindows%

    ;-- Add option objects
    if o_ShowOptions
        {
        ;-- Set margin
        gui Edit_TTSGUI:Margin,%l_MarginX%,%l_MarginY%

        ;-- If specified, set font
        if l_Font or l_FontOptions
            gui Edit_TTSGUI:Font,%l_FontOptions%,%l_Font%

        ;-- Establish the width of the prompt field
        l_PromptW:=Fnt_GetStringWidth(hFont,"Volume:i")

        ;-- Calculate object width, i.e. whatever space is left
        l_ObjectW:=l_ClientW-l_PromptW-(l_MarginX*2)

        ;--  Add controls
        if o_ShowVoice
            {
            gui Edit_TTSGUI:Add
               ,Text
               ,% ""
                    . "xm" . A_Space
                    . "w" . l_PromptW . A_Space
               ,Voice:

            Static Edit_TTSGUI_Voice
            gui Edit_TTSGUI:Add
               ,DropDownList
               ,% ""
                    . "x+0 w" . l_ObjectW . A_Space
                    . "r5 "
                    . "vEdit_TTSGUI_Voice "
               ,%l_VoiceList%

            GUIControl
                ,Edit_TTSGUI:ChooseString
                ,Edit_TTSGUI_Voice
                ,%o_Voice%
            }

        if o_ShowVolume
            {
            gui Edit_TTSGUI:Add
               ,Text
               ,% ""
                    . "xm" . A_Space
                    . "w" . l_PromptW . A_Space
               ,Volume:

            Static Edit_TTSGUI_Volume
            gui Edit_TTSGUI:Add
               ,Slider
               ,% ""
                    . "x+0 w" . l_ObjectW . A_Space
                    . "Range0-100 "
                    . "TickInterval10 "
                    . "ToolTip "
                    . "vEdit_TTSGUI_Volume "
                    . "gEdit_TTSGUI_Volume "
               ,%o_Volume%
            }

        if o_ShowRate
            {
            gui Edit_TTSGUI:Add
               ,Text
               ,% ""
                    . "xm" . A_Space
                    . "w" . l_PromptW . A_Space
               ,Rate:

            Static Edit_TTSGUI_Rate
            gui Edit_TTSGUI:Add
               ,Slider
               ,% ""
                    . "x+0 "
                    . "w" . l_ObjectW . A_Space
                    . "Range-10-10 "
                    . "TickInterval10 "
                    . "ToolTip "
                    . "vEdit_TTSGUI_Rate "
                    . "gEdit_TTSGUI_Rate "
               ,%o_Rate%
            }

        if o_ShowFormat
            {
            gui Edit_TTSGUI:Add
               ,Text
               ,% ""
                    . "xm" . A_Space
                    . "w" . l_PromptW . A_Space
               ,Format:

            Static Edit_TTSGUI_AudioOutputStreamFormatType
            gui Edit_TTSGUI:Add
               ,DropDownList
               ,% ""
                    . "x+0 "
                    . "w" . l_ObjectW . A_Space
                    . "r5 "
                    . "+AltSubmit "
                    . "vEdit_TTSGUI_AudioOutputStreamFormatType "
               ,%l_AudioOutputStreamFormatTypeDescriptionList%

            GUIControl
                ,Edit_TTSGUI:Choose
                ,Edit_TTSGUI_AudioOutputStreamFormatType
                ,% s_SpVoice.AudioOutputStream.Format.Type-3
            }

        if o_ShowSkip
            {
            gui Edit_TTSGUI:Add
               ,Text
               ,% ""
                    . "xm" . A_Space
                    . "w" . l_PromptW . A_Space
               ,Skip:

            Static Edit_TTSGUI_Skip
            gui Edit_TTSGUI:Add
               ,Edit
               ,% ""
                    . "x+0 w50 r1 "
                    . "vEdit_TTSGUI_Skip "

            gui Edit_TTSGUI:Add
               ,UpDown
               ,% ""
                    . "x+0 hp "
                    . "Range1-99 "
               ,%s_Skip%
            }

        if o_ShowTrackWord
            {
            gui Edit_TTSGUI:Add
               ,CheckBox
               ,% ""
                    . "xm" . A_Space
                    . "Checked" . Edit_TTSGUI_TrackWord . A_Space
                    . "vEdit_TTSGUI_TrackWord "
                    . "gEdit_TTSGUI_TrackWord "
               ,Word tracking
            }

        ;-- Reset font
        gui Edit_TTSGUI:Font

        ;-- Final margins
        gui Edit_TTSGUI:Margin,0,%l_MarginY%
        }

    ;-- Delete logical font
    Fnt_DeleteFont(hFont)

    ;[===========]
    ;[  Show it  ]
    ;[===========]
    if hOwner
        MoveChildWindow(hOwner,hEdit_TTSGUI,"Show")
     else
        gui Edit_TTSGUI:Show,,%p_Title%

    ;[===================]
    ;[  Begin speaking?  ]
    ;[===================]
    If o_Speak
        SetTimer Edit_TTSGUI_Speak,0

    ;[====================]
    ;[  Return to sender  ]
    ;[====================]
    Return hEdit_TTSGUI   ;-- End of function


    ;*********************
    ;*                   *
    ;*    Subroutines    *
    ;*                   *
    ;*********************
    Edit_TTSGUI_Volume:
    gui Submit,NoHide
    s_SpVoice.Volume:=Edit_TTSGUI_Volume

    ;-- Do nothing else if Voice is not active (speaking, paused, or interrupted)
    if (s_SpVoice.Status.RunningState=SRSEDone)
        return

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_Rate:
    gui Submit,NoHide
    s_SpVoice.Rate:=Edit_TTSGUI_Rate

    ;-- Do nothing else if voice is not active (speaking, paused, or interrupted)
    if (s_SpVoice.Status.RunningState=SRSEDone)
        return

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_Speak:
    SetTimer %A_ThisLabel%,Off
    gui Edit_TTSGUI:Submit,NoHide

    ;-- If paused, button acts the same as the Pause button
    if s_PauseRequest
        {
        gosub Edit_TTSGUI_Pause
        return
        }

    ;-- If the Voice is speaking, stop.  This will also reposition the selection.
    if (s_SpVoice.Status.RunningState=SRSEIsSpeaking)
        {
        gosub Edit_TTSGUI_Stop

        ;-- Wait until the Voice instance has stopped speaking.  The voice must
        ;   be completely stopped in order to set/reset the AudioOutputStream
        ;   format type.  The delay also allows the EndStream event to occur.
        Loop 18  ;-- Max wait is 900ms
            {
            Sleep 50
            if (s_SpVoice.Status.RunningState=SRSEDone)
                Break
            }
        }

    ;-- Voice
    if Edit_TTSGUI_Voice is not Space
        s_SpVoice.Voice:=s_SpVoice.GetVoices("Name=" . Edit_TTSGUI_Voice).Item(0)

    ;-- AudioOutputStream format type
    if Edit_TTSGUI_AudioOutputStreamFormatType is not Space
        {
        ;-- Turn AllowAudioOutputFormatChangesOnNextSet off
        s_SpVoice.AllowAudioOutputFormatChangesOnNextSet:=False

        ;-- Set to selected type
        s_SpVoice.AudioOutputStream.Format.Type:=Edit_TTSGUI_AudioOutputStreamFormatType+3

        ;-- Assign to self
        s_SpVoice.AudioOutputStream:=s_SpVoice.AudioOutputStream
            ;-- This assignment is necessary so that SAPI picks up the new format

        ;-- Turn AllowAudioOutputFormatChangesOnNextSet back on
        s_SpVoice.AllowAudioOutputFormatChangesOnNextSet:=True
        }

    ;-- Collect text
    Edit_GetSel(Edit_TTSGUI_hEdit,Edit_TTSGUI_StartSelPos,Edit_TTSGUI_EndSelPos)

    l_EndSelPos:=Edit_TTSGUI_EndSelPos
    if (Edit_TTSGUI_StartSelPos=Edit_TTSGUI_EndSelPos)
        l_EndSelPos:=-1

    l_Text:=Edit_GetTextRange(Edit_TTSGUI_hEdit,Edit_TTSGUI_StartSelPos,l_EndSelPos)
        ;-- Text includes CR+LF characters (needed by the Word event)

    ;-- Anything to speak?
    if l_Text is Space
        {
        gui +OwnDialogs
        MsgBox
            ,0x30  ;-- 0x30 ("!" icon) + 0x0 (OK button)
            ,Text-To-Speech,
               (ltrim
                There is no text to speak.

                The starting point is determined by selection or by the position
                of the caret.  Select text or reposition the caret.
               )

        return
        }

    ;-- Initialize
    s_PauseRequest:=False

    ;-- If necessary, establish Sink (event interface)
    if not s_Sink
        {
        ComObjConnect(s_SpVoice,"Edit_TTSGUI_On")
        s_Sink:=True
        }

    ;-- Speak
    s_SpVoice.Speak(l_Text,SVSFlagsAsync|SVSFPurgeBeforeSpeak)

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_Pause:

    ;-- Bounce if the voice is not active (speaking, paused, or interrupted)
    if (s_SpVoice.Status.RunningState=SRSEDone)
        return

    if s_PauseRequest
        {
        s_SpVoice.Resume
        s_PauseRequest:=False
        }
     else
        {
        s_SpVoice.Pause
        s_PauseRequest:=True
        }

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_Stop:

    ;-- Bounce if the voice is not active (speaking, paused, or interrupted)
    if (s_SpVoice.Status.RunningState=SRSEDone)
        return

    ;-- Resume if paused (keeps the stream from getting lost/stuck)
    if s_PauseRequest
        {
        s_SpVoice.Resume
        s_PauseRequest:=False
        }

    ;-- Stop request
    s_SpVoice.Speak("",SVSFlagsAsync|SVSFPurgeBeforeSpeak)
        ;-- Send empty string with SVSFPurgeBeforeSpeak flag to stop playback

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_Skip:
    gui Submit,NoHide

    ;-- Bounce if the voice is not speaking
    if (s_SpVoice.Status.RunningState<>SRSEIsSpeaking)
        return

    ;-- Skip
    s_SpVoice.Skip("Sentence",Edit_TTSGUI_Skip ? Edit_TTSGUI_Skip:s_Skip)

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    return


    Edit_TTSGUI_ToggleOptions:
    SetTimer %A_ThisLabel%,Off
    if s_Max
        {
        WinMove ahk_id %hEdit_TTSGUI%,,,,%s_MinW%,%s_MinH%
        s_Max:=False
        }
     else
        {
        gui Edit_TTSGUI:Show,AutoSize
        s_Max:=True
        }

    return


    Edit_TTSGUI_TrackWord:
    gui Submit,NoHide

    ;-- Do nothing else if Voice is not active (speaking, paused, or interrupted)
    if (s_SpVoice.Status.RunningState=SRSEDone)
        return

    ;-- Reset focus?
    if not s_NOHIDESEL
        ControlFocus,,ahk_id %Edit_TTSGUI_hEdit%

    ;-- Only perform if TrackWord is turned on
    if not Edit_TTSGUI_TrackWord
        {
        ;-- Reset to original selection
        Edit_SetSel(Edit_TTSGUI_hEdit,Edit_TTSGUI_StartSelPos,Edit_TTSGUI_EndSelPos)
        Edit_ScrollCaret(Edit_TTSGUI_hEdit)
        }

    return


    ;[=================]
    ;[  Close up shop  ]
    ;[=================]
    Edit_TTSGUI_Escape:
    Edit_TTSGUI_Close:

    ;-- If needed, stop speaking voice
    if (s_SpVoice.Status.RunningState=SRSEIsSpeaking)
        {
        ;-- Ensure that the voice is the most responsive
        s_SpVoice.Rate:=10

        ;-- Stop request
        gosub Edit_TTSGUI_Stop

        ;-- Wait until the voice has stopped speaking
        Loop 18  ;-- Max wait is 900ms
            {
            Sleep 50
            if (s_SpVoice.Status.RunningState=SRSEDone)
                Break
            }
        }

    ;-- Remove all event notifications
    ;   Note: This step is performed after the voice has been stopped so that
    ;   the user selection can be automatically reset.
    if s_Sink
        {
        ComObjConnect(s_SpVoice)
        s_Sink:=False
        }

    ;-- Release object
    s_SpVoice:=""

    ;-- Destroy the window so that it can be reused
    gui Edit_TTSGUI:Destroy
    return
    }


;***********************
;*                     *
;*      Word event     *
;*    (Edit_TTSGUI)    *
;*                     *
;***********************
Edit_TTSGUI_OnWord(StreamNumber,StreamPosition,CharacterPosition,Length)
    {
    Global Edit_TTSGUI_hEdit
          ,Edit_TTSGUI_StartSelPos
          ,Edit_TTSGUI_TrackWord

    ;-- Bounce if not tracking
    if not Edit_TTSGUI_TrackWord
        return

    ;-- Calculdate start position
    l_StartPos:=CharacterPosition+Edit_TTSGUI_StartSelPos

    ;-- Select it
    Edit_SetSel(Edit_TTSGUI_hEdit,l_StartPos,l_StartPos+Length)

    ;-- Scroll if necessary
    Edit_ScrollCaret(Edit_TTSGUI_hEdit)
    return
    }


;*************************
;*                       *
;*    EndStream event    *
;*     (Edit_TTSGUI)     *
;*                       *
;*************************
Edit_TTSGUI_OnEndStream(StreamNumber,StreamPosition)
    {
    Global Edit_TTSGUI_hEdit
          ,Edit_TTSGUI_StartSelPos
          ,Edit_TTSGUI_EndSelPos
          ,Edit_TTSGUI_TrackWord

    ;-- Bounce if not tracking
    if not Edit_TTSGUI_TrackWord
        return

    ;-- Reset to original selection
    Edit_SetSel(Edit_TTSGUI_hEdit,Edit_TTSGUI_StartSelPos,Edit_TTSGUI_EndSelPos)
    Edit_ScrollCaret(Edit_TTSGUI_hEdit)
    return
    }







































;   ______    _ _ _      _____            _ _  _____ _               _     _____ _    _ _____        _     _    
;  |  ____|  | (_) |    / ____|          | | |/ ____| |             | |   / ____| |  | |_   _|      | |   | |   
;  | |__   __| |_| |_  | (___  _ __   ___| | | |    | |__   ___  ___| | _| |  __| |  | | | |    __ _| |__ | | __
;  |  __| / _` | | __|  \___ \| '_ \ / _ \ | | |    | '_ \ / _ \/ __| |/ / | |_ | |  | | | |   / _` | '_ \| |/ /
;  | |___| (_| | | |_   ____) | |_) |  __/ | | |____| | | |  __/ (__|   <| |__| | |__| |_| |_ | (_| | | | |   < 
;  |______\__,_|_|\__| |_____/| .__/ \___|_|_|\_____|_| |_|\___|\___|_|\_\\_____|\____/|_____(_)__,_|_| |_|_|\_\
;                  ______     | |                                                                               
;                 |______|    |_|                                                                               

;-----------------------------
; 
; Function: Edit_SpellCheckGUI v0.2.5 (Preview)
;
; Description:
;
;   A specialty function that performs a spell check on the designated edit
;   control using the dictionary as defined by the hSpell variable.  A dialog is
;   displayed to prompt the user when a misspelled word is found.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_Owner - Owner GUI.  Set to 0 for no owner.  See the *Owner* section for
;       more information.
;
;   hEdit - Handle to the edit control that will be checked for spelling errors.
;
;   hSpell - Variable that contains Spell handle and function addresses.  See
;       the *Setup and Shutdown* section for more information.
;
;   p_CustomDic - Path to the custom dictionary file. [Optional] See the *Custom
;       Dictionary* section for more information.
;
;   p_Title - Window title. [Optional] The default is "Spell Check".
;
;   p_Font - Typeface name and/or font options. [Optional] See the *Font*
;       section for more information.
;
; Calls To Other Functions:
;
;   * Edit [Library]
;   * Fnt [Library]
;   * MoveChildWindow
;   * Spell v2.0+ [Library]
;   * WinGetPosEx (used by MoveChildWindow)
;
; Returns:
;
;   TRUE if the Spell Check window was created normally and the spell check
;   ended normally or was canceled by the user, otherwise FALSE if there was
;   error.  Use a debugger or debug viewer to see the details if an error
;   occurs.
;
; Custom Dictionary:
;
;   The p_CustomDic parameter contains the path to a custom dictionary file.  If
;   blank/null or not specified, the "Add Word" button on the Edit_SpellCheckGUI
;   dialog is not enabled.
;
;   Important 1: This function will only add words _to_ the custom dictionary
;   file specified in the p_CustomDic parameter.  Words that are already in the
;   custom dictionary should be pre-loaded by the parent script by using the
;   *Spell_InitCustom* function.
;
;   Important 2:  Some of the errors that occur with/because of the path/file
;   specified in the p_CustomDic parameter are handled internally by the
;   function and are treated as non-critical errors.  The function will continue
;   to operate in these cases.  Be sure to test thoroughly and use a debugger or
;   debug viewer to see any errors that may occur.
;
; Font:
;
;   p_Font is an optional parameter that allows the developer to set a specific
;   font for the Edit_SpellCheckGUI window.  The syntax is:
;   {FontName}:{FontOptions}.  Ex: "Arial:s10 bold".  All components of this
;   parameter are optional.  If a typeface name is not specified (Ex: ":s12
;   bold"), the default system GUI font is used.  If no font options are
;   specified (Ex: "Arial" or "Arial:"), the default font options are used.  See
;   the AutoHotkey documentation for a list of (and syntax of) font options.
;
;   Exception/Feature: If the p_Font parameter is set to "Message", the system
;   font used for Message Box dialog is used.  In general, this font is a bit
;   larger and easier to read than the default GUI font.
;
; Owner:
;
;   The p_Owner parameter is used to specify the owner of the Edit_SpellCheckGUI
;   window. Set to 0 for no owner.
;
;   For an AutoHotkey owner window, specify a valid GUI number (1-99), GUI name,
;   or handle to the window.  When the Edit_SpellCheckGUI window is created, the
;   owner window is disabled and ownership of the Edit_SpellCheckGUI window is
;   assigned to the owner window.  This makes makes the Edit_SpellCheckGUI
;   window modal which prevents the user from interacting with the owner window
;   until the Edit_SpellCheckGUI window is closed.
;
;   For a non-AutoHotkey owner window, specify the handle to the window.
;   Ownership is not assigned but the window's position and size is use to
;   position the Edit_SpellCheckGUI window.
;
;   If p_Owner is not specified or is set to the handle of a non-AutoHotkey
;   window, the AlwaysOnTop attribute is added to the Edit_SpellCheckGUI window
;   to ensure that the dialog is not lost.
;
;   For all owner windows, the Edit_SpellCheckGUI window is positioned in the
;   center of the owner window by default.
;
;   If p_Owner is zero (0), null, or contains a non-AutoHotkey GUI window
;   handle, the function will still work but the user will have the ability to
;   update the edit control while the spell check is running.  The function has
;   been designed to deal will most idiosyncrasies but there is still a chance
;   that changes to the edit control will interfere with the spell check
;   operation.  Since the function does not return until the spell check is
;   finished or is canceled, consider setting the edit control to read-only
;   while the spell check is operating if p_Owner is undefined.  Changes to the
;   document, if any, will still occur but the user will be blocked from making
;   manual changes.  For example:
;
;       (start code)
;       Edit_SetReadOnly(hEdit,True)
;       Edit_SpellCheckGUI(0,...)
;       Edit_SetReadOnly(hEdit,False)
;       (end)
;
; Setup and Shutdown:
;
;   This function uses v2.0+ of the Spell library to check the spelling of the
;   words in an Edit control.  This function only uses an existing spell object.
;   The parent script (i.e. your script) is responsible for creating, populating
;   (initially), and destroying the spell object.
;
;   To initialize the spell object, call the *Spell_Init* function.  This
;   command will create the spell object and will populate it with words and
;   rules from the specified Hunspell dictionary.  To load one or more custom
;   dictionaries to the spell object, call the *Spell_InitCustom* function.
;
;   The *Spell_Uninit* function is used to destroy the spell object and free up
;   all the memory used by the Hunspell API.  It can be called at any time after
;   this function ends but it should, at the least, be called before the script
;   ends.
;
;   See the example script for this function for an example of how to add the
;   necessary commands to initialize and destroy the spell object.
;
; Remarks:
;
; * The function does not return until the Spell Check is finished or is
;   cancelled.
;
; * Although not a requirement, adding the ES_NOHIDESEL style to the Edit
;   control when it is created improves usability by continuing to show the
;   selected text on the Edit control even when the Edit_SpellCheckGUI dialog is
;   active.  Note that the ES_NOHIDESEL style cannot be added after the Edit
;   control has been created.
;
; * Checking the spelling of a document is a resource intensive process.  If the
;   document is relatively small (<15K, ~2,500 words or less), response from
;   this module is nearly instananeous -- much less that 1 second on the high
;   end.  However, the response will start to degrade more and more as the
;   document size increases past this threshhold.  To improve performance, set
;   *<SetBatchLines at https://autohotkey.com/docs/commands/SetBatchLines.htm>*
;    to a high value before calling this function.  For example:
;
;       (start code)
;       SetBatchLines 200ms  ;-- Significant bump in priority
;       Edit_SpellCheckGUI(...)
;       SetBatchLines 10ms   ;-- This is the system default
;       (end)
;
;-------------------------------------------------------------------------------
Edit_SpellCheckGUI(p_Owner,hEdit,byRef hSpell,p_CustomDic="",p_Title="",p_Font="")
    {
    ;[===================]
    ;[  Already exists?  ]
    ;[===================]
    ;-- Bounce (with prejudice) if a Edit_SpellCheckGUI window already showing
    gui Edit_SpellCheckGUI:+LastFoundExist
    IfWinExist
        {
        outputdebug,
           (ltrim join`s
            End Func: %A_ThisFunc% -
            A %A_ThisFunc% window already exists.
           )

        SoundPlay *-1  ;-- System default beep
        Return False
        }

    ;[==============]
    ;[  Initialize  ]
    ;[==============]
    ;-- Flags
    l_GetText:=True

    ;-- Identify RegEx pattern codes
    PatternCodes=
       (ltrim join,
        39,138,142,146,154,158
        192-200
        201-214,216-246,248-255
        339
       )

    ;-- Build RegEx pattern
    l_RegExPattern:="["
    Loop Parse,PatternCodes,`,
        {
        l_StartCode:=l_EndCode:=A_LoopField
        if A_LoopField Contains -
            Loop Parse,A_LoopField,-
                if (A_Index=1)
                    l_StartCode:=A_LoopField
                  else
                    {
                    l_EndCode:=A_LoopField
                    Break
                    }

        l_Code:=l_StartCode+0  ;-- Assign and convert to decimal if needed
        Loop
            {
            if A_IsUnicode or (l_Code<=255)
                l_RegExPattern.=Chr(l_Code)
             else
                {
                VarSetCapacity(wChar,4,0)
                NumPut(l_Code,wChar,0,"UInt")
                Spell_Unicode2ANSI(&wChar,aChar)
                l_RegExPattern.=aChar
                }

            l_Code++
            if (l_Code>l_EndCode)
                Break
            }
        }

    l_RegExPattern.="\w]+"

    ;[==================]
    ;[    Parameters    ]
    ;[  (Set defaults)  ]
    ;[==================]
    ;-- Owner
    if p_Owner  ;-- Not null/zero
        {
        ;-- Assign to hOwner if p_Owner is a valid window handle
        hOwner:=WinExist("ahk_id " . p_Owner)

        ;-- Determine if p_Owner is a valid AutoHotkey window and if so,
        ;   identify the window handle.  Note: The Try command is used because
        ;   AutoHotkey will generate a run-time error if p_Owner is not a valid
        ;   GUI number (1 thru 99), a valid GUI name, or a window handle that is
        ;   not an AutoHotkey GUI.
        Try
            {
            gui %p_Owner%:+LastFoundExist
            IfWinExist
                {
                gui %p_Owner%:+LastFound
                hOwner:=WinExist()
                }
             else  ;-- GUI not found
                p_Owner:=0
            }
         Catch  ;-- Not an AutoHotkey GUI
            p_Owner:=0
        }

    ;-- Custom dictionary
    ;   Note: The Spell library is already able to handle an invalid custom
    ;   dictionary path.  However, additional tests are performed here so that
    ;   the "Add Word" button is enabled/disabled appropriately.
    if StrLen(p_CustomDic)
        {
        IfNotExist %p_CustomDic%
            {
            outputdebug,
               (ltrim join`s
                Function: %A_ThisFunc% -
                Custom dictionary not found: %p_CustomDic%. "Add Word" button
                disabled.
               )

            p_CustomDic:=""
            }
        else
            ;-- Read only?
            if InStr(FileExist(p_CustomDic),"R")
                {
                outputdebug,
                   (ltrim join`s
                    Function: %A_ThisFunc% -
                    Read-only attribute set on the custom dictionary file. "Add
                    Word" button disabled.
                   )

                p_CustomDic:=""
                }
        }

    ;-- Title
    p_Title:=Trim(p_Title," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    if not StrLen(p_Title)
        p_Title:="Spell Check"
     else
        {
        ;-- Append to script name if p_title begins with "++"?
        if (SubStr(p_Title,1,2)="++")
            {
            SplitPath A_ScriptName,,,,l_ScriptName
            StringTrimLeft p_Title,p_Title,2
            p_Title:=l_ScriptName . A_Space . p_Title
            }
        }

    ;-- Font
    p_Font:=Trim(p_Font," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    if p_Font
        Loop Parse,p_Font,:
            if (A_Index=1)
                l_FontName:=A_LoopField
             else
                {
                l_FontOptions:=A_LoopField
                Break
                }

    ;[========]
    ;[  Font  ]
    ;[========]
    ;-- Create logical font to calculate the width/height of GUI objects
    ;   If needed, set/update the l_FontName and l_FontOptions variables
    h_Font:=0
    if l_FontName or l_FontOptions
        {
        if (l_FontName="Message")
            {
            l_FontName:=Fnt_GetMessageFontName()
            if not Fnt_FOGetSize(l_FontOptions)
                Fnt_FOSetSize(l_FontOptions,Fnt_GetMessageFontSize())
            }

        hFont:=Fnt_CreateFont(l_FontName,l_FontOptions)
        }

    ;-- Margins
    l_MarginX:=l_MarginY:=Round(Fnt_GetFontSize(hFont)*0.75)

    ;-- Object width
    Fnt_DialogTemplateUnits2Pixels(hFont,132,0,l_ObjectW)
        ;-- Enough space for ~32 average characters of the font

    ;-- Button width
    Fnt_GetStringSize(hFont,"Replace Allxxi",l_ButtonW)
    if Fnt_IsFixedPitchFont(hFont)
        l_ButtonW-=Fnt_GetFontAvgCharWidth(hFont)

    ;-- Delete logical font
    Fnt_DeleteFont(hFont)

    ;[=============]
    ;[  Build GUI  ]
    ;[=============]
    ;-- Set ownership
    ;   Note: Ownership commands must be performed before any other GUI commands
    if p_Owner
        {
        gui %p_Owner%:+Disabled      ;-- Disable Owner window
        gui Edit_SpellCheckGUI:+Owner%p_Owner%  ;-- Set ownership
        }
     else
        gui Edit_SpellCheckGUI:+Owner           ;-- Give ownership to the script window

    ;---------------
    ;-- GUI options
    ;---------------
    gui Edit_SpellCheckGUI:-DPIScale +Delimiter`n +hWndhEdit_SpellCheckGUI +LabelEdit_SpellCheckGUI_ -MinimizeBox
    gui Edit_SpellCheckGUI:Margin,%l_MarginX%,%l_MarginY%
    if not p_Owner
        gui Edit_SpellCheckGUI:+AlwaysOnTop

    ;-- GUI font
    if l_FontName or l_FontOptions
        gui Edit_SpellCheckGUI:Font,%l_FontOptions%,%l_FontName%

    ;---------------
    ;-- GUI objects
    ;---------------
    gui Edit_SpellCheckGUI:Font,cNavy
    gui Edit_SpellCheckGUI:Add
       ,Text
       ,% ""
            . "xm "
            . "w" . l_ObjectW . A_Space
            . "r2 "
            . "hWndhStatusText "
       ,Checking...  ;-- Initial value

    ;-- Reset font
    gui Edit_SpellCheckGUI:Font
    if l_FontName or l_FontOptions
        gui Edit_SpellCheckGUI:Font,%l_FontOptions%,%l_FontName%

    gui Edit_SpellCheckGUI:Add
       ,Text
       ,xm
       ,Replace with:

    Static Edit_SpellCheckGUI_ReplaceWith
    gui Edit_SpellCheckGUI:Add
       ,Edit
       ,% ""
            . "xm y+1 "
            . "w" . l_ObjectW . A_Space
            . "hWndhReplaceWith "
            . "vEdit_SpellCheckGUI_ReplaceWith "
            . "gEdit_SpellCheckGUI_ReplaceWithAction "

    gui Edit_SpellCheckGUI:Add
       ,Text
       ,% ""
            . "xm "
            . "w" . l_ObjectW . A_Space
            . "r1 "
            . "hWndhSuggestionsTitle "

    Static Edit_SpellCheckGUI_Suggestions
    gui Edit_SpellCheckGUI:Add
       ,ListBox
       ,% ""
            . "xm y+1 "
            . "w" . l_ObjectW . A_Space
            . "r6 "
            . "hWndhSuggestions "
            . "vEdit_SpellCheckGUI_Suggestions "
            . "gEdit_SpellCheckGUI_SuggestionsAction "

    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "ym "
            . "w" . l_ButtonW . A_Space
            . "gEdit_SpellCheckGUI_Ignore"
       ,&Ignore

    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "y+0 wp hp "
            . "gEdit_SpellCheckGUI_IgnoreAll "
       ,I&gnore All

    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "y+" . l_MarginY*2 . A_Space
            . "wp hp "
            . "Default "
            . "Disabled "
            . "hWndhReplaceButton "
            . "gEdit_SpellCheckGUI_Replace "
       ,&Replace

    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "y+0 wp hp "
            . "Disabled "
            . "hWndhReplaceAllButton "
            . "gEdit_SpellCheckGUI_ReplaceAll "
       ,Replace &All

    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "y+" . l_MarginY*2 . A_Space
            . "wp hp "
            . (StrLen(p_CustomDic)=0 ? "Disabled ":"")
            . "hWndhAddWordButton "
            . "gEdit_SpellCheckGUI_Add "
       ,A&dd Word

    Static Edit_SpellCheckGUI_Close
    gui Edit_SpellCheckGUI:Add
       ,Button
       ,% ""
            . "y+" . l_MarginY*2 . A_Space
            . "wp hp "
            . "vEdit_SpellCheckGUI_Close "
            . "gEdit_SpellCheckGUI_Close "
       ,Cancel

    ;-- Reposition the Close button
    GUIControlGet $Group1Pos,Edit_SpellCheckGUI:Pos,Edit_SpellCheckGUI_Suggestions
    GUIControlGet $Group2Pos,Edit_SpellCheckGUI:Pos,Edit_SpellCheckGUI_Close
    GUIControl
        ,Edit_SpellCheckGUI:Move
        ,Edit_SpellCheckGUI_Close
        ,% "y" . $Group1PosY+$Group1PosH-$Group2PosH

    ;[=====================]
    ;[  Render & Position  ]
    ;[=====================]
    if hOwner
        {
        ;-- Render but don't show
        gui Edit_SpellCheckGUI:Show,Hide,%p_Title%

        ;-- Move (center) and show window
        MoveChildWindow(hOwner,hEdit_SpellCheckGUI,"Show")
        }
     else
        gui Edit_SpellCheckGUI:Show,,%p_Title%

    ;-- Give the window a chance to show
    Sleep 1

    ;[=========]
    ;[  Start  ]
    ;[=========]
    Edit_GetSel(hEdit,l_OriginalStartSelPos,l_OriginalEndSelPos)
    l_StartSpellCheckRange:=l_OriginalStartSelPos
    if (l_OriginalStartSelPos=l_OriginalEndSelPos)
        {
        l_EndSpellCheckRange:=Edit_GetTextLength(hEdit)
        Edit_SetSel(hEdit,0,0)
        }
     else
        {
        l_EndSpellCheckRange:=l_OriginalEndSelPos
        Edit_SetSel(hEdit,l_OriginalStartSelPos,l_OriginalStartSelPos)
        }

    gosub Edit_SpellCheckGUI_ContinueSpellCheck

    ;[=====================]
    ;[  Wait until window  ]
    ;[      is closed      ]
    ;[=====================]
    WinWaitClose ahk_id %hEdit_SpellCheckGUI%

    ;[===================]
    ;[  Post processing  ]
    ;[===================]
    ;-- Reselect or position caret
    if (l_OriginalStartSelPos<>l_OriginalEndSelPos)
        Edit_SetSel(hEdit,l_OriginalStartSelPos,l_OriginalEndSelPos)
     else
        {
        ;-- Anything selected?
        Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
        if (l_StartSelPos<>l_EndSelPos)
            Edit_SetSel(hEdit,l_EndSelPos,l_EndSelPos)
        }

    Return True  ;-- End of function


    ;******************************
    ;*                            *
    ;*         Subroutines        *
    ;*    (Edit_SpellCheckGUI)    *
    ;*                            *
    ;******************************
    Edit_SpellCheckGUI_Checking:
    SetTimer %A_ThisLabel%,Off
    GUIControl Edit_SpellCheckGUI:,%hStatusText%,Checking...
    return


    Edit_SpellCheckGUI_ContinueSpellCheck:

    ;-- Disable while checking
    ;   Note: This keeps the user from doing anything with the dialog (Ex:
    ;   pressing buttons) while the spell check is going on.
    gui Edit_SpellCheckGUI:+Disabled

    ;-- Update the text control if needed
    SetTimer Edit_SpellCheckGUI_Checking,150

    ;-- Start from the current position
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
    l_StartPos:=l_EndSelPos
    Loop
        {
        ;-- If needed, collect the text from the edit control
        if l_GetText
            {
            l_Text:=Edit_GetText(hEdit)
            l_GetText:=False
            }

        ;-- Find the next word
        l_FoundPos:=RegExMatch(l_Text,l_RegExPattern,l_RegExOut,l_StartPos+1)-1

        ;-- No more words or out of range?
        if (l_FoundPos=-1 or l_FoundPos>l_EndSpellCheckRange)
            {
            SetTimer Edit_SpellCheckGUI_Checking,Off
            l_GetText:=True

            ;-- Inform/Prompt user
            gui Edit_SpellCheckGUI:+OwnDialogs
            if (l_OriginalStartSelPos=l_OriginalEndSelPos)
                MsgBox
                    ,0x40   ;-- 0x40 (Info icon) + 0x0 (OK button)
                    ,Spell Check
                    ,Spell Check complete.  %A_Space%
             else
                {
                MsgBox
                    ,0x24     ;-- 0x20 (Question icon) + 0x4 (Yes/No Buttons)
                    ,Spell Check,
                       (ltrim join`s
                        Finished Spell Check for selection.  Continue checking
                        the remainder of the document?  %A_Space%
                       )

                IfMsgBox Yes
                    {
                    l_OriginalStartSelPos:=l_OriginalEndSelPos
                    l_EndSpellCheckRange:=Edit_GetTextLength(hEdit)
                    l_StartPos:=0
                    Continue
                    }
                }

            gosub Edit_SpellCheckGUI_Close
            Break
            }

        ;-- Check spelling
        if Spell_Spell(hSpell,l_RegExOut)
            {
            l_StartPos:=l_FoundPos+StrLen(l_RegExOut)
            Continue
            }
         else
            {
            ;-- Select it
            l_SelectedText:=l_RegExOut
            Edit_SetSel(hEdit,l_FoundPos,l_FoundPos+StrLen(l_SelectedText))

            ;-- Is the misspelled word on the l_ReplaceAllList?
            if StrLen(l_ReplaceAllList)
                {
                l_ReplaceAllReplace:=False
                Loop Parse,l_ReplaceAllList,`n
                    {
                    l_ReplaceWhat:=""
                    l_ReplaceWith:=""
                    Loop Parse,A_LoopField,|
                        if (A_Index=1)
                            l_ReplaceWhat:=A_LoopField
                         else
                            l_ReplaceWith:=A_LoopField

                    if (l_SelectedText==l_ReplaceWhat)
                        {
                        Edit_ReplaceSel(hEdit,l_ReplaceWith)
                        l_ReplaceAllReplace:=True
                        Break
                        }
                    }

                if l_ReplaceAllReplace
                    {
                    l_GetText:=True
                    l_StartPos:=l_FoundPos+StrLen(l_ReplaceWith)
                    Continue ;-- Go on to the next
                    }
                }

            ;-- If the function doesn't have any control over the edit control
            ;   or the window that contains the edit control, then reset the
            ;   search on the next iteration.  This is done just in case the
            ;   user makes changes to the edit control while the dialog is
            ;   waiting for a response.
            if !p_Owner and !Edit_IsReadOnly(hEdit)
                l_GetText:=True

            ;-- Turn off the "Checking..." timer
            SetTimer Edit_SpellCheckGUI_Checking,Off

            ;-- Scroll to the top
            Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)
            l_CurrentLine     :=Edit_LineFromChar(hEdit,l_StartSelPos)
            l_FirstVisibleLine:=Edit_GetFirstVisibleLine(hEdit)
            Edit_LineScroll(hEdit,0,l_CurrentLine-l_FirstVisibleLine)
            Edit_ScrollCaret(hEdit)  ;-- Just in case the caret is not showing

            ;-- Get list of suggestions and populate
            ;   Note: This step is performed first because the Spell_Suggest
            ;   function can take a while for some dictionaries.  Ex: French.
            ;   Waiting until the suggest list is updated gives the dialog the
            ;   illusion that all the information is updated at the same time.
            if Spell_Suggest(hSPell,l_SelectedText,l_Suggestions)
                {
                GUIControl Edit_SpellCheckGUI:,%hSuggestionsTitle%,Suggestions:
                GUIControl Edit_SpellCheckGUI:,%hSuggestions%,`n%l_Suggestions%
                GUIControl Edit_SpellCheckGUI:Choose,%hSuggestions%,1
                }
             else
                {
                GUIControl Edit_SpellCheckGUI:,%hSuggestionsTitle%,There are no suggestions for this word.
                GUIControl Edit_SpellCheckGUI:,%hSuggestions%,`n
                }

            ;-- Set "word is not in the dictionary" message.
            GUIControl Edit_SpellCheckGUI:,%hStatusText%,"%l_SelectedText%" not in the dictionary.

            ;-- Set ReplaceWith
            gui Edit_SpellCheckGUI:Submit,NoHide  ;-- Recollect form values
            GUIControl Edit_SpellCheckGUI:,%hReplaceWith%,%Edit_SpellCheckGUI_Suggestions%

            ;-- Set focus
            GUIControl Edit_SpellCheckGUI:Focus,%hSuggestions%

            ;-- Enable window
            gui Edit_SpellCheckGUI:-Disabled

            ;-- We're done here
            Break
            }
        }

    return


    Edit_SpellCheckGUI_ReplaceWithAction:
    gui Edit_SpellCheckGUI:Submit,NoHide

    if Edit_SpellCheckGUI_ReplaceWith is not Space
        {
        GUIControl Edit_SpellCheckGUI:Enable,%hReplaceButton%
        GUIControl Edit_SpellCheckGUI:Enable,%hReplaceAllButton%
        }
     else
        {
        GUIControl Edit_SpellCheckGUI:Disable,%hReplaceButton%
        GUIControl Edit_SpellCheckGUI:Disable,%hReplaceAllButton%
        }

    return


    Edit_SpellCheckGUI_SuggestionsAction:
    gui Edit_SpellCheckGUI:Submit,NoHide
    if (A_GUIEvent="DoubleClick")
        {
        gosub Edit_SpellCheckGUI_Replace
        return
        }

    ;-- Update ReplaceWith
    GUIControl Edit_SpellCheckGUI:,%hReplaceWith%,%Edit_SpellCheckGUI_Suggestions%
    return


    Edit_SpellCheckGUI_Ignore:
    gosub Edit_SpellCheckGUI_ContinueSpellCheck
    return


    Edit_SpellCheckGUI_IgnoreAll:
    Spell_Add(hSpell,l_SelectedText,"L")
    gosub Edit_SpellCheckGUI_ContinueSpellCheck
    return


    Edit_SpellCheckGUI_Replace:
    gui Edit_SpellCheckGUI:Submit,NoHide
    Edit_SpellCheckGUI_ReplaceWith:=Trim(Edit_SpellCheckGUI_ReplaceWith," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space
    Edit_ReplaceSel(hEdit,Edit_SpellCheckGUI_ReplaceWith)
    l_GetText:=True
    gosub Edit_SpellCheckGUI_ContinueSpellCheck
    return


    Edit_SpellCheckGUI_ReplaceAll:
    gui Edit_SpellCheckGUI:Submit,NoHide
    Edit_SpellCheckGUI_ReplaceWith:=Trim(Edit_SpellCheckGUI_ReplaceWith," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space
    Edit_ReplaceSel(hEdit,Edit_SpellCheckGUI_ReplaceWith)

    ;-- Add to l_ReplaceAllList
    l_ReplaceAllList.=(StrLen(l_ReplaceAllList) ? "`n":"")
        . l_SelectedText
        . "|"
        . Edit_SpellCheckGUI_ReplaceWith

    l_GetText:=True
    gosub Edit_SpellCheckGUI_ContinueSpellCheck
    return


    Edit_SpellCheckGUI_Add:

    ;-- Add the word to the custom dictionary file
    if (Spell_AddCustom(p_CustomDic,l_SelectedText)=-1)
        {
        gui Edit_SpellCheckGUI:+OwnDialogs
        MsgBox
            ,0x10   ;-- 0x0 (OK button) + 0x10 (Error icon)
            ,Spell Check,
               (ltrim join`s
                Unable to add the word "%l_SelectedText%" to the custom
                dictionary file.  The file may be protected or is stored in a
                protected location.
               )

        GUIControl Edit_SpellCheckGUI:Disable,%hAddWordButton%
        return
        }

    ;-- Add the word to the active dictionary
    Spell_Add(hSpell,l_SelectedText)

    ;-- Continue checking
    gosub Edit_SpellCheckGUI_ContinueSpellCheck
    return


    Edit_SpellCheckGUI_Escape:
    Edit_SpellCheckGUI_Close:

    ;-- Enable Owner window
    if p_Owner
        gui %p_Owner%:-Disabled

    ;-- Destroy the Edit_SpellCheckGUI window so that it can be reused
    gui Edit_SpellCheckGUI:Destroy
    return  ;-- End of subroutines
    }

































;   ______    _ _ _      _____            _          _     _    
;  |  ____|  | (_) |    / ____|          | |        | |   | |   
;  | |__   __| |_| |_  | (___   ___  _ __| |_   __ _| |__ | | __
;  |  __| / _` | | __|  \___ \ / _ \| '__| __| / _` | '_ \| |/ /
;  | |___| (_| | | |_   ____) | (_) | |  | |_ | (_| | | | |   < 
;  |______\__,_|_|\__| |_____/ \___/|_|   \__(_)__,_|_| |_|_|\_\
;                  ______                                       
;                 |______|                                      


;-----------------------------
;
; Function: Edit_Sort
;
; Description:
;
;   Sort selected text (one or more lines) using the p_SortOptions options.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_SortOptions - AutoHotkey sort options. [Optional]
;
; Calls To Other Functions:
;
; * <Edit_GetSel>
; * <Edit_GetSelText>
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineLength>
; * <Edit_LineScroll>
; * <Edit_ReplaceSel>
; * <Edit_SetSel>
;
; Remarks:
;
; * Undo can be used to reverse this action.
;
; * If selecting more than one line, this function may not work correctly if
;   word wrap is enabled unless all selected lines are not wrapped.
;
; * Hint: Don't specify a delimiter if sorting more than one line.
;
;-------------------------------------------------------------------------------
Edit_Sort(hEdit,p_SortOptions="")
    {
    ;[===============]
    ;[  Preliminary  ]
    ;[===============]
    ;-- Get user's select positions
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)

    ;-- Get line indexes of the beginning and end of the selection
    l_FirstSelectedLine:=Edit_LineFromChar(hEdit,l_StartSelPos)
    l_LastSelectedLine :=Edit_LineFromChar(hEdit,l_EndSelPos)

    ;-- Get first character index of the first selected line
    l_FirstPosOfFirstSelectedLine:=Edit_LineIndex(hEdit,l_FirstSelectedLine)

    ;-- Decrement l_LastSelectedLine if selection ends with EOL
    if (l_FirstSelectedLine<>l_LastSelectedLine)
        if (l_EndSelPos=Edit_LineIndex(hEdit,l_LastSelectedLine))
            l_LastSelectedLine--

    ;-- Determine last character index of affected lines
    l_LastPosOfLastSelectedLine:=Edit_LineIndex(hEdit,l_LastSelectedLine)+Edit_LineLength(hEdit,l_LastSelectedLine)

    ;[=============]
    ;[  Reselect?  ]
    ;[=============]
    ;-- If sorting more than one line, reselect if the user selection does not
    ;   start at the beginning of the line or does not end at the end of the
    ;   line
    if (l_FirstSelectedLine<>l_LastSelectedLine)
        if (l_StartSelPos<>l_FirstPosOfFirstSelectedLine)
        or (l_EndSelPos<>l_LastPosOfLastSelectedLine)
            Edit_SetSel(hEdit
                       ,l_FirstPosOfFirstSelectedLine
                       ,l_LastPosOfLastSelectedLine)

    ;[=====================]
    ;[  Get selected text  ]
    ;[=====================]
    l_SelectedText:=Edit_GetSelText(hEdit)

    ;[========]
    ;[  Sort  ]
    ;[========]
    Sort l_SelectedText,%p_SortOptions%

    ;-- Replace selection with sorted data
    Edit_ReplaceSel(hEdit,l_SelectedText)

    ;[============]
    ;[  Reselect  ]
    ;[============]
    ;-- Calculate reselect positions
    if (l_FirstSelectedLine=l_LastSelectedLine)
        {
        l_NewStartSelPos:=l_StartSelPos
        l_NewEndSelPos:=  l_StartSelPos+StrLen(l_SelectedText)
        }
     else
        {
        l_NewStartSelPos:=l_FirstPosOfFirstSelectedLine
        l_NewEndSelPos  :=l_FirstPosOfFirstSelectedLine+StrLen(l_SelectedText)
        if (l_EndSelPos>l_LastPosOfLastSelectedLine)
            l_NewEndSelPos+=l_EndSelPos-l_LastPosOfLastSelectedLine
        }

    Edit_SetSel(hEdit,l_NewStartSelPos,l_NewEndSelPos)

    ;[==============]
    ;[  Reposition  ]
    ;[==============]
    Edit_LineScroll(hEdit,"Left")
        ;-- Fixes a display problem that sometimes occurs if doing stuff with
        ;   lines that are wider than the control
    }











































;   ______    _ _ _      _____      _           _   _      _                   _     _    
;  |  ____|  | (_) |    / ____|    | |         | | | |    (_)                 | |   | |   
;  | |__   __| |_| |_  | (___   ___| | ___  ___| |_| |     _ _ __   ___   __ _| |__ | | __
;  |  __| / _` | | __|  \___ \ / _ \ |/ _ \/ __| __| |    | | '_ \ / _ \ / _` | '_ \| |/ /
;  | |___| (_| | | |_   ____) |  __/ |  __/ (__| |_| |____| | | | |  __/| (_| | | | |   < 
;  |______\__,_|_|\__| |_____/ \___|_|\___|\___|\__|______|_|_| |_|\___(_)__,_|_| |_|_|\_\
;                  ______                                                                 
;                 |______|                                                                


;-----------------------------
;
; Function: Edit_SelectLine
;
; Description:
;
;   Selects the specified zero-based line.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_LineIdx - The zero-based index of the line to select. [Optional]  Use
;        -1 (the default) to select the current line.
;
;   p_IncludeEOL - Include end-of-line (EOL) characters. [Optional]  If set to
;       TRUE, the EOL characters (CR+LF) after the line are also selected if
;       they exist.
;
; Returns:
;
;   TRUE if the requested line is selected, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_GetLineCount>
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineLength>
; * <Edit_SetSel>
;
; Remarks:
;
;   This function may not work as expected if word wrap is used or if selecting
;   a very long (>1024) line.
;
;-------------------------------------------------------------------------------
Edit_SelectLine(hEdit,p_LineIdx=-1,p_IncludeEOL=False)
    {
    if (p_LineIdx<0)
        p_LineIdx:=Edit_LineFromChar(hEdit,Edit_LineIndex(hEdit))

    l_MaxLine:=Edit_GetLineCount(hEdit)-1
    if (p_LineIdx>l_MaxLine)
        Return False

    l_StartSelPos:=Edit_LineIndex(hEdit,p_LineIdx)
    l_EndSelPos  :=l_StartSelPos+Edit_LineLength(hEdit,p_LineIdx)
    if p_IncludeEOL
        if (p_LineIdx<l_MaxLine)
            l_EndSelPos+=2

    Edit_SetSel(hEdit,l_StartSelPos,l_EndSelPos)
    Return True
    }








































;   ______    _ _ _     _____              _ _           _              _     _    
;  |  ____|  | (_) |   |  __ \            | (_)         | |            | |   | |   
;  | |__   __| |_| |_  | |  | |_   _ _ __ | |_  ___ __ _| |_ ___   __ _| |__ | | __
;  |  __| / _` | | __| | |  | | | | | '_ \| | |/ __/ _` | __/ _ \ / _` | '_ \| |/ /
;  | |___| (_| | | |_  | |__| | |_| | |_) | | | (_| (_| | ||  __/| (_| | | | |   < 
;  |______\__,_|_|\__| |_____/ \__,_| .__/|_|_|\___\__,_|\__\___(_)__,_|_| |_|_|\_\
;                  ______           | |                                            
;                 |______|          |_|                                            


;-----------------------------
;
; Function: Edit_Duplicate
;
; Description:
;
;   Duplicate selected text.  If nothing is selected, the entire line is
;   duplicated.
;
; Type:
;
;   Add-on function.
;
; Calls To Other Functions:
;
; * <Edit_GetSel>
; * <Edit_GetSelText>
; * <Edit_LineFromChar>
; * <Edit_LineIndex>
; * <Edit_LineLength>
; * <Edit_LineScroll>
; * <Edit_ReplaceSel>
; * <Edit_ScrollCaret>
; * <Edit_SetSel>
;
; Remarks:
;
; * Undo can be used to reverse this action.
;
; * If the selection includes end-of-line (EOL) characters, i.e. the selection
;   and the caret are on more than one line, the text will be reselected (if
;   necessary) to include the entire line(s).
;
; * If duplicating lines, this function may not work correctly if word wrap is
;   enabled unless all affected lines are not wrapped.
;
;-------------------------------------------------------------------------------
Edit_Duplicate(hEdit)
    {
    ;-- Initialize
    l_LastSelectedLineIncludesEOL:=False

    ;[===============]
    ;[  Preliminary  ]
    ;[===============]
    ;-- Get user's select positions
    Edit_GetSel(hEdit,l_StartSelPos,l_EndSelPos)

    ;-- Get line indexes of the beginning and end of the selection
    l_FirstSelectedLine:=Edit_LineFromChar(hEdit,l_StartSelPos)
    l_LastSelectedLine :=Edit_LineFromChar(hEdit,l_EndSelPos)

    ;-- Get first character index of the first selected line
    l_FirstPosOfFirstSelectedLine:=Edit_LineIndex(hEdit,l_FirstSelectedLine)

    ;-- Decrement l_LastSelectedLine if selection ends with EOL
    if (l_FirstSelectedLine<>l_LastSelectedLine)
        if (l_EndSelPos=Edit_LineIndex(hEdit,l_LastSelectedLine))
            {
            l_LastSelectedLine--
            l_LastSelectedLineIncludesEOL:=True
            }

    ;-- Determine last character index of affected lines
    l_LastPosOfLastSelectedLine:=Edit_LineIndex(hEdit,l_LastSelectedLine)+Edit_LineLength(hEdit,l_LastSelectedLine)

    ;[=============]
    ;[  Reselect?  ]
    ;[=============]
    ;-- Nothing originally selected?
    if (l_StartSelPos=l_EndSelPos)
        {
        ;-- Select entire line
        Edit_SetSel(hEdit
                   ,l_FirstPosOfFirstSelectedLine
                   ,l_LastPosOfLastSelectedLine)

        l_LastSelectedLineIncludesEOL:=True
        }
     else
        ;-- If duplicating more than one line or if the only line selected
        ;   includes EOL characters, reselect if the user selection does not
        ;   start at the beginning of the line or does not end at the end of the
        ;   line
        if (l_FirstSelectedLine<>l_LastSelectedLine)
        or l_LastSelectedLineIncludesEOL
            if (l_StartSelPos<>l_FirstPosOfFirstSelectedLine)
            or (l_EndSelPos<>l_LastPosOfLastSelectedLine)
                Edit_SetSel(hEdit
                           ,l_FirstPosOfFirstSelectedLine
                           ,l_LastPosOfLastSelectedLine)

    ;-- Get selected text
    l_SelectedText:=Edit_GetSelText(hEdit)

    ;[=============]
    ;[  Duplicate  ]
    ;[=============]
    if (l_FirstSelectedLine<>l_LastSelectedLine)
    or l_LastSelectedLineIncludesEOL
        l_NewText:=l_SelectedText . "`r`n" . l_SelectedText
     else
        l_NewText:=l_SelectedText . l_SelectedText

    ;-- Replace selected text with new text
    Edit_ReplaceSel(hEdit,l_NewText)

    ;[============]
    ;[  Reselect  ]
    ;[============]
    ;-- Calculate reselect positions
     if (l_StartSelPos=l_EndSelPos)
        {
        l_NewStartSelPos:=l_StartSelPos
        l_NewEndSelPos:=  l_EndSelPos
        }
      else
         if (l_FirstSelectedLine=l_LastSelectedLine)
        and not l_LastSelectedLineIncludesEOL
            {
            l_NewStartSelPos:=l_StartSelPos
            l_NewEndSelPos:=  l_StartSelPos+StrLen(l_SelectedText)
            }
         else
            {
            l_NewStartSelPos:=l_FirstPosOfFirstSelectedLine
            l_NewEndSelPos  :=l_FirstPosOfFirstSelectedLine+StrLen(l_SelectedText)
            if (l_EndSelPos>l_LastPosOfLastSelectedLine)
                l_NewEndSelPos += l_EndSelPos-l_LastPosOfLastSelectedLine
            }

    Edit_SetSel(hEdit
             ,l_NewStartSelPos
             ,l_NewEndSelPos)

    ;[==============]
    ;[  Reposition  ]
    ;[==============]
    Edit_ScrollCaret(hEdit)
        ;-- This keeps the original selection in view

    Edit_LineScroll(hEdit,"Left")
        ;-- Fixes a display problem that sometimes occurs if adding lines that
        ;   are wider than the control
    }




































;   ______    _ _ _     _____       _      _       _      _                   _     _    
;  |  ____|  | (_) |   |  __ \     | |    | |     | |    (_)                 | |   | |   
;  | |__   __| |_| |_  | |  | | ___| | ___| |_ ___| |     _ _ __   ___   __ _| |__ | | __
;  |  __| / _` | | __| | |  | |/ _ \ |/ _ \ __/ _ \ |    | | '_ \ / _ \ / _` | '_ \| |/ /
;  | |___| (_| | | |_  | |__| |  __/ |  __/ ||  __/ |____| | | | |  __/| (_| | | | |   < 
;  |______\__,_|_|\__| |_____/ \___|_|\___|\__\___|______|_|_| |_|\___(_)__,_|_| |_|_|\_\
;                  ______                                                                
;                 |______|                                                               

;-----------------------------
;
; Function: Edit_DeleteLine
;
; Description:
;
;   Deletes the specified zero-based line.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_LineIdx - The zero-based index of the line to delete. [Optional]  Use
;        -1 (the default) to delete the current line.
;
; Returns:
;
;   TRUE if the requested line is deleted, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_Clear>
; * <Edit_SelectLine> (Add-On)
;
; Remarks:
;
; - Undo can be used to reverse this action.
;
;-------------------------------------------------------------------------------
Edit_DeleteLine(hEdit,p_LineIdx=-1)
    {
    if Edit_SelectLine(hEdit,p_LineIdx,True)
        {
        Edit_Clear(hEdit)
        Return True
        }

    Return False
    }
































;   ______    _ _ _     _____      _   _      _                   _     _    
;  |  ____|  | (_) |   / ____|    | | | |    (_)                 | |   | |   
;  | |__   __| |_| |_ | |    _   _| |_| |     _ _ __   ___   __ _| |__ | | __
;  |  __| / _` | | __|| |   | | | | __| |    | | '_ \ / _ \ / _` | '_ \| |/ /
;  | |___| (_| | | |_ | |___| |_| | |_| |____| | | | |  __/| (_| | | | |   < 
;  |______\__,_|_|\__| \_____\__,_|\__|______|_|_| |_|\___(_)__,_|_| |_|_|\_\
;                  ______                                                    
;                 |______|                                                   

;-----------------------------
;
; Function: Edit_CutLine
;
; Description:
;
;   Cuts (delete and copy the deleted text to the clipboard) the specified
;   zero-based line.
;
; Type:
;
;   Add-on function.
;
; Parameters:
;
;   p_LineIdx - The zero-based index of the line to delete. [Optional]  Use
;        -1 (the default) to delete the current line.
;
; Returns:
;
;   TRUE if the requested line is deleted, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Edit_Cut>
; * <Edit_SelectLine> (Add-On)
;
; Remarks:
;
; - Undo can be used to reverse this action.
;
;-------------------------------------------------------------------------------
Edit_CutLine(hEdit,p_LineIdx=-1)
    {
    if Edit_SelectLine(hEdit,p_LineIdx,True)
        {
        Edit_Cut(hEdit)
        Return True
        }

    Return False
    }













































;   ______     _          _     _    
;  |  ____|   | |        | |   | |   
;  | |__ _ __ | |_   __ _| |__ | | __
;  |  __| '_ \| __| / _` | '_ \| |/ /
;  | |  | | | | |_ | (_| | | | |   < 
;  |_|  |_| |_|\__(_)__,_|_| |_|_|\_\



/*
Title: Font Library v1.9.7

Group: Introduction

    Fonts are logical objects that instruct the computer how to draw text on a
    device (display, printers, plotters, etc.).  This library provides a means
    of managing some of the aspects of fonts used in AutoHotkey.

Group: AutoHotkey Compatibility

    This library was designed to run on all versions of all versions of
    AutoHotkey v1.1+: ANSI, Unicode, and Unicode 64-bit.

Group: Issues and Considerations

    The *<DPIScale at https://autohotkey.com/docs/commands/Gui.htm#DPIScale>*
    feature introduced in AutoHotkey v1.1.11 can produce unexpected results when
    the Fnt library is used to determine the size and/or position of anything
    GUI.  The DPIScale feature is enabled by default so if necessary, it must be
    manually disabled for each GUI by adding a "gui -DPIScale" command.
    Important: Conflicts with the DPIScale feature do not occur when using the
    default DPI setting, i.e. 96 DPI.  Errors only occur if using the large
    (120 DPI), larger (144 DPI), or a custom DPI setting.

Group: Links

    Font and Text Reference
    - <http://msdn.microsoft.com/en-us/library/windows/desktop/dd144824(v=vs.85).aspx>

Group: Credit

 *  Some of the code in this library and in the example scripts was extracted
    from the AutoHotkey source.  Thanks to authors of *AutoHotkey*.

 *  The <Fnt_ChooseFont> function was originally adapted from the Dlg library
    which was published by *majkinetor*.

 *  The <Fnt_GetListOfFonts> function was inspired by an example published by
    *Sean*.

Group: Functions
*/

;------------------------------
;
; Function: Fnt_AddFontFile
;
; Description:
;
;   Add one or more fonts from a font file (Ex: "MySpecialFont.ttf") to the
;   system font table.
;
; Type:
;
;   Experimental.  Subject to change.
;
; Parameters:
;
;   p_File - The full path and name of the font file.
;
;   p_Private - If set to TRUE, only the process that called this function can
;       use the added font(s).
;
;   p_Hidden - If set to TRUE, the added font(s) cannot be enumerated, i.e. not
;       included when any program requests a list of fonts from the OS.
;
; Returns:
;
;   The number of the fonts added if successful, otherwise FALSE.
;
; Remarks:
;
;   All fonts added using this function are temporary.  If the p_Private
;   parameter is set to TRUE, the added font(s) are automatically removed when
;   the process that added the font(s) ends.  If p_Private is FALSE, the font(s)
;   are only available for the current session.  When the system restarts, the
;   font(s) will not be present.  If desired, use <Fnt_RemoveFontFile> to remove
;   the font(s) added by this function.
;
;   A complete list of the font file types that can be loaded as well as
;   additional considerations can be found <here at http://tinyurl.com/j3nrbw2>.
;
;-------------------------------------------------------------------------------
Fnt_AddFontFile(p_File,p_Private,p_Hidden=False)
    {
    Static Dummy0661

          ;-- Font Resource flags
          ,FR_PRIVATE :=0x10
          ,FR_NOT_ENUM:=0x20

          ;-- Messages and flags
          ,WM_FONTCHANGE :=0x1D
          ,HWND_BROADCAST:=0xFFFF

    ;-- Build flags
    l_Flags:=0
    if p_Private
        l_Flags|=FR_PRIVATE

    if p_Hidden
        l_Flags|=FR_NOT_ENUM

    ;-- Add font
    RC:=DllCall("AddFontResourceEx","Str",p_File,"UInt",l_Flags,"UInt",0)

    ;-- If one or more fonts were added, notify all top-level windows that the
    ;   pool of font resources has changed.
    if RC
        SendMessage WM_FONTCHANGE,0,0,,ahk_id %HWND_BROADCAST%,,,,1000
            ;-- Wait up to (but no longer than) 1000 ms for all windows to
            ;   respond to the message.

    Return RC
    }


;------------------------------
;
; Function: Fnt_ChooseFont
;
; Description:
;
;   Creates a Font dialog box that enables the user to choose attributes for a
;   logical font.
;
; Parameters:
;
;   hOwner - A handle to the window that owns the dialog box.  This parameter
;       can be any valid window handle or it can be set to 0 or null if the
;       dialog box has no owner.
;
;   r_Name - Typeface name. [Input/Output] On input, this variable can contain
;       contain the default typeface name.  On output, this variable will
;       contain the selected typeface name.
;
;   r_Options - Font options. [Input/Output] See the *Options* section for the
;       details.
;
;   p_Effects - If set to TRUE (the default), the dialog box will display the
;       controls that allow the user to specify strikeout, underline, and
;       text color options.
;
;   p_Flags - [Advanced Feature] Additional ChooseFont flags. [Optional]  The
;       default is 0 (no additional flags).  See the *Flags* section for more
;       information.
;
; Options:
;
;   On input, the r_Options parameter contains the default font options.  On
;   output, r_Options will contain the selected font options.  The following
;   space-delimited options (in alphabetical order) are available:
;
;   bold - On input, this option will preselect the "Bold" font style.  On
;       output, this option will be returned if a bold font was selected.
;
;   c{color} - Text color.  {color} is one of 16 color names (see the AutoHotkey
;       documentation for a list of supported color names) or a 6-digit hex RGB
;       color value.  Example values: Blue or FF00FA.  On input, this option
;       will attempt to pre-select the text color.  On output, this option is
;       returned with the selected text color.  Notes and exceptions: 1) The
;       default text color is pre-selected if a color option is not specified or
;       if the "Default" color is specified.  2) Color names (Ex: "Blue") are
;       only accepted on input.  A 6-digit hex RGB color value is set on output
;       (Ex: 0000FF).  Exception: If the default text color is selected, the
;       color name "Default" is set.  3) If p_Effects is FALSE, this option is
;       ignored on input and is not returned.
;
;   italic - On input, this option will preselect the "italic" font style.  On
;       output, this option will be returned if an italic font was selected.
;       Exception: If p_Effects is FALSE, this option is ignored on input and is
;       not returned.
;
;   s{size in points} -  Font size (in points).  For example: s12.  On input,
;       this option will load the font size and if on the dialog's "Size" list,
;       will preselect the font size.  On output, the font size that was
;       entered/selected is returned.
;
;   SizeMax{max point size} -  [Input only] The maximum point size the user can
;       enter/select.  For example: SizeMax72.  If this option is specified
;       without also specifying the SizeMin option, the SizeMin value is
;       automatically set to 1.
;
;   SizeMin{min point size} - [Input only] The minimum point size the user can
;       enter/select.  For example: SizeMin10.  If this option is specified
;       without also specifying the SizeMax option, the SizeMax value is
;       automatically set to 0xBFFF (49151).
;
;   strike - On input, this option will check the "Strikeout" option.  On
;       output, this option will be returned if the "Strikeout" option was
;       checked.  Exception: If p_Effects is FALSE, this option is ignored on
;       input and is not returned.
;
;   underline -  On input, this option will check the "Underline" option.  On
;       output, this option will be returned if the "Underline" option was
;       checked.  Exception: If p_Effects is FALSE, this option is ignored on
;       input and is not returned.
;
;   w{font weight} - Font weight (thickness or boldness), which is an integer
;       between 1 and 1000.  For example, 400 is Normal and 700 is Bold.  On
;       input, this option will preselect the font style that most closely
;       matches the weight specified.  If not specified, the default weight for
;       the font is selected.  On output, this option is only returned if the
;       font weight is not Normal (400) and not Bold (700).
;
;   To specify more than one option, include a space between each.  For
;   example: s12 cFF0000 bold.  On output, the selected options are defined
;   in the same format.
;
; Returns:
;
;   TRUE if a font was selected, otherwise FALSE is returned if the dialog was
;   canceled or if an error occurred.
;
; Calls To Other Functions:
;
; * <Fnt_ColorName2RGB>
; * <Fnt_GetWindowTextColor>
;
; Flags:
;
;   Flexibility in the operation of the Font dialog box is available via a large
;   number of ChooseFont flags.  For this function, the flags are determined by
;   constants, options in the r_Options parameter, and the value of the
;   p_Effects parameter.  Although the flags set by these conditions will handle
;   the needs of the majority of developers, there are a few ChooseFont flags
;   that could provide additional value.  The p_Flags parameter is used to _add_
;   additional ChooseFont flags to control the operation of the Font dialog box.
;   See the function's static variables for a list of possible flag values.
;
;   This is an advanced feature.  Including invalid or conflicting flags may
;   produce unexpected results.  Be sure to test throroughly.  With that said,
;   many of the flags can be used to limit or exclude fonts.  This is a simple
;   but powerful feature to only show the fonts that are needed for a
;   particular task.
;
; Remarks:
;
; * The ChooseFont dialog box supports the selection of text color.  Although
;   text color is an attribute of many common controls, please note that it is
;   not a font attribute.
;
; * Although the font weight can be any number between 1 and 1000, most fonts
;   only support 400 (Normal/Regular) and 700 (Bold).  A very small number of
;   fonts support additional font weights.  At this writing, the ChooseFont
;   dialog does not display the font weight as a number.  Instead, the font
;   weight is displayed as font styles like Regular, ExtraLight, Black, etc. See
;   the <CreateFont at http://tinyurl.com/n2qe72w> documentation for a list of
;   common font weight names and their associated font weight values.
;
; * The SizeMin and SizeMax options (r_Options parameter) not only affect the
;   list of fonts sizes that are shown in the Font Size selection list box in
;   the Font dialog box, they affect the font size that can be manually entered
;   in the Font Size combo box.  If a font size that is outside the boundaries
;   set by the SizeMin and SizeMax options, a MsgBox dialog is shown and the
;   user is not allowed to continue until a valid font size is entered/selected.
;   Warning: If the value of the SizeMin option is greater than the SizeMax
;   option, the "ChooseFont" API function will generate a CFERR_MAXLESSTHANMIN
;   error and will return without showing the Font dialog box.
;
;-------------------------------------------------------------------------------
Fnt_ChooseFont(hOwner=0,ByRef r_Name="",ByRef r_Options="",p_Effects=True,p_Flags=0)
    {
    Static Dummy3155

          ;-- ChooseFont flags
          ,CF_SCREENFONTS:=0x1
                ;-- List only the screen fonts supported by the system.  This
                ;   flag is automatically set.

          ,CF_PRINTERFONTS:=0x2
                ;-- List only printer fonts.  Not supported by this libary.  Do
                ;   not use.

          ,CF_SHOWHELP:=0x4
                ;-- Causes the dialog box to display the Help button.  Not
                ;   supported by this library.  Do not use.

          ,CF_ENABLEHOOK:=0x8
                ;-- Enables the hook procedure specified in the lpfnHook member
                ;   of this structure.  Not supported by this library.  Do not
                ;   use.

          ,CF_ENABLETEMPLATE:=0x10
                ;-- Indicates that the hInstance and lpTemplateName members
                ;   specify a dialog box template to use in place of the default
                ;   template.  Not supported by this library.  Do not use.

          ,CF_ENABLETEMPLATEHANDLE:=0x20
                ;-- Indicates that the hInstance member identifies a data block
                ;   that contains a preloaded dialog box template.  The system
                ;   ignores the lpTemplateName member if this flag is specified.
                ;   Not supported by this library.  Do not use.

          ,CF_INITTOLOGFONTSTRUCT:=0x40
                ;-- Use the structure pointed to by the lpLogFont member to
                ;   initialize the dialog box controls.  This flag is
                ;   automatically set.

          ,CF_USESTYLE:=0x80
                ;-- Not supported by this library.  Do not use.

          ,CF_EFFECTS:=0x100
                ;-- Causes the dialog box to display the controls that allow
                ;   the user to specify strikeout, underline, and text color
                ;   options.  This flag is automatically set if the p_Effects
                ;   parameter is set to TRUE.

          ,CF_APPLY:=0x200
                ;-- Causes the dialog box to display the Apply button.  Not
                ;   supported by this library.  Do not use.

          ,CF_SCRIPTSONLY:=0x400
                ;-- Prevent the dialog box from displaying or selecting OEM or
                ;   Symbol fonts.

          ,CF_NOOEMFONTS:=0x800
                ;-- Prevent the dialog box from displaying or selecting OEM
                ;   fonts.  Note: The CF_NOVECTORFONTS constant (not used here)
                ;   is set to the same value as this constant.

          ,CF_NOSIMULATIONS:=0x1000
                ;-- Prevent the dialog box from displaying or selecting font
                ;   simulations.

          ,CF_LIMITSIZE:=0x2000
                ;-- Select only font sizes within the range specified by the
                ;   nSizeMin and nSizeMax members.  This flag is automatically
                ;   added if the SizeMin and/or the SizeMax options (p_Options
                ;   parameter) are used.

          ,CF_FIXEDPITCHONLY:=0x4000
                ;-- Show and allow selection of only fixed-pitch fonts.

          ,CF_WYSIWYG:=0x8000
                ;-- Obsolete.  ChooseFont ignores this flag.

          ,CF_FORCEFONTEXIST:=0x10000
                ;-- Display an error message if the user attempts to select a
                ;   font or style that is not listed in the dialog box.

          ,CF_SCALABLEONLY:=0x20000
                ;-- Show and allow selection of only scalable fonts.

          ,CF_TTONLY:=0x40000
                ;-- Show and allow the selection of only TrueType fonts.

          ,CF_NOFACESEL:=0x80000
                ;-- Prevent the dialog box from displaying an initial selection
                ;   for the font name combo box.

          ,CF_NOSTYLESEL:=0x100000
                ;-- Prevent the dialog box from displaying an initial selection
                ;   for the Font Style combo box.

          ,CF_NOSIZESEL:=0x200000
                ;-- Prevent the dialog box from displaying an initial selection
                ;   for the Font Size combo box.

          ,CF_SELECTSCRIPT:=0x400000
                ;-- When specified on input, only fonts with the character set
                ;   identified in the lfCharSet member of the LOGFONT structure
                ;   are displayed.  The user will not be allowed to change the
                ;   character set specified in the Scripts combo box.  Not
                ;   supported by this library.  Do not use.

          ,CF_NOSCRIPTSEL:=0x800000
                ;-- Disables the Script combo box.

          ,CF_NOVERTFONTS:=0x1000000
                ;-- Display only horizontally oriented fonts.

          ,CF_INACTIVEFONTS:=0x2000000
                ;-- ChooseFont should additionally display fonts that are set to
                ;   Hide in Fonts Control Panel.  Windows 7+.

          ;-- Device constants
          ,LOGPIXELSY:=90

          ;-- Misc. font constants
          ,CFERR_MAXLESSTHANMIN:=0x2002
          ,FW_NORMAL           :=400
          ,FW_BOLD             :=700
          ,LF_FACESIZE         :=32     ;-- In TCHARS

    ;--------------
    ;-- Initialize
    ;--------------
    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Default window text color
    l_WindowTextColor:=Fnt_GetWindowTextColor()

    ;--------------
    ;-- Parameters
    ;--------------
    r_Name:=Trim(r_Name," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    ;-- p_Flags
    if p_Flags is not Integer
        p_Flags:=0x0

    p_Flags|=CF_SCREENFONTS|CF_INITTOLOGFONTSTRUCT
    if p_Effects
        p_Flags|=CF_EFFECTS

    ;-----------
    ;-- Options
    ;-----------
    ;-- Initialize
    o_Color    :=l_WindowTextColor
    o_Height   :=13
    o_Italic   :=False
    o_Size     :=""     ;-- Undefined
    o_SizeMin  :=""     ;-- Undefined
    o_SizeMax  :=""     ;-- Undefined
    o_Strikeout:=False
    o_Underline:=False
    o_Weight   :=""     ;-- Undefined

    ;-- Extract options (if any) from r_Options
    Loop Parse,r_Options,%A_Space%
        {
        if (InStr(A_LoopField,"bold")=1)
            o_Weight:=FW_BOLD
        else if (InStr(A_LoopField,"italic")=1)
            o_Italic:=True
        else if (InStr(A_LoopField,"sizemin")=1)
            {
            o_SizeMin:=SubStr(A_LoopField,8)
            if o_SizeMin is not Integer
                o_SizeMin:=1
            }
        else if (InStr(A_LoopField,"sizemax")=1)
            {
            o_SizeMax:=SubStr(A_LoopField,8)
            if o_SizeMax is not Integer
                o_SizeMax:=0xBFFF
            }
        else if (InStr(A_LoopField,"strike")=1)
            o_Strikeout:=True
        else if (InStr(A_LoopField,"underline")=1)
            o_Underline:=True
        else if (InStr(A_LoopField,"c")=1 and StrLen(A_Loopfield)>1)
            {
            ;-- Initial value
            l_Color:=o_Color:=SubStr(A_LoopField,2)

            ;-- If not set already, prepend hex prefix
            if not InStr(SubStr(o_Color,1,2),"0x")
                o_Color:="0x" . o_Color

            ;-- If not a valid hex value, convert color name to hex value
            ;   Note: All color names have 2 or more non-hex digit values
            if o_Color is not xDigit
                o_Color:=Fnt_ColorName2RGB(l_Color)
            }
        else if (InStr(A_LoopField,"s")=1)
            o_Size:=SubStr(A_LoopField,2)
        else if (InStr(A_LoopField,"w")=1)
            o_Weight:=SubStr(A_LoopField,2)
        }

    ;-- If needed, reset Effects options to defaults
    if not p_Flags & CF_EFFECTS
        {
        o_Color    :=l_WindowTextColor
        o_Strikeout:=False
        o_Underline:=False
        }

    ;--------------------------
    ;-- Convert or fix invalid
    ;-- or unspecified options
    ;--------------------------
    if o_Color is Space  ;-- No color options
        o_Color:=l_WindowTextColor

    ;-- Convert color to BRG
    o_Color:=((o_Color&0xFF)<<16)+(o_Color&0xFF00)+((o_Color>>16)&0xFF)

    if o_SizeMin is Integer
        if o_SizeMax is Space
            o_SizeMax:=0xBFFF

    if o_SizeMax is Integer
        if o_SizeMin is Space
            o_SizeMin:=1

    if o_Weight is not Integer
        o_Weight:=FW_NORMAL

    ;-- If needed, convert point size to height, in logical units
    if o_Size is Integer
        o_Height:=Round(o_Size*l_LogPixelsY/72)*-1

    ;-- Update flags
    if o_SizeMin or o_SizeMax
        p_Flags|=CF_LIMITSIZE

    ;-----------------------
    ;-- Populate structures
    ;-----------------------
    ;-- Create, initialize, and populate LOGFONT structure
    VarSetCapacity(LOGFONT,A_IsUnicode ? 92:60,0)
    NumPut(o_Height,   LOGFONT,0,"Int")                 ;-- lfHeight
    NumPut(o_Weight,   LOGFONT,16,"Int")                ;-- lfWeight
    NumPut(o_Italic,   LOGFONT,20,"UChar")              ;-- lfItalic
    NumPut(o_Underline,LOGFONT,21,"UChar")              ;-- lfUnderline
    NumPut(o_Strikeout,LOGFONT,22,"UChar")              ;-- lfStrikeOut

    if StrLen(r_Name)
        StrPut(SubStr(r_Name,1,31),&LOGFONT+28,LF_FACESIZE)
            ;-- lfFaceName

    ;-- Create, initialize, and populate CHOOSEFONT structure
    CFSize:=VarSetCapacity(CHOOSEFONT,(A_PtrSize=8) ? 104:60,0)

    NumPut(CFSize,CHOOSEFONT,0,"UInt")
        ;-- lStructSize
    NumPut(hOwner,CHOOSEFONT,(A_PtrSize=8) ? 8:4,"Ptr")
        ;-- hwndOwner
    NumPut(&LOGFONT,CHOOSEFONT,(A_PtrSize=8) ? 24:12,"Ptr")
        ;-- lpLogFont
    NumPut(p_Flags,CHOOSEFONT,(A_PtrSize=8) ? 36:20,"UInt")
        ;-- Flags
    NumPut(o_Color,CHOOSEFONT,(A_PtrSize=8) ? 40:24,"UInt")
        ;-- rgbColors

    if o_SizeMin
        NumPut(o_SizeMin,CHOOSEFONT,(A_PtrSize=8) ? 92:52,"Int")
            ;-- nSizeMin

    if o_SizeMax
        NumPut(o_SizeMax,CHOOSEFONT,(A_PtrSize=8) ? 96:56,"Int")
            ;-- nSizeMax

    ;---------------
    ;-- Choose font
    ;---------------
    if not DllCall("comdlg32\ChooseFont" . (A_IsUnicode ? "W":"A"),"Ptr",&CHOOSEFONT)
        {
        if CDERR:=DllCall("comdlg32\CommDlgExtendedError")
            {
            if (CDERR=CFERR_MAXLESSTHANMIN)
                outputdebug,
                   (ltrim join`s
                    Function: %A_ThisFunc% Error -
                    The size specified in the SizeMax option is less than the
                    size specified in the SizeMin option.
                   )
             else
                outputdebug,
                   (ltrim join`s
                    Function: %A_ThisFunc% Error -
                    Unknown error returned from the "ChooseFont" API. Error
                    code: %CDERR%.
                   )
            }

        Return False
        }

    ;------------------
    ;-- Rebuild output
    ;------------------
    ;-- Typeface name
    r_Name:=StrGet(&LOGFONT+28,LF_FACESIZE)

    ;-- r_Options
    r_Options:="s" . Floor(NumGet(CHOOSEFONT,(A_PtrSize=8) ? 32:16,"Int")/10)
        ;-- iPointSize

    if p_Flags & CF_EFFECTS
        {
        l_Color:=NumGet(CHOOSEFONT,(A_PtrSize=8) ? 40:24,"UInt")
            ;-- rgbColors

        ;-- Convert to RGB
        l_Color:=((l_Color&0xFF)<<16)+(l_Color&0xFF00)+((l_Color>>16)&0xFF)

        ;-- Append to r_Options in 6-digit hex format
        if (l_Color=l_WindowTextColor)  ;-- i.e. the default
            r_Options.=A_Space . "cDefault"
         else
            r_Options.=A_Space . "c" . Format("{:06X}",l_Color)
        }

    l_Weight:=NumGet(LOGFONT,16,"Int")
    if (l_Weight<>FW_NORMAL)
        if (l_Weight=FW_BOLD)
            r_Options.=A_Space . "bold"
         else
            r_Options.=A_Space . "w" . l_Weight

    if NumGet(LOGFONT,20,"UChar")
        r_Options.=A_Space . "italic"

    if NumGet(LOGFONT,21,"UChar")
        r_Options.=A_Space . "underline"

    if NumGet(LOGFONT,22,"UChar")
        r_Options.=A_Space . "strike"

    Return True
    }


;------------------------------
;
; Function: Fnt_ColorName2RGB
;
; Description:
;
;   Convert a color name to it's 6-digit hexadecimal RGB value.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Parameters:
;
;   p_ColorName - A color name (Ex: "Fuchsia").  See the function's static
;       variables for a list of supported names.
;
; Returns:
;
;   A 6-digit hexadecimal RGB value.  Ex: 0xFF00FF.  If an invalid color name is
;   specified or if the "Default" color name is specified, the value from
;   <Fnt_GetWindowTextColor> is returned.
;
; Calls To Other Functions:
;
; * <Fnt_GetWindowTextColor>
;
;-------------------------------------------------------------------------------
Fnt_ColorName2RGB(p_ColorName)
    {
    Static Dummy3054

          ;-- Supported color names
          ,Color_Aqua   :=0x00FFFF
          ,Color_Black  :=0x000000
          ,Color_Blue   :=0x0000FF
          ,Color_Fuchsia:=0xFF00FF
          ,Color_Gray   :=0x808080
          ,Color_Green  :=0x008000
          ,Color_Lime   :=0x00FF00
          ,Color_Maroon :=0x800000
          ,Color_Navy   :=0x000080
          ,Color_Olive  :=0x808000
          ,Color_Purple :=0x800080
          ,Color_Red    :=0xFF0000
          ,Color_Silver :=0xC0C0C0
          ,Color_Teal   :=0x008080
          ,Color_White  :=0xFFFFFF
          ,Color_Yellow :=0xFFFF00

    ;-- Set to the default (covers the "Default" color name)
    l_Color:=Fnt_GetWindowTextColor()

    ;-- Convert if supported color name (not case sensitive)
    if Color_%p_ColorName% is not Space
        l_Color:=Color_%p_ColorName%

    Return l_Color
    }

;------------------------------
;
; Function: Fnt_CompactPath
;
; Description:
;
;   Shortens a file path to fit within a given pixel width by replacing path
;   components with ellipses.
;
; Parameters:
;
;   hFont - Handle to a logical font. Set to 0 to use the default GUI font.
;
;   p_Path - A file path to shorten.  Ex: "C:\MyFiles\A long file name.txt"
;
;   p_MaxW - The maximum width for the return path, in pixels.
;
;   p_Strict - If set to TRUE, the function will return null if the minimum
;       path value is longer (measured in pixels) than p_MaxW.  The default is
;       FALSE.  See the *Remarks* section for more information.
;
; Returns:
;
;   The compacted path.
;
; Remarks:
;
;   By default, the PathCompactPath function will not compact the path beyond
;   a minimum value which is usually a base file name preceded by ellipses.  If
;   the value of p_MaxW is too small (relative to the specified font), the
;   width of the minimum path value (measured in pixels) may be larger than
;   p_MaxW.  If the p_Strict parameter is set to TRUE, the return value will be
;   set to null if the compacted path is wider than p_MaxW.  If p_Strict is set
;   to FALSE (the default), the function will return whatever value is returned
;   from the PathCompactPath function.
;
;-------------------------------------------------------------------------------
Fnt_CompactPath(hFont,p_Path,p_MaxW,p_Strict=False)
    {
    Static Dummy6513
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0
          ,MAX_PATH        :=260

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Compact path
    VarSetCapacity(l_Path,MAX_PATH*(A_IsUnicode ? 2:1),0)
    l_Path:=p_Path
    RC:=DllCall("shlwapi\PathCompactPath" . (A_IsUnicode ? "W":"A")
        ,"Ptr",hDC          ;-- hDC,
        ,"Str",l_Path       ;-- lpszPath
        ,"UInt",p_MaxW)     ;-- dx

    ;-- Release the objects needed by the PathCompactPath function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Strict?
    if p_Strict
        if (Fnt_GetStringWidth(hFont,l_Path)>p_MaxW)
            l_Path:=""

    ;-- Return to sender
    Return l_Path
    }


;------------------------------
;
; Function: Fnt_CreateFont
;
; Description:
;
;   Creates a logical font.
;
; Parameters:
;
;   p_Name - Typeface name of the font. [Optional]  If null (the default), the
;       default GUI font name is used.
;
;   p_Options - Font options. [Optional] See the *Options* section for more
;       information.
;
; Options:
;
;   The following options can be used in the p_Options parameter.
;
;   bold -  Set the font weight to bold (700).
;
;   italic - Create an italic font.
;
;   q{quality} - Text rendering quality. For example: q3.  See the function's
;       static variables for a list of possible quality values. AutoHotkey
;       v1.0.90+.
;
;   s{size in points} - Font size (in points).  For example: s12
;
;   strike - Create a strikeout font.
;
;   underline - Create an underlined font.
;
;   w{font weight} - Font weight (thickness or boldness), which is an integer
;       between 1 and 1000 (400 is normal and 700 is bold).  For example: w600
;
;   To specify more than one option, include a space between each.  For
;   example: s12 bold
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontName>
; * <Fnt_GetFontSize>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateFont(p_Name="",p_Options="")
    {
    Static Dummy3436

          ;-- Device constants
          ,LOGPIXELSY:=90

          ;-- Font quality
          ,DEFAULT_QUALITY       :=0
          ,DRAFT_QUALITY         :=1
          ,PROOF_QUALITY         :=2  ;-- AutoHotkey default
          ,NONANTIALIASED_QUALITY:=3
          ,ANTIALIASED_QUALITY   :=4
          ,CLEARTYPE_QUALITY     :=5

          ;-- Misc. font constants
          ,CLIP_DEFAULT_PRECIS:=0
          ,DEFAULT_CHARSET    :=1
          ,FF_DONTCARE        :=0
          ,FW_NORMAL          :=400
          ,FW_BOLD            :=700
          ,OUT_TT_PRECIS      :=4

    ;-- Parameters
    p_Name:=Trim(p_Name," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    ;-- Initialize options
    o_Italic   :=False
    o_Quality  :=PROOF_QUALITY
    o_Size     :=""         ;-- Undefined
    o_Strikeout:=False
    o_Underline:=False
    o_Weight   :=""         ;-- Undefined

    ;-- Extract options (if any) from p_Options
    Loop Parse,p_Options,%A_Space%
        {
        if (InStr(A_LoopField,"bold")=1)
            o_Weight:=FW_BOLD
        else if (InStr(A_LoopField,"italic")=1)
            o_Italic:=True
        else if (InStr(A_LoopField,"strike")=1)
            o_Strikeout:=True
        else if (InStr(A_LoopField,"underline")=1)
            o_Underline:=True
        else if (InStr(A_LoopField,"q")=1)
            o_Quality:=SubStr(A_LoopField,2)
        else if (InStr(A_LoopField,"s")=1)
            o_Size:=SubStr(A_LoopField,2)
        else if (InStr(A_LoopField,"w")=1)
            o_Weight:=SubStr(A_LoopField,2)
        }

    ;-- Fix invalid or unspecified parameters/options
    if p_Name is Space
        p_Name:=Fnt_GetFontName()   ;-- Typeface name of default GUI font

    if o_Quality is not Integer
        o_Quality:=PROOF_QUALITY

    if o_Size is not Integer
        o_Size:=Fnt_GetFontSize()   ;-- Font size of default GUI font

    if o_Weight is not Integer
        o_Weight:=FW_NORMAL

    ;-- Convert point size to height, in logical units
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    o_Height:=Round(o_Size*DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)/72)*-1
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Create font
    hFont:=DllCall("CreateFont"
        ,"Int",o_Height                                 ;-- nHeight
        ,"Int",0                                        ;-- nWidth
        ,"Int",0                                        ;-- nEscapement (0=normal horizontal)
        ,"Int",0                                        ;-- nOrientation
        ,"Int",o_Weight                                 ;-- fnWeight
        ,"UInt",o_Italic                                ;-- fdwItalic
        ,"UInt",o_Underline                             ;-- fdwUnderline
        ,"UInt",o_Strikeout                             ;-- fdwStrikeOut
        ,"UInt",DEFAULT_CHARSET                         ;-- fdwCharSet
        ,"UInt",OUT_TT_PRECIS                           ;-- fdwOutputPrecision
        ,"UInt",CLIP_DEFAULT_PRECIS                     ;-- fdwClipPrecision
        ,"UInt",o_Quality                               ;-- fdwQuality
        ,"UInt",FF_DONTCARE                             ;-- fdwPitchAndFamily
        ,"Str",p_Name)                                  ;-- lpszFace

    Return hFont
    }


;------------------------------
;
; Function: Fnt_CreateCaptionFont
;
; Description:
;
;   Creates a logical font with the same attributes as the caption font.
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateCaptionFont()
    {
    Return DllCall("CreateFontIndirect","Ptr",Fnt_GetNonClientMetrics()+24)
    }


;------------------------------
;
; Function: Fnt_CreateMenuFont
;
; Description:
;
;   Creates a logical font with the same attributes as the font used in menu
;   bars.
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateMenuFont()
    {
    Return DllCall("CreateFontIndirect","Ptr",Fnt_GetNonClientMetrics()+(A_IsUnicode ? 224:160))
    }


;------------------------------
;
; Function: Fnt_CreateMessageFont
;
; Description:
;
;   Creates a logical font with the same attributes as the font used in message
;   boxes.
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateMessageFont()
    {
    Return DllCall("CreateFontIndirect","Ptr",Fnt_GetNonClientMetrics()+(A_IsUnicode ? 408:280))
    }


;------------------------------
;
; Function: Fnt_CreateSmCaptionFont
;
; Description:
;
;   Creates a logical font with the same attributes as the small caption font.
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateSmCaptionFont()
    {
    Return DllCall("CreateFontIndirect","Ptr",Fnt_GetNonClientMetrics()+(A_IsUnicode ? 124:92))
    }


;------------------------------
;
; Function: Fnt_CreateStatusFont
;
; Description:
;
;   Creates a logical font with the same attributes as the font used in status
;   bars and tooltips.
;
; Returns:
;
;   A handle to a logical font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   When no longer needed, call <Fnt_DeleteFont> to delete the font.
;
;-------------------------------------------------------------------------------
Fnt_CreateStatusFont()
    {
    Return DllCall("CreateFontIndirect","Ptr",Fnt_GetNonClientMetrics()+(A_IsUnicode ? 316:220))
    }


;------------------------------
;
; Function: Fnt_DeleteFont
;
; Description:
;
;   Deletes a logical font.
;
; Parameters:
;
;   hFont - Handle to a logical font.
;
; Returns:
;
;   TRUE if the font was successfully deleted or if no font was specified,
;   otherwise FALSE.
;
; Remarks:
;
;   It is not necessary (but it is not harmful) to delete stock objects.
;
;-------------------------------------------------------------------------------
Fnt_DeleteFont(hFont)
    {
    if not hFont  ;-- Zero or null
        Return True

    Return DllCall("DeleteObject","Ptr",hFont) ? True:False
    }


;------------------------------
;
; Function: Fnt_DialogTemplateUnits2Pixels
;
; Description:
;
;   Converts dialog template units to pixels for a font.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_HorzDTUs - Horizontal dialog template units.
;
;   p_VertDTUs - Vertical dialog template units.
;
;   r_Width, r_Height - Output variables. [Optional] These variables are
;       loaded with the width and height conversions of the values from the
;       p_HorzDTUs and p_VertDTUs parameters.
;
; Returns:
;
;   Address to a SIZE structure.
;
; Calls To Other Functions:
;
; * <Fnt_GetDialogBaseUnits>
;
;-------------------------------------------------------------------------------
Fnt_DialogTemplateUnits2Pixels(hFont,p_HorzDTUs,p_VertDTUs=0,ByRef r_Width="",ByRef r_Height="")
    {
    Static Dummy0741
          ,SIZE
          ,s_hFont:=-1
          ,s_HorzDBUs
          ,s_VertDBUs

    ;-- If needed, initialize and get Dialog Base Units
    if (hFont<>s_hFont)
        {
        s_hFont:=hFont
        VarSetCapacity(SIZE,8,0)
        Fnt_GetDialogBaseUnits(hFont,s_HorzDBUs,s_VertDBUs)
        }

    ;-- Convert DTUs to w/h, in pixels
    NumPut(r_Width :=Round(p_HorzDTUs*s_HorzDBUs/4),SIZE,0,"Int")
    NumPut(r_Height:=Round(p_VertDTUs*s_VertDBUs/8),SIZE,4,"Int")
    Return &SIZE
    }


;------------------------------
;
; Function: Fnt_EnumFontFamExProc
;
; Description:
;
;   The default EnumFontFamiliesEx callback function for the Fnt library.
;
; Type:
;
;   Internal callback function.  Do not call directly.
;
; Parameters:
;
;   lpelfe - A pointer to an LOGFONT structure that contains information about
;       the logical attributes of the font.  To obtain additional information
;       about the font, you can cast the result as an ENUMLOGFONTEX or
;       ENUMLOGFONTEXDV structure.
;
;   lpntme - A pointer to a structure that contains information about the
;       physical attributes of a font.  The function uses the NEWTEXTMETRICEX
;       structure for TrueType fonts; and the TEXTMETRIC structure for other
;       fonts. This can be an ENUMTEXTMETRIC structure.
;
;   FontType - The type of the font. This parameter can be a combination of
;       DEVICE_FONTTYPE, RASTER_FONTTYPE, or TRUETYPE_FONTTYPE.
;
;   p_Flags (i.e. lParam) - The application-defined data passed by the
;       EnumFontFamiliesEx function.
;
; Returns:
;
;   TRUE.
;
; Remarks:
;
;   This function uses a global variable (Fnt_EnumFontFamExProc_List) to build
;   the list of typeface names.  Since this function is called many times for
;   every request, the typeface name is always appended to this variable.  Be
;   sure to set the Fnt_EnumFontFamExProc_List variable to null before every
;   request.
;
;-------------------------------------------------------------------------------
Fnt_EnumFontFamExProc(lpelfe,lpntme,FontType,p_Flags)
    {
    Global Fnt_EnumFontFamExProc_List
    Static Dummy6247

          ;-- Character sets
          ,ANSI_CHARSET       :=0
          ,DEFAULT_CHARSET    :=1
          ,SYMBOL_CHARSET     :=2
          ,MAC_CHARSET        :=77
          ,SHIFTJIS_CHARSET   :=128
          ,HANGUL_CHARSET     :=129
          ,JOHAB_CHARSET      :=130
          ,GB2312_CHARSET     :=134
          ,CHINESEBIG5_CHARSET:=136
          ,GREEK_CHARSET      :=161
          ,TURKISH_CHARSET    :=162
          ,VIETNAMESE_CHARSET :=163
          ,HEBREW_CHARSET     :=177
          ,ARABIC_CHARSET     :=178
          ,BALTIC_CHARSET     :=186
          ,RUSSIAN_CHARSET    :=204
          ,THAI_CHARSET       :=222
          ,EASTEUROPE_CHARSET :=238
          ,OEM_CHARSET        :=255

          ;-- ChooseFont flags
          ,CF_SCRIPTSONLY:=0x400
                ;-- Exclude OEM and Symbol fonts.

          ,CF_NOOEMFONTS:=0x800
                ;-- Exclude OEM fonts.  Ex: Terminal

          ,CF_NOSIMULATIONS:=0x1000
                ;-- [Future] Exclude font simulations.

          ,CF_FIXEDPITCHONLY:=0x4000
                ;-- Include fixed-pitch fonts only.

          ,CF_SCALABLEONLY:=0x20000
                ;-- Include scalable fonts only.  Scalable fonts include vector
                ;   fonts, scalable printer fonts, TrueType fonts, and fonts
                ;   scaled by other technologies.

          ,CF_TTONLY:=0x40000
                ;-- Include TrueType fonts only.

          ,CF_NOVERTFONTS:=0x1000000
                ;-- Exclude vertical fonts.

          ,CF_NOSYMBOLFONTS:=0x10000000
                ;-- [Custom Flag]  Exclude symbol fonts.

          ,CF_VARIABLEPITCHONLY:=0x20000000
                ;-- [Custom Flag]  Include variable pitch fonts only.

          ,CF_FUTURE:=0x40000000
                ;-- [Custom Flag]  Future.

          ,CF_FULLNAME:=0x80000000
                ;-- [Custom Flag]  If specified, returns the full name of the
                ;   font.  For example, ABC Font Company TrueType Bold Italic
                ;   ISans Serif.  This flag may increase the number of font
                ;   names returned.

          ;-- LOGFONT constants
          ,LF_FACESIZE      :=32     ;-- In TCHARS
          ,LF_FULLFACESIZE  :=64

          ;-- Font types
          ,RASTER_FONTTYPE  :=0x1
          ,DEVICE_FONTTYPE  :=0x2
          ,TRUETYPE_FONTTYPE:=0x4

          ;-- TEXTMETRIC flags
          ,TMPF_FIXED_PITCH:=0x1
                ;-- If this bit is set, the font is a variable pitch font.  If
                ;   this bit is clear, the font is a fixed pitch font.  Note
                ;   very carefully that those meanings are the opposite of what
                ;   the constant name implies.
          ,TMPF_VECTOR     :=0x2
          ,TMPF_TRUETYPE   :=0x4
          ,TMPF_DEVICE     :=0x8

    ;-- Name
    l_FaceName:=StrGet(lpelfe+28,LF_FACESIZE)
    l_FullName:=StrGet(lpelfe+(A_IsUnicode ? 92:60),LF_FULLFACESIZE)

    ;-- Pitch and Family
    l_PitchAndFamily:=NumGet(lpntme+0,A_IsUnicode ? 55:51,"UChar")

    ;-- Character set
    l_CharSet:=NumGet(lpntme+0,A_IsUnicode ? 56:52,"UChar")

    ;-- Check p_Flags to exclude requested fonts
    if p_Flags & (CF_SCRIPTSONLY|CF_NOOEMFONTS)
        if (l_CharSet=OEM_CHARSET)
            Return True  ;-- Continue enumeration

    if p_Flags & (CF_SCRIPTSONLY|CF_NOSYMBOLFONTS)
        if (l_CharSet=SYMBOL_CHARSET)
            Return True  ;-- Continue enumeration

    if p_Flags & CF_FIXEDPITCHONLY
        if l_PitchAndFamily & TMPF_FIXED_PITCH  ;-- i.e. variable pitch
            Return True  ;-- Continue enumeration

    if p_Flags & CF_SCALABLEONLY
        if not (l_PitchAndFamily & (TMPF_VECTOR|TMPF_TRUETYPE))
            Return True  ;-- Continue enumeration

    if p_Flags & CF_TTONLY
        if not (FontType & TRUETYPE_FONTTYPE)
            Return True  ;-- Continue enumeration

    if p_Flags & CF_NOVERTFONTS
        if (SubStr(l_FaceName,1,1)="@")
            Return True  ;-- Continue enumeration

    if p_Flags & CF_VARIABLEPITCHONLY
        if not (l_PitchAndFamily & TMPF_FIXED_PITCH)
            Return True  ;-- Continue enumeration

    ;-- Append font name to the list
    Fnt_EnumFontFamExProc_List.=(StrLen(Fnt_EnumFontFamExProc_List) ? "`n":"")
        . (p_Flags & CF_FULLNAME ? l_FullName:l_FaceName)

    Return True  ;-- Continue enumeration
    }


;------------------------------
;
; Function: Fnt_FontExists
;
; Description:
;
;   Determines if a font exists.
;
; Type:
;
;   Experimental/Preview.  Subject to change.
;
; Parameters:
;
;   p_Name* - Zero or more parameters containing a typeface font name (Ex:
;       "Arial"), an array of typeface font names (Ex:
;       ["Consolas","KaiTi","Courier"]), a comma-delimited list of typeface font
;       names (Ex: "Arial,Verdana,Helvetica"), or any combination of these
;       types.  See the *Remarks* section for more information.
;
; Returns:
;
;   The first typeface font name that exists from the p_Name parameter(s) (also
;       tests as TRUE) if successful, otherwise null (also tests as FALSE).
;
; Calls To Other Functions:
;
; * <Fnt_CreateFont>
; * <Fnt_DeleteFont>
; * <Fnt_GetFontName>
;
; Remarks:
;
; * Although not case sensitive, the exact font name must be specified.
;
; * The font name is returned (i.e. successful) if the name is a valid font
;   substitute.  Ex: "Helv", "Times", "MS Shell Dlg", etc.
;
; * Leading and trailing white space, single quote, and double quote characters
;   are ignored.  For example, "Arial,Segoe UI,Verdana" is the same as "Arial,
;   'Segoe UI', Verdana"
;
;-------------------------------------------------------------------------------
Fnt_FontExists(p_Name*)
    {
    ;-- Initialize
    FontNames:=Object()

    ;-- Extract font names from parameter(s).  Load to FontNames
    For l_Index,l_ParamString in p_Name
        {
        if IsObject(l_ParamString)
            {
            For l_Index,l_StringFromObject in l_ParamString
                Loop Parse,l_StringFromObject,`,
                    {
                    l_Name:=Trim(A_LoopField," `f`n`r`t`v'""")
                        ;-- Remove all leading/trailing white spaces, single
                        ;   quote, or double quote chars
                    if l_Name  ;-- Ignore blank/null strings
                        FontNames.Push(l_Name)
                    }
            }
        else  ;-- not an object
            {
            Loop Parse,l_ParamString,`,
                {
                l_Name:=Trim(A_LoopField," `f`n`r`t`v'""")
                    ;-- Remove all leading/trailing white spaces, single quote,
                    ;   and double quote chars
                if l_Name  ;-- Ignore blank/null strings
                    FontNames.Push(l_Name)
                }
            }
        }

    For l_Index,l_Name in FontNames
        {
        ;-- Create a temporary font, collect the typeface name, and delete
        hFont:=Fnt_CreateFont(l_Name)
        l_CreatedName:=Fnt_GetFontName(hFont)
        Fnt_DeleteFont(hFont)

        ;-- Return name if it matches the supplied name
        if (SubStr(l_Name,1,31)=l_CreatedName)
            Return l_Name
        }

    ;-- Return null if nothing found
    Return
    }


;------------------------------
;
; Function: Fnt_FontSizeToFit
;
; Description:
;
;   Determines the largest font size that can be used to fit a string within
;   a specified width.
;
; Type:
;
;   Experimental/Preview.  Subject to change.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String - Any string.  If this parameter is null, the current (or default)
;       font size is returned.
;
;   p_Width - The width to fit the string, in pixels.
;
; Returns:
;
;   The font size (in points) needed to fit the specified string within the
;   specified size.
;
; Calls To Other Functions:
;
; * <Fnt_CreateFont>
; * <Fnt_DeleteFont>
; * <Fnt_FOGetSize>
; * <Fnt_GetFontName>
; * <Fnt_GetFontOptions>
; * <Fnt_GetFontSize>
; * <Fnt_GetStringSize>
;
; Remarks:
;
; * This function uses a brute-force method to determine the font size needed.
;   The current font (from the hFont parameter) is checked first and then
;   the size is incremented or decremented by one until the desired size is
;   found.  Although this method is crude and can be resource intensive if
;   there is large difference between the initial and final font size, it
;   appears to be accurate for all fonts and all strings.  The function works
;   best if the developer starts with a font that is as close to desired size as
;   possible.  If possible, this methodology will be improved in the future.
;
; * If the string cannot fit into the specified width, the smallest font size
;   available is returned.  For scalable fonts, this size will always be 1.
;   For non-scalable fonts, the size will be whatever is the lowest font size
;   is available.
;
; * This function calculates the point size of a font that is needed for a
;   specified width.  However, the current version of the function does not take
;   into consideration the height of the font.  If the value returned by this
;   function is used to set the font of a GUI control, the program may need to
;   also set/correct the height of the control to avoid clipping or gaps.
;
; * The amount of space necessary to fit text within a fixed-size GUI control is
;   usually a bit more than the size of the text itself.  Calculating the amount
;   of dead/filler space required by the control for a specific font size is not
;   too difficult.  However, identifying how must filler is needed when the font
;   size is not known is a bit more difficult, if not impossible.  Artificially
;   increasing the length of the string (p_String parameter) by one or more
;   characters or artificially reducing the width (p_Width parameter) by a small
;   amount will increase the accuracy (and usefulness) of the font size returned
;   by this function if the value is used on a control that requires dead/filler
;   space.  See the example script for an example of this technique.
;
; * The resources used by this function are very reasonable if the font size
;   change is relatively small (<50 point size change).  However, if the change
;   is large (>250 point size change) or very large (>500 point size change),
;   the response time can range anywhere from noticeable to significant (>1
;   second).  If there is possibility of a large font size change in the script,
;   performance can be significantly improved by setting *SetBatchLines* to a
;   higher value before calling this function.  For example:
;
;       (start code)
;       SetBatchLines 50ms
;       FontSize:=Fnt_FontSizeToFit(hFont,...)
;       SetBatchLines 10ms  ;-- This is the system default
;       (end)
;
;-------------------------------------------------------------------------------
Fnt_FontSizeToFit(hFont,p_String,p_Width)
    {
    Static s_MaxFontSize:=1500

    ;-- Collect font name and font options
    l_Font       :=Fnt_GetFontName(hFont)
    l_FontOptions:=Fnt_GetFontOptions(hFont)

    ;-- Extract size from the options
    l_Size:=Fnt_FOGetSize(l_FontOptions,10)  ;-- 10 is the fail-safe default

    ;-- Bounce if p_String is null
    if not StrLen(p_String)
        Return l_Size

    ;-- Get the width of the string with the current font
    Fnt_GetStringSize(hFont,p_String,l_Width)

    ;-- We're done if it's an exact match
    if (l_Width=p_Width)
        Return l_Size

    ;-- Set l_LastValidSize
    ;   Note: The initial value of this variable determines whether the font
    ;   size needs be to increased or decreased.
    l_LastValidSize:=(l_Width<p_Width) ? l_Size:0

    ;-- Initialize for the loop
    l_ActualSize       :=l_Size
    l_LastActualSize   :=l_Size
    l_NoSizeChangeCount:=0

    ;-- Find the largest font size for the string
    Loop
        {
        if not l_LastValidSize  ;-- Size will be less than the starting size
            {
            ;-- Break if too small
            if (l_Size<2)
                {
                l_LastValidSize:=l_ActualSize
                Break
                }

            ;-- Decrement size
            l_Size--
            }
         else  ;-- Size will be larger than the starting size
            {
            ;-- Increment size
            l_Size++

            ;-- Break if too large
            if (l_Size>s_MaxFontSize)
                Break
            }

        ;-- Create a temporary font with the new size
        hFontTemp:=Fnt_CreateFont(l_Font,l_FontOptions . " s" . l_Size)

        ;-- Collect the width of the string with the temporary font
        Fnt_GetStringSize(hFontTemp,p_String,l_Width)

        ;-- Collect the actual size of the new font
        ;   Note: For non-scalable fonts, the actual size may be different than
        ;   the requested size.
        l_ActualSize:=Fnt_GetFontSize(hFontTemp)

        ;-- Delete the temporary font
        Fnt_DeleteFont(hFontTemp)

        ;-- Update l_NoSizeChangeCount
        if (l_ActualSize=l_LastActualSize)
            l_NoSizeChangeCount++
         else
            l_NoSizeChangeCount:=0

        ;-- Reset l_LastActualSize
        l_LastActualSize:=l_ActualSize

        ;-- Are we done?
        if not l_LastValidSize  ;-- Size will be less than the starting size
            {
            if (l_Width<=p_Width)
                {
                l_LastValidSize:=l_ActualSize
                Break
                }
            }
         else  ;-- Size will be larger than the starting size
            {
            if (l_Width>=p_Width)
                Break

            ;-- Update l_LastValidSize
            l_LastValidSize:=l_ActualSize
            }

        ;-- Break if the actual size has not changed in 10 iterations
        ;   Note: This can occur if using a non-scalable font
        if (l_NoSizeChangeCount>=10)
            {
            l_LastValidSize:=l_ActualSize
            Break
            }
        }

    ;-- Return to sender
    Return l_LastValidSize
    }


;------------------------------
;
; Function: Fnt_FontSizeToFitHeight
;
; Description:
;
;   Determines the largest font size that can be used to fit within a specified
;   height.
;
; Type:
;
;   Experimental/Preview.  Subject to change.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_Height - The height, in pixels, to fit the font.
;
; Returns:
;
;   The font size (in points) needed to fit within the specified height.
;
; Calls To Other Functions:
;
; * <Fnt_CreateFont>
; * <Fnt_DeleteFont>
; * <Fnt_FOGetSize>
; * <Fnt_GetFontHeight>
; * <Fnt_GetFontName>
; * <Fnt_GetFontOptions>
; * <Fnt_GetFontSize>
;
; Remarks:
;
;   If a logical font cannot fit into the specified height, the smallest font
;   size available is returned.  For scalable fonts, this size will always be 1.
;   For non-scalable fonts, the size will be whatever is the lowest font size
;   is available.
;
;-------------------------------------------------------------------------------
Fnt_FontSizeToFitHeight(hFont,p_Height)
    {
    Static Dummy3851
          ,s_MaxFontSize:=1500

          ;-- Device constants
          ,LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Use the height and internal leading value of the current font to
    ;   estimate the new height and font size.
    l_Height:=Fnt_GetFontHeight(hFont)
    l_FontInternalLeading:=Fnt_GetFontInternalLeading(hFont)
    l_EsimatedHeight     :=p_Height-(p_Height*(l_FontInternalLeading/l_Height))
    l_EstimatedSize      :=Floor(l_EsimatedHeight*72/l_LogPixelsY)
    if (l_EstimatedSize<1)
        l_EstimatedSize:=1

    ;-- Create a temporary font using the estimated new size
    hFontTemp:=Fnt_CreateFont(Fnt_GetFontName(hFont),Fnt_GetFontOptions(hFont) . " s" . l_EstimatedSize)

    ;-- Collect font information
    l_Font       :=Fnt_GetFontName(hFontTemp)
    l_FontOptions:=Fnt_GetFontOptions(hFontTemp)
    l_Height     :=Fnt_GetFontHeight(hFontTemp)

    ;-- Extract the size from the font options.  It may be different than the
    ;   requested size.
    l_Size:=Fnt_FOGetSize(l_FontOptions,10)  ;-- 10 is the fail-safe default

    ;-- Delete the temporary font
    Fnt_DeleteFont(hFontTemp)

    ;-- We're done if it's an exact match
    if (l_Height=p_Height)
        Return l_Size

    ;-- Set l_LastValidSize
    ;   Note: The initial value of this variable determines whether the font
    ;   size needs be to increased or decreased.
    l_LastValidSize:=(l_Height<p_Height) ? l_Size:0

    ;-- Initialize for the loop
    l_ActualSize       :=l_Size
    l_LastActualSize   :=l_Size
    l_NoSizeChangeCount:=0

    ;-- Find the largest font size for the requested height
    Loop
        {
        if not l_LastValidSize  ;-- Size will be less than the starting size
            {
            ;-- Break if too small
            if (l_Size<2)
                {
                l_LastValidSize:=l_ActualSize
                Break
                }

            ;-- Decrement size
            l_Size--
            }
         else  ;-- Size will be larger than the starting size
            {
            ;-- Increment size
            l_Size++

            ;-- Break if too large
            if (l_Size>s_MaxFontSize)
                Break
            }

        ;-- Create a temporary font with the new size
        hFontTemp:=Fnt_CreateFont(l_Font,l_FontOptions . " s" . l_Size)

        ;-- Collect the height of the temporary font
        l_Height:=Fnt_GetFontHeight(hFontTemp)

        ;-- Collect the actual size of the new font
        ;   Note: For non-scalable fonts, the actual size may be different than
        ;   the requested size.
        l_ActualSize:=Fnt_GetFontSize(hFontTemp)

        ;-- Delete the temporary font
        Fnt_DeleteFont(hFontTemp)

        ;-- Update l_NoSizeChangeCount
        if (l_ActualSize=l_LastActualSize)
            l_NoSizeChangeCount++
         else
            l_NoSizeChangeCount:=0

        ;-- Reset l_LastActualSize
        l_LastActualSize:=l_ActualSize

        ;-- Are we done?
        if not l_LastValidSize  ;-- Size will be less than the starting size
            {
            if (l_Height<=p_Height)
                {
                l_LastValidSize:=l_ActualSize
                Break
                }
            }
         else  ;-- Size will be larger than the starting size
            {
            if (l_Height>=p_Height)
                Break

            ;-- Update l_LastValidSize
            l_LastValidSize:=l_ActualSize
            }

        ;-- Break if the actual size has not changed in 10 iterations
        ;   Note: This can occur if using a non-scalable font
        if (l_NoSizeChangeCount>9)
            {
            l_LastValidSize:=l_ActualSize
            Break
            }
        }

    ;-- Return to sender
    Return l_LastValidSize
    }


;------------------------------
;
; Function: Fnt_FODecrementSize
;
; Description:
;
;   Decrements the value of the size option within a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   r_FO - Variable that contains font options in the AutoHotkey format.
;
;   p_DecrementValue - Decrement value.  The default is 1.
;
;   p_MinSize - The minimize size.  The default is 1.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.  FALSE is returned if a "s"ize option
;   is not defined or if decrementing the size would set the value below the
;   p_MinSize value.
;
; Calls To Other Functions:
;
; * <Fnt_FOGetSize>
; * <Fnt_FOSetSize>
;
;-------------------------------------------------------------------------------
Fnt_FODecrementSize(ByRef r_FO,p_DecrementValue=1,p_MinSize=1)
    {
    if l_Size:=Fnt_FOGetSize(r_FO)
        if (l_Size-p_DecrementValue>=p_MinSize)
            {
            Fnt_FOSetSize(r_FO,l_Size-p_DecrementValue)
            Return True
            }

    Return False
    }

;------------------------------
;
; Function: Fnt_FOGetColor
;
; Description:
;
;   Gets the color name or RBG color value from the color option within a font
;   option string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   p_FO - A string that contains font options in the AutoHotkey format.
;
;   p_DefaultColor - The value returned if no color option has been specified.
;       Set to a color name (see the AutoHotkey documentation for a list of
;       supported color names), a 6-digit RGB value, the word "Default" to use
;       the system's default text color, or null (the default) to indicate no
;       default color.  Example values: "Red", "FF23AB", "Default".
;
;   p_ColorName2RGB - If set to TRUE and the color option (or p_DefaultColor
;       if no color options are found) contains a valid color name (Ex:
;       "Fuchsia"), the color name will be converted to a 6-digit RGB Hex value
;       (Ex: "FF00FF").
;
; Returns:
;
;   The color specified by the last "c"olor option if found, otherwise the value
;   specified in the p_DefaultColor parameter, if any.
;
; Remarks:
;
;   Since possible colors include 0x0 and "000000", testing the return value for
;   a TRUE/FALSE value will not always give the desired result.  Instead, check
;   for a null/not null value or check the length of the return value.
;
;-------------------------------------------------------------------------------
Fnt_FOGetColor(p_FO,p_DefaultColor="",p_ColorName2RGB=False)
    {
    l_Color   :=""
    l_FoundPos:=1
    Loop
        {
        if not l_FoundPos:=RegExMatch(A_Space . p_FO,"i) c[0-9|a-z]+",l_REOutput,l_FoundPos)
            Break

        l_Color:=SubStr(l_REOutput,3)
        l_FoundPos+=StrLen(l_REOutput)
        }

    l_Color:=StrLen(l_Color) ? l_Color:p_DefaultColor
    if StrLen(l_Color)
        if p_ColorName2RGB
            if l_Color is not xDigit
                l_Color:=SubStr(Fnt_ColorName2RGB(l_Color),3)

    Return l_Color
    }


;------------------------------
;
; Function: Fnt_FOGetSize
;
; Description:
;
;   Gets the size value of the last size option within a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   p_FO - A string that contains font options in the AutoHotkey format.
;
;   p_DefaultSize - The value returned if no size option has been specified.
;       The default is FALSE (0).
;
; Returns:
;
;   The size specified by the last "s"ize option if found, otherwise the value
;   of the p_DefaultSize parameter which if not specified is FALSE (0).
;
;-------------------------------------------------------------------------------
Fnt_FOGetSize(p_FO,p_DefaultSize=0)
    {
    Static s_RegExPattern:="i) s[0-9]+ "
    l_Size    :=""
    l_FoundPos:=1
    Loop
        {
        if not l_FoundPos:=RegExMatch(A_Space . p_FO . A_Space,s_RegExPattern,l_REOutput,l_FoundPos)
            Break

        l_Size:=SubStr(l_REOutput,3,-1)
        l_FoundPos+=StrLen(l_REOutput)-1
        }

    Return StrLen(l_Size) ? l_Size:p_DefaultSize
    }


;------------------------------
;
; Function: Fnt_FOIncrementSize
;
; Description:
;
;   Increments the value of the size option within a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   r_FO - Variable that contains font options in the AutoHotkey format.
;
;   p_IncrementValue - Increment value.  The default is 1.
;
;   p_MaxSize - The maximum size.  The default is 999.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.  FALSE is returned if a "s"ize option
;   is not defined or if incrementing the size would set the value above the
;   p_MinSize value.
;
; Calls To Other Functions:
;
; * <Fnt_FOGetSize>
; * <Fnt_FOSetSize>
;
;-------------------------------------------------------------------------------
Fnt_FOIncrementSize(ByRef r_FO,p_IncrementValue=1,p_MaxSize=999)
    {
    if l_Size:=Fnt_FOGetSize(r_FO)
        if (l_Size+p_IncrementValue<=p_MaxSize)
            {
            Fnt_FOSetSize(r_FO,l_Size+p_IncrementValue)
            Return True
            }

    Return False
    }


;------------------------------
;
; Function: Fnt_FORemoveColor
;
; Description:
;
;   Removes all color options from a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   r_FO - Variable that contains font options in the AutoHotkey format.
;
; Returns:
;
;   TRUE if at least one color option was removed, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Fnt_FOGetColor>
;
;-------------------------------------------------------------------------------
Fnt_FORemoveColor(ByRef r_FO)
    {
    if StrLen(Fnt_FOGetColor(r_FO))
        {
        r_FO:=RegExReplace(A_Space . r_FO,"i) c[0-9|a-z]+","")
        StringTrimLeft r_FO,r_FO,1
        Return True
        }

    Return False
    }


;------------------------------
;
; Function: Fnt_FOSetColor
;
; Description:
;
;   Sets or replaces all color options within a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   r_FO - Variable that contains font options in the AutoHotkey format.
;
;   p_Color - Color name or 6-digit RGB value.
;
; Calls To Other Functions:
;
; * <Fnt_FOGetColor>
;
;-------------------------------------------------------------------------------
Fnt_FOSetColor(ByRef r_FO,p_Color)
    {
    ;-- Bounce if p_Size is null/space(s)
    if p_Color is Space
        return

    ;-- Remove all leading/trailing white space
    p_Color:=Trim(p_Color," `f`n`r`t`v")

    ;-- Set color
    if StrLen(Fnt_FOGetColor(r_FO))
        {
        r_FO:=RegExReplace(A_Space . r_FO,"i) c[0-9|a-z]+",A_Space . "c" . p_Color)
        StringTrimLeft r_FO,r_FO,1
        }
     else
        r_FO.=(StrLen(r_FO) ? A_Space:"") . "c" . p_Color
    }


;------------------------------
;
; Function: Fnt_FOSetSize
;
; Description:
;
;   Sets or replaces all size options within a font options string.
;
; Type:
;
;   Helper function.
;
; Parameters:
;
;   r_FO - Variable that contains font options in the AutoHotkey format.
;
;   p_Size - Font size to set.
;
; Calls To Other Functions:
;
; * <Fnt_FOGetSize>
;
; Remarks:
;
;   No changes are made if p_Size does not contain an integer value.
;
;-------------------------------------------------------------------------------
Fnt_FOSetSize(ByRef r_FO,p_Size)
    {
    Static s_RegExPattern:="i) s[0-9]+ "

    ;-- Bounce if null/space(s) or non-integer
    p_Size:=Trim(p_Size," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    if p_Size is Space
        return

    if p_Size is not Integer
        return

    ;-- If not currently defined, add "s"ize option to the end
    if not Fnt_FOGetSize(r_FO)
        {
        r_FO.=(StrLen(r_FO) ? A_Space:"") . "s" . p_Size
        return
        }

    ;-- Set all "s"ize font options
    l_StartPos:=1
    Loop
        {
        if not l_StartPos:=RegExMatch(A_Space . r_FO . A_Space,s_RegExPattern,l_REOutput,l_StartPos)
            Break

        ;-- Replace
        r_FO:=RegExReplace(A_Space . r_FO . A_Space,s_RegExPattern,A_Space . "s" . p_Size . A_Space,l_Count,1,l_StartPos)

        ;-- Remove leading and trailing spaces
        r_FO:=SubStr(r_FO,2,-1)

        ;-- Update start position
        l_StartPos+=StrLen(A_Space . "s" . p_Size)
        }
    }


;------------------------------
;
; Function: Fnt_GetCaptionFontName
;
; Description:
;
;   Returns the typeface name of the caption font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function gets the typeface name of the caption font creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetCaptionFontName()
    {
    Static LF_FACESIZE:=32  ;-- In TCHARS
    Return StrGet(Fnt_GetNonClientMetrics()+24+28,LF_FACESIZE)
    }


;------------------------------
;
; Function: Fnt_GetCaptionFontSize
;
; Description:
;
;   Returns the point size of the caption font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function calculates the point size of the caption font without creating
;   the font.
;
;-------------------------------------------------------------------------------
Fnt_GetCaptionFontSize()
    {
    Static LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Extract the height for the Message font (can be negative)
    l_Height:=Abs(NumGet(Fnt_GetNonClientMetrics()+24,0,"Int"))

    ;-- Convert height to point size
    ;   Note: Without the internal leading height value that is only available
    ;   after the font has been created, this calculation is just a best guess
    ;   of the font's point size.  However, this calculation is widely used and
    ;   will result in the correct font size if the Fnt_CreateFont function or
    ;   the AutoHotkey "gui Font" command is used to create the font.
    Return Round(l_Height*72/l_LogPixelsY)
    }


;------------------------------
;
; Function: Fnt_GetDefaultGUIMargins
;
; Description:
;
;   Calculates the default margins for an AutoHotkey GUI.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
;   r_MarginX, r_MarginY - Output variables. [Optional] These variables are
;       loaded with the default margins (in pixels) for an AutoHotkey GUI.
;
;   p_DPIScale - Factor in the current display DPI into the default margin
;       calculations.  Set to TRUE to enable, FALSE to disable, or "A" (the
;       default) to automatically determine if the current display DPI should be
;       factored into the calculation or not.  See the *Remarks* section for
;       more information.
;
; Returns:
;
;   Address to a POINT structure.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontSize>
;
; Remarks:
;
; * AutoHotkey documentation for GUI margins...
;   <https://autohotkey.com/docs/commands/Gui.htm#DPIScale>
;
; * Important: On rare occasion, the margins returned from this function may not
;   match the actual GUI margins because the calculations are based on the
;   actual font size of control, not the requested font size.  For example, if
;   the developer uses the "gui Font" command to create a 24 point Courier (not
;   "Courier New") font, AutoHotkey will calculate margins based on this
;   font/size.  However, when the font is actually created, the 24 point size is
;   not available and so a Courier 15 point font is created instead.  So... the
;   actual margins (based on the _requested_ font/size) will not match the
;   calculated margins (based on the actual font/size).
;
; * Starting with AutoHotkey v1.1.11, the formula to calculate the default GUI
;   margins was changed to always factor in the current display DPI.  The "gui
;   -DPIScale" command has no effect on this change.  The p_DPIScale parameter
;   instructs the function whether or not to factor in the current display DPI.
;   If set to TRUE, the current display DPI is always factored into the
;   calculation.  If set to FALSE, the current display DPI is never factored
;   into the calculation.  If set to "A" (the default), the function will
;   automatically determine whether or not to factor in the current display DPI
;   (TRUE if running on AutoHotkey v1.1.11+, otherwise FALSE).
;
;-------------------------------------------------------------------------------
Fnt_GetDefaultGUIMargins(hFont=0,ByRef r_MarginX="",ByRef r_MarginY="",p_DPIScale="A")
    {
    Static Dummy9104
          ,POINT

          ;-- Device constants
          ,LOGPIXELSX:=88
          ,LOGPIXELSY:=90

    ;-- Initialize
    VarSetCapacity(POINT,8,0)
    l_LogPixelsX:=96
        ;-- The default number of horizontal pixels per logical inch
    l_LogPixelsY:=96
        ;-- The default number of vertical pixels per logical inch
    StringUpper p_DPIScale,p_DPIScale
        ;-- Just in case StringCaseSense is On

    ;-- if p_DPIScale is "A" (Automatic), reset to either TRUE or FALSE
    if (p_DPIScale="A")  ;-- Automatic
        if A_ScreenDPI   ;-- AutoHotkey v1.1.11+
            p_DPIScale:=(A_ScreenDPI=96) ? False:True
         else
            p_DPIScale:=False

    ;-- If needed, collect the current horizontal and vertical display DPI
    if p_DPIScale
        {
        hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
        l_LogPixelsX:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSX)
        l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
        DllCall("DeleteDC","Ptr",hDC)
        }

    ;-- Calculate the default margins
    l_Size:=Fnt_GetFontSize(hFont)
    NumPut(r_MarginX:=Round(Floor(l_Size*1.25)*(l_LogPixelsX/96)),POINT,0,"Int") ;-- x
    NumPut(r_MarginY:=Round(Floor(l_Size*0.75)*(l_LogPixelsY/96)),POINT,4,"Int") ;-- y
    Return &POINT
    }


;------------------------------
;
; Function: Fnt_GetDialogBackgroundColor
;
; Description:
;
;   Retrieves the current dialog background color.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
;-------------------------------------------------------------------------------
Fnt_GetDialogBackgroundColor()
    {
    Static COLOR_3DFACE:=15
    Return Fnt_GetSysColor(COLOR_3DFACE)
    }


;------------------------------
;
; Function: Fnt_GetDialogBaseUnits
;
; Description:
;
;   Calculates the dialog base units, which are the average width and height
;   (in pixels) of characters of a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
;   r_HorzDBUs, r_VertDBUs - Output variables. [Optional] These variables are
;       loaded with the horizontal and vertical base units for the font.
;
; Returns:
;
;   Address to a SIZE structure.  The cx member of the SIZE structure contains
;   the horizontal dialog base units for the font.  The cy member contains the
;   vertical dialog base units.
;
; Calls To Other Functions:
;
; * <Fnt_GetStringSize>
;
; Remarks:
;
;   Unlike <Fnt_GetFontAvgCharWidth> which returns the average character width
;   as defined by the font's designer (usually the width of the letter "x"),
;   this function uses a formula created by Microsoft which generates an
;   accurate and consistent result regardless of the font.
;
;-------------------------------------------------------------------------------
Fnt_GetDialogBaseUnits(hFont=0,ByRef r_HorzDBUs="",ByRef r_VertDBUs="")
    {
    Static SIZE
    VarSetCapacity(SIZE,8,0)

    ;-- Calculate the dialog base units for the font
    Fnt_GetStringSize(hFont,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz",l_StringW,r_VertDBUs)
    NumPut(r_HorzDBUs:=Floor((l_StringW/26+1)/2),SIZE,0,"Int")
    NumPut(r_VertDBUs,SIZE,4,"Int")
    Return &SIZE
    }


;------------------------------
;
; Function: Fnt_GetListOfFonts
;
; Description:
;
;   Generate a list of uniquely-named typeface font names.
;
; Parameters:
;
;   p_CharSet - Character set. [Optional].  If blank/null (the default), the
;       DEFAULT_CHARSET character set is used which will generate fonts from all
;       character sets.  See the function's static variables for a list of
;       possible values for this parameter.
;
;   p_Name - Typeface name of a font. [Optional]  If blank/null (the default),
;       one item for every unique typeface name is generated.  If set to a
;       typeface name, that name is returned if valid.  Note: If specified, the
;       typeface name must be exact (not case sensitive).  A partial name will
;       return nothing.
;
;   p_Flags - Flags to filters the fonts that are returned. [Optional]  See the
;       function's static variables for a list of possible flag values.
;
; Returns:
;
;   A list of uniquely-named typeface font names that match the font
;   characteristics specified by the parameters if successful, otherwise null.
;   Font names are delimited by the LF (Line Feed) character.
;
; Calls To Other Functions:
;
; * <Fnt_EnumFontFamExProc> (via callback)
;
;-------------------------------------------------------------------------------
Fnt_GetListOfFonts(p_CharSet="",p_Name="",p_Flags=0)
    {
    Global Fnt_EnumFontFamExProc_List
    Static Dummy6561

          ;-- Character sets
          ,ANSI_CHARSET       :=0
          ,DEFAULT_CHARSET    :=1
          ,SYMBOL_CHARSET     :=2
          ,MAC_CHARSET        :=77
          ,SHIFTJIS_CHARSET   :=128
          ,HANGUL_CHARSET     :=129
          ,JOHAB_CHARSET      :=130
          ,GB2312_CHARSET     :=134
          ,CHINESEBIG5_CHARSET:=136
          ,GREEK_CHARSET      :=161
          ,TURKISH_CHARSET    :=162
          ,VIETNAMESE_CHARSET :=163
          ,HEBREW_CHARSET     :=177
          ,ARABIC_CHARSET     :=178
          ,BALTIC_CHARSET     :=186
          ,RUSSIAN_CHARSET    :=204
          ,THAI_CHARSET       :=222
          ,EASTEUROPE_CHARSET :=238
          ,OEM_CHARSET        :=255

          ;-- ChooseFont flags
          ,CF_SCRIPTSONLY:=0x400
                ;-- Exclude OEM and Symbol fonts.

          ,CF_NOOEMFONTS:=0x800
                ;-- Exclude OEM fonts.

          ,CF_NOSIMULATIONS:=0x1000
                ;-- [Future] Exlclude font simulations.

          ,CF_FIXEDPITCHONLY:=0x4000
                ;-- Include fixed-pitch fonts only.

          ,CF_SCALABLEONLY:=0x20000
                ;-- Include scalable fonts only.

          ,CF_TTONLY:=0x40000
                ;-- Include TrueType fonts only.

          ,CF_NOVERTFONTS:=0x1000000
                ;-- Exclude vertical fonts.

          ,CF_NOSYMBOLFONTS:=0x10000000
                ;-- [Custom Flag]  Exclude symbol fonts.

          ,CF_VARIABLEPITCHONLY:=0x20000000
                ;-- [Custom Flag]  Include variable pitch fonts only.

          ,CF_FUTURE:=0x40000000
                ;-- [Custom Flag]  Future.

          ,CF_FULLNAME:=0x80000000
                ;-- [Custom Flag]  If specified, returns the full unique name of
                ;   the font.  For example, ABC Font Company TrueType Bold
                ;   Italic Sans Serif.  This flag may increase the number of
                ;   font names returned.

          ;-- Device constants
          ,HWND_DESKTOP:=0

          ;-- LOGFONT constants
          ,LF_FACESIZE:=32  ;-- In TCHARS

    ;-- Initialize
    Fnt_EnumFontFamExProc_List:=""

    ;-- Parameters
    p_CharSet:=Trim(p_CharSet," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    if p_CharSet is Space
        p_CharSet:=DEFAULT_CHARSET

    p_Name:=Trim(p_Name," `f`n`r`t`v")
        ;-- Remove all leading/trailing white space

    ;-- Create, initialize, and populate LOGFONT structure
    VarSetCapacity(LOGFONT,A_IsUnicode ? 92:60,0)
    NumPut(p_CharSet,LOGFONT,23,"UChar")                ;-- lfCharSet

    if StrLen(p_Name)
        StrPut(SubStr(p_Name,1,31),&LOGFONT+28,LF_FACESIZE)
            ;-- lfFaceName

    ;-- Enumerate fonts
    hDC:=DllCall("GetDC","Ptr",HWND_DESKTOP)
    DllCall("EnumFontFamiliesEx"
        ,"Ptr",hDC                                      ;-- hdc
        ,"Ptr",&LOGFONT                                 ;-- lpLogfont
        ,"Ptr",RegisterCallback("Fnt_EnumFontFamExProc","Fast")
            ;-- lpEnumFontFamExProc
        ,"Ptr",p_Flags                                  ;-- lParam
        ,"UInt",0)                                      ;-- dwFlags

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Sort, remove duplicates, and return
    Sort Fnt_EnumFontFamExProc_List,U
    Return Fnt_EnumFontFamExProc_List
    }


;------------------------------
;
; Function: Fnt_GetLongestString
;
; Description:
;
;   Determines the longest string (measured in pixels) from a list of strings.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String* - Zero or more parameters containing a string, an array of
;       strings, a list of string delimited by end-of-line character(s) (see
;       the *End-Of-Line Character(s)* section for more information), or any
;       combination of these types.
;
; Returns:
;
;   The longest string found which can be null.  If more than one string is
;   the same length as the longest string, the first one found is returned.
;   ErrorLevel is set to the length of the longest string (in pixels) which can
;   be 0.
;
; End-Of-Line Character(s):
;
;   Multiple strings can be represented as a single parameter value by inserting
;   an end-of-line (EOL) delimiter between each string.  For example, "Label
;   1`nLongLabel 2`nLabel 3".  The EOL character(s) in the string must be in a
;   DOS/Windows (EOL=CR+LF), Unix (EOL=LF), or DOS/Unix mix format.   A
;   multi-line string in any other format must be converted to a DOS/Windows or
;   Unix format before calling this function.
;
;-------------------------------------------------------------------------------
Fnt_GetLongestString(hFont,p_String*)
    {
    Static Dummy0378
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0
          ,SIZE

    ;-- Initialize
    l_LongestString :=""
    l_LongestStringW:=0
    ArrayOfStrings  :=Object()
    VarSetCapacity(SIZE,8,0)

    ;-- Extract string(s) from parameter(s).  Load to ArrayOfStrings
    For l_Index,l_ParamString in p_String
        {
        if IsObject(l_ParamString)
            {
            For l_Index,l_StringFromObject in l_ParamString
                Loop Parse,l_StringFromObject,`n,`r
                    if StrLen(A_LoopField)  ;-- Ignore null strings
                        ArrayOfStrings.Push(A_LoopField)
            }
        else  ;-- not an object
            {
            Loop Parse,l_ParamString,`n,`r
                if StrLen(A_LoopField)  ;-- Ignore null strings
                    ArrayOfStrings.Push(A_LoopField)
            }
        }

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Determine the longest string
    For l_Index,l_String in ArrayOfStrings
        {
        DllCall("GetTextExtentPoint32"
            ,"Ptr",hDC                                  ;-- hDC
            ,"Str",l_String                             ;-- lpString
            ,"Int",StrLen(l_String)                     ;-- c (string length)
            ,"Ptr",&SIZE)                               ;-- lpSize

        l_Width:=NumGet(SIZE,0,"Int")
        if (l_Width>l_LongestStringW)
            {
            l_LongestString :=l_String
            l_LongestStringW:=l_Width
            }
        }

    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return to sender
    ErrorLevel:=l_LongestStringW
    Return l_LongestString
    }


;------------------------------
;
; Function: Fnt_GetFont
;
; Description:
;
;   Retrieves the font with which a control is currently drawing its text.
;
; Parameters:
;
;   hControl - Handle to a control.
;
; Returns:
;
;   The handle to the font used by the control or 0 if the using the system
;   font.
;
;-------------------------------------------------------------------------------
Fnt_GetFont(hControl)
    {
    Static WM_GETFONT:=0x31
    SendMessage WM_GETFONT,0,0,,ahk_id %hControl%
    Return ErrorLevel
    }


;------------------------------
;
; Function: Fnt_GetFontAvgCharWidth
;
; Description:
;
;   Retrieves the average width of characters in a font (generally defined as
;   the width of the letter x).  This value does not include the overhang
;   required for bold or italic characters.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The average width of characters in the font, in pixels.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_GetFontAvgCharWidth(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),20,"Int")
    }


;------------------------------
;
; Function: Fnt_GetFontExternalLeading
;
; Description:
;
;   Retrieves the amount of extra leading space (if any) that the application
;   adds between rows.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The external leading space of the font.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_GetFontExternalLeading(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),16,"Int")
    }


;------------------------------
;
; Function: Fnt_GetFontHeight
;
; Description:
;
;   Retrieves the height (ascent + descent) of characters in a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The height of characters in the font.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_GetFontHeight(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),0,"Int")
    }


;------------------------------
;
; Function: Fnt_GetFontInternalLeading
;
; Description:
;
;   Retrieves the amount of leading space (if any) inside the bounds set by the
;   tmHeight member.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The internal leading space of the font.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
; Remarks:
;
;   Accent marks and other diacritical characters may occur in the internal
;   leading area.
;
;-------------------------------------------------------------------------------
Fnt_GetFontInternalLeading(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),12,"Int")
    }


;------------------------------
;
; Function: Fnt_GetFontMaxCharWidth
;
; Description:
;
;   Retrieves the width of the widest character in a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The width of the widest character in the font, in pixels.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
; Observations:
;
;   The value returned for this member can sometimes be unusually large.  For
;   one font, I found a MaxCharWidth value that was 6 times larger than the
;   AvgCharWidth.  For some fonts, a large discrepancy can be explained by the
;   unusual nature of the font (symbols, math, etc.) but for other fonts, a
;   very large discrepancy is harder to explain.  Note: These font values are
;   set by the font's designer.  They may be correct and/or intended (the most
;   likely reality) or they may be incorrect/unintended (read: bug).
;
;-------------------------------------------------------------------------------
Fnt_GetFontMaxCharWidth(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),24,"Int")
    }


;------------------------------
;
; Function: Fnt_GetFontMetrics
;
; Description:
;
;   Retrieves the text metrics for a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   Address to a TEXTMETRIC structure.
;
;-------------------------------------------------------------------------------
Fnt_GetFontMetrics(hFont=0)
    {
    Static Dummy6596
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0
          ,TEXTMETRIC

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Get the metrics for the font
    VarSetCapacity(TEXTMETRIC,A_IsUnicode ? 60:56,0)
    DllCall("GetTextMetrics","Ptr",hDC,"Ptr",&TEXTMETRIC)

    ;-- Release the objects needed by the "GetTextMetrics" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return to sender
    Return &TEXTMETRIC
    }


;------------------------------
;
; Function: Fnt_GetFontName
;
; Description:
;
;   Retrieves the typeface name of a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The typeface name of the font.
;
;-------------------------------------------------------------------------------
Fnt_GetFontName(hFont=0)
    {
    Static Dummy8789
          ,DEFAULT_GUI_FONT    :=17
          ,HWND_DESKTOP        :=0
          ,MAX_FONT_NAME_LENGTH:=32     ;-- In TCHARS

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Get the font name
    VarSetCapacity(l_FontName,MAX_FONT_NAME_LENGTH*(A_IsUnicode ? 2:1))
    DllCall("GetTextFace","Ptr",hDC,"Int",MAX_FONT_NAME_LENGTH,"Str",l_FontName)

    ;-- Release the objects needed by the "GetTextFace" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return to sender
    Return l_FontName
    }


;------------------------------
;
; Function: Fnt_GetFontOptions
;
; Description:
;
;   Retrieves the characteristics of a logical font for use in other library
;   functions or by the AutoHotkey
;   <gui Font at https://autohotkey.com/docs/commands/Gui.htm#Font> command.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   Font options in the AutoHotkey "gui Font" format.  See the *Options* section
;   for more information.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
; Options:
;
;   Font options returned by this function may include the following.
;
;   bold - Font weight is 700, i.e. bold.
;
;   italic - Italic font.
;
;   s{size in points} - Font size (in points).  For example: s12
;
;   strike - Strikeout font.
;
;   underline - Underlined font.
;
;   w{font weight} - Font weight (thickness or boldness), which is an integer
;       between 1 and 1000 (400 is normal and 700 is bold).  For example: w600.
;       This option is only returned if the font weight is not normal (400) and
;       not bold (700).
;
;   If more than one option is included, it is delimited by a space.  For
;   example: s12 bold
;
; Remarks:
;
;   Library functions that use font options in this format include
;   <Fnt_CreateFont> and <Fnt_ChooseFont>.
;
;   Note: Color is an option of the AutoHotkey
;   <gui Font at https://autohotkey.com/docs/commands/Gui.htm#Font> command and
;   of the ChooseFont API and is included by these commands because text color
;   is often set with the font.  However, text color is a control attribute, not
;   a font attribute and so it is not (read: cannot be) collected/returned by
;   this function.  If text color is to be included as one of the options sent
;   to the AutoHotkey "gui Font" command or to the ChooseFont API, it must must
;   be collected and/or set independently.
;
;-------------------------------------------------------------------------------
Fnt_GetFontOptions(hFont=0)
    {
    Static Dummy8934

          ;-- Device constants
          ,LOGPIXELSY:=90

          ;-- Misc font constants
          ,FW_NORMAL :=400
          ,FW_BOLD   :=700

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Collect the metrics for the font
    pTM:=Fnt_GetFontMetrics(hFont)

    ;-- Size (first and always included)
    l_Options:="s"
        . Round((NumGet(pTM+0,0,"Int")-NumGet(pTM+0,12,"Int"))*72/l_LogPixelsY)
            ;-- (Height - Internal Leading) * 72 / LogPixelsY

    ;-- Weight
    l_Weight:=NumGet(pTM+0,28,"Int")
    if (l_Weight=FW_BOLD)
        l_Options.=A_Space . "bold"
     else
        if (l_Weight<>FW_NORMAL)
            l_Options.=A_Space . "w" . l_Weight

    ;-- Italic
    if NumGet(pTM+0,A_IsUnicode ? 52:48,"UChar")
        l_Options.=A_Space . "italic"

    ;-- Underline
    if NumGet(pTM+0,A_IsUnicode ? 53:49,"UChar")
        l_Options.=A_Space . "underline"

    ;-- Strikeout
    if NumGet(pTM+0,A_IsUnicode ? 54:50,"UChar")
        l_Options.=A_Space . "strike"

    Return l_Options
    }


;------------------------------
;
; Function: Fnt_GetFontSize
;
; Description:
;
;   Retrieves the point size of a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The point size of the font.
;
;-------------------------------------------------------------------------------
Fnt_GetFontSize(hFont=0)
    {
    Static Dummy6499

          ;-- Device constants
          ,HWND_DESKTOP    :=0
          ,LOGPIXELSY      :=90

          ;-- Misc. font constants
          ,DEFAULT_GUI_FONT:=17

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Collect the number of pixels per logical inch along the screen height
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)

    ;-- Get text metrics for the font
    VarSetCapacity(TEXTMETRIC,A_IsUnicode ? 60:56,0)
    DllCall("GetTextMetrics","Ptr",hDC,"Ptr",&TEXTMETRIC)

    ;-- Convert height to point size
    l_Size:=Round((NumGet(TEXTMETRIC,0,"Int")-NumGet(TEXTMETRIC,12,"Int"))*72/l_LogPixelsY)
        ;-- (Height - Internal Leading) * 72 / LogPixelsY

    ;-- Release the objects needed by the "GetTextMetrics" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return to sender
    Return l_Size
    }


;------------------------------
;
; Function: Fnt_GetFontWeight
;
; Description:
;
;   Retrieves the weight (thickness or boldness) of a font.
;
; Parameters:
;
;   hFont - Handle to a logical font. [Optional] Set to 0 (the default) to use
;       the default GUI font.
;
; Returns:
;
;   The weight of the font.  Possible values are from 1 to 1000.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_GetFontWeight(hFont=0)
    {
    Return NumGet(Fnt_GetFontMetrics(hFont),28,"Int")
    }


;------------------------------
;
; Function: Fnt_GetMenuFontName
;
; Description:
;
;   Returns the typeface name of the font used in menu bars.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function gets the typeface name of the font used in menu bars without
;   creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetMenuFontName()
    {
    Static LF_FACESIZE:=32  ;-- In TCHARS
    Return StrGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 224:160)+28,LF_FACESIZE)
    }


;------------------------------
;
; Function: Fnt_GetMenuFontSize
;
; Description:
;
;   Returns the point size of the font that is used in menu bars.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function calculates the point size of the font used in menu bars
;   without creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetMenuFontSize()
    {
    Static LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Extract the height for the Message font (can be negative)
    l_Height:=Abs(NumGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 224:160),0,"Int"))

    ;-- Convert height to point size
    ;   Note: Without the internal leading height value that is only available
    ;   after the font has been created, this calculation is just a best guess
    ;   of the font's point size.  However, this calculation is widely used and
    ;   will result in the correct font size if the Fnt_CreateFont function or
    ;   the AutoHotkey "gui Font" command is used to create the font.
    Return Round(l_Height*72/l_LogPixelsY)
    }


;------------------------------
;
; Function: Fnt_GetMessageFontName
;
; Description:
;
;   Returns the typeface name of the font that is used in message boxes.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function gets the typeface name of the font used in message boxes
;   without creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetMessageFontName()
    {
    Static LF_FACESIZE:=32  ;-- In TCHARS
    Return StrGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 408:280)+28,LF_FACESIZE)
    }


;------------------------------
;
; Function: Fnt_GetMessageFontSize
;
; Description:
;
;   Returns the point size of the font that is used in message boxes.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function calculates the point size of the font used in message boxes
;   without creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetMessageFontSize()
    {
    Static LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Extract the height for the Message font (can be negative)
    l_Height:=Abs(NumGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 408:280),0,"Int"))

    ;-- Convert height to point size
    ;   Note: Without the internal leading height value that is only available
    ;   after the font has been created, this calculation is just a best guess
    ;   of the font's point size.  However, this calculation is widely used and
    ;   will result in the correct font size if the Fnt_CreateFont function or
    ;   the AutoHotkey "gui Font" command is used to create the font.
    Return Round(l_Height*72/l_LogPixelsY)
    }


;------------------------------
;
; Function: Fnt_GetMultilineStringSize
;
; Description:
;
;   Calculates the size of a multiline string for a font.  See the *Remarks*
;   section for more information.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String - The multiline string to be measured.  See the
;       *End-Of-Line Character(s)* section for more information.
;
;   r_Width, r_Height, r_LineCount - Output variables. [Optional] These
;       variables are loaded with the width and height of the string and with
;       the number of lines of text.  Note: r_LineCount is set to 0 if p_String
;       is null, otherwise 1 or more.
;
; Returns:
;
;   Address to a SIZE structure if successful, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontExternalLeading>
; * <Fnt_GetFontHeight>
;
; End-Of-Line Character(s):
;
;   This function uses the LF (Line Feed) and/or CR+LF (Carriage Return and Line
;   Feed) characters in the string as delimiters to logically break the string
;   into multiple lines of text.  The end-of-line (EOL) character(s) in the text
;   must be in a DOS/Windows (EOL=CR+LF), Unix (EOL=LF), or DOS/Unix mix format.
;   A string in any other format must be converted to a DOS/Windows or Unix
;   format before calling this function.
;
; Remarks:
;
;   This is a specialty function to determine the size of a multiline string.
;   The width of the widest line and the combined height of all of the lines is
;   returned.  This information can be used to determine how much space the
;   string will use when attached to a GUI control that supports multiple lines
;   of text.
;
; Observations:
;
;   The width of the tab character is usually determined by the control, not by
;   the font, so including tab characters in the string will not produce the
;   desired results.
;
;-------------------------------------------------------------------------------
Fnt_GetMultilineStringSize(hFont,p_String,ByRef r_Width="",ByRef r_Height="",ByRef r_LineCount="")
    {
    Static Dummy4723
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0
          ,SIZE  

    ;-- Initialize
    r_Width:=r_Height:=r_LineCount:=0
    VarSetCapacity(SIZE,8,0)
        ;-- Note: This structure is used by the "GetTextExtentPoint32"
        ;   function _and_ is used to store the width and height return values
        ;   of the function.

    ;-- Bounce if p_String is null.  All output values are zero.
    if not StrLen(p_String)
        Return &SIZE

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Determine the number of lines
    StringReplace p_String,p_String,`n,`n,UseErrorLevel
    r_LineCount:=ErrorLevel+1

    ;-- Determine the maximum width of the text
    Loop Parse,p_String,`n,`r
        {
        DllCall("GetTextExtentPoint32"
            ,"Ptr",hDC                                  ;-- hDC
            ,"Str",A_LoopField                          ;-- lpString
            ,"Int",StrLen(A_LoopField)                  ;-- c (string length)
            ,"Ptr",&SIZE)                               ;-- lpSize

        l_Width:=NumGet(SIZE,0,"Int")
        if (l_Width>r_Width)
            r_Width:=l_Width
        }

    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Calculate the height by adding up the font height for each line and
    ;   the space between lines (ExternalLeading) if there is morethan one line.
    r_Height:=(Fnt_GetFontHeight(hFont)*r_LineCount)+(Fnt_GetFontExternalLeading(hFont)*(r_LineCount-1))

    ;-- Populate the SIZE structure for return
    NumPut(r_Width, SIZE,0,"Int")
    NumPut(r_Height,SIZE,4,"Int")
    Return &SIZE
    }



;------------------------------
;
; Function: Fnt_GetNonClientMetrics
;
; Description:
;
;   Retrieves the metrics associated with the nonclient area of nonminimized
;   windows.
;
; Returns:
;
;   Address to a NONCLIENTMETRICS structure if successful, otherwise FALSE.
;
;-------------------------------------------------------------------------------
Fnt_GetNonClientMetrics()
    {
    Static Dummy1510
          ,SPI_GETNONCLIENTMETRICS:=0x29
          ,NONCLIENTMETRICS

    ;-- Set the size of NONCLIENTMETRICS structure
    cbSize:=A_IsUnicode ? 500:340
    if (((GV:=DllCall("GetVersion"))&0xFF . "." . GV>>8&0xFF)>=6.0)  ;-- Vista+
        cbSize+=4

    ;-- Create and initialize NONCLIENTMETRICS structure
    VarSetCapacity(NONCLIENTMETRICS,cbSize,0)
    NumPut(cbSize,NONCLIENTMETRICS,0,"UInt")

    ;-- Get nonclient metrics parameter
    if !DllCall("SystemParametersInfo"
        ,"UInt",SPI_GETNONCLIENTMETRICS
        ,"UInt",cbSize
        ,"Ptr",&NONCLIENTMETRICS
        ,"UInt",0)
        Return False

    ;-- Return to sender
    Return &NONCLIENTMETRICS
    }


;------------------------------
;
; Function: Fnt_GetPos
;
; Description:
;
;   Gets the position and size of a GUI control.  See the *Remarks* section
;   for more information.
;
; Parameters:
;
;   hControl - Handle to a control.
;
;   X, Y, Width, Height - Output variables. [Optional]  If defined, these
;       variables contain the coordinates of the control relative to
;       the client-area of the parent window (X and Y), and the width and height
;       of the control (Width and Height).
;
; Remarks:
;
; * If using a DPI setting that is smaller or larger than the default/standard
;   (Ex: 120 DPI, 144 DPI, or custom) _and_ if using the DPIScale feature
;   (AutoHotkey v1.1.11+, enabled by default), the values returned from the
;   *GUIControlGet,OutputVar,Pos* command will reflect the calculations that
;   were used by the DPIScale feature to create the control. For example, if a
;   control were created with the "x20 y20 w500 h200" options and if using 120
;   DPI, the actual position and size of the control will be "x25 y25 w625
;   h250".  When the *GUIControlGet,OutputVar,Pos* command is used on this
;   control, it returns values that reflect the original "x20 y20 w500 h200"
;   options.  This function returns the _actual_ position and/or size of the
;   control regardless of the current display DPI.  It can be useful if the
;   current display DPI is unknown and/or the disposition of the DPIScale
;   feature is unknown.
;
; * If only interested in the Width and/or Height values, the AutoHotkey
;   *<ControlGetPos at http://www.autohotkey.com/docs/commands/ControlGetPos.htm>*
;   or
;   *<WinGetPos at http://www.autohotkey.com/docs/commands/WinGetPos.htm>*
;   commands can be used instead.  Hint: These commands are more efficient and
;   should be used whenever possible.
;
;-------------------------------------------------------------------------------
Fnt_GetPos(hControl,ByRef X="",ByRef Y="",ByRef Width="",ByRef Height="")
    {
    ;-- Initialize
    VarSetCapacity(RECT,16,0)

    ;-- Get the dimensions of the bounding rectangle of the control.
    ;   Note: The values returned are in screen coordinates.
    DllCall("GetWindowRect","Ptr",hControl,"Ptr",&RECT)
    Width :=NumGet(RECT,8,"Int")-NumGet(RECT,0,"Int")   ;-- Width=right-left
    Height:=NumGet(RECT,12,"Int")-NumGet(RECT,4,"Int")  ;-- Height=bottom-top

    ;-- Convert the screen coordinates to client-area coordinates.  Note: The
    ;   API reads and updates the first 8-bytes of the RECT structure.
    DllCall("ScreenToClient"
        ,"Ptr",DllCall("GetParent","Ptr",hControl,"Ptr")
        ,"Ptr",&RECT)

    ;-- Update the output variables
    X:=NumGet(RECT,0,"Int")                             ;-- left
    Y:=NumGet(RECT,4,"Int")                             ;-- top
    }


;------------------------------
;
; Function: Fnt_GetSmCaptionFontName
;
; Description:
;
;   Returns the typeface name of the small caption font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function gets the typeface name of the small caption font creating the
;   font.
;
;-------------------------------------------------------------------------------
Fnt_GetSmCaptionFontName()
    {
    Static LF_FACESIZE:=32  ;-- In TCHARS
    Return StrGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 124:92)+28,LF_FACESIZE)
    }


;------------------------------
;
; Function: Fnt_GetSmCaptionFontSize
;
; Description:
;
;   Returns the point size of the small caption font.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function calculates the point size of the small caption font without
;   creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetSmCaptionFontSize()
    {
    Static LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Extract the height for the Message font (can be negative)
    l_Height:=Abs(NumGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 124:92),0,"Int"))

    ;-- Convert height to point size
    ;   Note: Without the internal leading height value that is only available
    ;   after the font has been created, this calculation is just a best guess
    ;   of the font's point size.  However, this calculation is widely used and
    ;   will result in the correct font size if the Fnt_CreateFont function or
    ;   the AutoHotkey "gui Font" command is used to create the font.
    Return Round(l_Height*72/l_LogPixelsY)
    }


;------------------------------
;
; Function: Fnt_GetStatusFontName
;
; Description:
;
;   Returns the typeface name of the font used in status bars and tooltips.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function gets the typeface name of the font used in status bars and
;   tooltips without creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetStatusFontName()
    {
    Static LF_FACESIZE:=32  ;-- In TCHARS
    Return StrGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 316:220)+28,LF_FACESIZE)
    }


;------------------------------
;
; Function: Fnt_GetStatusFontSize
;
; Description:
;
;   Returns the point size of the font that is used in status bars and tooltips.
;
; Calls To Other Functions:
;
; * <Fnt_GetNonClientMetrics>
;
; Remarks:
;
;   This function calculates the point size of the font used in status bars and
;   tooltips without creating the font.
;
;-------------------------------------------------------------------------------
Fnt_GetStatusFontSize()
    {
    Static LOGPIXELSY:=90

    ;-- Collect the number of pixels per logical inch along the screen height
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    l_LogPixelsY:=DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)
    DllCall("DeleteDC","Ptr",hDC)

    ;-- Extract the height for the Message font (can be negative)
    l_Height:=Abs(NumGet(Fnt_GetNonClientMetrics()+(A_IsUnicode ? 316:220),0,"Int"))

    ;-- Convert height to point size
    ;   Note: Without the internal leading height value that is only available
    ;   after the font has been created, this calculation is just a best guess
    ;   of the font's point size.  However, this calculation is widely used and
    ;   will result in the correct font size if the Fnt_CreateFont function or
    ;   the AutoHotkey "gui Font" command is used to create the font.
    Return Round(l_Height*72/l_LogPixelsY)
    }


;------------------------------
;
; Function: Fnt_GetStringSize
;
; Description:
;
;   Calculates the width and height (in pixels) of a string of text.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String - The string to be measured.
;
;   r_Width, r_Height - Output variables. [Optional] These variables are loaded
;       with the width and height of the string.
;
; Returns:
;
;   Address to a SIZE structure if successful, otherwise FALSE.
;
; Remarks:
;
;   LF (Line Feed) and/or CR+LF (Carriage Return and Line Feed) characters are
;   not considered when calculating the height of the string.
;
; Observations:
;
;   The width of the tab character is usually determined by the control, not by
;   the font, so including tab characters in the string may not produce the
;   desired results.
;
;-------------------------------------------------------------------------------
Fnt_GetStringSize(hFont,p_String,ByRef r_Width="",ByRef r_Height="")
    {
    Static Dummy6596
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0
          ,SIZE

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Get string size
    VarSetCapacity(SIZE,8,0)
    RC:=DllCall("GetTextExtentPoint32"
        ,"Ptr",hDC                                      ;-- hDC
        ,"Str",p_String                                 ;-- lpString
        ,"Int",StrLen(p_String)                         ;-- c (string length)
        ,"Ptr",&SIZE)                                   ;-- lpSize

    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return to sender
    if RC
        {
        r_Width :=NumGet(SIZE,0,"Int")
        r_Height:=NumGet(SIZE,4,"Int")
        Return &SIZE
        }
     else
        Return False
    }


;------------------------------
;
; Function: Fnt_GetStringWidth
;
; Description:
;
;   Calculates the width of a string of text.
;
; Returns:
;
;   The width of the string of text if successful, otherwise -1.
;
; Calls To Other Functions:
;
; * <Fnt_GetStringSize>
;
; Remarks:
;
;   This function is just a call to <Fnt_GetStringSize> to get the width of a
;   string.  Note that there is no associated "GetStringHeight"  function
;   because the height of a string is the same as the font height.  In addition
;   to <Fnt_GetStringSize>, the height can collected from <Fnt_GetFontHeight>.
;
;-------------------------------------------------------------------------------
Fnt_GetStringWidth(hFont,p_String)
    {
    Return (pSIZE:=Fnt_GetStringSize(hFont,p_String)) ? NumGet(pSIZE+0,0,"Int"):-1
    }


;------------------------------
;
; Function: Fnt_GetSysColor
;
; Description:
;
;   Retrieves the current color of the specified display element.  Display
;   elements are the parts of a window and the display that appear on the system
;   display screen.
;
; Parameters:
;
;   p_DisplayElement - Display element. A complete list of display elements can
;       be found <here at
;       https://msdn.microsoft.com/en-us/library/windows/desktop/ms724371%28v=vs.85%29.aspx>.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
; Returns:
;
;   The display element color in an AutoHotkey hexidecimal value.  Ex: 0x12FF7B.
;
; Remarks:
;
;   The return value always contains 6 hexadecimal digits.  Ex: 0x00FF00.  To
;   convert to a 6-digit RGB color value, simply delete the leading "0x"
;   characters.
;
;-------------------------------------------------------------------------------
Fnt_GetSysColor(p_DisplayElement)
    {
    ;-- Collect color (returns BGR value)
    l_Color:=DllCall("GetSysColor","Int",p_DisplayElement)

    ;-- Convert to RGB
    l_Color:=((l_Color&0xFF)<<16)+(l_Color&0xFF00)+((l_Color>>16)&0xFF)

    ;-- Convert/format to a 6-digit AutoHotkey hexadecimal value
    Return Format("0x{:06X}",l_Color)
    }


;------------------------------
;
; Function: Fnt_GetTotalRowHeight
;
; Description:
;
;   Calculates the height of a given number of rows of text for a font.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_NbrOfRows - Rows of text.  Ex: 12.  Partial rows can be specified.  Ex:
;       5.25.
;
; Returns:
;
;   The height of the rows of text, in pixels.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontExternalLeading>
; * <Fnt_GetFontHeight>
;
; Remarks:
;
;   This function calculates the total height by adding up the font height for
;   each row, including the space between each row (ExternalLeading) if there is
;   more than one row.  This calculation was originally extracted from the
;   AutoHotkey source and is the same or similar calculation used by AutoHotkey
;   when the r{NumberOfRows} option is used.
;
;   IMPORTANT: This calculation does not include any extra space that a GUI
;   control may need in order to correctly display the text in the control.  Ex:
;   Edit control.
;
;-------------------------------------------------------------------------------
Fnt_GetTotalRowHeight(hFont,p_NbrOfRows)
    {
    Return Floor((Fnt_GetFontHeight(hFont)*p_NbrOfRows)+(Fnt_GetFontExternalLeading(hFont)*(Floor(p_NbrOfRows+0.5)-1))+0.5)
    }


;------------------------------
;
; Function: Fnt_GetWindowColor
;
; Description:
;
;   Retrieves the current window (background) color.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
;-------------------------------------------------------------------------------
Fnt_GetWindowColor()
    {
    Static COLOR_WINDOW:=5  ;-- Window background
    Return Fnt_GetSysColor(COLOR_WINDOW)
    }


;------------------------------
;
; Function: Fnt_GetWindowTextColor
;
; Description:
;
;   Retrieves the current window text color.
;
; Type:
;
;   Internal function.  Subject to change.  Do not use.
;
;-------------------------------------------------------------------------------
Fnt_GetWindowTextColor()
    {
    Static COLOR_WINDOWTEXT:=8
    Return Fnt_GetSysColor(COLOR_WINDOWTEXT)
    }


;------------------------------
;
; Function: Fnt_HardWordBreak
;
; Description:
;
;   Inserts hard line breaks into a string of text so that the maximum width of
;   each line is less than or equal to a specified width, in pixels.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   r_String - [Input/Output] Variable containing the string to process.  A
;       string with inserted line breaks is returned in this variable.
;
;   p_MaxLineW - The maximum width of each line of text, in pixels.
;
;   p_EOL - End-Of-Line (EOL) character(s) for the output string. [Optional] See
;       the *End-Of-Line Character(s)* section for more information.
;
; Type:
;
;   Experimental/Preview.  Subject to change.
;
; Returns:
;
;   The total number of lines of text.
;
; End-Of-Line Character(s):
;
;   The variable specified for the r_String parameter serves as input and output
;   for the text processed by this function.
;
;   For input, the end-of-line (EOL) character(s) in the text must be in a
;   DOS/Windows (EOL=CR+LF), Unix (EOL=LF), or DOS/Unix mix format.  A document
;   in any other format must be converted to a DOS/Windows or Unix format before
;   calling this function.
;
;   For output, the EOL character(s) are determined by the p_EOL parameter.  The
;   default is the AutoHotkey and Unix format (EOL=LF).  This format is
;   frequently used when populating or extracting text on/from GUI controls.
;
; Remarks:
;
;   For large documents, performance can be significantly improved by setting
;   *SetBatchLines* to a higher value before calling this function.  For
;   example:
;
;       (start code)
;       SetBatchLines 200ms
;       LineCount:=Fnt_HardWordBreak(hFont,...)
;       SetBatchLines 10ms  ;-- This is the system default
;       (end)
;
;-------------------------------------------------------------------------------
Fnt_HardWordBreak(hFont,ByRef r_String,p_MaxLineW,p_EOL="`n")
    {
    Static Dummy8175
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0

    ;[==============]
    ;[  Initialize  ]
    ;[==============]
    VarSetCapacity(SIZE,8,0)

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;[===========]
    ;[  Process  ]
    ;[===========]
    ;-- Rebuild the string to include hard word breaks
    l_String  :=""
    l_HardLine:=""
    l_HLCount :=0
    Loop Parse,r_String,`n,`r
        {
        Loop Parse,A_LoopField,%A_Space%
            {
            ;-- Get the width (in pixels) of the line plus this word
            l_CheckString :=l_HardLine . A_Space . A_LoopField
            DllCall("GetTextExtentPoint32"
                ,"Ptr",hDC                              ;-- hDC
                ,"Str",l_CheckString                    ;-- lpString
                ,"Int",StrLen(l_CheckString)            ;-- c (string length)
                ,"Ptr",&SIZE)                           ;-- lpSize

            ;-- Break here?
            if (NumGet(SIZE,0,"Int")>p_MaxLineW)
                {
                l_String.=(l_HLCount ? p_EOL:"") . l_HardLine
                l_HardLine:=A_LoopField
                l_HLCount++
                Continue
                }

            l_HardLine.=(A_Index>1 ? A_Space:"") . A_LoopField
            }

        ;-- String includes new-line break
        l_String.=(l_HLCount ? p_EOL:"") . l_HardLine
        l_HardLine:=""
        l_HLCount++
        }

    ;[================]
    ;[  Housekeeping  ]
    ;[================]
    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;[==========]
    ;[  Return  ]
    ;[==========]
    ;-- Update output variable
    r_String:=l_String

    ;-- Return line count
    Return l_HLCount
    }


;------------------------------
;
; Function: Fnt_HorzDTUs2Pixels
;
; Description:
;
;   Converts horizontal dialog template units to pixels for a font.
;
; Returns:
;
;   The width of the specified horizontal dialog template units, in pixels.
;
; Calls To Other Functions:
;
; * <Fnt_DialogTemplateUnits2Pixels>
;
; Remarks:
;
;   This function is just a call to <Fnt_DialogTemplateUnits2Pixels> to only
;   convert horizontal dialog template units.
;
;-------------------------------------------------------------------------------
Fnt_HorzDTUs2Pixels(hFont,p_HorzDTUs)
    {
    Fnt_DialogTemplateUnits2Pixels(hFont,p_HorzDTUs,0,l_Width)
    Return l_Width
    }


;------------------------------
;
; Function: Fnt_IsFixedPitchFont
;
; Description:
;
;   Determines if a font is a fixed pitch font.
;
; Parameters:
;
;   hFont - Handle to a logical font.
;
; Returns:
;
;   TRUE if the font is a fixed pitch font, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_IsFixedPitchFont(hFont)
    {
    Static TMPF_FIXED_PITCH:=0x1
        ;-- If this bit is set, the font is a variable pitch font.  If
        ;   this bit is clear, the font is a fixed pitch font.  Note very
        ;   carefully that those meanings are the opposite of what the constant
        ;   name implies.

    Return NumGet(Fnt_GetFontMetrics(hFont),A_IsUnicode ? 55:51,"UChar") & TMPF_FIXED_PITCH ? False:True
    }


;------------------------------
;
; Function: Fnt_IsTrueTypeFont
;
; Description:
;
;   Determines if a font is a TrueType font.
;
; Parameters:
;
;   hFont - Handle to a logical font.
;
; Returns:
;
;   TRUE if the font is a TrueType font, otherwise FALSE.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMetrics>
;
;-------------------------------------------------------------------------------
Fnt_IsTrueTypeFont(hFont)
    {
    Static TMPF_TRUETYPE:=0x4
    Return NumGet(Fnt_GetFontMetrics(hFont),A_IsUnicode ? 55:51,"UChar") & TMPF_TRUETYPE ? True:False
    }


;------------------------------
;
; Function: Fnt_Pixels2DialogTemplateUnits
;
; Description:
;
;   Converts pixels to dialog template units for a font.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_Width - Width, in pixel.
;
;   p_Height - Height, in pixels.
;
;   r_HorzDTUs, r_VertDTUs - Output variables. [Optional] These variables are
;       loaded with the horizontal and vertical dialog template units for the
;       specified width and height.
;
; Returns:
;
;   Address to a SIZE structure.  The cx member of the SIZE structure contains
;   the horizontal dialog template units for the specified width.  The cy member
;   contains the vertical dialog template units for the specified height.
;
; Calls To Other Functions:
;
; * <Fnt_GetDialogBaseUnits>
;
;-------------------------------------------------------------------------------
Fnt_Pixels2DialogTemplateUnits(hFont,p_Width,p_Height=0,ByRef r_HorzDTUs="",ByRef r_VertDTUs="")
    {
    Static Dummy1461
          ,SIZE
          ,s_hFont:=-1
          ,s_HorzDBUs
          ,s_VertDBUs

    ;-- If needed, initialize and get Dialog Base Units
    if (hFont<>s_hFont)
        {
        s_hFont:=hFont
        VarSetCapacity(SIZE,8,0)
        Fnt_GetDialogBaseUnits(hFont,s_HorzDBUs,s_VertDBUs)
        }

    ;-- Convert width and height (in pixels) to DTUs
    NumPut(r_HorzDTUs:=Round(p_Width*4/s_HorzDBUs),SIZE,0,"Int")
    NumPut(r_VertDTUs:=Round(p_Height*8/s_VertDBUs),SIZE,4,"Int")
    Return &SIZE
    }


;------------------------------
;
; Function: Fnt_RemoveFontFile
;
; Description:
;
;   Remove the font(s) added with <Fnt_AddFontFile>.
;
; Type:
;
;   Experimental.  Subject to change.
;
; Parameters:
;
;   Same parameters as <Fnt_AddFontFile>.  Use the same parameter values that
;   were used to add the font(s).
;
; Returns:
;
;   The number of the fonts removed if successful, otherwise FALSE.
;
; Remarks:
;
;   See the *Remarks* section of <Fnt_AddFontFile> for more information.
;
;-------------------------------------------------------------------------------
Fnt_RemoveFontFile(p_File,p_Private,p_Hidden=False)
    {
    Static Dummy0661

          ;-- Font Resource flags
          ,FR_PRIVATE :=0x10
          ,FR_NOT_ENUM:=0x20

          ;-- Messages and flags
          ,WM_FONTCHANGE :=0x1D
          ,HWND_BROADCAST:=0xFFFF

    ;-- Build flags
    l_Flags:=0
    if p_Private
        l_Flags|=FR_PRIVATE

    if p_Hidden
        l_Flags|=FR_NOT_ENUM

    ;-- Remove font
    RC:=DllCall("RemoveFontResourceEx","Str",p_File,"UInt",l_Flags,"UInt",0)

    ;-- If one or more fonts were removed, notify all top-level windows that the
    ;   pool of font resources has changed.
    if RC
        SendMessage WM_FONTCHANGE,0,0,,ahk_id %HWND_BROADCAST%,,,,1000
            ;-- Wait up to 1000 ms for all windows to respond to the message

    Return RC
    }


;------------------------------
;
; Function: Fnt_SetFont
;
; Description:
;
;   Sets the font that the control is to use when drawing text.
;
; Parameters:
;
;   hControl - Handle to the control.
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_Redraw - Specifies whether the control should be redrawn immediately upon
;       setting the font.  If set to TRUE, the control redraws itself.
;
; Remarks:
;
;   The size of the control does not change as a result of receiving this
;   message.  To avoid clipping text that does not fit within the boundaries of
;   the control, the program should set/correct the size of the control window
;   before the font is set.
;
;   Update 20150615: A recent update of Windows 7 (it appears to be other
;   versions of Windows as well) has changed how the tooltip control responds to
;   certain messages. The tooltip may no longer automatically redraw when the
;   WM_SETFONT message is sent.  Worse yet, if the p_Redraw parameter is set to
;   TRUE, the WM_SETFONT message may deactivate the tooltip.  One workaround is
;   to send the WM_SETFONT message (this function) with p_Redraw set to FALSE
;   (the default) and then send the TTM_UPDATE message (call
;   <Fnt_UpdateTooltip>) immediately afterwards.  When used together, these
;   functions will set the font of the tooltip control and redraw the tooltip
;   control without deactivating the tooltip.
;
;-------------------------------------------------------------------------------
Fnt_SetFont(hControl,hFont=0,p_Redraw=False)
    {
    Static Dummy3005
          ,DEFAULT_GUI_FONT:=17
          ,WM_SETFONT:=0x30

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Set font
    l_DetectHiddenWindows:=A_DetectHiddenWindows
    DetectHiddenWindows On
    SendMessage WM_SETFONT,hFont,p_Redraw,,ahk_id %hControl%
    DetectHiddenWindows %l_DetectHiddenWindows%
    }


;------------------------------
;
; Function: Fnt_String2DialogTemplateUnits
;
; Description:
;
;   Converts a string to dialog template units for a font.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String - The string to be measured.
;
;   r_HorzDTUs, r_VertDTUs - Output variables. [Optional] These variables are
;       loaded with the horizontal and vertical dialog template units for the
;       specified string.
;
; Returns:
;
;   Address to a SIZE structure.  The cx member of the SIZE structure contains
;   the horizontal dialog template units for the specified string.  The cy
;   member contains the vertical dialog template units.
;
; Calls To Other Functions:
;
; * <Fnt_GetDialogBaseUnits>
; * <Fnt_GetStringSize>
;
;-------------------------------------------------------------------------------
Fnt_String2DialogTemplateUnits(hFont,p_String,ByRef r_HorzDTUs="",ByRef r_VertDTUs="")
    {
    Static Dummy5021
          ,SIZE
          ,s_hFont:=-1
          ,s_HorzDBUs
          ,s_VertDBUs

    ;-- If needed, initialize and get Dialog Base Units
    if (hFont<>s_hFont)
        {
        s_hFont:=hFont
        VarSetCapacity(SIZE,8,0)
        Fnt_GetDialogBaseUnits(hFont,s_HorzDBUs,s_VertDBUs)
        }

    ;-- Convert string to DTUs
    Fnt_GetStringSize(hFont,p_String,l_StringW,l_StringH)
    NumPut(r_HorzDTUs:=Round(l_StringW*4/s_HorzDBUs),SIZE,0,"Int")
    NumPut(r_VertDTUs:=Round(l_StringH*8/s_VertDBUs),SIZE,4,"Int")
    Return &SIZE
    }


;------------------------------
;
; Function: Fnt_TruncateStringToFit
;
; Description:
;
;    Returns a string, truncated if necessary, that is less than or equal to a
;    specified width, in pixels.
;
; Parameters:
;
;   hFont - Handle to a logical font.  Set to 0 to use the default GUI font.
;
;   p_String - The string to process.
;
;   p_MaxStringW - The maximum width for the return string, in pixels.
;
; Returns:
;
;   A string with a width (measured in pixels) that is less than or equal to the
;   value in p_MaxStringW.
;
; Calls To Other Functions:
;
; * <Fnt_GetFontMaxCharWidth>
;
; Remarks:
;
;   If the value of p_MaxStringW is less than the width of the first character
;   in the string, null is returned.
;
;-------------------------------------------------------------------------------
Fnt_TruncateStringToFit(hFont,p_String,p_MaxStringW)
    {
    Static Dummy9426
          ,DEFAULT_GUI_FONT:=17
          ,HWND_DESKTOP    :=0

    ;[======================]
    ;[      Parameters      ]
    ;[  (Bounce if needed)  ]
    ;[======================]
    if not StrLen(p_String)
        Return p_String

    if p_MaxStringW is not Integer
        Return p_String
     else if (p_MaxStringW<1)  ;-- Zero or negative
        Return ""

    ;[==============]
    ;[  Initialize  ]
    ;[==============]
    VarSetCapacity(SIZE,8,0)

    ;-- If needed, get the handle to the default GUI font
    if not hFont
        hFont:=DllCall("GetStockObject","Int",DEFAULT_GUI_FONT)

    ;-- Select the font into the device context for the desktop
    hDC      :=DllCall("GetDC","Ptr",HWND_DESKTOP)
    old_hFont:=DllCall("SelectObject","Ptr",hDC,"Ptr",hFont)

    ;-- Misc.
    l_FontMaxCharWidth:=Fnt_GetFontMaxCharWidth(hFont)

    ;[===============]
    ;[  Pre-Process  ]
    ;[===============]
    ;-- Get the width of the original string, in pixels
    DllCall("GetTextExtentPoint32"
        ,"Ptr",hDC                                      ;-- hDC
        ,"Str",p_String                                 ;-- lpString
        ,"Int",StrLen(p_String)                         ;-- c (string length)
        ,"Ptr",&SIZE)                                   ;-- lpSize

    l_StringW:=NumGet(SIZE,0,"Int")

    ;-- Bounce if the string is already less than or equal to p_MaxStringW
    if (l_StringW<=p_MaxStringW)
        {
        ;-- Release the objects needed by the "GetTextExtentPoint32" function
        DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
            ;-- Necessary to avoid memory leak

        DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

        ;-- Return unmolested string
        Return p_String
        }

    ;[===========]
    ;[  Process  ]
    ;[===========]
    ;-- Make an calculated guess on the starting position within the string
    if not l_StringPos:=Floor(StrLen(p_String)*(p_MaxStringW/l_StringW))
        l_StringPos:=1

    l_String:=SubStr(p_String,1,l_StringPos)

    ;-- Get the width of the calculated guess string, in pixels
    DllCall("GetTextExtentPoint32"
        ,"Ptr",hDC                                      ;-- hDC
        ,"Str",l_String                                 ;-- lpString
        ,"Int",StrLen(l_String)                         ;-- c (string length)
        ,"Ptr",&SIZE)                                   ;-- lpSize

    l_CurrentStringW:=NumGet(SIZE,0,"Int")

    ;-- Increment, decrement, or do nothing else (very rare but possible)
    if (l_CurrentStringW<p_MaxStringW)  ;-- Under?  Increment until the string is >= requested size
        {
        Loop
            {
            l_PrevString:=l_String

            ;-- Calculate the number of string positions to increment (usually 1)
            if not l_NbrOfPositions:=Floor((p_MaxStringW-l_CurrentStringW)/l_FontMaxCharWidth)
                l_NbrOfPositions:=1

            ;-- Increment and extract the next string to test
            l_StringPos+=l_NbrOfPositions
            l_String:=SubStr(p_String,1,l_StringPos)

            ;-- Get the width of the string, in pixels
            DllCall("GetTextExtentPoint32"
                ,"Ptr",hDC                              ;-- hDC
                ,"Str",l_String                         ;-- lpString
                ,"Int",StrLen(l_String)                 ;-- c (string length)
                ,"Ptr",&SIZE)                           ;-- lpSize

            l_CurrentStringW:=NumGet(SIZE,0,"Int")

            ;-- Exact hit? (rare but possible)
            if (l_CurrentStringW=p_MaxStringW)
                Break
             else
                ;-- Over? Use the previous string and break
                if (l_CurrentStringW>p_MaxStringW)
                    {
                    l_String:=l_PrevString
                    Break
                    }
            }
        }
     else if (l_CurrentStringW>p_MaxStringW)  ;-- Over?  Decrement until the string is <= requested size
        {
        Loop
            {
            ;-- Break if the next position will be too small
            if (l_StringPos<=1)
                {
                l_String:=""
                Break
                }

            ;-- Calculate the number of string positions to increment (usually 1)
            if not l_NbrOfPositions:=Floor((l_CurrentStringW-p_MaxStringW)/l_FontMaxCharWidth)
                l_NbrOfPositions:=1

            ;-- Decrement and extract the next string to test
            l_StringPos-=l_NbrOfPositions
            l_String:=SubStr(p_String,1,l_StringPos)

            ;-- Get the width of the string, in pixels
            DllCall("GetTextExtentPoint32"
                ,"Ptr",hDC                              ;-- hDC
                ,"Str",l_String                         ;-- lpString
                ,"Int",StrLen(l_String)                 ;-- c (string length)
                ,"Ptr",&SIZE)                           ;-- lpSize

            l_CurrentStringW:=NumGet(SIZE,0,"Int")

            ;-- Break if target is achieved
            if (l_CurrentStringW<=p_MaxStringW)
                Break
            }
        }

    ;[================]
    ;[  Housekeeping  ]
    ;[================]
    ;-- Release the objects needed by the "GetTextExtentPoint32" function
    DllCall("SelectObject","Ptr",hDC,"Ptr",old_hFont)
        ;-- Necessary to avoid memory leak

    DllCall("ReleaseDC","Ptr",HWND_DESKTOP,"Ptr",hDC)

    ;-- Return string
    Return l_String
    }


;------------------------------
;
; Function: Fnt_TwipsPerPixel
;
; Description:
;
;   Determines the number of twips (abbreviation of "twentieth of an inch
;   point") for every pixel on the screen.
;
; Parameters:
;
;   X, Y - Output variables. [Optional] These variables are loaded with the
;       number of twips for each pixel along the the screen width (X) and
;       height (Y).
;
; Returns:
;
;   Address to a SIZE structure.  The cx member of the SIZE structure contains
;   the number of twips for each pixel along the screen width.  The cy member
;   contains the number of twips for each pixel along the screen height.
;
;-------------------------------------------------------------------------------
Fnt_TwipsPerPixel(ByRef X="",ByRef Y="")
    {
    Static Dummy3871
          ,SIZE

          ;-- Device constants
          ,LOGPIXELSX:=88
          ,LOGPIXELSY:=90

    ;-- Initialize
    VarSetCapacity(SIZE,8,0)

    ;-- Convert the number of pixels per logical inch to twips
    hDC:=DllCall("CreateDC","Str","DISPLAY","Ptr",0,"Ptr",0,"Ptr",0)
    NumPut(X:=Round(1440/DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSX)),SIZE,0,"Int")
    NumPut(Y:=Round(1440/DllCall("GetDeviceCaps","Ptr",hDC,"Int",LOGPIXELSY)),SIZE,4,"Int")
    DllCall("DeleteDC","Ptr",hDC)
    Return &SIZE
    }


;------------------------------
;
; Function: Fnt_UpdateTooltip
;
; Description:
;
;   Forces the tooltip to be redrawn.
;
; Parameters:
;
;   hTT - Handle to the tooltip control.
;
; Remarks:
;
;   See the *Remarks* section of <Fnt_SetFont> for more information.
;
;-------------------------------------------------------------------------------
Fnt_UpdateTooltip(hTT)
    {
    Static TTM_UPDATE:=0x41D                            ;-- WM_USER + 29
    SendMessage TTM_UPDATE,0,0,,ahk_id %hTT%
    }


;------------------------------
;
; Function: Fnt_VertDTUs2Pixels
;
; Description:
;
;   Converts vertical dialog template units to pixels for a font.
;
; Returns:
;
;   The height of the specified vertical dialog template units, in pixels.
;
; Calls To Other Functions:
;
; * <Fnt_DialogTemplateUnits2Pixels>
;
; Remarks:
;
;   This function is just a call to <Fnt_DialogTemplateUnits2Pixels> to only
;   convert vertical dialog template units.
;
;-------------------------------------------------------------------------------
Fnt_VertDTUs2Pixels(hFont,p_VertDTUs)
    {
    Fnt_DialogTemplateUnits2Pixels(hFont,0,p_VertDTUs,Dummy,l_Height)
    Return l_Height
    }

























; ======================================================================================================================
; End of auto-execute section
; ======================================================================================================================
; ----------------------------------------------------------------------------------------------------------------------
; Testing
;~ ^+f::
   ;~ RE2.FindText("Test", ["Down"])
;~ Return
;~ ^+b::
   ;~ RE2.SetBorder([10], [2])
;~ Return
;~ ^+m::
   ;~ SendMessage, 0xD3, 3, % (60 | (60 << 16)), , % "ahk_id " . RE2.HWND ; EM_SETMARGINS
   ;~ WinSet, Redraw, , % "ahk_id " . RE2.HWND
;~ Return
; ======================================================================================================================
EM_SETMARGINS(Hwnd, Left := "", Right := "") {
   ; EM_SETMARGINS = 0x00D3 -> http://msdn.microsoft.com/en-us/library/bb761649(v=vs.85).aspx
   Set := 0 + (Left <> "") + ((Right <> "") * 2)
   Margins := (Left <> "" ? Left & 0xFFFF : 0) + (Right <> "" ? (Right & 0xFFFF) << 16 : 0)
   Return DllCall("User32.dll\SendMessage", "Ptr", HWND, "UInt", 0x00D3, "Ptr", Set, "Ptr", Margins, "Ptr")
}

; ----------------------------------------------------------------------------------------------------------------------
ShowSBHelp() {
   Global SBHelp, GuiNum
   Static Current := 0
   If (A_Gui = GuiNum) && (A_GuiControl <> Current)
      SB_SetText(SBHelp[(Current := A_GuiControl)], 3)
   Return
}
; ----------------------------------------------------------------------------------------------------------------------
RE2MessageHandler:
If (A_GuiEvent = "N") && (NumGet(A_EventInfo + 0, A_PtrSize * 2, "Int") = 0x0702) ; EN_SELCHANGE 
{
   SetTimer, UpdateGui, -10
}

; ----------------------------------------------------------------------------------------------------------------------
RE2MessageHandler2:
If (A_GuiEvent = "N") && (NumGet(A_EventInfo + 0, A_PtrSize * 2, "Int") = 0x0702) ; EN_SELCHANGE 
{
   SetTimer, UpdateGui, -10
}
   

Else {
   If (A_EventInfo = 0x0100) ; EN_SETFOCUS
      HasFocus := True
   Else If (A_EventInfo = 0x0200) ; EN_KILLFOCUS
      HasFocus := False
}
Return
#If (HasFocus)
; FontStyles
^!b::  ; bold
^!h::  ; superscript
^!i::  ; italic
^!l::  ; subscript
^!n::  ; normal
^!p::  ; protected
^!s::  ; strikeout
^!u::  ; underline
RE2.ToggleFontStyle(SubStr(A_ThisHotkey, 3))
GoSub, UpdateGui
Return
#If
; ----------------------------------------------------------------------------------------------------------------------
UpdateGui:
Font := RE2.GetFont()


; MsgBox, % Font
; Gui, %GuiName43%:Font, s10, Arial

If (FontName != Font.Name || FontCharset != Font.CharSet || FontStyle != Font.Style || FontSize != Font.Size
|| TextColor != Font.Color || TextBkColor != Font.BkColor) {
   FontStyle := Font.Style
   TextColor := Font.Color
   TextBkColor := Font.BkColor
   FontCharSet := Font.CharSet
   If (FontName != Font.Name) {
      FontName := Font.Name
      GuiControl,%GuiName43%: , FNAME, %FontName%
   }
   If (FontSize != Font.Size) {
      FontSize := Round(Font.Size)
      GuiControl,%GuiName43%: , FSIZE, %FontSize%
   }
   Font.Size := 8
   RE1.SetSel(0, -1) ; select all
   RE1.SetFont(Font)
   RE1.SetSel(0, 0)  ; deselect all
}
Stats := RE2.GetStatistics()
; MsgBox, "ggggggg"
; MsgBox % Stats.LinePos

SB_SetText(Stats.Line . " : " . Stats.LinePos . " (" . Stats.LineCount . ")  [" . Stats.CharCount . "]", 2)
Return
; ======================================================================================================================
; Gui related
; ======================================================================================================================
; GuiClose:
; If IsObject(RE1)
;   RE1 := ""
; If IsObject(RE2)
;   RE2 := ""
; Gui, %A_Gui%:Destroy
; ExitApp
; ----------------------------------------------------11------------------------------------------------------------------
; GuiSize:
; Critical
; If (A_EventInfo = 1)
;    Return
; If (GuiW = 0) {
;    GuiW := A_GuiWidth
;    GuiH := A_GuiHeight
;    Return
; }
; If (A_GuiWidth != GuiW || A_GuiHeight != GuiH) {
;    REW += A_GuiWidth - GuiW
;    REH += A_GuiHeight - GuiH
;    GuiControl, Move, % RE2.HWND, w%REW% h%REH%
;    GuiW := A_GuiWidth
;    GuiH := A_GuiHeight
; }
; Return
; ----------------------------------------------------------------------------------------------------------------------
;  The code commented out here was made unnecessary by
;  just me's recent addition of the complete
;  IREOleCB_GetContextMenu function to
;  RichEdit OleCallback.ahk
;  *****************************
;~ RightClick(wParam, lParam)
;~ {
    ;~ X := lParam & 0xFFFF
    ;~ Y := lParam >> 16
	;~ ;Gosub, MakeMenu
	;~ return
;~ }

GuiContextMenu:
MouseGetPos, , , , HControl, 2
WinGetClass, Class, ahk_id %HControl%
If (Class = RichEdit.Class)
   gosub, MakeMenu
   ;Menu, ContextMenu, Show
Return
; ======================================================================================================================
; Text operations
; ======================================================================================================================
SetFontStyle:
RE2.ToggleFontStyle(SubStr(A_GuiControl, 0))
GoSub, UpdateGui
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
ChangeSize:
Size := Font.Size
If ((UDVAL - Size > 0 && UDVAL <120))
   Size := RE2.ChangeFontSize(1)
Else If (UDVAL == 120)
   Size := RE2.ChangeFontSize(0)
Else
   Size := RE2.ChangeFontSize(-1)
FSIZE := Size
GoSub, UpdateGui
GuiControl, Focus, % RE2.HWND
Return
; ======================================================================================================================
; Menu File
; ======================================================================================================================
FileAppend:
FileOpen:
FileInsert:
If (File := RichEditDlgs.FileDlg(RE2, "O")) {
   RE2.LoadFile(File, SubStr(A_ThisLabel, 5))
   If (A_ThisLabel = "FileOpen") {
      Gui, +LastFound
      WinGetTitle, Title
      StringSplit, Title, Title, -, %A_Space%
      WinSetTitle, %Title1% - %File%
      Open_File := File
   }
   GoSub, UpdateGui
}
RE2.SetModified()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
FileClose:
If (Open_File) {
   If RE2.IsModified() {
      Gui, +OwnDialogs
      MsgBox, 35, Close File, Content has been modified!`nDo you want to save changes?
      IfMsgBox, Cancel
      {
         GuiControl, Focus, % RE2.HWND
         Return
      }
      IfMsgBox, Yes
         GoSub, FileSave
   }
   If RE2.SetText() {
      Gui, +LastFound
      WinGetTitle, Title
      StringSplit, Title, Title, -, %A_Space%
      WinSetTitle, %Title1%
      Open_File := ""
   }
   GoSub, UpdateGui
}
RE2.SetModified()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
FileSave:
If !(Open_File) {
   GoSub, FileSaveAs
   Return
}
RE2.SaveFile(Open_File)
RE2.SetModified()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
FileSaveAs:
If (File := RichEditDlgs.FileDlg(RE2, "S")) {
   RE2.SaveFile(File)
   Gui, +LastFound
   WinGetTitle, Title
   StringSplit, Title, Title, -, %A_Space%
   WinSetTitle, %Title1% - %File%
   Open_File := File
}
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
PageSetup:
RichEditDlgs.PageSetup(RE2)
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Print:
RE2.Print()
GuiControl, Focus, % RE2.HWND
Return
; ======================================================================================================================
; Menu Edit
; ======================================================================================================================
Undo:
RE2.Undo()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Redo:
RE2.Redo()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Cut:
RE2.Cut()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Copy:
RE2.Copy()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Paste:
RE2.Paste()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Clear:
RE2.Clear()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
SelAll:
RE2.SelAll()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Deselect:
RE2.Deselect()
GuiControl, Focus, % RE2.HWND
Return
; ======================================================================================================================
; Menu View
; ======================================================================================================================
WordWrap:
; WordWrap = False
WordWrap ^= True
RE2.WordWrap(WordWrap)
Menu, %A_ThisMenu%, ToggleCheck, %A_ThisMenuItem%
If (WordWrap)
   Menu, %A_ThisMenu%, Disable, %MenuWysiwyg%
Else
   Menu, %A_ThisMenu%, Enable, %MenuWysiwyg%
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Zoom:
Zoom100:
Menu, Zoom, UnCheck, %Zoom%
If (A_ThisLabel = "Zoom100")
   Zoom := "100 %"
Else
   Zoom := A_ThismenuItem
Menu, Zoom, Check, %Zoom%
RegExMatch(Zoom, "\d+", Ratio)
RE2.SetZoom(Ratio)
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
WYSIWYG:
ShowWysiwyg ^= True
If (ShowWysiwyg)
   GoSub, Zoom100
RE2.WYSIWYG(ShowWysiwyg)
Menu, %A_ThisMenu%, ToggleCheck, %A_ThisMenuItem%
If (ShowWysiwyg)
   Menu, %A_ThisMenu%, Disable, %MenuWordWrap%
Else
   Menu, %A_ThisMenu%, Enable, %MenuWordWrap%
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
BackgroundColor:
If InStr(A_ThisMenuItem, "Auto")
   RE2.SetBkgndColor("Auto")
Else If ((NC := RichEditDlgs.ChooseColor(RE2, BackColor)) <> "")
   RE2.SetBkgndColor(BackColor := BGC := NC)
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
AutoURLDetection:
RE2.AutoURL(AutoURL ^= True)
Menu, %A_ThisMenu%, ToggleCheck, %A_ThisMenuItem%
GuiControl, Focus, % RE2.HWND
Return
; ======================================================================================================================
; Menu Character
; ======================================================================================================================
ChooseFont:
RichEditDlgs.ChooseFont(RE2)
Font := RE2.GetFont()
Gui, ListView, FNAME
LV_Modify(1, "", Font.Name)
Gui, ListView, FSIZE
LV_Modify(1, "", Font.Size)
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
MTextColor:    ; menu label
BTextColor:    ; button label
If (A_ThisLabel = "MTextColor") && InStr(A_ThisMenuItem, "Auto")
   RE2.SetFont({Color: "Auto"}), TXC := ""
Else If (StrLen(NC := RichEditDlgs.ChooseColor(RE2, "T")) <> "")
   RE2.SetFont({Color: NC}), TXC := NC
ControlFocus,, % "ahk_id " . RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
MTextBkColor:  ; menu label
BTextBkColor:  ; button label
If (A_ThisLabel = "MTextBkColor") && InStr(A_ThisMenuItem, "Auto")
    RE2.SetFont({BkColor: "Auto"}), TBC := ""
Else If (StrLen(NC := RichEditDlgs.ChooseColor(RE2, "B")) <> "")
   RE2.SetFont({BkColor: NC}), TBC := NC
ControlFocus,, % "ahk_id " . RE2.HWND
Return
; ======================================================================================================================
; Menu Paragraph
; ======================================================================================================================
AlignLeft:
AlignCenter:
AlignRight:
AlignJustify:
RE2.AlignText({AlignLeft: 1, AlignRight: 2, AlignCenter: 3, AlignJustify: 4}[A_ThisLabel])
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Indentation:
ParaIndentGui(RE2)
GuiControl, Focus, % RE2.HWND
Return
ResetIndentation:
RE2.SetParaIndent()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
Numbering:
ParaNumberingGui(RE2)
GuiControl, Focus, % RE2.HWND
Return
ResetNumbering:
RE2.SetParaNumbering()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
ParaSpacing:
ParaSpacingGui(RE2)
GuiControl, Focus, % RE2.HWND
Return
ResetParaSpacing:
RE2.SetParaSpacing()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
; 505 line spacing
; ----------------------------------------------------------------------------------------------------------------------
;~ Gui, Add, Edit, x+5 yp vLSPC ReadOnly, 111
;~ Gui, Add, UpDown, gChangeLS vLSVAL range1-3, 1
ChangeLS:
If (LSVAL == 1)
   newsize := 1
If (LSVAL == 2)
   newsize := 1.15
If (LSVAL == 3)
   newsize := 1.5
If (LSVAL == 4 )
   newsize := 2
;msgbox %newsize%
GuiControl, , LSPC, %newsize%
RE2.SetLineSpacing(newsize)
;Gui, Submit, NoHide
GuiControl, Focus, % RE2.HWND
return
; ----------------------------------------------------------------------------------------------------------------------
Spacing10:
Spacing11.5:
Spacing15:
Spacing20:
RegExMatch(A_ThisLabel, "\d+$", S)
RE2.SetLineSpacing(S / 10)
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
SetTabStops:
SetTabStopsGui(RE2)
Return
ResetTabStops:
RE2.SetTabStops()
GuiControl, Focus, % RE2.HWND
Return
; ----------------------------------------------------------------------------------------------------------------------
SetDefTabs:
RE2.SetDefaultTabs(1)
GuiControl, Focus, % RE2.HWND
Return
; ======================================================================================================================
; Menu Search
; ======================================================================================================================
Find:
Send, ^{HOME}
RichEditDlgs.FindText(RE2)
Return
; ----------------------------------------------------------------------------------------------------------------------
Replace:
RichEditDlgs.ReplaceText(RE2)
Return
; ======================================================================================================================
; ParaIndentation GUI
; ======================================================================================================================
ParaIndentGui(RE) {
   Static Owner := ""
        , Success := False
   Metrics := RE.GetMeasurement()
   PF2 := RE.GetParaFormat()
   Owner := RE.GuiName43
   Gui, ParaIndentGui: New
   Gui, +Owner%Owner% +ToolWindow +LastFound +LabelParaIndentGui
   Gui, Margin, 20, 10
   Gui, %GuiName43%:Add, Text, Section h20 0x200, First line left indent (absolute):
   Gui, %GuiName43%:Add, Text, xs hp 0x200, Other lines left indent (relative):
   Gui, %GuiName43%:Add, Text, xs hp 0x200, All lines right indent (absolute):
   Gui, %GuiName43%:Add, Edit, ys hp Limit5 hwndhLeft1
   Gui, %GuiName43%:Add, Edit, hp Limit6 hwndhLeft2
   Gui, %GuiName43%:Add, Edit, hp Limit5 hwndhRight
   Gui, %GuiName43%:Add, CheckBox, ys x+5 hp hwndhCBStart, Apply
   Gui, %GuiName43%:Add, CheckBox, hp hwndhCBOffset, Apply
   Gui, %GuiName43%:Add, CheckBox, hp hwndhCBRight, Apply
   Left1 := Round((PF2.StartIndent / 1440) * Metrics, 2)
   If (Metrics = 2.54)
      Left1 := RegExReplace(Left1, "\.", ",")
   GuiControl, , %hLeft1%, %Left1%
   Left2 := Round((PF2.Offset / 1440) * Metrics, 2)
   If (Metrics = 2.54)
      Left2 := RegExReplace(Left2, "\.", ",")
   GuiControl, , %hLeft2%, %Left2%
   Right := Round((PF2.RightIndent / 1440) * Metrics, 2)
   If (Metrics = 2.54)
      Right := RegExReplace(Right, "\.", ",")
   GuiControl, , %hRight%, %Right%
   Gui, %GuiName43%:Add, Button, xs gParaIndentGuiApply hwndhBtn1, Apply
   Gui, %GuiName43%:Add, Button, x+10 yp gParaIndentGuiClose hwndhBtn2, Cancel
   GuiControlGet, B, Pos, %hBtn2%
   GuiControl, Move, %hBtn1%, w%BW%
   GuiControlGet, E, Pos, %hCBRight%
   GuiControl, Move, %hBtn2%, % "x" . (EX + EW - BW)
   Gui, %Owner%:+Disabled
   Gui, Show, , Paragraph Indentation
   WinWaitActive
   WinWaitClose
   Return Success
   ; -------------------------------------------------------------------------------------------------------------------
   ParaIndentGuiClose:
      Success := False
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   ParaIndentGuiApply:
      GuiControlGet, ApplyStart, , %hCBStart%
      GuiControlGet, ApplyOffset, , %hCBOffset%
      GuiControlGet, ApplyRight, , %hCBRight%
      Indent := {}
      If ApplyStart {
         GuiControlGet, Start, , %hLeft1%
         If (Start = "")
            Start := 0
         If !RegExMatch(Start, "^\d{1,2}((\.|,)\d{1,2})?$") {
            GuiControl, , %hLeft1%
            GuiControl, Focus, %hLeft1%
            Return
         }
         StringReplace, Start, Start, `,, .
         Indent.Start := Start
      }
      If (ApplyOffset) {
         GuiControlGet, Offset, , %hLeft2%
         If (Offset = "")
            Offset := 0
         If !RegExMatch(Offset, "^(-)?\d{1,2}((\.|,)\d{1,2})?$") {
            GuiControl, , %hLeft2%
            GuiControl, Focus, %hLeft2%
            Return
         }
         StringReplace, OffSet, OffSet, `,, .
         Indent.Offset := Offset
      }
      If (ApplyRight) {
         GuiControlGet, Right, , %hRight%
         If (Right = "")
            Right := 0
         If !RegExMatch(Right, "^\d{1,2}((\.|,)\d{1,2})?$") {
            GuiControl, , %hRight%
            GuiControl, Focus, %hRight%
            Return
         }
         StringReplace, Right, Right, `,, .
         Indent.Right := Right
      }
      Success := RE.SetParaIndent(Indent)
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
}
; ======================================================================================================================
; ParaNumbering GUI
; ======================================================================================================================
ParaNumberingGui(RE) {
   Static Owner := ""
        , Bullet := "•"
        , PFN := ["Bullet", "Arabic", "LCLetter", "UCLetter", "LCRoman", "UCRoman"]
        , PFNS := ["Paren", "Parens", "Period", "Plain", "None"]
        , Success := False
   Metrics := RE.GetMeasurement()
   PF2 := RE.GetParaFormat()
   Owner := RE.GuiName43
   Gui, ParaNumberingGui: New
   Gui, +Owner%Owner% +ToolWindow +LastFound +LabelParaNumberingGui
   Gui, Margin, 20, 10
   Gui, %GuiName43%:Add, Text, Section h20 w100 0x200, Type:
   Gui, %GuiName43%:Add, DDL, xp y+0 wp AltSubmit hwndhType, %Bullet%|0, 1, 2|a, b, c|A, B, C|i, ii, iii|I, I, III
   If (PF2.Numbering)
      GuiControl, Choose, %hType%, % PF2.Numbering
   Gui, %GuiName43%:Add, Text, xs h20 w100 0x200, Start with:
   Gui, %GuiName43%:Add, Edit, y+0 wp hp Limit5 hwndhStart
   GuiControl, , %hStart%, % PF2.NumberingStart
   Gui, %GuiName43%:Add, Text, ys h20 w100 0x200, Style:
   Gui, %GuiName43%:Add, DDL, y+0 wp AltSubmit hwndhStyle Choose1, 1)|(1)|1.|1|w/o
   If (PF2.NumberingStyle)
      GuiControl, Choose, %hStyle%, % ((PF2.NumberingStyle // 0x0100) + 1)
   Gui, %GuiName43%:Add, Text, h20 w100 0x200, % "Distance:  (" . (Metrics = 1.00 ? "in." : "cm") . ")"
   Gui, %GuiName43%:Add, Edit, y+0 wp hp Limit5 hwndhDist
   Tab := Round((PF2.NumberingTab / 1440) * Metrics, 2)
   If (Metrics = 2.54)
      Tab := RegExReplace(Tab, "\.", ",")
   GuiControl, , %hDist%, %tab%
   Gui, %GuiName43%:Add, Button, xs gParaNumberingGuiApply hwndhBtn1, Apply
   Gui, %GuiName43%:Add, Button, x+10 yp gParaNumberingGuiClose hwndhBtn2, Cancel
   GuiControlGet, B, Pos, %hBtn2%
   GuiControl, Move, %hBtn1%, w%BW%
   GuiControlGet, D, Pos, %hStyle%
   GuiControl, Move, %hBtn2%, % "x" . (DX + DW - BW)
   Gui, %Owner%:+Disabled
   Gui, Show, , Paragraph Numbering
   WinWaitActive
   WinWaitClose
   Return Success
   ; -------------------------------------------------------------------------------------------------------------------
   ParaNumberingGuiClose:
      Success := False
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   ParaNumberingGuiApply:
      GuiControlGet, Type, , %hType%
      GuiControlGet, Style, , %hStyle%
      GuiControlGet, Start, , %hStart%
      GuiControlGet, Tab, , %hDist%
      If !RegExMatch(Tab, "^\d{1,2}((\.|,)\d{1,2})?$") {
         GuiControl, , %hDist%
         GuiControl, Focus, %hDist%
         Return
      }
      Numbering := {Type: PFN[Type], Style: PFNS[Style]}
      Numbering.Tab := RegExReplace(Tab, ",", ".")
      Numbering.Start := Start
      Success := RE.SetParaNumbering(Numbering)
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
}
; ======================================================================================================================
; ParaSpacing GUI
; ======================================================================================================================
ParaSpacingGui(RE) {
   Static Owner := ""
        , Success := False
   PF2 := RE.GetParaFormat()
   Owner := RE.GuiName43
   Gui, ParaSpacingGui: New
   Gui, +Owner%Owner% +ToolWindow +LastFound +LabelParaSpacingGui
   Gui, Margin, 20, 10
   Gui, %GuiName43%:Add, Text, Section h20 0x200, Space before in points:
   Gui, %GuiName43%:Add, Text, xs y+10 hp 0x200, Space after in points:
   Gui, %GuiName43%:Add, Edit, ys hp hwndhBefore Number Limit2 Right, 00
   GuiControl, , %hBefore%, % (PF2.SpaceBefore // 20)
   Gui, %GuiName43%:Add, Edit, xp y+10 hp hwndhAfter Number Limit2 Right, 00
   GuiControl, , %hAfter%, % (PF2.SpaceAfter // 20)
   Gui, %GuiName43%:Add, Button, xs gParaSpacingGuiApply hwndhBtn1, Apply
   Gui, %GuiName43%:Add, Button, x+10 yp gParaSpacingGuiClose hwndhBtn2, Cancel
   GuiControlGet, B, Pos, %hBtn2%
   GuiControl, %GuiName43%:Move, %hBtn1%, w%BW%
   GuiControlGet, E, Pos, %hAfter%
   X := EX + EW - BW
   GuiControl, %GuiName43%:Move, %hBtn2%, x%X%
   Gui, %Owner%:+Disabled
   Gui, %GuiName43%:Show, , Paragraph Spacing
   WinWaitActive
   WinWaitClose
   Return Success
   ; -------------------------------------------------------------------------------------------------------------------
   ParaSpacingGuiClose:
      Success := False
      Gui, %Owner%:-Disabled
      Gui, %GuiName43%:Destroy
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   ParaSpacingGuiApply:
      GuiControlGet, Before, , %hBefore%
      GuiControlGet, After, , %hAfter%
      Success := RE.SetParaSpacing({Before: Before, After: After})
      Gui, %Owner%:-Disabled
      Gui, %GuiName43%:Destroy
   Return
}
; ======================================================================================================================
; SetTabStops GUI
; ======================================================================================================================
SetTabStopsGui(RE) {
   ; Set paragraph's tabstobs
   ; Call with parameter mode = "Reset" to reset to default tabs
   ; EM_GETPARAFORMAT = 0x43D, EM_SETPARAFORMAT = 0x447
   ; PFM_TABSTOPS = 0x10
   Static Owner   := ""
        , Metrics := 0
        , MinTab  := 0.30     ; minimal tabstop in inches
        , MaxTab  := 8.30     ; maximal tabstop in inches
        , AL := 0x00000000    ; left aligned (default)
        , AC := 0x01000000    ; centered
        , AR := 0x02000000    ; right aligned
        , AD := 0x03000000    ; decimal tabstop
        , Align := {0x00000000: "L", 0x01000000: "C", 0x02000000: "R", 0x03000000: "D"}
        , TabCount := 0       ; tab count
        , MAX_TAB_STOPS := 32
        , Success := False    ; return value
   Metrics := RE.GetMeasurement()
   PF2 := RE.GetParaFormat()
   TL := ""
   TabCount := PF2.TabCount
   Tabs := PF2.Tabs
   Loop, %TabCount% {
      Tab := Tabs[A_Index]
      TL .= Round(((Tab & 0x00FFFFFF) * Metrics) / 1440, 2) . ":" . (Tab & 0xFF000000) . "|"
   }
   If (TabCount)
      TL := SubStr(TL, 1, -1)
   Owner := RE.GuiName43
   Gui, SetTabStopsGui: New
   Gui, +Owner%Owner% +ToolWindow +LastFound +LabelSetTabStopsGui
   Gui, Margin, 10, 10
   Gui, %GuiName43%:Add, Text, Section, % "Position: (" . (Metrics = 1.00 ? "in." : "cm") . ")"
   Gui, %GuiName43%:Add, ComboBox, xs y+2 w120 r6 Simple +0x800 hwndCBBID AltSubmit gSetTabStopsGuiSelChanged
   If (TabCount) {
      Loop, Parse, TL, |
      {
         StringSplit, T, A_LoopField, :
         SendMessage, 0x0143, 0, &T1, , ahk_id %CBBID% ; CB_ADDSTRING
         SendMessage, 0x0151, ErrorLevel, T2, , ahk_id %CBBID% ; CB_SETITEMDATA
      }
   }
   Gui, %GuiName43%:Add, Text, ys Section, Alignment:
   Gui, %GuiName43%:Add, Radio, xs w60 Section y+2 hwndRLID Checked Group, Left
   Gui, %GuiName43%:Add, Radio, wp hwndRCID, Center
   Gui, %GuiName43%:Add, Radio, ys wp hwndRRID, Right
   Gui, %GuiName43%:Add, Radio, wp hwndRDID, Decimal
   Gui, %GuiName43%:Add, Button, xs Section w60 gSetTabStopsGuiAdd Disabled hwndBTADDID, &Add
   Gui, %GuiName43%:Add, Button, ys w60 gSetTabStopsGuiRemove Disabled hwndBTREMID, &Remove
   GuiControlGet, P1, Pos, %BTADDID%
   GuiControlGet, P2, Pos, %BTREMID%
   W := P2X + P2W - P1X
   Gui, %GuiName43%:Add, Button, xs w%W% gSetTabStopsGuiRemoveAll hwndBTCLAID, &Clear all
   Gui, %GuiName43%:Add, Text, xm h5
   Gui, %GuiName43%:Add, Button, xm y+0 w60 gSetTabStopsGuiOK, &OK
   X := P2X + P2W - 60
   Gui, %GuiName43%:Add, Button, x%X% yp wp gSetTabStopsGuiClose, &Cancel
   Gui, %Owner%:+Disabled
   Gui, Show, , Set Tabstops
   WinWaitActive
   WinWaitClose
   Return Success
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiClose:
      Success := False
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiSelChanged:
      If (TabCount < MAX_TAB_STOPS) {
         GuiControlGet, T, , %CBBID%, Text
         If RegExMatch(T, "^\s*$")
            GuiControl, Disable, %BTADDID%
         Else
            GuiControl, Enable, %BTADDID%
      }
      SendMessage, 0x0147, 0, 0, , ahk_id %CBBID% ; CB_GETCURSEL
      I := ErrorLevel
      If (I > 0x7FFFFFFF) {
         GuiControl, Disable, %BTREMID%
         Return
      }
      GuiControl, Enable, %BTREMID%
      SendMessage, 0x0150, I, 0, , ahk_id %CBBID% ; CB_GETITEMDATA
      A := ErrorLevel
      C := A = AC ? RCID : A = AR ? RRID : A = AD ? RDID : RLID
      GuiControl, , %C%, 1
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiAdd:
      GuiControlGet, T, ,%CBBID%, Text
      If !RegExMatch(T, "^\d*[.,]?\d+$") {
         GuiControl, Focus, %CBBID%
         Return
      }
      StringReplace, T, T, `,, .
      T := Round(T, 2)
      If (Round(T / Metrics, 2) < MinTab) {
         GuiControl, Focus, %CBBID%
         Return
      }
      If (Round(T / Metrics, 2) > MaxTab) {
         GuiControl, Focus, %CBBID%
         Return
      }
      GuiControlGet, RL, , %RLID%
      GuiControlGet, RC, , %RCID%
      GuiControlGet, RR, , %RRID%
      GuiControlGet, RD, , %RDID%
      A := RC ? AC : RR ? AR : RD ? AD : AL
      ControlGet, TL, List, , , ahk_id %CBBID%
      P := -1
      Loop, Parse, TL, `n
      {
         If (T < A_LoopField) {
            P := A_Index - 1
            Break
         }
         IF (T = A_LoopField) {
            P := A_Index - 1
            SendMessage, 0x0144, P, 0, , ahk_id %CBBID% ; CB_DELETESTRING
            Break
         }
      }
      SendMessage, 0x014A, P, &T, , ahk_id %CBBID% ; CB_INSERTSTRING
      SendMessage, 0x0151, ErrorLevel, A, , ahk_id %CBBID% ; CB_SETITEMDATA
      TabCount++
      If !(TabCount < MAX_TAB_STOPS)
         GuiControl, Disable, %BTADDID%
      GuiControl, Text, %CBBID%
      GuiControl, Focus, %CBBID%
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiRemove:
      SendMessage, 0x0147, 0, 0, , ahk_id %CBBID% ; CB_GETCURSEL
      I := ErrorLevel
      If (I > 0x7FFFFFFF)
         Return
      SendMessage, 0x0144, I, 0, , ahk_id %CBBID% ; CB_DELETESTRING
      GuiControl, Text, %CBBID%
      TabCount--
      GuiControl, , %RLID%, 1
      GuiControl, Focus, %CBBID%
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiRemoveAll:
      GuiControl, , %CBBID%, |
      TabCount := 0
      GuiControl, , %RLID%, 1
      GuiControl, Focus, %CBBID%
   Return
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStopsGuiOK:
      SendMessage, 0x0146, 0, 0, , ahk_id %CBBID% ; CB_GETCOUNT
      If ((TabCount := ErrorLevel) > 0x7FFFFFFF)
         Return
      If (TabCount > 0) {
         ControlGet, TL, List, , , ahk_id %CBBID%
         TabStops := {}
         Loop, Parse, TL, `n
         {
            SendMessage, 0x0150, A_Index - 1, 0, , ahk_id %CBBID% ; CB_GETITEMDATA
            TabStops[A_LoopField * 100] := Align[ErrorLevel]
         }
      }
      Success := RE.SetTabStops(TabStops)
      Gui, %Owner%:-Disabled
      Gui, Destroy
   Return
}
; ======================================================================================================================













































;    _____ _                 _____  _      _     ______    _ _ _          _     _    
;   / ____| |               |  __ \(_)    | |   |  ____|  | (_) |        | |   | |   
;  | |    | | __ _ ___ ___  | |__) |_  ___| |__ | |__   __| |_| |_   __ _| |__ | | __
;  | |    | |/ _` / __/ __| |  _  /| |/ __| '_ \|  __| / _` | | __| / _` | '_ \| |/ /
;  | |____| | (_| \__ \__ \ | | \ \| | (__| | | | |___| (_| | | |_ | (_| | | | |   < 
;   \_____|_|\__,_|___/___/ |_|  \_\_|\___|_| |_|______\__,_|_|\__(_)__,_|_| |_|_|\_\
;                       ______                                                       
;                      |______|                                                      


; ======================================================================================================================
; Scriptname:     Class_RichEdit.ahk
; Namespace:      RichEdit
; Author:         just me
; AHK Version:    1.1.21.03 (Unicode)
; OS Version:     Win 8.1 (x64)
; Function:       The class provides some wrapper functions for rich edit controls (v4.1 Unicode).
; Change History:
;    0.1.05.00    2015-04-14/just me - fixed LoadRTF() not closing the file after reading
;    0.1.04.00    2014-08-27/just me - fixed SetParaIndent() and changed indentation sample
;    0.1.03.00    2014-03-03/just me - added GetTextRange()
;    0.1.02.00    2013-12-01/just me - changed SetText() to handle RTF formatted text properly
;    0.1.01.00    2013-11-29/just me - bug fix -> GetSelText()
;    0.1.00.00    2013-11-17/just me - initial beta release
; Credits:
;    corrupt for cRichEdit:
;       http://www.autohotkey.com/board/topic/17869-crichedit-standard-richedit-control-for-autohotkey-scripts/
;    jballi for HE_Print:
;       http://www.autohotkey.com/board/topic/45513-function-he-print-wysiwyg-print-for-the-hiedit-control/
;    majkinetor for Dlg:
;       http://www.autohotkey.com/board/topic/15836-module-dlg-501/
; ======================================================================================================================
Class RichEdit {
   ; ===================================================================================================================
   ; Class variables - do not change !!!
   ; ===================================================================================================================
   ; RichEdit v4.1 (Unicode)
   Static Class := "RICHEDIT50W"
   ; RichEdit v4.1 (Unicode)
   Static DLL := "Msftedit.dll"
   ; DLL handle
   Static Instance := DllCall("Kernel32.dll\LoadLibrary", "Str", RichEdit.DLL, "UPtr")
   ; Callback function handling RichEdit messages
   Static SubclassCB := 0
   ; Number of controls/instances
   Static Controls := 0
   ; ===================================================================================================================
   ; Instance variables - do not change !!!
   ; ===================================================================================================================
   GuiName := ""
   GuiHwnd := ""
   HWND := ""
   DefFont := ""
   ; ===================================================================================================================
   ; CONSTRUCTOR
   ; ===================================================================================================================
   __New(GuiName, Options, MultiLine := True) {
      Static WS_TABSTOP := 0x10000, WS_HSCROLL := 0x100000, WS_VSCROLL := 0x200000, WS_VISIBLE := 0x10000000
           , WS_CHILD := 0x40000000
           , WS_EX_CLIENTEDGE := 0x200, WS_EX_STATICEDGE := 0x20000
           , ES_MULTILINE := 0x0004, ES_AUTOVSCROLL := 0x40, ES_AUTOHSCROLL := 0x80, ES_NOHIDESEL := 0x0100
           , ES_WANTRETURN := 0x1000, ES_DISABLENOSCROLL := 0x2000, ES_SUNKEN := 0x4000, ES_SAVESEL := 0x8000
           , ES_SELECTIONBAR := 0x1000000
      ; Check for Unicode
      If !(SubStr(A_AhkVersion, 1, 1) > 1) && !(A_IsUnicode) {
         MsgBox, 16, % A_ThisFunc, % This.__Class . " requires a unicode version of AHK!"
         Return False
      }
      ; Do not instantiate instances of RichEdit
      If (This.Base.HWND)
         Return False
      ; Determine the HWND of the GUI
      Gui, %GuiName%:+LastFoundExist
      GuiHwnd := WinExist()
      If !(GuiHwnd) {
         ErrorLevel := "ERROR: Gui " . GuiName . " does not exist!"
         Return False
      }
      ; Load library if necessary
      If (This.Base.Instance = 0) {
         This.Base.Instance := DllCall("Kernel32.dll\LoadLibrary", "Str", This.Base.DLL, "UPtr")
         If (ErrorLevel) {
            ErrorLevel := "ERROR: Error loading " . This.Base.DLL . " - " . ErrorLevel
            Return False
         }
      }
      ; Specify default styles & exstyles
      Styles := WS_TABSTOP | WS_VISIBLE | WS_CHILD | ES_AUTOHSCROLL
      If (MultiLine)
         Styles |= WS_HSCROLL | WS_VSCROLL | ES_MULTILINE | ES_AUTOVSCROLL | ES_NOHIDESEL | ES_WANTRETURN
                 | ES_DISABLENOSCROLL | ES_SAVESEL ; | ES_SELECTIONBAR does not work properly
      ExStyles := WS_EX_STATICEDGE
      ; Create the control
      CtrlClass := This.Class
      Gui, %GuiName%:Add, Custom, Class%CtrlClass% %Options% hwndHWND +%Styles% +E%ExStyles%
      If (MultiLine) {
         ; Adjust the formatting rectangle for multiline controls to simulate a selection bar
         ; EM_GETRECT = 0xB2, EM_SETRECT = 0xB3
         VarSetCapacity(RECT, 16, 0)
         SendMessage, 0xB2, 0, &RECT, , ahk_id %HWND%
         NumPut(NumGet(RECT, 0, "Int") + 10, RECT, 0, "Int")
         NumPut(NumGet(RECT, 4, "Int") + 2,  RECT, 4, "Int")
         SendMessage, 0xB3, 0, &RECT, , ahk_id %HWND%
         ; Set advanced typographic options
         ; EM_SETTYPOGRAPHYOPTIONS = 0x04CA (WM_USER + 202)
         ; TO_ADVANCEDTYPOGRAPHY	= 1, TO_ADVANCEDLAYOUT = 8 ? not documented
         SendMessage, 0x04CA, 0x01, 0x01, , ahk_id %HWND%
      }
      ; Initialize control
      ; EM_SETLANGOPTIONS = 0x0478 (WM_USER + 120)
      ; IMF_AUTOKEYBOARD = 0x01, IMF_AUTOFONT = 0x02
      SendMessage, 0x0478, 0, 0x03, , ahk_id %HWND%
      ; Subclass the control to get Tab key and prevent Esc from sending a WM_CLOSE message to the parent window.
      ; One of majkinetor's splendid discoveries!
      ; Initialize SubclassCB
      If (This.Base.SubclassCB = 0)
         This.Base.SubclassCB := RegisterCallback("RichEdit.SubclassProc")
      DllCall("Comctl32.dll\SetWindowSubclass", "Ptr", HWND, "Ptr", This.Base.SubclassCB, "Ptr", HWND, "Ptr", 0)
      This.GuiName := GuiName
      This.GuiHwnd := GuiHwnd
      This.HWND := HWND
      This.DefFont := This.GetFont(1)
      This.DefFont.Default := 1
      ; Correct AHK font size setting, if necessary
      If (Round(This.DefFont.Size) <> This.DefFont.Size) {
         This.DefFont.Size := Round(This.DefFont.Size)
         This.SetDefaultFont()
      }
      This.Base.Controls += 1
      ; Initialize the print margins
      This.GetMargins()
      ; Initialize the text limit
      This.LimitText(2147483647)
   }
   ; ===================================================================================================================
   ; DESTRUCTOR
   ; ===================================================================================================================
   __Delete() {
      If (This.HWND) {
         DllCall("Comctl32.dll\RemoveWindowSubclass", "Ptr", This.HWND, "Ptr", This.Base.SubclassCB, "Ptr", 0)
         DllCall("User32.dll\DestroyWindow", "Ptr", This.HWND)
         This.HWND := 0
         This.Base.Controls -= 1
         If (This.Base.Controls = 0) {
            DllCall("Kernel32.dll\FreeLibrary", "Ptr", This.Base.Instance)
            This.Base.Instance := 0
         }
      }
   }
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; INTERNAL CLASSES ==================================================================================================
   ; ===================================================================================================================
   ; ===================================================================================================================
   Class CF2 { ; CHARFORMAT2 structure -> http://msdn.microsoft.com/en-us/library/bb787883(v=vs.85).aspx
      __New() {
         Static CF2_Size := 116
         This.Insert(":", {Mask: {O: 4, T: "UInt"}, Effects: {O: 8, T: "UInt"}
                         , Height: {O: 12, T: "Int"}, Offset: {O: 16, T: "Int"}
                         , TextColor: {O: 20, T: "Int"}, CharSet: {O: 24, T: "UChar"}
                         , PitchAndFamily: {O: 25, T: "UChar"}, FaceName: {O: 26, T: "Str32"}
                         , Weight: {O: 90, T: "UShort"}, Spacing: {O: 92, T: "Short"}
                         , BackColor: {O: 96, T: "UInt"}, LCID: {O: 100, T: "UInt"}
                         , Cookie: {O: 104, T: "UInt"}, Style: {O: 108, T: "Short"}
                         , Kerning: {O: 110, T: "UShort"}, UnderlineType: {O: 112, T: "UChar"}
                         , Animation: {O: 113, T: "UChar"}, RevAuthor: {O: 114, T: "UChar"}
                         , UnderlineColor: {O: 115, T: "UChar"}})
         This.Insert(".")
         This.SetCapacity(".", CF2_Size)
         Addr :=  This.GetAddress(".")
         DllCall("Kernel32.dll\RtlZeroMemory", "Ptr", Addr, "Ptr", CF2_Size)
         NumPut(CF2_Size, Addr + 0, 0, "UInt")
      }
      __Get(Name) {
         Addr := This.GetAddress(".")
         If (Name = "CF2")
            Return Addr
         If !This[":"].HasKey(Name)
            Return ""
         Attr := This[":"][Name]
         If (Name <> "FaceName")
            Return NumGet(Addr + 0, Attr.O, Attr.T)
         Return StrGet(Addr + Attr.O, 32)
      }
      __Set(Name, Value) {
         Addr := This.GetAddress(".")
         If !This[":"].HasKey(Name)
            Return ""
         Attr := This[":"][Name]
         If (Name <> "FaceName")
            NumPut(Value, Addr + 0, Attr.O, Attr.T)
         Else
            StrPut(Value, Addr + Attr.O, 32)
         Return Value
      }
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Class PF2 { ; PARAFORMAT2 structure -> http://msdn.microsoft.com/en-us/library/bb787942(v=vs.85).aspx
      __New() {
         Static PF2_Size := 188
         This.Insert(":", {Mask: {O: 4, T: "UInt"}, Numbering: {O: 8, T: "UShort"}
                         , StartIndent: {O: 12, T: "Int"}, RightIndent: {O: 16, T: "Int"}
                         , Offset: {O: 20, T: "Int"}, Alignment: {O: 24, T: "UShort"}
                         , TabCount: {O: 26, T: "UShort"}, Tabs: {O: 28, T: "UInt"}
                         , SpaceBefore: {O: 156, T: "Int"}, SpaceAfter: {O: 160, T: "Int"}
                         , LineSpacing: {O: 164, T: "Int"}, Style: {O: 168, T: "Short"}
                         , LineSpacingRule: {O: 170, T: "UChar"}, OutlineLevel: {O: 171, T: "UChar"}
                         , ShadingWeight: {O: 172, T: "UShort"}, ShadingStyle: {O: 174, T: "UShort"}
                         , NumberingStart: {O: 176, T: "UShort"}, NumberingStyle: {O: 178, T: "UShort"}
                         , NumberingTab: {O: 180, T: "UShort"}, BorderSpace: {O: 182, T: "UShort"}
                         , BorderWidth: {O: 184, T: "UShort"}, Borders: {O: 186, T: "UShort"}})
         This.Insert(".")
         This.SetCapacity(".", PF2_Size)
         Addr :=  This.GetAddress(".")
         DllCall("Kernel32.dll\RtlZeroMemory", "Ptr", Addr, "Ptr", PF2_Size)
         NumPut(PF2_Size, Addr + 0, 0, "UInt")
      }
      __Get(Name) {
         Addr := This.GetAddress(".")
         If (Name = "PF2")
            Return Addr
         If !This[":"].HasKey(Name)
            Return ""
         Attr := This[":"][Name]
         If (Name <> "Tabs")
            Return NumGet(Addr + 0, Attr.O, Attr.T)
         Tabs := []
         Offset := Attr.O - 4
         Loop, 32
            Tabs[A_Index] := NumGet(Addr + 0, Offset += 4, "UInt")
         Return Tabs
      }
      __Set(Name, Value) {
         Addr := This.GetAddress(".")
         If !This[":"].HasKey(Name)
            Return ""
         Attr := This[":"][Name]
         If (Name <> "Tabs") {
            NumPut(Value, Addr + 0, Attr.O, Attr.T)
            Return Value
         }
         If !IsObject(Value)
            Return ""
         Offset := Attr.O - 4
         For Each, Tab In Value
            NumPut(Tab, Addr + 0, Offset += 4, "UInt")
         Return Tabs
      }
   }
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; PRIVATE METHODS ===================================================================================================
   ; ===================================================================================================================
   ; ===================================================================================================================
   GetBGR(RGB) { ; Get numeric BGR value from numeric RGB value or HTML color name
      Static HTML := {BLACK:  0x000000, SILVER: 0xC0C0C0, GRAY:   0x808080, WHITE:   0xFFFFFF
                    , MAROON: 0x000080, RED:    0x0000FF, PURPLE: 0x800080, FUCHSIA: 0xFF00FF
                    , GREEN:  0x008000, LIME:   0x00FF00, OLIVE:  0x008080, YELLOW:  0x00FFFF
                    , NAVY:   0x800000, BLUE:   0xFF0000, TEAL:   0x808000, AQUA:    0xFFFF00}
      If HTML.HasKey(RGB)
         Return HTML[RGB]
      Return ((RGB & 0xFF0000) >> 16) + (RGB & 0x00FF00) + ((RGB & 0x0000FF) << 16)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetRGB(BGR) {  ; Get numeric RGB value from numeric BGR-Value
      Return ((BGR & 0xFF0000) >> 16) + (BGR & 0x00FF00) + ((BGR & 0x0000FF) << 16)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetMeasurement() { ; Get locale measurement (metric / inch)
      ; LOCALE_USER_DEFAULT = 0x0400, LOCALE_IMEASURE = 0x0D, LOCALE_RETURN_NUMBER = 0x20000000
      Static Metric := 2.54  ; centimeters
           , Inches := 1.00  ; inches
           , Measurement := ""
           , Len := A_IsUnicode ? 2 : 4
      If (Measurement = "") {
         VarSetCapacity(LCD, 4, 0)
         DllCall("Kernel32.dll\GetLocaleInfo", "UInt", 0x400, "UInt", 0x2000000D, "Ptr", &LCD, "Int", Len)
         Measurement := NumGet(LCD, 0, "UInt") ? Inches : Metric
      }
      Return Measurement
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SubclassProc(M, W, L, I, R) { ; RichEdit subclassproc
      ; Left out first parameter HWND, will be found in "This" when called by system
      ; See -> http://msdn.microsoft.com/en-us/library/bb776774%28VS.85%29.aspx
      If (M = 0x87) ; WM_GETDLGCODE
         Return 4   ; DLGC_WANTALLKEYS
      Return DllCall("Comctl32.dll\DefSubclassProc", "Ptr", This, "UInt", M, "Ptr", W, "Ptr", L)
   }
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; PUBLIC METHODS ====================================================================================================
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; -------------------------------------------------------------------------------------------------------------------
   ; Methods to be used by advanced users only
   ; -------------------------------------------------------------------------------------------------------------------
   GetCharFormat() { ; Retrieves the character formatting of the current selection.
      ; For details see http://msdn.microsoft.com/en-us/library/bb787883(v=vs.85).aspx.
      ; Returns a 'CF2' object containing the formatting settings.
      ; EM_GETCHARFORMAT = 0x043A
      CF2 := New This.CF2
      SendMessage, 0x043A, 1, % CF2.CF2, , % "ahk_id " . This.HWND
      Return (CF2.Mask ? CF2 : False)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetCharFormat(CF2) { ; Sets character formatting of the current selection.
      ; For details see http://msdn.microsoft.com/en-us/library/bb787883(v=vs.85).aspx.
      ; CF2 : CF2 object like returned by GetCharFormat().
      ; EM_SETCHARFORMAT = 0x0444
      SendMessage, 0x0444, 1, % CF2.CF2, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetParaFormat() { ; Retrieves the paragraph formatting of the current selection.
      ; For details see http://msdn.microsoft.com/en-us/library/bb787942(v=vs.85).aspx.
      ; Returns a 'PF2' object containing the formatting settings.
      ; EM_GETPARAFORMAT = 0x043D
      PF2 := New This.PF2
      SendMessage, 0x043D, 0, % PF2.PF2, , % "ahk_id " . This.HWND
      Return (PF2.Mask ? PF2 : False)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetParaFormat(PF2) { ; Sets the  paragraph formatting for the current selection.
      ; For details see http://msdn.microsoft.com/en-us/library/bb787942(v=vs.85).aspx.
      ; PF2 : PF2 object like returned by GetParaFormat().
      ; EM_SETPARAFORMAT = 0x0447
      SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Control specific
   ; -------------------------------------------------------------------------------------------------------------------
   IsModified() { ; Has the control been  modified?
      ; EM_GETMODIFY = 0xB8
      SendMessage, 0xB8, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetModified(Modified := False) { ; Sets or clears the modification flag for an edit control.
      ; EM_SETMODIFY = 0xB9
      SendMessage, 0xB9, % !!Modified, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetEventMask(Events := "") { ; Set the events which shall send notification codes control's owner
      ; Events : Array containing one or more of the keys defined in 'ENM'.
      ; For details see http://msdn.microsoft.com/en-us/library/bb774238(v=vs.85).aspx
      ; EM_SETEVENTMASK	= 	0x0445
      Static ENM := {NONE: 0x00, CHANGE: 0x01, UPDATE: 0x02, SCROLL: 0x04, SCROLLEVENTS: 0x08, DRAGDROPDONE: 0x10
                   , PARAGRAPHEXPANDED: 0x20, PAGECHANGE: 0x40, KEYEVENTS: 0x010000, MOUSEEVENTS: 0x020000
                   , REQUESTRESIZE: 0x040000, SELCHANGE: 0x080000, DROPFILES: 0x100000, PROTECTED: 0x200000
                   , LINK: 0x04000000}
      If !IsObject(Events)
         Events := ["NONE"]
      Mask := 0
      For Each, Event In Events {
         If ENM.HasKey(Event)
            Mask |= ENM[Event]
         Else
            Return False
      }
      SendMessage, 0x0445, 0, %Mask%, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Loading and storing RTF format
   ; -------------------------------------------------------------------------------------------------------------------
   GetRTF(Selection := False) { ; Gets the whole content of the control as rich text.
      ; Selection = False : whole contents (default)
      ; Selection = True  : current selection
      ; EM_STREAMOUT = 0x044A
      ; SF_TEXT = 0x1, SF_RTF = 0x2, SF_RTFNOOBJS = 0x3, SF_UNICODE = 0x10, SF_USECODEPAGE =	0x0020
      ; SFF_PLAINRTF = 0x4000, SFF_SELECTION = 0x8000
      ; UTF-8 = 65001, UTF-16 = 1200
      Static GetRTFCB := 0
      Flags := 0x4022 | (1200 << 16) | (Selection ? 0x8000 : 0)
      GetRTFCB := RegisterCallback("RichEdit.GetRTFProc")
      VarSetCapacity(ES, (A_PtrSize * 2) + 4, 0) ; EDITSTREAM structure
      NumPut(This.HWND, ES, 0, "Ptr")            ; dwCookie
      NumPut(GetRTFCB, ES, A_PtrSize + 4, "Ptr") ; pfnCallback
      SendMessage, 0x044A, %Flags%, &ES, , % "ahk_id " . This.HWND
      DllCall("Kernel32.dll\GlobalFree", "Ptr", GetRTFCB)
      Return This.GetRTFProc("Get", 0, 0)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetRTFProc(pbBuff, cb, pcb) { ; Callback procedure for GetRTF
      ; left out first parameter dwCookie, will be passed in "This" when called by system
      Static RTF := ""
      If (cb > 0) {
         RTF .= StrGet(pbBuff, cb, "CP0")
         Return 0
      }
      If (pbBuff = "Get") {
         Out := RTF
         VarSetCapacity(RTF, 0)
         Return Out
      }
      Return 1
   }
   ; -------------------------------------------------------------------------------------------------------------------
   LoadRTF(FilePath, Selection := False) { ; Loads RTF file into the control.
      ; FilePath = file path
      ; Selection = False : whole contents (default)
      ; Selection = True  : current selection
      ; EM_STREAMIN = 0x0449
      ; SF_TEXT = 0x1, SF_RTF = 0x2, SF_RTFNOOBJS = 0x3, SF_UNICODE = 0x10, SF_USECODEPAGE =	0x0020
      ; SFF_PLAINRTF = 0x4000, SFF_SELECTION = 0x8000
      ; UTF-16 = 1200
      Static LoadRTFCB := RegisterCallback("RichEdit.LoadRTFProc")
      Flags := 0x4002 | (Selection ? 0x8000 : 0) ; | (1200 << 16)
      If !(File := FileOpen(FilePath, "r"))
         Return False
      VarSetCapacity(ES, (A_PtrSize * 2) + 4, 0)  ; EDITSTREAM structure
      NumPut(File.__Handle, ES, 0, "Ptr")         ; dwCookie
      NumPut(LoadRTFCB, ES, A_PtrSize + 4, "Ptr") ; pfnCallback
      SendMessage, 0x0449, %Flags%, &ES, , % "ahk_id " . This.HWND
      Result := ErrorLevel
      File.Close()
      Return Result
   }
   ; -------------------------------------------------------------------------------------------------------------------
   LoadRTFProc(pbBuff, cb, pcb) { ; Callback procedure for LoadRTF
      ; Left out first parameter dwCookie, will be passed in "This" when called by system
      Return !DllCall("ReadFile", "Ptr", This, "Ptr", pbBuff, "UInt", cb, "Ptr", pcb, "Ptr", 0)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Scrolling
   ; -------------------------------------------------------------------------------------------------------------------
   GetScrollPos() { ; Obtains the current scroll position.
      ; Returns on object with keys 'X' and 'Y' containing the scroll position.
      ; EM_GETSCROLLPOS = 0x04DD
      VarSetCapacity(PT, 8, 0)
      SendMessage, 0x04DD, 0, &PT, , % "ahk_id " . This.HWND
      Return {X: NumGet(PT, 0, "Int"), Y: NumGet(PT, 4, "Int")}
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetScrollPos(X, Y) { ; Scrolls the contents of a rich edit control to the specified point.
      ; X : x-position to scroll to.
      ; Y : y-position to scroll to.
      ; EM_SETSCROLLPOS = 0x04DE
      VarSetCapacity(PT, 8, 0)
      NumPut(X, PT, 0, "Int")
      NumPut(Y, PT, 4, "Int")
      SendMessage, 0x04DE, 0, &PT, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ScrollCaret() { ; Scrolls the caret into view.
      ; EM_SCROLLCARET = 0x00B7
      SendMessage, 0x00B7, 0, 0, , % "ahk_id " . This.HWND
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ShowScrollBar(SB, Mode := True) { ; Shows or hides one of the scroll bars of a rich edit control.
      ; SB   : Identifies which scroll bar to display: horizontal or vertical.
      ;        This parameter must be 1 (SB_VERT) or 0 (SB_HORZ).
      ; Mode : Specify TRUE to show the scroll bar and FALSE to hide it.
      ; EM_SHOWSCROLLBAR = 0x0460 (WM_USER + 96)
      SendMessage, 0x0460, %SB%, %Mode%, , % "ahk_id " . This.HWND
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Text and selection
   ; -------------------------------------------------------------------------------------------------------------------
   FindText(Find, Mode := "") { ; Finds Unicode text within a rich edit control.
      ; Find : Text to search for.
      ; Mode : Optional array containing one or more of the keys specified in 'FR'.
      ;        For details see http://msdn.microsoft.com/en-us/library/bb788013(v=vs.85).aspx.
      ; Returns True if the text was found; otherwise false.
      ; EM_FINDTEXTEXW = 0x047C, EM_SCROLLCARET = 0x00B7
      Static FR:= {DOWN: 1, WHOLEWORD: 2, MATCHCASE: 4}
      Flags := 0
      For Each, Value In Mode
         If FR.HasKey(Value)
            Flags |= FR[Value]
      Sel := This.GetSel()
      Min := (Flags & FR.DOWN) ? Sel.E : Sel.S
      Max := (Flags & FR.DOWN) ? -1 : 0
      VarSetCapacity(FTX, 16 + A_PtrSize, 0)
      NumPut(Min, FTX, 0, "Int")
      NumPut(Max, FTX, 4, "Int")
      NumPut(&Find, FTX, 8, "Ptr")
      SendMessage, 0x047C, %Flags%, &FTX, , % "ahk_id " . This.HWND
      S := NumGet(FTX, 8 + A_PtrSize, "Int"), E := NumGet(FTX, 12 + A_PtrSize, "Int")
      If (S = -1) && (E = -1)
         Return False
      This.SetSel(S, E)
      This.ScrollCaret()
      Return
   }
   ; -------------------------------------------------------------------------------------------------------------------
   FindWordBreak(CharPos, Mode := "Left") { ; Finds the next word break before or after the specified character position
                                            ; or retrieves information about the character at that position.
      ; CharPos : Character position.
      ; Mode    : Can be one of the keys specified in 'WB'.
      ; Returns the character index of the word break or other values depending on 'Mode'.
      ; For details see http://msdn.microsoft.com/en-us/library/bb788018(v=vs.85).aspx.
      ; EM_FINDWORDBREAK = 0x044C (WM_USER + 76)
      Static WB := {LEFT: 0, RIGHT: 1, ISDELIMITER: 2, CLASSIFY: 3, MOVEWORDLEFT: 4, MOVEWORDRIGHT: 5, LEFTBREAK: 6
                  , RIGHTBREAK: 7}
      Option := WB.HasKey(Mode) ? WB[Mode] : 0
      SendMessage, 0x044C, %Option%, %CharPos%, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetSelText() { ; Retrieves the currently selected text as plain text.
      ; Returns selected text.
      ; EM_GETSELTEXT = 0x043E, EM_EXGETSEL = 0x0434
      VarSetCapacity(CR, 8, 0)
      SendMessage, 0x0434, 0, &CR, , % "ahk_id " . This.HWND
      L := NumGet(CR, 4, "Int") - NumGet(CR, 0, "Int") + 1
      If (L > 1) {
         VarSetCapacity(Text, L * 2, 0)
         SendMessage, 0x043E, 0, &Text, , % "ahk_id " . This.HWND
         VarSetCapacity(Text, -1)
      }
      Return Text
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetSel() { ; Retrieves the starting and ending character positions of the selection in a rich edit control.
      ; Returns an object containing the keys S (start of selection) and E (end of selection)).
      ; EM_EXGETSEL = 0x0434
      VarSetCapacity(CR, 8, 0)
      SendMessage, 0x0434, 0, &CR, , % "ahk_id " . This.HWND
      Return {S: NumGet(CR, 0, "Int"), E: NumGet(CR, 4, "Int")}
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetText() { ; Gets the whole content of the control as plain text.
      ; EM_GETTEXTEX = 0x045E
      Text := ""
      If (Length := This.GetTextLen() * 2) {
         VarSetCapacity(GTX, (4 * 4) + (A_PtrSize * 2), 0) ; GETTEXTEX structure
         NumPut(Length + 2, GTX, 0, "UInt") ; cb
         NumPut(1200, GTX, 8, "UInt")       ; codepage = Unicode
         VarSetCapacity(Text, Length + 2, 0)
         SendMessage, 0x045E, &GTX, &Text, , % "ahk_id " . This.HWND
         VarSetCapacity(Text, -1)
      }
      Return Text
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetTextLen() { ; Calculates text length in various ways.
      ; EM_GETTEXTLENGTHEX = 0x045F
      VarSetCapacity(GTL, 8, 0)     ; GETTEXTLENGTHEX structure
      NumPut(1200, GTL, 4, "UInt")  ; codepage = Unicode
      SendMessage, 0x045F, &GTL, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetTextRange(Min, Max) { ; Retrieves a specified range of characters from a rich edit control.
      ; Min : Character position index immediately preceding the first character in the range.
      ;       Integer value to store as cpMin in the CHARRANGE structure.
      ; Max : Character position immediately following the last character in the range.
      ;       Integer value to store as cpMax in the CHARRANGE structure.
      ; CHARRANGE -> http://msdn.microsoft.com/en-us/library/bb787885(v=vs.85).aspx
      ; EM_GETTEXTRANGE = 0x044B
      If (Max <= Min)
         Return ""
      VarSetCapacity(Text, (Max - Min) << !!A_IsUnicode, 0)
      VarSetCapacity(TEXTRANGE, 16, 0) ; TEXTRANGE Struktur
      NumPut(Min, TEXTRANGE, 0, "UInt")
      NumPut(Max, TEXTRANGE, 4, "UInt")
      NumPut(&Text, TEXTRANGE, 8, "UPtr")
      SendMessage, 0x044B, 0, % &TEXTRANGE, , % "ahk_id " . This.HWND
      VarSetCapacity(Text, -1) ; Länge des Zeichenspeichers korrigieren 
      Return Text
   }
   ; -------------------------------------------------------------------------------------------------------------------
   HideSelection(Mode) { ; Hides or shows the selection.
      ; Mode : True to hide or False to show the selection.
      ; EM_HIDESELECTION = 0x043F (WM_USER + 63)
      SendMessage, 0x043F, %Mode%, 0, , % "ahk_id " . This.HWND
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   LimitText(Limit)  { ; Sets an upper limit to the amount of text the user can type or paste into a rich edit control.
      ; Limit : Specifies the maximum amount of text that can be entered.
      ;         If this parameter is zero, the default maximum is used, which is 64K characters.
      ; EM_EXLIMITTEXT =  0x435 (WM_USER + 53)
      SendMessage, 0x0435, 0, %Limit%, , % "ahk_id " . This.HWND
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ReplaceSel(Text := "") { ; Replaces the selected text with the specified text.
      ; EM_REPLACESEL = 0xC2
      SendMessage, 0xC2, 1, &Text, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetText(ByRef Text := "", Mode := "") { ; Replaces the selection or the whole content of the control.
      ; Mode : Option flags. It can be any reasonable combination of the keys defined in 'ST'.
      ; For details see http://msdn.microsoft.com/en-us/library/bb774284(v=vs.85).aspx.
      ; EM_SETTEXTEX = 0x0461, CP_UNICODE = 1200
      ; ST_DEFAULT = 0, ST_KEEPUNDO = 1, ST_SELECTION = 2, ST_NEWCHARS = 4 ???
      Static ST := {DEFAULT: 0, KEEPUNDO: 1, SELECTION: 2}
      Flags := 0
      For Each, Value In Mode
         If ST.HasKey(Value)
            Flags |= ST[Value]
      CP := 1200
      BufAddr := &Text
      ; RTF formatted text has to be passed as ANSI!!!
      If (SubStr(Text, 1, 5) = "{\rtf") || (SubStr(Text, 1, 5) = "{urtf") {
         Len := StrPut(Text, "CP0")
         VarSetCapacity(Buf, Len, 0)
         StrPut(Text, &Buf, "CP0")
         BufAddr := &Buf
         CP := 0
      }
      VarSetCapacity(STX, 8, 0)     ; SETTEXTEX structure
      NumPut(Flags, STX, 0, "UInt") ; flags
      NumPut(CP  ,  STX, 4, "UInt") ; codepage
      SendMessage, 0x0461, &STX, BufAddr, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetSel(Start, End) { ; Selects a range of characters.
      ; Start : zero-based start index
      ; End   : zero-beased end index (-1 = end of text))
      ; EM_EXSETSEL = 0x0437
      VarSetCapacity(CR, 8, 0)
      NumPut(Start, CR, 0, "Int")
      NumPut(End,   CR, 4, "Int")
      SendMessage, 0x0437, 0, &CR, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Appearance, styles, and options
   ; -------------------------------------------------------------------------------------------------------------------
   AutoURL(On) { ; Turn AutoURLDetection on/off
      ; EM_AUTOURLDETECT = 0x45B
      SendMessage, 0x45B, % !!On, 0, , % "ahk_id " . This.HWND
      WinSet, Redraw, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetOptions() { ; Retrieves rich edit control options.
      ; Returns an array of currently the set options as the keys defined in 'ECO'.
      ; For details see http://msdn.microsoft.com/en-us/library/bb774178(v=vs.85).aspx.
      ; EM_GETOPTIONS = 0x044E
      Static ECO := {AUTOWORDSELECTION: 0x01, AUTOVSCROLL: 0x40, AUTOHSCROLL: 0x80, NOHIDESEL: 0x100
                   , READONLY: 0x800, WANTRETURN: 0x1000, SAVESEL: 0x8000, SELECTIONBAR: 0x01000000
                   , VERTICAL: 0x400000}
      SendMessage, 0x044E, 0, 0, , % "ahk_id " . This.HWND
      O := ErrorLevel
      Options := []
      For Key, Value In ECO
         If (O & Value)
            Options.Insert(Key)
      Return Options
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetStyles() { ; Retrieves the current edit style flags.
      ; Returns an object containing keys as defined in 'SES'.
      ; For details see http://msdn.microsoft.com/en-us/library/bb788031(v=vs.85).aspx.
      ; EM_GETEDITSTYLE	= 0x04CD (WM_USER + 205)
      Static SES := {1: "EMULATESYSEDIT", 1: "BEEPONMAXTEXT", 4: "EXTENDBACKCOLOR", 32: "NOXLTSYMBOLRANGE", 64: "USEAIMM"
                   , 128: "NOIME", 256: "ALLOWBEEPS", 512: "UPPERCASE", 1024: "LOWERCASE", 2048: "NOINPUTSEQUENCECHK"
                   , 4096: "BIDI", 8192: "SCROLLONKILLFOCUS", 16384: "XLTCRCRLFTOCR", 32768: "DRAFTMODE"
                   , 0x0010000: "USECTF", 0x0020000: "HIDEGRIDLINES", 0x0040000: "USEATFONT", 0x0080000: "CUSTOMLOOK"
                   , 0x0100000: "LBSCROLLNOTIFY", 0x0200000: "CTFALLOWEMBED", 0x0400000: "CTFALLOWSMARTTAG"
                   , 0x0800000: "CTFALLOWPROOFING"}
      SendMessage, 0x04CD, 0, 0, , % "ahk_id " . This.HWND
      Result := ErrorLevel
      Styles := []
      For Key, Value In SES
         If (Result & Key)
            Styles.Insert(Value)
      Return Styles
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetZoom() { ; Gets the current zoom ratio.
      ; Returns the zoom ratio in percent.
      ; EM_GETZOOM = 0x04E0
      VarSetCapacity(N, 4, 0), VarSetCapacity(D, 4, 0)
      SendMessage, 0x04E0, &N, &D, , % "ahk_id " . This.HWND
      N := NumGet(N, 0, "Int"), D := NumGet(D, 0, "Int")
      Return (N = 0) && (D = 0) ? 100 : Round(N / D * 100)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetBkgndColor(Color) { ; Sets the background color.
      ; Color : RGB integer value or HTML color name or
      ;         "Auto" to reset to system default color.
      ; Returns the prior background color.
      ; EM_SETBKGNDCOLOR = 0x0443
      If (Color = "Auto")
         System := True, Color := 0
      Else
         System := False, Color := This.GetBGR(Color)
      SendMessage, 0x0443, %System%, %Color%, , % "ahk_id " . This.HWND
      Return This.GetRGB(ErrorLevel)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetOptions(Options, Mode := "SET") { ; Sets the options for a rich edit control.
      ; Options : Array of options as the keys defined in 'ECO'.
      ; Mode    : Settings mode: SET, OR, AND, XOR
      ; For details see http://msdn.microsoft.com/en-us/library/bb774254(v=vs.85).aspx.
      ; EM_SETOPTIONS = 0x044D
      Static ECO := {AUTOWORDSELECTION: 0x01, AUTOVSCROLL: 0x40, AUTOHSCROLL: 0x80, NOHIDESEL: 0x100, READONLY: 0x800
                   , WANTRETURN: 0x1000, SAVESEL: 0x8000, SELECTIONBAR: 0x01000000, VERTICAL: 0x400000}
           , ECOOP := {SET: 0x01, OR: 0x02, AND: 0x03, XOR: 0x04}
      If !ECOOP.HasKey(Mode)
         Return False
      O := 0
      For Each, Option In Options {
         If ECO.HasKey(Option)
            O |= ECO[Option]
         Else
            Return False
      }
      SendMessage, 0x044D, % ECOOP[Mode], %O%, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetStyles(Styles) { ; Sets the current edit style flags for a rich edit control.
      ; Styles : Object containing on or more of the keys defined in 'SES'.
      ;          If the value is 0 the style will be removed, otherwise it will be added.
      ; For details see http://msdn.microsoft.com/en-us/library/bb774236(v=vs.85).aspx.
      ; EM_SETEDITSTYLE	= 0x04CC (WM_USER + 204)
      Static SES = {EMULATESYSEDIT: 1, BEEPONMAXTEXT: 2, EXTENDBACKCOLOR: 4, NOXLTSYMBOLRANGE: 32, USEAIMM: 64
                  , NOIME: 128, ALLOWBEEPS: 256, UPPERCASE: 512, LOWERCASE: 1024, NOINPUTSEQUENCECHK: 2048
                  , BIDI: 4096, SCROLLONKILLFOCUS: 8192, XLTCRCRLFTOCR: 16384, DRAFTMODE: 32768
                  , USECTF: 0x0010000, HIDEGRIDLINES: 0x0020000, USEATFONT: 0x0040000, CUSTOMLOOK: 0x0080000
                  , LBSCROLLNOTIFY: 0x0100000, CTFALLOWEMBED: 0x0200000, CTFALLOWSMARTTAG: 0x0400000
                  , CTFALLOWPROOFING: 0x0800000}
      Flags := Mask := 0
      For Style, Value In Styles {
         If SES.HasKey(Style) {
            Mask |= SES[Style]
            If (Value <> 0)
               Flags |= SES[Style]
         }
      }
      If (Mask) {
         SendMessage, 0x04CC, %Flags%, %Mask%, ,, % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetZoom(Ratio := "") { ; Sets the zoom ratio of a rich edit control.
      ; Ratio : Float value between 100/64 and 6400; a ratio of 0 turns zooming off.
      ; EM_SETZOOM = 0x4E1
      SendMessage, 0x4E1, % (Ratio > 0 ? Ratio : 100), 100, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Copy, paste, etc.
   ; -------------------------------------------------------------------------------------------------------------------
   CanRedo() { ; Determines whether there are any actions in the control redo queue.
      ; EM_CANREDO = 0x0455 (WM_USER + 85)
      SendMessage, 0x0455, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   CanUndo() { ; Determines whether there are any actions in an edit control's undo queue.
      ; EM_CANUNDO = 0x00C6
      SendMessage, 0x00C6, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Clear() {
      ; WM_CLEAR = 0x303
      SendMessage, 0x303, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Copy() {
      ; WM_COPY = 0x301
      SendMessage, 0x301, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Cut() {
      ; WM_CUT = 0x300
      SendMessage, 0x300, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Paste() {
      ; WM_PASTE = 0x302
      SendMessage, 0x302, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Redo() {
      ; EM_REDO := 0x454
      SendMessage, 0x454, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Undo() {
      ; EM_UNDO = 0xC7
      SendMessage, 0xC7, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SelAll() {
      ; Select all
      Return This.SetSel(0, -1)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   Deselect() {
      ; Deselect all
      Sel := This.GetSel()
      Return This.SetSel(Sel.S, Sel.S)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Font & colors
   ; -------------------------------------------------------------------------------------------------------------------
   ChangeFontSize(Diff) { ; Change font size
      ; Diff : any positive or negative integer, positive values are treated as +1, negative as -1.
      ; Returns new size.
      ; EM_SETFONTSIZE = 0x04DF
      ; Font size changes by 1 in the range 4 - 11 pt, by 2 for 12 - 28 pt, afterward to 36 pt, 48 pt, 72 pt, 80 pt,
      ; and by 10 for > 80 pt. The maximum value is 160 pt, the minimum is 4 pt
      Font := This.GetFont()
      If (Diff > 0 && Font.Size < 160) || (Diff < 0 && Font.Size > 4)
         SendMessage, 0x04DF, % (Diff > 0 ? 1 : -1), 0, , % "ahk_id " . This.HWND
      Else
         Return False
      Font := This.GetFont()
      Return Font.Size
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetFont(Default := False) { ; Get current font
      ; Set Default to True to get the default font.
      ; Returns an object containing current options (see SetFont())
      ; EM_GETCHARFORMAT = 0x043A
      ; BOLD_FONTTYPE = 0x0100, ITALIC_FONTTYPE = 0x0200
      ; CFM_BOLD = 1, CFM_ITALIC = 2, CFM_UNDERLINE = 4, CFM_STRIKEOUT = 8, CFM_PROTECTED = 16, CFM_SUBSCRIPT = 0x30000
      ; CFM_BACKCOLOR = 0x04000000, CFM_CHARSET := 0x08000000, CFM_FACE = 0x20000000, CFM_COLOR = 0x40000000
      ; CFM_SIZE = 0x80000000
      ; CFE_SUBSCRIPT = 0x10000, CFE_SUPERSCRIPT = 0x20000, CFE_AUTOBACKCOLOR = 0x04000000, CFE_AUTOCOLOR = 0x40000000
      ; SCF_SELECTION = 1
      Static Mask := 0xEC03001F
      Static Effects := 0xEC000000
      CF2 := New This.CF2
      CF2.Mask := Mask
      CF2.Effects := Effects
      SendMessage, 0x043A, % (Default ? 0 : 1), % CF2.CF2, , % "ahk_id " . This.HWND
      Font := {}
      Font.Name := CF2.FaceName
      Font.Size := CF2.Height / 20
      CFS := CF2.Effects
      Style := (CFS & 1 ? "B" : "") . (CFS & 2 ? "I" : "") . (CFS & 4 ? "U" : "") . (CFS & 8 ? "S" : "")
             . (CFS & 0x10000 ? "L" : "") . (CFS & 0x20000 ? "H" : "") . (CFS & 16 ? "P" : "")
      Font.Style := Style = "" ? "N" : Style
      Font.Color := This.GetRGB(CF2.TextColor)
      If (CF2.Effects & 0x04000000)
         Font.BkColor := "Auto"
      Else
         Font.BkColor := This.GetRGB(CF2.BackColor)
      Font.CharSet := CF2.CharSet
      Return Font
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetDefaultFont(Font := "") { ; Set default font
      ; Font : Optional object - see SetFont().
      If IsObject(Font) {
         For Key, Value In Font
            If This.DefFont.HasKey(Key)
               This.DefFont[Key] := Value
      }
      Return This.SetFont(This.DefFont)
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetFont(Font) { ; Set current/default font
      ; Font : Object containing the following keys
      ;        Name    : optional font name
      ;        Size    : optional font size in points
      ;        Style   : optional string of one or more of the following styles
      ;                  B = bold, I = italic, U = underline, S = strikeout, L = subscript
      ;                  H = superschript, P = protected, N = normal
      ;        Color   : optional text color as RGB integer value or HTML color name
      ;                  "Auto" for "automatic" (system's default) color
      ;        BkColor : optional text background color (see Color)
      ;                  "Auto" for "automatic" (system's default) background color
      ;        CharSet : optional font character set
      ;                  1 = DEFAULT_CHARSET, 2 = SYMBOL_CHARSET
      ;        Empty parameters preserve the corresponding properties
      ; EM_SETCHARFORMAT = 0x0444
      ; SCF_DEFAULT = 0, SCF_SELECTION = 1
      CF2 := New This.CF2
      Mask := Effects := 0
      If (Font.Name != "") {
         Mask |= 0x20000000, Effects |= 0x20000000 ; CFM_FACE, CFE_FACE
         CF2.FaceName := Font.Name
      }
      Size := Font.Size
      If (Size != "") {
         If (Size < 161)
            Size *= 20
         Mask |= 0x80000000, Effects |= 0x80000000 ; CFM_SIZE, CFE_SIZE
         CF2.Height := Size
      }
      If (Font.Style != "") {
         Mask |= 0x3001F           ; all font styles
         If InStr(Font.Style, "B")
            Effects |= 1           ; CFE_BOLD
         If InStr(Font.Style, "I")
            Effects |= 2           ; CFE_ITALIC
         If InStr(Font.Style, "U")
            Effects |= 4           ; CFE_UNDERLINE
         If InStr(Font.Style, "S")
            Effects |= 8           ; CFE_STRIKEOUT
         If InStr(Font.Style, "P")
            Effects |= 16          ; CFE_PROTECTED
         If InStr(Font.Style, "L")
            Effects |= 0x10000     ; CFE_SUBSCRIPT
         If InStr(Font.Style, "H")
            Effects |= 0x20000     ; CFE_SUPERSCRIPT
      }
      If (Font.Color != "") {
         Mask |= 0x40000000        ; CFM_COLOR
         If (Font.Color = "Auto")
            Effects |= 0x40000000  ; CFE_AUTOCOLOR
         Else
            CF2.TextColor := This.GetBGR(Font.Color)
      }
      If (Font.BkColor != "") {
         Mask |= 0x04000000        ; CFM_BACKCOLOR
         If (Font.BkColor = "Auto")
            Effects |= 0x04000000  ; CFE_AUTOBACKCOLOR
         Else
            CF2.BackColor := This.GetBGR(Font.BkColor)
      }
      If (Font.CharSet != "") {
         Mask |= 0x08000000, Effects |= 0x08000000 ; CFM_CHARSET, CFE_CHARSET
         CF2.CharSet := Font.CharSet = 2 ? 2 : 1 ; SYMBOL|DEFAULT
      }
      If (Mask != 0) {
         Mode := Font.Default ? 0 : 1
         CF2.Mask := Mask
         CF2.Effects := Effects
         SendMessage, 0x0444, %Mode%, % CF2.CF2, , % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ToggleFontStyle(Style) { ; Toggle single font style
      ; Style : one of the following styles
      ;         B = bold, I = italic, U = underline, S = strikeout, L = subscript, H = superschript, P = protected,
      ;         N = normal (reset all other styles)
      ; EM_GETCHARFORMAT = 0x043A, EM_SETCHARFORMAT = 0x0444
      ; CFM_BOLD = 1, CFM_ITALIC = 2, CFM_UNDERLINE = 4, CFM_STRIKEOUT = 8, CFM_PROTECTED = 16, CFM_SUBSCRIPT = 0x30000
      ; CFE_SUBSCRIPT = 0x10000, CFE_SUPERSCRIPT = 0x20000, SCF_SELECTION = 1
      CF2 :=This.GetCharFormat()
      CF2.Mask := 0x3001F ; FontStyles
      If (Style = "N")
         CF2.Effects := 0
      Else
         CF2.Effects ^= Style = "B" ? 1 : Style = "I" ? 2 : Style = "U" ? 4 : Style = "S" ? 8
                      : Style = "H" ? 0x20000 : Style = "L" ? 0x10000 : 0
      SendMessage, 0x0444, 1, % CF2.CF2, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Paragraph formatting
   ; -------------------------------------------------------------------------------------------------------------------
   AlignText(Align := 1) { ; Set paragraph's alignment
      ; Note: Values greater 3 doesn't seem to work though they should as documented
      ; Align: may contain one of the following numbers:
      ;        PFA_LEFT             1
      ;        PFA_RIGHT            2
      ;        PFA_CENTER           3
      ;        PFA_JUSTIFY          4 // New paragraph-alignment option 2.0 (*)
      ;        PFA_FULL_INTERWORD   4 // These are supported in 3.0 with advanced
      ;        PFA_FULL_INTERLETTER 5 // typography enabled
      ;        PFA_FULL_SCALED      6
      ;        PFA_FULL_GLYPHS      7
      ;        PFA_SNAP_GRID        8
      ; EM_SETPARAFORMAT = 0x0447, PFM_ALIGNMENT = 0x08
      If (Align >= 1) && (ALign <= 8) {
         PF2 := New This.PF2    ; PARAFORMAT2 struct
         PF2.Mask := 0x08       ; dwMask
         PF2.Alignment := Align ; wAlignment
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return True
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetBorder(Widths, Styles) { ; Set paragraph's borders
      ; Borders are not displayed in RichEdit, so the call of this function has no visible result.
      ; Even WordPad distributed with Win7 does not show them, but e.g. Word 2007 does.
      ; Widths : Array of the 4 border widths in the range of 1 - 15 in order left, top, right, bottom; zero = no border
      ; Styles : Array of the 4 border styles in the range of 0 - 7 in order left, top, right, bottom (see remarks)
      ; Note:
      ; The description on MSDN at http://msdn.microsoft.com/en-us/library/bb787942(v=vs.85).aspx is wrong!
      ; To set borders you have to put the border width into the related nibble (4 Bits) of wBorderWidth
      ; (in order: left (0 - 3), top (4 - 7), right (8 - 11), and bottom (12 - 15). The values are interpreted as
      ; half points (i.e. 10 twips). Border styles are set in the related nibbles of wBorders.
      ; Valid styles seem to be:
      ;     0 : \brdrdash (dashes)
      ;     1 : \brdrdashsm (small dashes)
      ;     2 : \brdrdb (double line)
      ;     3 : \brdrdot (dotted line)
      ;     4 : \brdrhair (single/hair line)
      ;     5 : \brdrs ? looks like 3
      ;     6 : \brdrth ? looks like 3
      ;     7 : \brdrtriple (triple line)
      ; EM_SETPARAFORMAT = 0x0447, PFM_BORDER = 0x800
      If !IsObject(Widths)
         Return False
      W := S := 0
      For I, V In Widths {
         If (V)
            W |= V << ((A_Index - 1) * 4)
         If Styles[I]
            S |= Styles[I] << ((A_Index - 1) * 4)
      }
      PF2 := New This.PF2
      PF2.Mask := 0x800
      PF2.BorderWidth := W
      PF2.Borders := S
      SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetLineSpacing(Lines) { ; Sets paragraph's line spacing.
      ; Lines : number of lines as integer or float.
      ; SpacingRule = 5:
      ; The value of dyLineSpacing / 20 is the spacing, in lines, from one line to the next. Thus, setting
      ; dyLineSpacing to 20 produces single-spaced text, 40 is double spaced, 60 is triple spaced, and so on.
      ; EM_SETPARAFORMAT = 0x0447, PFM_LINESPACING = 0x100
      PF2 := New This.PF2
      PF2.Mask := 0x100
      PF2.LineSpacing := Abs(Lines) * 20
      PF2.LineSpacingRule := 5
      SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetParaIndent(Indent := "Reset") { ; Sets space left/right of the paragraph.
      ; Indent : Object containing up to three keys:
      ;          - Start  : Optional - Absolute indentation of the paragraph's first line.
      ;          - Right  : Optional - Indentation of the right side of the paragraph, relative to the right margin.
      ;          - Offset : Optional - Indentation of the second and subsequent lines, relative to the indentation
      ;                                of the first line.
      ;          Values are interpreted as centimeters/inches depending on the user's locale measurement settings.
      ;          Call without passing a parameter to reset indentation.
      ; EM_SETPARAFORMAT = 0x0447
      ; PFM_STARTINDENT  = 0x0001
      ; PFM_RIGHTINDENT  = 0x0002
      ; PFM_OFFSET       = 0x0004
      Static PFM := {STARTINDENT: 0x01, RIGHTINDENT: 0x02, OFFSET: 0x04}
      Measurement := This.GetMeasurement()
      PF2 := New This.PF2
      If (Indent = "Reset")
         PF2.Mask := 0x07 ; reset indentation
      Else If !IsObject(Indent)
         Return False
      Else {
         PF2.Mask := 0
         If (Indent.HasKey("Start")) {
            PF2.Mask |= PFM.STARTINDENT
            PF2.StartIndent := Round((Indent.Start / Measurement) * 1440)
         }
         If (Indent.HasKey("Offset")) {
            PF2.Mask |= PFM.OFFSET
            PF2.Offset := Round((Indent.Offset / Measurement) * 1440)
         }
         If (Indent.HasKey("Right")) {
            PF2.Mask |= PFM.RIGHTINDENT
            PF2.RightIndent := Round((Indent.Right / Measurement) * 1440)
         }
      }
      If (PF2.Mask) {
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetParaNumbering(Numbering := "Reset") {
      ; Numbering : Object containing up to four keys:
      ;             - Type  : Options used for bulleted or numbered paragraphs.
      ;             - Style : Optional - Numbering style used with numbered paragraphs.
      ;             - Tab   : Optional - Minimum space between a paragraph number and the paragraph text.
      ;             - Start : Optional - Sequence number used for numbered paragraphs (e.g. 3 for C or III)
      ;             Tab is interpreted as centimeters/inches depending on the user's locale measurement settings.
      ;             Call without passing a parameter to reset numbering.
      ; EM_SETPARAFORMAT = 0x0447
      ; PARAFORMAT numbering options
      ; PFN_BULLET   1 ; tomListBullet
      ; PFN_ARABIC   2 ; tomListNumberAsArabic:   0, 1, 2,	...
      ; PFN_LCLETTER 3 ; tomListNumberAsLCLetter: a, b, c,	...
      ; PFN_UCLETTER 4 ; tomListNumberAsUCLetter: A, B, C,	...
      ; PFN_LCROMAN  5 ; tomListNumberAsLCRoman:  i, ii, iii,	...
      ; PFN_UCROMAN  6 ; tomListNumberAsUCRoman:  I, II, III,	...
      ; PARAFORMAT2 wNumberingStyle options
      ; PFNS_PAREN     0x0000 ; default, e.g.,                 1)
      ; PFNS_PARENS    0x0100 ; tomListParentheses/256, e.g., (1)
      ; PFNS_PERIOD    0x0200 ; tomListPeriod/256, e.g.,       1.
      ; PFNS_PLAIN     0x0300 ; tomListPlain/256, e.g.,        1
      ; PFNS_NONUMBER  0x0400 ; used for continuation w/o number
      ; PFNS_NEWNUMBER 0x8000 ; start new number with wNumberingStart
      ; PFM_NUMBERING      0x0020
      ; PFM_NUMBERINGSTYLE 0x2000
      ; PFM_NUMBERINGTAB   0x4000
      ; PFM_NUMBERINGSTART 0x8000
      Static PFM := {Type: 0x0020, Style: 0x2000, Tab: 0x4000, Start: 0x8000}
      Static PFN := {Bullet: 1, Arabic: 2, LCLetter: 3, UCLetter: 4, LCRoman: 5, UCRoman: 6}
      Static PFNS := {Paren: 0x0000, Parens: 0x0100, Period: 0x0200, Plain: 0x0300, None: 0x0400, New: 0x8000}
      PF2 := New This.PF2
      If (Numbering = "Reset")
         PF2.Mask := 0xE020
      Else If !IsObject(Numbering)
         Return False
      Else {
         If (Numbering.HasKey("Type")) {
            PF2.Mask |= PFM.Type
            PF2.Numbering := PFN[Numbering.Type]
         }
         If (Numbering.HasKey("Style")) {
            PF2.Mask |= PFM.Style
            PF2.NumberingStyle := PFNS[Numbering.Style]
         }
         If (Numbering.HasKey("Tab")) {
            PF2.Mask |= PFM.Tab
            PF2.NumberingTab := Round((Numbering.Tab / This.GetMeasurement()) * 1440)
         }
         If (Numbering.HasKey("Start")) {
            PF2.Mask |= PFM.Start
            PF2.NumberingStart := Numbering.Start
         }
      }
      If (PF2.Mask) {
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetParaSpacing(Spacing := "Reset") { ; Set space before / after the paragraph
      ; Spacing : Object containing one or two keys:
      ;           - Before : additional space before the paragraph in points
      ;           - After  : additional space after the paragraph in points
      ;           Call without passing a parameter to reset spacing to zero.
      ; EM_SETPARAFORMAT = 0x0447
      ; PFM_SPACEBEFORE  = 0x0040
      ; PFM_SPACEAFTER   = 0x0080
      Static PFM := {Before: 0x40, After: 0x80}
      PF2 := New This.PF2
      If (Spacing = "Reset")
         PF2.Mask := 0xC0 ; reset spacing
      Else If !IsObject(Spacing)
         Return False
      Else {
         If (Spacing.Before >= 0) {
            PF2.Mask |= PFM.Before
            PF2.SpaceBefore := Round(Spacing.Before * 20)
         }
         If (Spacing.After >= 0) {
            PF2.Mask |= PFM.After
            PF2.SpaceAfter := Round(Spacing.After * 20)
         }
      }
      If (PF2.Mask) {
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetDefaultTabs(Distance) { ; Set default tabstops
      ; Distance will be interpreted as inches or centimeters depending on the current user's locale.
      ; EM_SETTABSTOPS = 0xCB
      Static DUI := 64      ; dialog units per inch
           , MinTab := 0.20 ; minimal tab distance
           , MaxTab := 3.00 ; maximal tab distance
      IM := This.GetMeasurement()
      StringReplace, Distance, Distance, `,, .
      Distance := Round(Distance / IM, 2)
      If (Distance < MinTab)
         Distance := MinTab
      If (Distance > MaxTab)
         Distance := MaxTab
      VarSetCapacity(TabStops, 4, 0)
      NumPut(Round(DUI * Distance), TabStops, "Int")
      SendMessage, 0xCB, 1, &TabStops, , % "ahk_id " . This.HWND
      Result := ErrorLevel
      DllCall("User32.dll\UpdateWindow", "Ptr", This.HWND)
      Return Result
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SetTabStops(TabStops := "Reset") { ; Set paragraph's tabstobs
      ; TabStops is an object containing the integer position as hundredth of inches/centimeters as keys
      ; and the alignment ("L", "C", "R", or "D") as values.
      ; The position will be interpreted as hundredth of inches or centimeters depending on the current user's locale.
      ; Call without passing a  parameter to reset to default tabs.
      ; EM_SETPARAFORMAT = 0x0447, PFM_TABSTOPS = 0x10
      Static MinT := 30                ; minimal tabstop in hundredth of inches
      Static MaxT := 830               ; maximal tabstop in hundredth of inches
      Static Align := {L: 0x00000000   ; left aligned (default)
                     , C: 0x01000000   ; centered
                     , R: 0x02000000   ; right aligned
                     , D: 0x03000000}  ; decimal tabstop
      Static MAX_TAB_STOPS := 32
      IC := This.GetMeasurement()
      PF2 := New This.PF2
      PF2.Mask := 0x10
      If (TabStops = "Reset") {
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return !!(ErrorLevel)
      }
      If !IsObject(TabStops)
         Return False
      TabCount := 0
      Tabs  := []
      For Position, Alignment In TabStops {
         Position /= IC
         If (Position < MinT) Or (Position > MaxT)
         Or !Align.HasKey(Alignment) Or (A_Index > MAX_TAB_STOPS)
            Return False
         Tabs[A_Index] := (Align[Alignment] | Round((Position / 100) * 1440))
         TabCount := A_Index
      }
      If (TabCount) {
         PF2.TabCount := TabCount
         PF2.Tabs := Tabs
         SendMessage, 0x0447, 0, % PF2.PF2, , % "ahk_id " . This.HWND
         Return ErrorLevel
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Line handling
   ; -------------------------------------------------------------------------------------------------------------------
   GetLineCount() { ; Get the total number of lines

      ; EM_GETLINECOUNT = 0xBA
      SendMessage, 0xBA, 0, 0, , % "ahk_id " . This.HWND
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetCaretLine() { ; Get the line containing the caret
      ; EM_LINEINDEX = 0xBB, EM_EXLINEFROMCHAR = 0x0436
      SendMessage, 0xBB, -1, 0, , % "ahk_id " . This.HWND
      SendMessage, 0x0436, 0, %ErrorLevel%, , % "ahk_id " . This.HWND
      Return ErrorLevel + 1
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Statistics
   ; -------------------------------------------------------------------------------------------------------------------
   GetStatistics() { ; Get some statistic values
      ; Get the line containing the caret, it's position in this line, the total amount of lines, the absulute caret
      ; position and the total amount of characters.
      ; EM_GETSEL = 0xB0, EM_LINEFROMCHAR = 0xC9, EM_LINEINDEX = 0xBB, EM_GETLINECOUNT = 0xBA
      Stats := {}
      VarSetCapacity(GTL, 8, 0)  ; GETTEXTLENGTHEX structure
      SB := 0
      SendMessage, 0xB0, &SB, 0, , % "ahk_id " . This.HWND
      SB := NumGet(SB, 0, "UInt") + 1
      SendMessage, 0xBB, -1, 0, , % "ahk_id " . This.HWND
      Stats.LinePos := SB - ErrorLevel
      SendMessage, 0xC9, -1, 0, , % "ahk_id " . This.HWND
      Stats.Line := ErrorLevel + 1
      SendMessage, 0xBA, 0, 0, , % "ahk_id " . This.HWND
      Stats.LineCount := ErrorLevel
      Stats.CharCount := This.GetTextLen()
      Return Stats
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Layout
   ; -------------------------------------------------------------------------------------------------------------------
   WordWrap(On) { ; Turn wordwrapping on/off
      ; EM_SCROLLCARET = 0xB7, EM_SETTARGETDEVICE = 0x0448
      Sel := This.GetSel()
      SendMessage, 0x0448, 0, % (On ? 0 : -1), , % "ahk_id " . This.HWND
      This.SetSel(Sel.S, Sel.E)
      SendMessage, 0xB7, 0, 0,  % "ahk_id " . This.HWND
      Return On
   }
   ; -------------------------------------------------------------------------------------------------------------------
   WYSIWYG(On) { ; Show control as printed (WYSIWYG)
      ; Text measuring is based on the default printer's capacities, thus changing the printer may produce different
      ; results. See remarks/comments in Print() also.
      ; EM_SCROLLCARET = 0xB7, EM_SETTARGETDEVICE = 0x0448
      ; PD_RETURNDC = 0x0100, PD_RETURNDEFAULT = 0x0400
      Static PDC := 0
      Static PD_Size := (A_PtrSize = 4 ? 66 : 120)
      Static OffFlags := A_PtrSize * 5
      Sel := This.GetSel()
      If !(On) {
         DllCall("User32.dll\LockWindowUpdate", "Ptr", This.HWND)
         DllCall("Gdi32.dll\DeleteDC", "Ptr", PDC)
         SendMessage, 0x0448, 0, -1, , % "ahk_id " . This.HWND
         This.SetSel(Sel.S, Sel.E)
         SendMessage, 0xB7, 0, 0,  % "ahk_id " . This.HWND
         DllCall("User32.dll\LockWindowUpdate", "Ptr", 0)
         Return ErrorLevel
      }
      Numput(VarSetCapacity(PD, PD_Size, 0), PD)
      NumPut(0x0100 | 0x0400, PD, A_PtrSize * 5, "UInt") ; PD_RETURNDC | PD_RETURNDEFAULT
      If !DllCall("Comdlg32.dll\PrintDlg", "Ptr", &PD, "Int")
         Return
      DllCall("Kernel32.dll\GlobalFree", "Ptr", NumGet(PD, A_PtrSize * 2, "UPtr"))
      DllCall("Kernel32.dll\GlobalFree", "Ptr", NumGet(PD, A_PtrSize * 3, "UPtr"))
      PDC := NumGet(PD, A_PtrSize * 4, "UPtr")
      DllCall("User32.dll\LockWindowUpdate", "Ptr", This.HWND)
      Caps := This.GetPrinterCaps(PDC)
      ; Set up page size and margins in pixel
      UML := This.Margins.LT                   ; user margin left
      UMR := This.Margins.RT                   ; user margin right
      PML := Caps.POFX                         ; physical margin left
      PMR := Caps.PHYW - Caps.HRES - Caps.POFX ; physical margin right
      LPW := Caps.HRES                         ; logical page width
      ; Adjust margins
      UML := UML > PML ? (UML - PML) : 0
      UMR := UMR > PMR ? (UMR - PMR) : 0
      LineLen := LPW - UML - UMR
      SendMessage, 0x0448, %PDC%, %LineLen%, , % "ahk_id " . This.HWND
      This.SetSel(Sel.S, Sel.E)
      SendMessage, 0xB7, 0, 0,  % "ahk_id " . This.HWND
      DllCall("User32.dll\LockWindowUpdate", "Ptr", 0)
      Return ErrorLevel
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; File handling
   ; -------------------------------------------------------------------------------------------------------------------
   LoadFile(File, Mode = "Open") { ; Load file
      ; File : file name
      ; Mode : Open / Add / Insert
      ;        Open   : Replace control's content
      ;        Append : Append to conrol's content
      ;        Insert : Insert at / replace current selection
      If !FileExist(File)
         Return False
      SplitPath, File, , , Ext
      If (Ext = "rtf") {
         If (Mode = "Open") {
            Selection := False
         } Else If (Mode = "Insert") {
            Selection := True
         } Else If (Mode = "Append") {
            This.SetSel(-1, -2)
            Selection := True
         }
         This.LoadRTF(File, Selection)
      } Else {
         FileRead, Text, %File%
         If (Mode = "Open") {
            This.SetText(Text)
         } Else If (Mode = "Insert") {
            This.ReplaceSel(Text)
         } Else If (Mode = "Append") {
            This.SetSel(-1, -2)
            This.ReplaceSel(Text)
         }
      }
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   SaveFile(File) { ; Save file
      ; File : file name
      ; Returns True on success, otherwise False.
      GuiName := This.GuiName
      Gui, %GuiName%:+OwnDialogs
      SplitPath, File, , , Ext
      Text := Ext = "rtf" ? This.GetRTF() : This.GetText()
      If IsObject(FileObj := FileOpen(File, "w")) {
         FileObj.Write(Text)
         FileObj.Close()
         Return True
      }
      Return False
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ; Printing
   ; THX jballi ->  http://www.autohotkey.com/board/topic/45513-function-he-print-wysiwyg-print-for-the-hiedit-control/
   ; -------------------------------------------------------------------------------------------------------------------
   Print() {
      ; ----------------------------------------------------------------------------------------------------------------
      ; Static variables
      Static PD_ALLPAGES := 0x00, PD_SELECTION := 0x01, PD_PAGENUMS := 0x02, PD_NOSELECTION := 0x04
           , PD_RETURNDC := 0x0100, PD_USEDEVMODECOPIES := 0x040000, PD_HIDEPRINTTOFILE := 0x100000
           , PD_NONETWORKBUTTON := 0x200000, PD_NOCURRENTPAGE := 0x800000
           , MM_TEXT := 0x1
           , EM_FORMATRANGE := 0x0439, EM_SETTARGETDEVICE := 0x0448
           , DocName := "AHKRichEdit"
           , PD_Size := (A_PtrSize = 8 ? (13 * A_PtrSize) + 16 : 66)
      ErrorMsg := ""
      ; ----------------------------------------------------------------------------------------------------------------
      ; Prepare to call PrintDlg
      ; Define/Populate the PRINTDLG structure
      VarSetCapacity(PD, PD_Size, 0)
      Numput(PD_Size, PD, 0, "UInt")  ; lStructSize
      Numput(This.GuiHwnd, PD, A_PtrSize, "UPtr") ; hwndOwner
      ; Collect Start/End select positions
      Sel := This.GetSel()
      ; Determine/Set Flags
      Flags := PD_ALLPAGES | PD_RETURNDC | PD_USEDEVMODECOPIES | PD_HIDEPRINTTOFILE | PD_NONETWORKBUTTON
             | PD_NOCURRENTPAGE
      If (Sel.S = Sel.E)
         Flags |= PD_NOSELECTION
      Else
         Flags |= PD_SELECTION
      Offset := A_PtrSize * 5
      NumPut(Flags, PD, Offset, "UInt")       ; Flags
      ; Page and copies
      NumPut( 1, PD, Offset += 4, "UShort")   ; nFromPage
      NumPut( 1, PD, Offset += 2, "UShort")   ; nToPage
      NumPut( 1, PD, Offset += 2, "UShort")   ; nMinPage
      NumPut(-1, PD, Offset += 2, "UShort")   ; nMaxPage
      NumPut( 1, PD, Offset += 2, "UShort")   ; nCopies
      ; Note: Use -1 to specify the maximum page number (65535).
      ; Programming note: The values that are loaded to these fields are critical. The Print dialog will not
      ; display (returns an error) if unexpected values are loaded to one or more of these fields.
      ; ----------------------------------------------------------------------------------------------------------------
      ; Print dialog box
      ; Open the Print dialog.  Bounce If the user cancels.
      If !DllCall("Comdlg32.dll\PrintDlg", "Ptr", &PD, "UInt") {
         ErrorLevel := "Function: " . A_ThisFunc . " - DLLCall of 'PrintDlg' failed."
         Return False
      }
      ; Get the printer device context.  Bounce If not defined.
      If !(PDC := NumGet(PD, A_PtrSize * 4, "UPtr")) { ; hDC
         ErrorLevel := "Function: " . A_ThisFunc . " - Couldn't get a printer's device context."
         Return False
      }
      ; Free global structures created by PrintDlg
      DllCall("Kernel32.dll\GlobalFree", "Ptr", NumGet(PD, A_PtrSize * 2, "UPtr"))
      DllCall("Kernel32.dll\GlobalFree", "Ptr", NumGet(PD, A_PtrSize * 3, "UPtr"))
      ; ----------------------------------------------------------------------------------------------------------------
      ; Prepare to print
      ; Collect Flags
      Offset := A_PtrSize * 5
      Flags := NumGet(PD, OffSet, "UInt")           ; Flags
      ; Determine From/To Page
      If (Flags & PD_PAGENUMS) {
         PageF := NumGet(PD, Offset += 4, "UShort") ; nFromPage (first page)
         PageL := NumGet(PD, Offset += 2, "UShort") ; nToPage (last page)
      } Else {
         PageF := 1
         PageL := 65535
      }
      ; Collect printer capacities
      Caps := This.GetPrinterCaps(PDC)
      ; Set up page size and margins in Twips (1/20 point or 1/1440 of an inch)
      UML := This.Margins.LT                   ; user margin left
      UMT := This.Margins.TT                   ; user margin top
      UMR := This.Margins.RT                   ; user margin right
      UMB := This.Margins.BT                   ; user margin bottom
      PML := Caps.POFX                         ; physical margin left
      PMT := Caps.POFY                         ; physical margin top
      PMR := Caps.PHYW - Caps.HRES - Caps.POFX ; physical margin right
      PMB := Caps.PHYH - Caps.VRES - Caps.POFY ; physical margin bottom
      LPW := Caps.HRES                         ; logical page width
      LPH := Caps.VRES                         ; logical page height
      ; Adjust margins
      UML := UML > PML ? (UML - PML) : 0
      UMT := UMT > PMT ? (UMT - PMT) : 0
      UMR := UMR > PMR ? (UMR - PMR) : 0
      UMB := UMB > PMB ? (UMB - PMB) : 0
      ; Define/Populate the FORMATRANGE structure
      VarSetCapacity(FR, (A_PtrSize * 2) + (4 * 10), 0)
      NumPut(PDC, FR, 0, "UPtr")         ; hdc
      NumPut(PDC, FR, A_PtrSize, "UPtr") ; hdcTarget
      ; Define FORMATRANGE.rc
      ; rc is the area to render to (rcPage - margins), measured in twips (1/20 point or 1/1440 of an inch).
      ; If the user-defined margins are smaller than the printer's margins (the unprintable areas at the edges of each
      ; page), the user margins are set to the printer's margins. In addition, the user-defined margins must be adjusted
      ; to account for the printer's margins.
      ; For example: If the user requests a 3/4 inch (19.05 mm) left margin but the printer's left margin is 1/4 inch
      ; (6.35 mm), rc.Left is set to 720 twips (1/2 inch or 12.7 mm).
      Offset := A_PtrSize * 2
      NumPut(UML, FR, Offset += 0, "Int")       ; rc.Left
      NumPut(UMT, FR, Offset += 4, "Int")       ; rc.Top
      NumPut(LPW - UMR, FR, Offset += 4, "Int") ; rc.Right
      NumPut(LPH - UMB, FR, Offset += 4, "Int") ; rc.Bottom
      ; Define FORMATRANGE.rcPage
      ; rcPage is the entire area of a page on the rendering device, measured in twips (1/20 point or 1/1440 of an inch)
      ; Note: rc defines the maximum printable area which does not include the printer's margins (the unprintable areas
      ; at the edges of the page). The unprintable areas are represented by PHYSICALOFFSETX and PHYSICALOFFSETY.
      NumPut(0, FR, Offset += 4, "Int")         ; rcPage.Left
      NumPut(0, FR, Offset += 4, "Int")         ; rcPage.Top
      NumPut(LPW, FR, Offset += 4, "Int")       ; rcPage.Right
      NumPut(LPH, FR, Offset += 4, "Int")       ; rcPage.Bottom
      ; Determine print range.
      ; If "Selection" option is chosen, use selected text, otherwise use the entire document.
      If (Flags & PD_SELECTION) {
         PrintS := Sel.S
         PrintE := Sel.E
      } Else {
         PrintS := 0
         PrintE := -1            ; (-1 = Select All)
      }
      Numput(PrintS, FR, Offset += 4, "Int")    ; cr.cpMin
      NumPut(PrintE, FR, Offset += 4, "Int")    ; cr.cpMax
      ; Define/Populate the DOCINFO structure
      VarSetCapacity(DI, A_PtrSize * 5, 0)
      NumPut(A_PtrSize * 5, DI, 0, "UInt")
      NumPut(&DocName, DI, A_PtrSize, "UPtr")     ; lpszDocName
      NumPut(0       , DI, A_PtrSize * 2, "UPtr") ; lpszOutput
      ; Programming note: All other DOCINFO fields intentionally left as null.
      ; Determine MaxPrintIndex
      If (Flags & PD_SELECTION) {
          PrintM := Sel.E
      } Else {
          PrintM := This.GetTextLen()
      }
      ; Be sure that the printer device context is in text mode
      DllCall("Gdi32.dll\SetMapMode", "Ptr", PDC, "Int", MM_TEXT)
      ; ----------------------------------------------------------------------------------------------------------------
      ; Print it!
      ; Start a print job.  Bounce If there is a problem.
      PrintJob := DllCall("Gdi32.dll\StartDoc", "Ptr", PDC, "Ptr", &DI, "Int")
      If (PrintJob <= 0) {
         ErrorLevel := "Function: " . A_ThisFunc . " - DLLCall of 'StartDoc' failed."
         Return False
      }
      ; Print page loop
      PageC  := 0 ; current page
      PrintC := 0 ; current print index
      While (PrintC < PrintM) {
         PageC++
         ; Are we done yet?
         If (PageC > PageL)
            Break
         If (PageC >= PageF) && (PageC <= PageL) {
            ; StartPage function.  Break If there is a problem.
            If (DllCall("Gdi32.dll\StartPage", "Ptr", PDC, "Int") <= 0) {
               ErrorMsg := "Function: " . A_ThisFunc . " - DLLCall of 'StartPage' failed."
               Break
            }
         }
         ; Format or measure page
         If (PageC >= PageF) && (PageC <= PageL)
            Render := True
         Else
            Render := False
         SendMessage, %EM_FORMATRANGE%, %Render%, &FR, , % "ahk_id " . This.HWND
         PrintC := ErrorLevel
         If (PageC >= PageF) && (PageC <= PageL) {
            ; EndPage function. Break If there is a problem.
            If (DllCall("Gdi32.dll\EndPage", "Ptr", PDC, "Int") <= 0) {
               ErrorMsg := "Function: " . A_ThisFunc . " - DLLCall of 'EndPage' failed."
               Break
            }
         }
         ; Update FR for the next page
         Offset := (A_PtrSize * 2) + (4 * 8)
         Numput(PrintC, FR, Offset += 0, "Int") ; cr.cpMin
         NumPut(PrintE, FR, Offset += 4, "Int") ; cr.cpMax
      }
      ; ----------------------------------------------------------------------------------------------------------------
      ; End the print job
      DllCall("Gdi32.dll\EndDoc", "Ptr", PDC)
      ; Delete the printer device context
      DllCall("Gdi32.dll\DeleteDC", "Ptr", PDC)
      ; Reset control (free cached information)
      SendMessage %EM_FORMATRANGE%, 0, 0, , % "ahk_id " . This.HWND
      ; Return to sender
      If (ErrorMsg) {
         ErrorLevel := ErrorMsg
         Return False
      }
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetMargins() { ; Get the default print margins
      Static PSD_RETURNDEFAULT := 0x00000400, PSD_INTHOUSANDTHSOFINCHES := 0x00000004
           , I := 1000 ; thousandth of inches
           , M := 2540 ; hundredth of millimeters
           , PSD_Size := (4 * 10) + (A_PtrSize * 11)
           , PD_Size := (A_PtrSize = 8 ? (13 * A_PtrSize) + 16 : 66)
           , OffFlags := 4 * A_PtrSize
           , OffMargins := OffFlags + (4 * 7)
      If !This.HasKey("Margins") {
         VarSetCapacity(PSD, PSD_Size, 0) ; PAGESETUPDLG structure
         NumPut(PSD_Size, PSD, 0, "UInt")
         NumPut(PSD_RETURNDEFAULT, PSD, OffFlags, "UInt")
         If !DllCall("Comdlg32.dll\PageSetupDlg", "Ptr", &PSD, "UInt")
            Return false
         DllCall("Kernel32.dll\GobalFree", UInt, NumGet(PSD, 2 * A_PtrSize, "UPtr"))
         DllCall("Kernel32.dll\GobalFree", UInt, NumGet(PSD, 3 * A_PtrSize, "UPtr"))
         Flags := NumGet(PSD, OffFlags, "UInt")
         Metrics := (Flags & PSD_INTHOUSANDTHSOFINCHES) ? I : M
         Offset := OffMargins
         This.Margins := {}
         This.Margins.L := NumGet(PSD, Offset += 0, "Int")           ; Left
         This.Margins.T := NumGet(PSD, Offset += 4, "Int")           ; Top
         This.Margins.R := NumGet(PSD, Offset += 4, "Int")           ; Right
         This.Margins.B := NumGet(PSD, Offset += 4, "Int")           ; Bottom
         This.Margins.LT := Round((This.Margins.L / Metrics) * 1440) ; Left in twips
         This.Margins.TT := Round((This.Margins.T / Metrics) * 1440) ; Top in twips
         This.Margins.RT := Round((This.Margins.R / Metrics) * 1440) ; Right in twips
         This.Margins.BT := Round((This.Margins.B / Metrics) * 1440) ; Bottom in twips
      }
      Return True
   }
   ; -------------------------------------------------------------------------------------------------------------------
   GetPrinterCaps(DC) { ; Get printer's capacities
      Static HORZRES         := 0x08, VERTRES         := 0x0A
           , LOGPIXELSX      := 0x58, LOGPIXELSY      := 0x5A
           , PHYSICALWIDTH   := 0x6E, PHYSICALHEIGHT  := 0x6F
           , PHYSICALOFFSETX := 0x70, PHYSICALOFFSETY := 0x71
           , Caps := {}
      ; Number of pixels per logical inch along the page width and height
      LPXX := DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", LOGPIXELSX, "Int")
      LPXY := DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", LOGPIXELSY, "Int")
      ; The width and height of the physical page, in twips.
      Caps.PHYW := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", PHYSICALWIDTH, "Int") / LPXX) * 1440)
      Caps.PHYH := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", PHYSICALHEIGHT, "Int") / LPXY) * 1440)
      ; The distance from the left/right edge (PHYSICALOFFSETX) and the top/bottom edge (PHYSICALOFFSETY) of the
      ; physical page to the edge of the printable area, in twips.
      Caps.POFX := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", PHYSICALOFFSETX, "Int") / LPXX) * 1440)
      Caps.POFY := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", PHYSICALOFFSETY, "Int") / LPXY) * 1440)
      ; Width and height of the printable area of the page, in twips.
      Caps.HRES := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", HORZRES, "Int") / LPXX) * 1440)
      Caps.VRES := Round((DllCall("Gdi32.dll\GetDeviceCaps", "Ptr", DC, "Int", VERTRES, "Int") / LPXY) * 1440)
      Return Caps
   }
}
;*****************For Ole Callback

;~ GetTomDoc(HRE) {
   ;~ ; Get the document object of the specified RichEdit control
   ;~ Static IID_ITextDocument := "{8CC497C0-A1DF-11CE-8098-00AA0047BE5D}"
   ;~ DocObj := 0
   ;~ If DllCall("SendMessage", "Ptr", HRE, "UInt", 0x043C, "Ptr", 0, "PtrP", IRichEditOle, "UInt") { ; EM_GETOLEINTERFACE
      ;~ DocObj := ComObject(9, ComObjQuery(IRichEditOle, IID_ITextDocument), 1) ; ITextDocument
      ;~ ObjRelease(IRichEditOle)
   ;~ }
   ;~ Return DocObj
;~ }

RE_GetDocObj(HRE) {
   ; Get the document object of the specified RichEdit control
   Static IID_ITextDocument := "{8CC497C0-A1DF-11CE-8098-00AA0047BE5D}"
   DocObj := 0
   If DllCall("SendMessage", "Ptr", HRE, "UInt", 0x043C, "Ptr", 0, "PtrP", IRichEditOle, "UInt") { ; EM_GETOLEINTERFACE
      DocObj := ComObject(9, ComObjQuery(IRichEditOle, IID_ITextDocument), 1) ; ITextDocument
      ObjRelease(IRichEditOle)
   }
   Return DocObj
}































Class RichEditDlgs {
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; RICHEDIT COMMON DIALOGS ===========================================================================================
   ; ===================================================================================================================
   ; ===================================================================================================================
   ; Most of the following methods are based on DLG 5.01 by majkinetor
   ; http://www.autohotkey.com/board/topic/15836-module-dlg-501/
   ; ===================================================================================================================
   ChooseColor(RE, Color := "") { ; Choose color dialog box
   ; ===================================================================================================================
      ; RE : RichEdit object
      Static CC_Size := A_PtrSize * 9, CCU := "Init"
      GuiHwnd := RE.GuiHwnd
      If (Color = "T")
         Font := RE.GetFont(), Color := Font.Color = "Auto" ? 0x0 : RE.GetBGR(Font.Color)
      Else If (Color = "B")
         Font := RE.GetFont(), Color := Font.BkColor = "Auto" ? 0x0 : RE.GetBGR(Font.BkColor)
      Else If (Color != "")
         Color := RE.GetBGR(Color)
      Else
         Color := 0x000000
      If (CCU = "Init")
         VarSetCapacity(CCU, 64, 0)
      VarSetCapacity(CC, CC_Size, 0)            ; CHOOSECOLOR structure
      NumPut(CC_Size, CC, 0, "UInt")            ; lStructSize
      NumPut(GuiHwnd, CC, A_PtrSize, "UPtr")    ; hwndOwner makes dialog modal
      NumPut(Color, CC, A_PtrSize * 3, "UInt")  ; rgbResult
      NumPut(&CCU, CC, A_PtrSize * 4, "UPtr")   ; COLORREF *lpCustColors (16)
      NumPut(0x0101, CC, A_PtrSize * 5, "UInt") ; Flags: CC_ANYCOLOR | CC_RGBINIT | ; CC_FULLOPEN
      R := DllCall("Comdlg32.dll\ChooseColor", "Ptr", &CC, "UInt")
      If (ErrorLevel <> 0) || (R = 0)
         Return False
      Return RE.GetRGB(NumGet(CC, A_PtrSize * 3, "UInt"))
   }
   ; ===================================================================================================================
   ChooseFont(RE) { ; Choose font dialog box
   ; ===================================================================================================================
      ; RE : RichEdit object
      DC := DllCall("User32.dll\GetDC", "Ptr", RE.GuiHwnd, "Ptr")
      LP := DllCall("GetDeviceCaps", "Ptr", DC, "UInt", 90, "Int") ; LOGPIXELSY
      DllCall("User32.dll\ReleaseDC", "Ptr", RE.GuiHwnd, "Ptr", DC)
      ; Get current font
      Font := RE.GetFont()
      ; LF_FACENAME = 32
      VarSetCapacity(LF, 92, 0)             ; LOGFONT structure
      Size := -(Font.Size * LP / 72)
      NumPut(Size, LF, 0, "Int")            ; lfHeight
      If InStr(Font.Style, "B")
         NumPut(700, LF, 16, "Int")         ; lfWeight
      If InStr(Font.Style, "I")
         NumPut(1, LF, 20, "UChar")         ; lfItalic
      If InStr(Font.Style, "U")
         NumPut(1, LF, 21, "UChar")         ; lfUnderline
      If InStr(Font.Style, "S")
         NumPut(1, LF, 22, "UChar")         ; lfStrikeOut
      NumPut(Font.CharSet, LF, 23, "UChar") ; lfCharSet
      StrPut(Font.Name, &LF + 28, 32)
      ; CF_BOTH = 3, CF_INITTOLOGFONTSTRUCT = 0x40, CF_EFFECTS = 0x100, CF_SCRIPTSONLY = 0x400
      ; CF_NOVECTORFONTS = 0x800, CF_NOSIMULATIONS = 0x1000, CF_LIMITSIZE = 0x2000, CF_WYSIWYG = 0x8000
      ; CF_TTONLY = 0x40000, CF_FORCEFONTEXIST =0x10000, CF_SELECTSCRIPT = 0x400000
      ; CF_NOVERTFONTS =0x01000000
      Flags := 0x00002141 ; 0x01013940
      Color := RE.GetBGR(Font.Color)
      CF_Size := (A_PtrSize = 8 ? (A_PtrSize * 10) + (4 * 4) + A_PtrSize : (A_PtrSize * 14) + 4)
      VarSetCapacity(CF, CF_Size, 0)                     ; CHOOSEFONT structure
      NumPut(CF_Size, CF, "UInt")                        ; lStructSize
      NumPut(RE.GuiHwnd, CF, A_PtrSize, "UPtr")		      ; hwndOwner (makes dialog modal)
      NumPut(&LF, CF, A_PtrSize * 3, "UPtr")	            ; lpLogFont
      NumPut(Flags, CF, (A_PtrSize * 4) + 4, "UInt")     ; Flags
      NumPut(Color, CF, (A_PtrSize * 4) + 8, "UInt")     ; rgbColors
      OffSet := (A_PtrSize = 8 ? (A_PtrSize * 11) + 4 : (A_PtrSize * 12) + 4)
      NumPut(4, CF, Offset, "Int")                       ; nSizeMin
      NumPut(160, CF, OffSet + 4, "Int")                 ; nSizeMax
      ; Call ChooseFont Dialog
      If !DllCall("Comdlg32.dll\ChooseFont", "Ptr", &CF, "UInt")
         Return false
      ; Get name
      Font.Name := StrGet(&LF + 28, 32)
   	; Get size
   	Font.Size := NumGet(CF, A_PtrSize * 4, "Int") / 10
      ; Get styles
   	Font.Style := ""
   	If NumGet(LF, 16, "Int") >= 700
   	   Font.Style .= "B"
   	If NumGet(LF, 20, "UChar")
         Font.Style .= "I"
   	If NumGet(LF, 21, "UChar")
         Font.Style .= "U"
   	If NumGet(LF, 22, "UChar")
         Font.Style .= "S"
      OffSet := A_PtrSize * (A_PtrSize = 8 ? 11 : 12)
      FontType := NumGet(CF, Offset, "UShort")
      If (FontType & 0x0100) && !InStr(Font.Style, "B") ; BOLD_FONTTYPE
         Font.Style .= "B"
      If (FontType & 0x0200) && !InStr(Font.Style, "I") ; ITALIC_FONTTYPE
         Font.Style .= "I"
      If (Font.Style = "")
         Font.Style := "N"
      ; Get character set
      Font.CharSet := NumGet(LF, 23, "UChar")
      ; We don't use the limited colors of the font dialog
      ; Return selected values
      Return RE.SetFont(Font)
   }
   ; ===================================================================================================================
   FileDlg(RE, Mode, File := "") { ; Open and save as dialog box
   ; ===================================================================================================================
      ; RE   : RichEdit object
      ; Mode : O = Open, S = Save
      ; File : optional file name
   	Static OFN_ALLOWMULTISELECT := 0x200,    OFN_EXTENSIONDIFFERENT := 0x400, OFN_CREATEPROMPT := 0x2000
           , OFN_DONTADDTORECENT := 0x2000000, OFN_FILEMUSTEXIST := 0x1000,     OFN_FORCESHOWHIDDEN := 0x10000000
           , OFN_HIDEREADONLY := 0x4,          OFN_NOCHANGEDIR := 0x8,          OFN_NODEREFERENCELINKS := 0x100000
           , OFN_NOVALIDATE := 0x100,          OFN_OVERWRITEPROMPT := 0x2,      OFN_PATHMUSTEXIST := 0x800
           , OFN_READONLY := 0x1,              OFN_SHOWHELP := 0x10,            OFN_NOREADONLYRETURN := 0x8000
           , OFN_NOTESTFILECREATE := 0x10000,  OFN_ENABLEXPLORER := 0x80000
           , OFN_Size := (4 * 5) + (2 * 2) + (A_PtrSize * 16)
      Static FilterN1 := "RichText",   FilterP1 :=  "*.rtf"
           , FilterN2 := "Text",       FilterP2 := "*.txt"
           , FilterN3 := "AutoHotkey", FilterP3 := "*.ahk"
           , DefExt := "rtf", DefFilter := 1
   	SplitPath, File, Name, Dir
      Flags := OFN_ENABLEXPLORER
      Flags |= Mode = "O" ? OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_HIDEREADONLY
                          : OFN_OVERWRITEPROMPT
   	VarSetCapacity(FileName, 1024, 0)
      FileName := Name
   	LenN1 := (StrLen(FilterN1) + 1) * 2, LenP1 := (StrLen(FilterP1) + 1) * 2
   	LenN2 := (StrLen(FilterN2) + 1) * 2, LenP2 := (StrLen(FilterP2) + 1) * 2
   	LenN3 := (StrLen(FilterN3) + 1) * 2, LenP3 := (StrLen(FilterP3) + 1) * 2
      VarSetCapacity(Filter, LenN1 + LenP1 + LenN2 + LenP2 + LenN3 + LenP3 + 4, 0)
      Adr := &Filter
      StrPut(FilterN1, Adr)
      StrPut(FilterP1, Adr += LenN1)
      StrPut(FilterN2, Adr += LenP1)
      StrPut(FilterP2, Adr += LenN2)
      StrPut(FilterN3, Adr += LenP2)
      StrPut(FilterP3, Adr += LenN3)
      VarSetCapacity(OFN , OFN_Size, 0)      ; OPENFILENAME Structure
   	NumPut(OFN_Size, OFN, 0, "UInt")
      Offset := A_PtrSize
   	NumPut(RE.GuiHwnd, OFN, Offset, "Ptr") ; HWND owner
      Offset += A_PtrSize * 2
   	NumPut(&Filter, OFN, OffSet, "Ptr")    ; Pointer to FilterStruc
      OffSet += (A_PtrSize * 2) + 4
      OffFilter := Offset
   	NumPut(DefFilter, OFN, Offset, "UInt") ; DefaultFilter Pair
      OffSet += 4
   	NumPut(&FileName, OFN, OffSet, "Ptr")  ; lpstrFile / InitialisationFileName
      Offset += A_PtrSize
   	NumPut(512, OFN, Offset, "UInt")       ; MaxFile / lpstrFile length
      OffSet += A_PtrSize * 3
   	NumPut(&Dir, OFN, Offset, "Ptr")       ; StartDir
      Offset += A_PtrSize * 2
   	NumPut(Flags, OFN, Offset, "UInt")     ; Flags
      Offset += 8
   	NumPut(&DefExt, OFN, Offset, "Ptr")    ; DefaultExt
      R := Mode = "S" ? DllCall("Comdlg32.dll\GetSaveFileNameW", "Ptr", &OFN, "UInt")
                      : DllCall("Comdlg32.dll\GetOpenFileNameW", "Ptr", &OFN, "UInt")
   	If !(R)
         Return ""
      DefFilter := NumGet(OFN, OffFilter, "UInt")
   	Return StrGet(&FileName)
   }
   ; ===================================================================================================================
   FindText(RE) { ; Find dialog box
   ; ===================================================================================================================
      ; RE : RichEdit object
   	Static FINDMSGSTRING := "commdlg_FindReplace"
   	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2
   	     , Buf := "", FR := "", Len := 256
           , FR_Size := A_PtrSize * 10
      Text := RE.GetSelText()
      VarSetCapacity(FR, FR_Size, 0)
   	NumPut(FR_Size, FR, 0, "UInt")
      VarSetCapacity(Buf, Len, 0)
      If (Text && !RegExMatch(Text, "\W"))
         Buf := Text
      Offset := A_PtrSize
   	NumPut(RE.GuiHwnd, FR, Offset, "UPtr") ; hwndOwner
      OffSet += A_PtrSize * 2
   	NumPut(FR_DOWN, FR, Offset, "UInt")	   ; Flags
      OffSet += A_PtrSize
   	NumPut(&Buf, FR, Offset, "UPtr")	      ; lpstrFindWhat
      OffSet += A_PtrSize * 2
   	NumPut(Len,	FR, Offset, "Short")       ; wFindWhatLen
      This.FindTextProc("Init", RE.HWND, "")
   	OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "RichEditDlgs.FindTextProc")
   	Return DllCall("Comdlg32.dll\FindTextW", "Ptr", &FR, "UPtr")
    }
   ; -------------------------------------------------------------------------------------------------------------------
   FindTextProc(L, M, H) { ; skipped wParam, can be found in "This" when called by system
      ; Find dialog callback procedure
      ; EM_FINDTEXTEXW = 0x047C, EM_EXGETSEL = 0x0434, EM_EXSETSEL = 0x0437, EM_SCROLLCARET = 0x00B7
      ;FR_DOWN = 1, FR_WHOLEWORD = 2, FR_MATCHCASE = 4,
      Static FINDMSGSTRING := "commdlg_FindReplace"
   	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2 , FR_FINDNEXT := 0x8, FR_DIALOGTERM := 0x40
         , HWND := 0
      If (L = "Init") {
         HWND := M
         Return true
      }
      Flags := NumGet(L + 0, A_PtrSize * 3, "UInt")
      If (Flags & FR_DIALOGTERM) {
         OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "")
         ControlFocus, , ahk_id %HWND%
         HWND := 0
         Return
      }
      VarSetCapacity(CR, 8, 0)
      SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
      Min := (Flags & FR_DOWN) ? NumGet(CR, 4, "Int") : NumGet(CR, 0, "Int")
      Max := (Flags & FR_DOWN) ? -1 : 0
      OffSet := A_PtrSize * 4
      Find := StrGet(NumGet(L + Offset, 0, "UPtr"))
      VarSetCapacity(FTX, 16 + A_PtrSize, 0)
      NumPut(Min, FTX, 0, "Int")
      NumPut(Max, FTX, 4, "Int")
      NumPut(&Find, FTX, 8, "Ptr")
      SendMessage, 0x047C, %Flags%, &FTX, , ahk_id %HWND%
      S := NumGet(FTX, 8 + A_PtrSize, "Int"), E := NumGet(FTX, 12 + A_PtrSize, "Int")
      If (S = -1) && (E = -1)
         MsgBox, 262208, Find, No (further) occurence found!
      Else {
         Min := (Flags & FR_DOWN) ? E : S
         SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
         SendMessage, 0x00B7, 0, 0, , ahk_id %HWND%
      }
   }
   ; ===================================================================================================================
   PageSetup(RE) { ; Page setup dialog box
   ; ===================================================================================================================
      ; RE : RichEdit object
      ; http://msdn.microsoft.com/en-us/library/ms646842(v=vs.85).aspx
      Static PSD_DEFAULTMINMARGINS             := 0x00000000 ; default (printer's)
           , PSD_INWININIINTLMEASURE           := 0x00000000 ; 1st of 4 possible
           , PSD_MINMARGINS                    := 0x00000001 ; use caller's
           , PSD_MARGINS                       := 0x00000002 ; use caller's
           , PSD_INTHOUSANDTHSOFINCHES         := 0x00000004 ; 2nd of 4 possible
           , PSD_INHUNDREDTHSOFMILLIMETERS     := 0x00000008 ; 3rd of 4 possible
           , PSD_DISABLEMARGINS                := 0x00000010
           , PSD_DISABLEPRINTER                := 0x00000020
           , PSD_NOWARNING                     := 0x00000080 ; must be same as PD_*
           , PSD_DISABLEORIENTATION            := 0x00000100
           , PSD_RETURNDEFAULT                 := 0x00000400 ; must be same as PD_*
           , PSD_DISABLEPAPER                  := 0x00000200
           , PSD_SHOWHELP                      := 0x00000800 ; must be same as PD_*
           , PSD_ENABLEPAGESETUPHOOK           := 0x00002000 ; must be same as PD_*
           , PSD_ENABLEPAGESETUPTEMPLATE       := 0x00008000 ; must be same as PD_*
           , PSD_ENABLEPAGESETUPTEMPLATEHANDLE := 0x00020000 ; must be same as PD_*
           , PSD_ENABLEPAGEPAINTHOOK           := 0x00040000
           , PSD_DISABLEPAGEPAINTING           := 0x00080000
           , PSD_NONETWORKBUTTON               := 0x00200000 ; must be same as PD_*
           , I := 1000 ; thousandth of inches
           , M := 2540 ; hundredth of millimeters
           , Margins := {}
           , Metrics := ""
           , PSD_Size := (4 * 10) + (A_PtrSize * 11)
           , PD_Size := (A_PtrSize = 8 ? (13 * A_PtrSize) + 16 : 66)
           , OffFlags := 4 * A_PtrSize
           , OffMargins := OffFlags + (4 * 7)
      VarSetCapacity(PSD, PSD_Size, 0)              ; PAGESETUPDLG structure
      NumPut(PSD_Size, PSD, 0, "UInt")
      NumPut(RE.GuiHwnd, PSD, A_PtrSize, "UPtr")    ; hwndOwner
      Flags := PSD_MARGINS | PSD_DISABLEPRINTER | PSD_DISABLEORIENTATION | PSD_DISABLEPAPER
      NumPut(Flags, PSD, OffFlags, "Int")           ; Flags
      Offset := OffMargins
      NumPut(RE.Margins.L, PSD, Offset += 0, "Int") ; rtMargin left
      NumPut(RE.Margins.T, PSD, Offset += 4, "Int") ; rtMargin top
      NumPut(RE.Margins.R, PSD, Offset += 4, "Int") ; rtMargin right
      NumPut(RE.Margins.B, PSD, Offset += 4, "Int") ; rtMargin bottom
      If !DllCall("Comdlg32.dll\PageSetupDlg", "Ptr", &PSD, "UInt")
         Return False
      DllCall("Kernel32.dll\GobalFree", "Ptr", NumGet(PSD, 2 * A_PtrSize, "UPtr"))
      DllCall("Kernel32.dll\GobalFree", "Ptr", NumGet(PSD, 3 * A_PtrSize, "UPtr"))
      Flags := NumGet(PSD, OffFlags, "UInt")
      Metrics := (Flags & PSD_INTHOUSANDTHSOFINCHES) ? I : M
      Offset := OffMargins
      RE.Margins.L := NumGet(PSD, Offset += 0, "Int")
      RE.Margins.T := NumGet(PSD, Offset += 4, "Int")
      RE.Margins.R := NumGet(PSD, Offset += 4, "Int")
      RE.Margins.B := NumGet(PSD, Offset += 4, "Int")
      RE.Margins.LT := Round((RE.Margins.L / Metrics) * 1440) ; Left as twips
      RE.Margins.TT := Round((RE.Margins.T / Metrics) * 1440) ; Top as twips
      RE.Margins.RT := Round((RE.Margins.R / Metrics) * 1440) ; Right as twips
      RE.Margins.BT := Round((RE.Margins.B / Metrics) * 1440) ; Bottom as twips
      Return True
   }
   ; ===================================================================================================================
   ReplaceText(RE) { ; Replace dialog box
   ; ===================================================================================================================
      ; RE : RichEdit object
   	Static FINDMSGSTRING := "commdlg_FindReplace"
   	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2
   	     , FBuf := "", RBuf := "", FR := "", Len := 256
           , FR_Size := A_PtrSize * 10
      Text := RE.GetSelText()
      VarSetCapacity(FBuf, Len, 0)
      VarSetCapacity(RBuf, Len, 0)
      VarSetCapacity(FR, FR_Size, 0)
   	NumPut(FR_Size, FR, 0, "UInt")
      If (Text && !RegExMatch(Text, "\W"))
         FBuf := Text
      Offset := A_PtrSize
   	NumPut(RE.GuiHwnd, FR, Offset, "UPtr") ; hwndOwner
      OffSet += A_PtrSize * 2
   	NumPut(FR_DOWN, FR, Offset, "UInt")	   ; Flags
      OffSet += A_PtrSize
   	NumPut(&FBuf, FR, Offset, "UPtr")      ; lpstrFindWhat
      OffSet += A_PtrSize
   	NumPut(&RBuf, FR, Offset, "UPtr")      ; lpstrReplaceWith
      OffSet += A_PtrSize
   	NumPut(Len,	FR, Offset, "Short")       ; wFindWhatLen
   	NumPut(Len,	FR, Offset + 2, "Short")   ; wReplaceWithLen
      This.ReplaceTextProc("Init", RE.HWND, "")
   	OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "RichEditDlgs.ReplaceTextProc")
   	Return DllCall("Comdlg32.dll\ReplaceText", "Ptr", &FR, "UPtr")
   }
   ; -------------------------------------------------------------------------------------------------------------------
   ReplaceTextProc(L, M, H) { ; skipped wParam, can be found in "This" when called by system
      ; Replace dialog callback procedure
      ; EM_FINDTEXTEXW = 0x047C, EM_EXGETSEL = 0x0434, EM_EXSETSEL = 0x0437
      ; EM_REPLACESEL = 0xC2, EM_SCROLLCARET = 0x00B7
      ; FR_DOWN = 1, FR_WHOLEWORD = 2, FR_MATCHCASE = 4,
   	Static FINDMSGSTRING := "commdlg_FindReplace"
   	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2, FR_FINDNEXT := 0x8
           , FR_REPLACE := 0x10, FR_REPLACEALL=0x20, FR_DIALOGTERM := 0x40
           , HWND := 0, Min := "", Max := "", FS := "", FE := ""
           , OffFind := A_PtrSize * 4, OffRepl := A_PtrSize * 5
      If (L = "Init") {
         HWND := M, FS := "", FE := ""
         Return True
      }
      Flags := NumGet(L + 0, A_PtrSize * 3, "UInt")
      If (Flags & FR_DIALOGTERM) {
         OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "")
         ControlFocus, , ahk_id %HWND%
         HWND := 0
         Return
      }
      If (Flags & FR_REPLACE) {
         IF (FS >= 0) && (FE >= 0) {
            SendMessage, 0xC2, 1, % NumGet(L + 0, OffRepl, "UPtr" ), , ahk_id %HWND%
            Flags |= FR_FINDNEXT
         } Else {
            Return
         }
      }
      If (Flags & FR_FINDNEXT) {
         VarSetCapacity(CR, 8, 0)
         SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
         Min := NumGet(CR, 4)
         FS := FE := ""
         Find := StrGet(NumGet(L + OffFind, 0, "UPtr"))
         VarSetCapacity(FTX, 16 + A_PtrSize, 0)
         NumPut(Min, FTX, 0, "Int")
         NumPut(-1, FTX, 4, "Int")
         NumPut(&Find, FTX, 8, "Ptr")
         SendMessage, 0x047C, %Flags%, &FTX, , ahk_id %HWND%
         S := NumGet(FTX, 8 + A_PtrSize, "Int"), E := NumGet(FTX, 12 + A_PtrSize, "Int")
         If (S = -1) && (E = -1)
            MsgBox, 262208, Replace, No (further) occurence found!
         Else {
            SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
            SendMessage, 0x00B7, 0, 0, , ahk_id %HWND%
            FS := S, FE := E
         }
         Return
      }
      If (Flags & FR_REPLACEALL) {
         VarSetCapacity(CR, 8, 0)
         SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
         If (FS = "")
            FS := FE := 0
         DllCall("User32.dll\LockWindowUpdate", "Ptr", HWND)
         Find := StrGet(NumGet(L + OffFind, 0, "UPtr"))
         VarSetCapacity(FTX, 16 + A_PtrSize, 0)
         NumPut(FS, FTX, 0, "Int")
         NumPut(-1, FTX, 4, "Int")
         NumPut(&Find, FTX, 8, "Ptr")
         While (FS >= 0) && (FE >= 0) {
            SendMessage, 0x044F, %Flags%, &FTX, , ahk_id %HWND%
            FS := NumGet(FTX, A_PtrSize + 8, "Int"), FE := NumGet(FTX, A_PtrSize + 12, "Int")
            If (FS >= 0) && (FE >= 0) {
               SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
               SendMessage, 0xC2, 1, % NumGet(L + 0, OffRepl, "UPtr" ), , ahk_id %HWND%
               NumPut(FE, FTX, 0, "Int")
            }
         }
         SendMessage, 0x0437, 0, &CR, , ahk_id %HWND%
         DllCall("User32.dll\LockWindowUpdate", "Ptr", 0)
         Return
      }
   }
}





























; ;    _____ _                 _____  _      _     ______    _ _ _   _____  _                  _     _    
; ;   / ____| |               |  __ \(_)    | |   |  ____|  | (_) | |  __ \| |                | |   | |   
; ;  | |    | | __ _ ___ ___  | |__) |_  ___| |__ | |__   __| |_| |_| |  | | | __ _ ___   __ _| |__ | | __
; ;  | |    | |/ _` / __/ __| |  _  /| |/ __| '_ \|  __| / _` | | __| |  | | |/ _` / __| / _` | '_ \| |/ /
; ;  | |____| | (_| \__ \__ \ | | \ \| | (__| | | | |___| (_| | | |_| |__| | | (_| \__ \| (_| | | | |   < 
; ;   \_____|_|\__,_|___/___/ |_|  \_\_|\___|_| |_|______\__,_|_|\__|_____/|_|\__, |___(_)__,_|_| |_|_|\_\
; ;                       ______                                               __/ |                      
; ;                      |______|                                             |___/                       

; Class RichEditDlgs {
;    ; ===================================================================================================================
;    ; ===================================================================================================================
;    ; RICHEDIT COMMON DIALOGS ===========================================================================================
;    ; ===================================================================================================================
;    ; ===================================================================================================================
;    ; Most of the following methods are based on DLG 5.01 by majkinetor
;    ; http://www.autohotkey.com/board/topic/15836-module-dlg-501/
;    ; ===================================================================================================================
;    ChooseColor(RE, Color := "") { ; Choose color dialog box
;    ; ===================================================================================================================
;       ; RE : RichEdit object
;       Static CC_Size := A_PtrSize * 9, CCU := "Init"
;       GuiHwnd := RE.GuiHwnd
;       If (Color = "T")
;          Font := RE.GetFont(), Color := Font.Color = "Auto" ? 0x0 : RE.GetBGR(Font.Color)
;       Else If (Color = "B")
;          Font := RE.GetFont(), Color := Font.BkColor = "Auto" ? 0x0 : RE.GetBGR(Font.BkColor)
;       Else If (Color != "")
;          Color := RE.GetBGR(Color)
;       Else
;          Color := 0x000000
;       If (CCU = "Init")
;          VarSetCapacity(CCU, 64, 0)
;       VarSetCapacity(CC, CC_Size, 0)            ; CHOOSECOLOR structure
;       NumPut(CC_Size, CC, 0, "UInt")            ; lStructSize
;       NumPut(GuiHwnd, CC, A_PtrSize, "UPtr")    ; hwndOwner makes dialog modal
;       NumPut(Color, CC, A_PtrSize * 3, "UInt")  ; rgbResult
;       NumPut(&CCU, CC, A_PtrSize * 4, "UPtr")   ; COLORREF *lpCustColors (16)
;       NumPut(0x0101, CC, A_PtrSize * 5, "UInt") ; Flags: CC_ANYCOLOR | CC_RGBINIT | ; CC_FULLOPEN
;       R := DllCall("Comdlg32.dll\ChooseColor", "Ptr", &CC, "UInt")
;       If (ErrorLevel <> 0) || (R = 0)
;          Return False
;       Return RE.GetRGB(NumGet(CC, A_PtrSize * 3, "UInt"))
;    }
;    ; ===================================================================================================================
;    ChooseFont(RE) { ; Choose font dialog box
;    ; ===================================================================================================================
;       ; RE : RichEdit object
;       DC := DllCall("User32.dll\GetDC", "Ptr", RE.GuiHwnd, "Ptr")
;       LP := DllCall("GetDeviceCaps", "Ptr", DC, "UInt", 90, "Int") ; LOGPIXELSY
;       DllCall("User32.dll\ReleaseDC", "Ptr", RE.GuiHwnd, "Ptr", DC)
;       ; Get current font
;       Font := RE.GetFont()
;       ; LF_FACENAME = 32
;       VarSetCapacity(LF, 92, 0)             ; LOGFONT structure
;       Size := -(Font.Size * LP / 72)
;       NumPut(Size, LF, 0, "Int")            ; lfHeight
;       If InStr(Font.Style, "B")
;          NumPut(700, LF, 16, "Int")         ; lfWeight
;       If InStr(Font.Style, "I")
;          NumPut(1, LF, 20, "UChar")         ; lfItalic
;       If InStr(Font.Style, "U")
;          NumPut(1, LF, 21, "UChar")         ; lfUnderline
;       If InStr(Font.Style, "S")
;          NumPut(1, LF, 22, "UChar")         ; lfStrikeOut
;       NumPut(Font.CharSet, LF, 23, "UChar") ; lfCharSet
;       StrPut(Font.Name, &LF + 28, 32)
;       ; CF_BOTH = 3, CF_INITTOLOGFONTSTRUCT = 0x40, CF_EFFECTS = 0x100, CF_SCRIPTSONLY = 0x400
;       ; CF_NOVECTORFONTS = 0x800, CF_NOSIMULATIONS = 0x1000, CF_LIMITSIZE = 0x2000, CF_WYSIWYG = 0x8000
;       ; CF_TTONLY = 0x40000, CF_FORCEFONTEXIST =0x10000, CF_SELECTSCRIPT = 0x400000
;       ; CF_NOVERTFONTS =0x01000000
;       Flags := 0x00002141 ; 0x01013940
;       Color := RE.GetBGR(Font.Color)
;       CF_Size := (A_PtrSize = 8 ? (A_PtrSize * 10) + (4 * 4) + A_PtrSize : (A_PtrSize * 14) + 4)
;       VarSetCapacity(CF, CF_Size, 0)                     ; CHOOSEFONT structure
;       NumPut(CF_Size, CF, "UInt")                        ; lStructSize
;       NumPut(RE.GuiHwnd, CF, A_PtrSize, "UPtr")		      ; hwndOwner (makes dialog modal)
;       NumPut(&LF, CF, A_PtrSize * 3, "UPtr")	            ; lpLogFont
;       NumPut(Flags, CF, (A_PtrSize * 4) + 4, "UInt")     ; Flags
;       NumPut(Color, CF, (A_PtrSize * 4) + 8, "UInt")     ; rgbColors
;       OffSet := (A_PtrSize = 8 ? (A_PtrSize * 11) + 4 : (A_PtrSize * 12) + 4)
;       NumPut(4, CF, Offset, "Int")                       ; nSizeMin
;       NumPut(160, CF, OffSet + 4, "Int")                 ; nSizeMax
;       ; Call ChooseFont Dialog
;       If !DllCall("Comdlg32.dll\ChooseFont", "Ptr", &CF, "UInt")
;          Return false
;       ; Get name
;       Font.Name := StrGet(&LF + 28, 32)
;    	; Get size
;    	Font.Size := NumGet(CF, A_PtrSize * 4, "Int") / 10
;       ; Get styles
;    	Font.Style := ""
;    	If NumGet(LF, 16, "Int") >= 700
;    	   Font.Style .= "B"
;    	If NumGet(LF, 20, "UChar")
;          Font.Style .= "I"
;    	If NumGet(LF, 21, "UChar")
;          Font.Style .= "U"
;    	If NumGet(LF, 22, "UChar")
;          Font.Style .= "S"
;       OffSet := A_PtrSize * (A_PtrSize = 8 ? 11 : 12)
;       FontType := NumGet(CF, Offset, "UShort")
;       If (FontType & 0x0100) && !InStr(Font.Style, "B") ; BOLD_FONTTYPE
;          Font.Style .= "B"
;       If (FontType & 0x0200) && !InStr(Font.Style, "I") ; ITALIC_FONTTYPE
;          Font.Style .= "I"
;       If (Font.Style = "")
;          Font.Style := "N"
;       ; Get character set
;       Font.CharSet := NumGet(LF, 23, "UChar")
;       ; We don't use the limited colors of the font dialog
;       ; Return selected values
;       Return RE.SetFont(Font)
;    }
;    ; ===================================================================================================================
;    FileDlg(RE, Mode, File := "") { ; Open and save as dialog box
;    ; ===================================================================================================================
;       ; RE   : RichEdit object
;       ; Mode : O = Open, S = Save
;       ; File : optional file name
;    	Static OFN_ALLOWMULTISELECT := 0x200,    OFN_EXTENSIONDIFFERENT := 0x400, OFN_CREATEPROMPT := 0x2000
;            , OFN_DONTADDTORECENT := 0x2000000, OFN_FILEMUSTEXIST := 0x1000,     OFN_FORCESHOWHIDDEN := 0x10000000
;            , OFN_HIDEREADONLY := 0x4,          OFN_NOCHANGEDIR := 0x8,          OFN_NODEREFERENCELINKS := 0x100000
;            , OFN_NOVALIDATE := 0x100,          OFN_OVERWRITEPROMPT := 0x2,      OFN_PATHMUSTEXIST := 0x800
;            , OFN_READONLY := 0x1,              OFN_SHOWHELP := 0x10,            OFN_NOREADONLYRETURN := 0x8000
;            , OFN_NOTESTFILECREATE := 0x10000,  OFN_ENABLEXPLORER := 0x80000
;            , OFN_Size := (4 * 5) + (2 * 2) + (A_PtrSize * 16)
;       Static FilterN1 := "RichText",   FilterP1 :=  "*.rtf"
;            , FilterN2 := "Text",       FilterP2 := "*.txt"
;            , FilterN3 := "AutoHotkey", FilterP3 := "*.ahk"
;            , DefExt := "rtf", DefFilter := 1
;    	SplitPath, File, Name, Dir
;       Flags := OFN_ENABLEXPLORER
;       Flags |= Mode = "O" ? OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_HIDEREADONLY
;                           : OFN_OVERWRITEPROMPT
;    	VarSetCapacity(FileName, 1024, 0)
;       FileName := Name
;    	LenN1 := (StrLen(FilterN1) + 1) * 2, LenP1 := (StrLen(FilterP1) + 1) * 2
;    	LenN2 := (StrLen(FilterN2) + 1) * 2, LenP2 := (StrLen(FilterP2) + 1) * 2
;    	LenN3 := (StrLen(FilterN3) + 1) * 2, LenP3 := (StrLen(FilterP3) + 1) * 2
;       VarSetCapacity(Filter, LenN1 + LenP1 + LenN2 + LenP2 + LenN3 + LenP3 + 4, 0)
;       Adr := &Filter
;       StrPut(FilterN1, Adr)
;       StrPut(FilterP1, Adr += LenN1)
;       StrPut(FilterN2, Adr += LenP1)
;       StrPut(FilterP2, Adr += LenN2)
;       StrPut(FilterN3, Adr += LenP2)
;       StrPut(FilterP3, Adr += LenN3)
;       VarSetCapacity(OFN , OFN_Size, 0)      ; OPENFILENAME Structure
;    	NumPut(OFN_Size, OFN, 0, "UInt")
;       Offset := A_PtrSize
;    	NumPut(RE.GuiHwnd, OFN, Offset, "Ptr") ; HWND owner
;       Offset += A_PtrSize * 2
;    	NumPut(&Filter, OFN, OffSet, "Ptr")    ; Pointer to FilterStruc
;       OffSet += (A_PtrSize * 2) + 4
;       OffFilter := Offset
;    	NumPut(DefFilter, OFN, Offset, "UInt") ; DefaultFilter Pair
;       OffSet += 4
;    	NumPut(&FileName, OFN, OffSet, "Ptr")  ; lpstrFile / InitialisationFileName
;       Offset += A_PtrSize
;    	NumPut(512, OFN, Offset, "UInt")       ; MaxFile / lpstrFile length
;       OffSet += A_PtrSize * 3
;    	NumPut(&Dir, OFN, Offset, "Ptr")       ; StartDir
;       Offset += A_PtrSize * 2
;    	NumPut(Flags, OFN, Offset, "UInt")     ; Flags
;       Offset += 8
;    	NumPut(&DefExt, OFN, Offset, "Ptr")    ; DefaultExt
;       R := Mode = "S" ? DllCall("Comdlg32.dll\GetSaveFileNameW", "Ptr", &OFN, "UInt")
;                       : DllCall("Comdlg32.dll\GetOpenFileNameW", "Ptr", &OFN, "UInt")
;    	If !(R)
;          Return ""
;       DefFilter := NumGet(OFN, OffFilter, "UInt")
;    	Return StrGet(&FileName)
;    }
;    ; ===================================================================================================================
;    FindText(RE) { ; Find dialog box
;    ; ===================================================================================================================
;       ; RE : RichEdit object
;    	Static FINDMSGSTRING := "commdlg_FindReplace"
;    	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2
;    	     , Buf := "", FR := "", Len := 256
;            , FR_Size := A_PtrSize * 10
;       Text := RE.GetSelText()
;       VarSetCapacity(FR, FR_Size, 0)
;    	NumPut(FR_Size, FR, 0, "UInt")
;       VarSetCapacity(Buf, Len, 0)
;       If (Text && !RegExMatch(Text, "\W"))
;          Buf := Text
;       Offset := A_PtrSize
;    	NumPut(RE.GuiHwnd, FR, Offset, "UPtr") ; hwndOwner
;       OffSet += A_PtrSize * 2
;    	NumPut(FR_DOWN, FR, Offset, "UInt")	   ; Flags
;       OffSet += A_PtrSize
;    	NumPut(&Buf, FR, Offset, "UPtr")	      ; lpstrFindWhat
;       OffSet += A_PtrSize * 2
;    	NumPut(Len,	FR, Offset, "Short")       ; wFindWhatLen
;       This.FindTextProc("Init", RE.HWND, "")
;    	OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "RichEditDlgs.FindTextProc")
;    	Return DllCall("Comdlg32.dll\FindTextW", "Ptr", &FR, "UPtr")
;     }
;    ; -------------------------------------------------------------------------------------------------------------------
;    FindTextProc(L, M, H) { ; skipped wParam, can be found in "This" when called by system
;       ; Find dialog callback procedure
;       ; EM_FINDTEXTEXW = 0x047C, EM_EXGETSEL = 0x0434, EM_EXSETSEL = 0x0437, EM_SCROLLCARET = 0x00B7
;       ;FR_DOWN = 1, FR_WHOLEWORD = 2, FR_MATCHCASE = 4,
;       Static FINDMSGSTRING := "commdlg_FindReplace"
;    	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2 , FR_FINDNEXT := 0x8, FR_DIALOGTERM := 0x40
;          , HWND := 0
;       If (L = "Init") {
;          HWND := M
;          Return true
;       }
;       Flags := NumGet(L + 0, A_PtrSize * 3, "UInt")
;       If (Flags & FR_DIALOGTERM) {
;          OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "")
;          ControlFocus, , ahk_id %HWND%
;          HWND := 0
;          Return
;       }
;       VarSetCapacity(CR, 8, 0)
;       SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
;       Min := (Flags & FR_DOWN) ? NumGet(CR, 4, "Int") : NumGet(CR, 0, "Int")
;       Max := (Flags & FR_DOWN) ? -1 : 0
;       OffSet := A_PtrSize * 4
;       Find := StrGet(NumGet(L + Offset, 0, "UPtr"))
;       VarSetCapacity(FTX, 16 + A_PtrSize, 0)
;       NumPut(Min, FTX, 0, "Int")
;       NumPut(Max, FTX, 4, "Int")
;       NumPut(&Find, FTX, 8, "Ptr")
;       SendMessage, 0x047C, %Flags%, &FTX, , ahk_id %HWND%
;       S := NumGet(FTX, 8 + A_PtrSize, "Int"), E := NumGet(FTX, 12 + A_PtrSize, "Int")
;       If (S = -1) && (E = -1)
;          MsgBox, 262208, Find, No (further) occurence found!
;       Else {
;          Min := (Flags & FR_DOWN) ? E : S
;          SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
;          SendMessage, 0x00B7, 0, 0, , ahk_id %HWND%
;       }
;    }
;    ; ===================================================================================================================
;    PageSetup(RE) { ; Page setup dialog box
;    ; ===================================================================================================================
;       ; RE : RichEdit object
;       ; http://msdn.microsoft.com/en-us/library/ms646842(v=vs.85).aspx
;       Static PSD_DEFAULTMINMARGINS             := 0x00000000 ; default (printer's)
;            , PSD_INWININIINTLMEASURE           := 0x00000000 ; 1st of 4 possible
;            , PSD_MINMARGINS                    := 0x00000001 ; use caller's
;            , PSD_MARGINS                       := 0x00000002 ; use caller's
;            , PSD_INTHOUSANDTHSOFINCHES         := 0x00000004 ; 2nd of 4 possible
;            , PSD_INHUNDREDTHSOFMILLIMETERS     := 0x00000008 ; 3rd of 4 possible
;            , PSD_DISABLEMARGINS                := 0x00000010
;            , PSD_DISABLEPRINTER                := 0x00000020
;            , PSD_NOWARNING                     := 0x00000080 ; must be same as PD_*
;            , PSD_DISABLEORIENTATION            := 0x00000100
;            , PSD_RETURNDEFAULT                 := 0x00000400 ; must be same as PD_*
;            , PSD_DISABLEPAPER                  := 0x00000200
;            , PSD_SHOWHELP                      := 0x00000800 ; must be same as PD_*
;            , PSD_ENABLEPAGESETUPHOOK           := 0x00002000 ; must be same as PD_*
;            , PSD_ENABLEPAGESETUPTEMPLATE       := 0x00008000 ; must be same as PD_*
;            , PSD_ENABLEPAGESETUPTEMPLATEHANDLE := 0x00020000 ; must be same as PD_*
;            , PSD_ENABLEPAGEPAINTHOOK           := 0x00040000
;            , PSD_DISABLEPAGEPAINTING           := 0x00080000
;            , PSD_NONETWORKBUTTON               := 0x00200000 ; must be same as PD_*
;            , I := 1000 ; thousandth of inches
;            , M := 2540 ; hundredth of millimeters
;            , Margins := {}
;            , Metrics := ""
;            , PSD_Size := (4 * 10) + (A_PtrSize * 11)
;            , PD_Size := (A_PtrSize = 8 ? (13 * A_PtrSize) + 16 : 66)
;            , OffFlags := 4 * A_PtrSize
;            , OffMargins := OffFlags + (4 * 7)
;       VarSetCapacity(PSD, PSD_Size, 0)              ; PAGESETUPDLG structure
;       NumPut(PSD_Size, PSD, 0, "UInt")
;       NumPut(RE.GuiHwnd, PSD, A_PtrSize, "UPtr")    ; hwndOwner
;       Flags := PSD_MARGINS | PSD_DISABLEPRINTER | PSD_DISABLEORIENTATION | PSD_DISABLEPAPER
;       NumPut(Flags, PSD, OffFlags, "Int")           ; Flags
;       Offset := OffMargins
;       NumPut(RE.Margins.L, PSD, Offset += 0, "Int") ; rtMargin left
;       NumPut(RE.Margins.T, PSD, Offset += 4, "Int") ; rtMargin top
;       NumPut(RE.Margins.R, PSD, Offset += 4, "Int") ; rtMargin right
;       NumPut(RE.Margins.B, PSD, Offset += 4, "Int") ; rtMargin bottom
;       If !DllCall("Comdlg32.dll\PageSetupDlg", "Ptr", &PSD, "UInt")
;          Return False
;       DllCall("Kernel32.dll\GobalFree", "Ptr", NumGet(PSD, 2 * A_PtrSize, "UPtr"))
;       DllCall("Kernel32.dll\GobalFree", "Ptr", NumGet(PSD, 3 * A_PtrSize, "UPtr"))
;       Flags := NumGet(PSD, OffFlags, "UInt")
;       Metrics := (Flags & PSD_INTHOUSANDTHSOFINCHES) ? I : M
;       Offset := OffMargins
;       RE.Margins.L := NumGet(PSD, Offset += 0, "Int")
;       RE.Margins.T := NumGet(PSD, Offset += 4, "Int")
;       RE.Margins.R := NumGet(PSD, Offset += 4, "Int")
;       RE.Margins.B := NumGet(PSD, Offset += 4, "Int")
;       RE.Margins.LT := Round((RE.Margins.L / Metrics) * 1440) ; Left as twips
;       RE.Margins.TT := Round((RE.Margins.T / Metrics) * 1440) ; Top as twips
;       RE.Margins.RT := Round((RE.Margins.R / Metrics) * 1440) ; Right as twips
;       RE.Margins.BT := Round((RE.Margins.B / Metrics) * 1440) ; Bottom as twips
;       Return True
;    }
;    ; ===================================================================================================================
;    ReplaceText(RE) { ; Replace dialog box
;    ; ===================================================================================================================
;       ; RE : RichEdit object
;    	Static FINDMSGSTRING := "commdlg_FindReplace"
;    	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2
;    	     , FBuf := "", RBuf := "", FR := "", Len := 256
;            , FR_Size := A_PtrSize * 10
;       Text := RE.GetSelText()
;       VarSetCapacity(FBuf, Len, 0)
;       VarSetCapacity(RBuf, Len, 0)
;       VarSetCapacity(FR, FR_Size, 0)
;    	NumPut(FR_Size, FR, 0, "UInt")
;       If (Text && !RegExMatch(Text, "\W"))
;          FBuf := Text
;       Offset := A_PtrSize
;    	NumPut(RE.GuiHwnd, FR, Offset, "UPtr") ; hwndOwner
;       OffSet += A_PtrSize * 2
;    	NumPut(FR_DOWN, FR, Offset, "UInt")	   ; Flags
;       OffSet += A_PtrSize
;    	NumPut(&FBuf, FR, Offset, "UPtr")      ; lpstrFindWhat
;       OffSet += A_PtrSize
;    	NumPut(&RBuf, FR, Offset, "UPtr")      ; lpstrReplaceWith
;       OffSet += A_PtrSize
;    	NumPut(Len,	FR, Offset, "Short")       ; wFindWhatLen
;    	NumPut(Len,	FR, Offset + 2, "Short")   ; wReplaceWithLen
;       This.ReplaceTextProc("Init", RE.HWND, "")
;    	OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "RichEditDlgs.ReplaceTextProc")
;    	Return DllCall("Comdlg32.dll\ReplaceText", "Ptr", &FR, "UPtr")
;    }
;    ; -------------------------------------------------------------------------------------------------------------------
;    ReplaceTextProc(L, M, H) { ; skipped wParam, can be found in "This" when called by system
;       ; Replace dialog callback procedure
;       ; EM_FINDTEXTEXW = 0x047C, EM_EXGETSEL = 0x0434, EM_EXSETSEL = 0x0437
;       ; EM_REPLACESEL = 0xC2, EM_SCROLLCARET = 0x00B7
;       ; FR_DOWN = 1, FR_WHOLEWORD = 2, FR_MATCHCASE = 4,
;    	Static FINDMSGSTRING := "commdlg_FindReplace"
;    	     , FR_DOWN := 1, FR_MATCHCASE := 4, FR_WHOLEWORD := 2, FR_FINDNEXT := 0x8
;            , FR_REPLACE := 0x10, FR_REPLACEALL=0x20, FR_DIALOGTERM := 0x40
;            , HWND := 0, Min := "", Max := "", FS := "", FE := ""
;            , OffFind := A_PtrSize * 4, OffRepl := A_PtrSize * 5
;       If (L = "Init") {
;          HWND := M, FS := "", FE := ""
;          Return True
;       }
;       Flags := NumGet(L + 0, A_PtrSize * 3, "UInt")
;       If (Flags & FR_DIALOGTERM) {
;          OnMessage(DllCall("User32.dll\RegisterWindowMessage", "Str", FINDMSGSTRING), "")
;          ControlFocus, , ahk_id %HWND%
;          HWND := 0
;          Return
;       }
;       If (Flags & FR_REPLACE) {
;          IF (FS >= 0) && (FE >= 0) {
;             SendMessage, 0xC2, 1, % NumGet(L + 0, OffRepl, "UPtr" ), , ahk_id %HWND%
;             Flags |= FR_FINDNEXT
;          } Else {
;             Return
;          }
;       }
;       If (Flags & FR_FINDNEXT) {
;          VarSetCapacity(CR, 8, 0)
;          SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
;          Min := NumGet(CR, 4)
;          FS := FE := ""
;          Find := StrGet(NumGet(L + OffFind, 0, "UPtr"))
;          VarSetCapacity(FTX, 16 + A_PtrSize, 0)
;          NumPut(Min, FTX, 0, "Int")
;          NumPut(-1, FTX, 4, "Int")
;          NumPut(&Find, FTX, 8, "Ptr")
;          SendMessage, 0x047C, %Flags%, &FTX, , ahk_id %HWND%
;          S := NumGet(FTX, 8 + A_PtrSize, "Int"), E := NumGet(FTX, 12 + A_PtrSize, "Int")
;          If (S = -1) && (E = -1)
;             MsgBox, 262208, Replace, No (further) occurence found!
;          Else {
;             SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
;             SendMessage, 0x00B7, 0, 0, , ahk_id %HWND%
;             FS := S, FE := E
;          }
;          Return
;       }
;       If (Flags & FR_REPLACEALL) {
;          VarSetCapacity(CR, 8, 0)
;          SendMessage, 0x0434, 0, &CR, , ahk_id %HWND%
;          If (FS = "")
;             FS := FE := 0
;          DllCall("User32.dll\LockWindowUpdate", "Ptr", HWND)
;          Find := StrGet(NumGet(L + OffFind, 0, "UPtr"))
;          VarSetCapacity(FTX, 16 + A_PtrSize, 0)
;          NumPut(FS, FTX, 0, "Int")
;          NumPut(-1, FTX, 4, "Int")
;          NumPut(&Find, FTX, 8, "Ptr")
;          While (FS >= 0) && (FE >= 0) {
;             SendMessage, 0x044F, %Flags%, &FTX, , ahk_id %HWND%
;             FS := NumGet(FTX, A_PtrSize + 8, "Int"), FE := NumGet(FTX, A_PtrSize + 12, "Int")
;             If (FS >= 0) && (FE >= 0) {
;                SendMessage, 0x0437, 0, % (&FTX + 8 + A_PtrSize), , ahk_id %HWND%
;                SendMessage, 0xC2, 1, % NumGet(L + 0, OffRepl, "UPtr" ), , ahk_id %HWND%
;                NumPut(FE, FTX, 0, "Int")
;             }
;          }
;          SendMessage, 0x0437, 0, &CR, , ahk_id %HWND%
;          DllCall("User32.dll\LockWindowUpdate", "Ptr", 0)
;          Return
;       }
;    }
; }





















































;=========================================
; Name:     	  RichEdit OleCallback
; Namespace:      RichEdit
; Authors:        just me & DigiDon
; Description:    IRichEditOleCallback interface AHK implementation for the RichEdit control
;=========================================
;
;=========================================
;RE_SetOleCallback
;Need to call this function just after creation of the RichEdit control
;HRE - Handle of the RichEdit Control
;ex: RE_SetOleCallback(RE2.HWND)
;Specify your contextmenu in IREOleCB_GetContextMenu() if you have one because it won't be called otherwise
;and disable existing dropfiles special GUI label for the RichEdit Control
;Then you can start dragging and dropping any document into the RichEdit field.
;=========================================
RE_SetOleCallback(HRE) {
   ; EM_SETOLECALLBACK = 0x0446
   SendMessage, 0x0446 , 0, % IREOleCB_Create() , , ahk_id %HRE%
   If (ErrorLevel = "FAIL") || (ErrorLevel = 0) {
      MsgBox, 16, %A_ThisFunc%, ERROR: %ErrorLevel%!
      Return False
   }
   Return True
}
; ================================================================================================================================
; IRichEditOleCallback -> msdn.microsoft.com/en-us/library/windows/desktop/bb774308(v=vs.85).aspx
; ================================================================================================================================
IREOleCB_Create() {
   Static VTBL := [RegisterCallback("IREOleCB_QueryInterface")
                 , RegisterCallback("IREOleCB_AddRef")
                 , RegisterCallback("IREOleCB_Release")
                 , RegisterCallback("IREOleCB_GetNewStorage")
                 , RegisterCallback("IREOleCB_GetInPlaceContext")
                 , RegisterCallback("IREOleCB_ShowContainerUI")
                 , RegisterCallback("IREOleCB_QueryInsertObject")
                 , RegisterCallback("IREOleCB_DeleteObject")
                 , RegisterCallback("IREOleCB_QueryAcceptData")
                 , RegisterCallback("IREOleCB_ContextSensitiveHelp")
                 , RegisterCallback("IREOleCB_GetClipboardData")
                 , RegisterCallback("IREOleCB_GetDragDropEffect")
                 , RegisterCallback("IREOleCB_GetContextMenu")]
   Static HeapSize := A_PtrSize * 20 ; VTBL pointer + 13 method pointers + 4 unused pointers + reference count + HEAP handle
   Static HeapOffset := A_PtrSize * 19 ; offset to store the heap handle within the heap
   Heap := DllCall("HeapCreate", "UInt", 0x05, "Ptr", 0, "Ptr", 0, "UPtr")
   IREOleCB := DllCall("HeapAlloc", "Ptr", Heap, "UInt", 0x08, "Ptr", HeapSize, "UPtr")
   Addr := IREOleCB
   Addr := NumPut(Addr + A_PtrSize, Addr + 0, "UPtr")
   For Each, CB In VTBL
      Addr := NumPut(CB, Addr + 0, "UPtr")
   NumPut(Heap, IREOleCB + HeapOffset, "UPtr")
   Return IREOleCB
}
; --------------------------------------------------------------------------------------------------------------------------------
; IUnknown::QueryInterface
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_QueryInterface(IREOleCB, REFIID, ByRef IFPtr) {
   OutputDebug, %A_ThisFunc%
   Return 0 ; S_OK
}
; --------------------------------------------------------------------------------------------------------------------------------
; IUnknown::AddRef
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_AddRef(IREOleCB) {
   Static RefOffset := A_PtrSize * 18
   OutputDebug, %A_ThisFunc%
   NumPut(RefCount := NumGet(IREOleCB + RefOffset, "UInt") + 1, IREOleCB + RefOffset, "UInt")
   Return RefCount
}
; --------------------------------------------------------------------------------------------------------------------------------
; IUnknown::Release
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_Release(IREOleCB) {
   Static RefOffset := A_PtrSize * 18
        , HeapOffset := A_PtrSize * 19
   OutputDebug, %A_ThisFunc%
   NumPut(RefCount := NumGet(IREOleCB + RefOffset, "UInt") - 1, IREOleCB + RefOffset, "UInt")
   If (RefCount = 0) {
      Heap := NumGet(IREOleCB + HeapOffset, "UPtr")
      DllCall("HeapDestroy", "Ptr", Heap)
   }
   Return RefCount
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::GetNewStorage
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_GetNewStorage(IREOleCB, IStoragePtr) {
   OutputDebug, %A_ThisFunc%
   ; msdn.microsoft.com/en-us/library/windows/desktop/aa378977(v=vs.85).aspx
	If !(HR := DllCall("Ole32.dll\CreateILockBytesOnHGlobal", "Ptr", 0, "Int", 1, "PtrP", ILockBytes)) {
      ; msdn.microsoft.com/en-us/library/windows/desktop/aa380324(v=vs.85).aspx
      ; STGM_READWRITE = 0x02, STGM_SHARE_EXCLUSIVE = 0x10, STGM_CREATE = 0x1000
   	If (HR := DllCall("Ole32.dll\StgCreateDocfileOnILockBytes", "Ptr", ILockBytes, "UInt", 0x1012, "UInt", 0, "PtrP", IStorage))
         ObjRelease(ILockBytes)
      Else
         NumPut(IStorage, IStoragePtr + 0, "UPtr")
   }
   Return HR
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::GetInPlaceContext - not implemented
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_GetInPlaceContext(IREOleCB, Frame, Doc, FrameInfo) {
   OutputDebug, %A_ThisFunc%
   Return 0x80004001 ; E_NOTIMPL
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::ShowContainerUI - not implemented
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_ShowContainerUI(IREOleCB, Show) {
   OutputDebug, %A_ThisFunc%
   Return 0x80004001 ; E_NOTIMPL
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::QueryInsertObject - returns S_OK
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_QueryInsertObject(IREOleCB, CLSID, STG, CP) {
   OutputDebug, %A_ThisFunc%
   Return 0 ; S_OK
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::DeleteObject - returns S_OK
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_DeleteObject(IREOleCB, OleObj) {
   OutputDebug, %A_ThisFunc%
   Return 0 ; S_OK
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::QueryAcceptData - returns S_OK
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_QueryAcceptData(IREOleCB, DataObj, Format, Operation, Really, MetaPic) {
   OutputDebug, %A_ThisFunc%
   Return 0 ; S_OK
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::ContextSensitiveHelp - not implemented
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_ContextSensitiveHelp(IREOleCB, EnterMode) {
   OutputDebug, %A_ThisFunc%
   Return 0x80004001 ; E_NOTIMPL
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::GetClipboardData - not implemented
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_GetClipboardData(IREOleCB, CharRange, Operation, DataObj) {
   OutputDebug, %A_ThisFunc%
   Return 0x80004001 ; E_NOTIMPL
}
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::GetDragDropEffect - returns S_OK
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_GetDragDropEffect(IREOleCB, Drag, KeyState, Effect) {
   OutputDebug, %A_ThisFunc%
   Return 0 ; S_OK
}
; --------------------------------------------------------------------------------------------------------------------------------
; --------------------------------------------------------------------------------------------------------------------------------
; IRichEditOleCallback::GetContextMenu - not implemented
; --------------------------------------------------------------------------------------------------------------------------------
IREOleCB_GetContextMenu(IREOleCB, SelType, OleObj, CharRange, HMENU) {
   ; GCM_RIGHTMOUSEDROP = 0x8000
   ; OutputDebug, %A_ThisFunc%
   If !(SelType & 0x8000) { ; indicates that a context menu for a right-mouse drag drop should be generated
      MouseGetPos, , , HGUI, HRE, 2
      DllCall("PostMessage", "Ptr", HGUI, "UInt", 0x007B, "Ptr", HRE, "Ptr", -1)
   }
   Return 0x80004001 ; E_NOTIMPL
}

























































 

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Class_RichEdit.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Class_RichEditDlgs.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\RichEditOleCallback.ahk
; ======================================================================================================================

; ======================================================================================================================
; Additions below by burque505
; ======================================================================================================================
;

MakeMenu:
Menu, RTE_Menu, Add, &Copy, Copy2  ; Simple context menu
Menu, RTE_Menu, Add, &Paste, Paste2  ; 
Menu, RTE_Menu, Add, Cu&t, Cut2  ; 
Menu, RTE_Menu, Add, Select &All, All2 ; 
Menu, RTE_Menu, Add, &Undo, Undo2 ; 
Menu, RTE_Menu, Add, &Redo, Redo2 ;
Menu, RTE_Menu, Add
Menu, RTE_Menu, Color, e6FFe6
Menu, RTE_Menu, Add, &Edit, :Edit
Menu, RTE_Menu, Add, &File, :File
Menu, RTE_Menu, Add, &Search, :Search
Menu, RTE_Menu, Add, &Format, :Format
Menu, RTE_Menu, Add, &View, :View
Menu, RTE_Menu, Show
Menu, RTE_Menu, Color, FFFFFF
return

Copy2:
Send, ^c
return

Paste2:
Send, ^v
return

Cut2:
Send, ^x
return

All2:
Send, ^a
return

Undo2:
Send, ^z
return

Redo2:
Send, ^y
return

;~ ^!m::
;~ gosub, MakeMenu
;~ MsgBox Context Menu: %A_ThisLabel%
;~ return

^Escape::ExitApp

;return

/**************************************************
2019 burque505 additions
*/

Settings505:
msgbox Settings icon works.
return



