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
    global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
    OnMessage(0x0138, "43WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
    OnMessage(0x0133, "43WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
    OnMessage(0x0132, "43WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

    OnMessage(0x0083, "43WM_NCCALCSIZE")
    OnMessage(0x0086, "43WM_NCACTIVATE")
    OnMessage(0x0084, "43WM_NCHITTEST")

    Gui, %GuiName43%:New, +Hwnd43hwnd +LastFound +Resize -Caption -Border -DPIScale +MinSize1380x600 -MinimizeBox
    Gui, %GuiName43%:Margin, 10, 10
    Gui, %GuiName43%:Color, 000000

    Gui, %GuiName43%:Add, Picture, v43BorderTop, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderBottom, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderLeft, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BorderRight, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackN Hwnd43hBtnBackN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackH Hwnd43hBtnBackH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnBackP Hwnd43hBtnBackP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseN Hwnd43hBtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseH Hwnd43hBtnCloseH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnCloseP Hwnd43hBtnCloseP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxN Hwnd43hBtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxH Hwnd43hBtnMaxH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnMaxP Hwnd43hBtnMaxP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreN Hwnd43hBtnRestoreN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreH Hwnd43hBtnRestoreH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnRestoreP Hwnd43hBtnRestoreP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-pressed.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinN Hwnd43hBtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinH Hwnd43hBtnMinH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-hover.png
    Gui, %GuiName43%:Add, Picture, v43BtnMinP Hwnd43hBtnMinP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-pressed.png

    Gui, %GuiName43%:Add, Picture, v43MenuHover Hwnd43hMenuHover Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover.png
    Gui, %GuiName43%:Add, Picture, v43MenuPressed Hwnd43hMenuPressed Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-pressed.png
    Gui, %GuiName43%:Add, Picture, v43MenuSelect Hwnd43hMenuSelect, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel.png
    Gui, %GuiName43%:Add, Picture, v43MenuSelectPurple Hwnd43hMenuSelectPurple, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel-purple.png
    Gui, %GuiName43%:Add, Picture, v43MenuAlternativeColour Hwnd43hMenuAlternativeColour, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-alternative-colour.png

    ; VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(43GuiHwnd, TME, 8)

    pic1Location = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\ahk-icon24x24.png

    ; Gui, %GuiName43%:Font, s9, Segoe UI
    Gui, %GuiName43%:Add, Text, x14 y8 vTitleText BackgroundTrans, 

    Gui, %GuiName43%:Add, Text, v43WhiteLineNumberMain x10 yp+2 w1280 0x10

    ; global 43Gui2CommonlyUsedFunctionsBackground
    ; Gui_AddPicture_VariableName("x1 y34 w200 h300", "22 22 22", "43Gui2CommonlyUsedFunctionsBackground") ; background

    TextLabelNoPicture_version_for_helpy("33 33 33", 43, "100", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Information:")

    Gui, %GuiName43%:Add, Text, yp-10 x480 w10 h140 0x11

    Gui, %GuiName43%:Add, Text, yp+40 xp-460 w450 h20 cWhite , You can paste parts of your clipboard very fast using the mouse wheel. 
    Gui, %GuiName43%:Add, Text, yp+22 xp w450 h20 cWhite , The parts are separated by space and you paste the next or last word by going up or down. 
    Gui, %GuiName43%:Add, Text, yp+20 xp w450 h20 cWhite , Copy while the first tick is selected and use the mouse wheel while the second teck is selected.

    TextLabelNoPicture_version_for_helpy("33 33 33", 43, "530", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Check an option:")

    Gui, %GuiName43%:Add, Checkbox , yp+30 xp-80 w250 h20 cWhite vHoldtoclickClipboardOrText_43, Use either clipboard ot SendInput to type text
    Gui, %GuiName43%:Add, Text, yp+40 xp w350 h20 cWhite , Custom delimeter:
    Gui, %GuiName43%:Add, Edit, yp+20 xp w250 h20 vEditFieldForClipboardMain_43 +Hwnd43EditField_43,(((|||CustomDelimeter|||)))
    
    Gui, %GuiName43%:Add, Text, yp-100 xp+270 w10 h140 0x11

    TextLabelNoPicture_version_for_helpy("33 33 33", 43, "825", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Index options:")

    Gui, %GuiName43%:Add, Text, yp+40 xp-90 w300 h20 cWhite, Paste the clipboard into the text field bellow:
    Gui, %GuiName43%:Add, Picture, yp-10 xp+220 h34 w34 g43RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png
    Gui, %GuiName43%:Add, Text, yp+30 xp-220 w150 h20 cWhite, Position of the string list:
    Gui, %GuiName43%:Add, Edit, yp xp+130 w30 h20 vStringListPosition43_43,
    ; Gui, %GuiName43%:Add, Text, yp+40 xp-130 w150 h20 cWhite, Position of the string list:
    ; Gui, %GuiName43%:Add, Picture, yp-10 xp+120 h34 w34 g43RefreshPosition, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png

    ; Gui, %GuiName43%:Add, Checkbox , yp+30 xp-80 w350 h40 cWhite vHoldtoclick2_43, Use mouse scroll to quickly insert parts of the `n copied text

    Gui, %GuiName43%:Add, Text, yp-70 x1080 w10 h140 0x11

    TextLabelNoPicture_version_for_helpy("33 33 33", 43, "1130", "40", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Start the script:")

    Gui, %GuiName43%:Add, Checkbox , yp+30 xp-80 w250 h40 cWhite vHoldtoclick2_43, Use mouse scroll to quickly insert parts of the `n copied text


    ; TextLabelNoPicture_version_for_helpy("33 33 33", 43, "520", "40", "200", "30","TESTMsgbox",CustomVariableControl3_43, "HBT1Helpy113", "Clipboard:")

    ; Gui, %GuiName43%:Add, Text, yp-10 xp+160 w10 h80 0x11

    ; Gui, %GuiName43%:Add, Text, yp-8 xp+160 w550 h20 cWhite , You can paste parts of your clipboard very fast using the mouse wheel. 
    ; Gui, %GuiName43%:Add, Text, yp+22 xp w550 h20 cWhite , The parts are separated by space and you paste the next or last word by going up or down. 
    ; Gui, %GuiName43%:Add, Text, yp+20 xp w550 h20 cWhite , Copy while the first tick is selected and use the mouse wheel while the second teck is selected.



    ; Gui, %GuiName43%:Add, Edit, yp+30 x308 w112 h120 r15, sssssssss
    ; Gui, %GuiName43%:Add, Edit, yp x8+30 w292 h120 r15, sssssss

    Gui, %GuiName43%:Add, Text, y200 x20 v43WhiteLineNumberLesser1 w1380 0x10

    ; TextLabelNoPicture_version_for_helpy("33 33 33", 43, "20", "140", "200", "30","TESTMsgbox",CustomVariableControl2_43, "HBT1Helpy112", "Check an option:")

    ; Gui, %GuiName43%:Add, Checkbox , yp-6 xp+170  w350 h20 cWhite vHoldtoclickClipboardOrText_43, Use either clipboard ot SendInput to type text


    ; Gui, %GuiName43%:Add, Edit, yp+20 xp w160 h20 vEditFieldForClipboardMain_43 +Hwnd43EditField_43,(((|||CustomDelimeter|||)))
    ; Gui, %GuiName43%:Add, Text, yp+2 xp+170 w350 h20 cWhite , as a delimeter to separate parts of this text

    ; Gui, %GuiName43%:Add, Checkbox , yp+40 xp-170 w350 h20 cWhite vHoldtoclick2_43, Use mouse scroll to quickly insert parts of the copied text

    ; Gui, %GuiName43%:Add, Text, v43WhiteLineNumberMain11 yp-300 xp+600 w10 h1200 0x11

    ; Gui, %GuiName43%:Add, Text, yp+60 xp-26 v43WhiteLineNumberLesser2 w1280 0x10
    ; TextLabelNoPicture_version_for_helpy("33 33 33", 43, "20", "280", "200", "30","TESTMsgbox",CustomVariableControl3_43, "HBT1Helpy113", "Clipboard:")

    ; Gui, %GuiName43%:Add, Text, yp-10 xp+150 w300 h20 cWhite, Paste the clipboard into the text field bellow:
    ; Gui, %GuiName43%:Add, Picture, yp xp+250 h34 w34 g43RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png
    ; Gui, %GuiName43%:Add, Text, yp xp+50 w150 h20 cWhite, Position of the string list:
    ; Gui, %GuiName43%:Add, Edit, yp x+10 w30 h20 vStringListPosition43_43,
    ; Gui, %GuiName43%:Add, Picture, yp xp+50 h34 w34 g43RefreshPosition, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png

    GuiControl,%GuiName43%:, StringListPosition43_43, 0

    ; Gui, %GuiName43%:Font,% "s" . Fnt_GetMessageFontSize(),% Fnt_GetMessageFontName()
 
   
    
    ; Gui, %GuiName43%:Add, Edit, x308 y320 w350 h60 vEditFieldForClipboard_43 +hwndhEditFieldForClipboard_43HWND, % Clipboard
    ; Gui, %GuiName43%:Add, Edit, x8 y320 w292 h60 vEditFieldForClipboard_43Dynamic +hwndhEditFieldForClipboard_43HWNDDynamic, % Clipboard


    ; Edit_SetText(hEditFieldForClipboard_43HWND,"The Quick Brown Fox Jumps Over The Lazy Dog`r`n")
    
    ; Gui, %GuiName43%:Add,Edit,hwndhEdit w400 r15


    ; Gui, %GuiName43%:Font, s18 cRed Bold, Verdana

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
; Gui, +ReSize +MinSize +hwndGuiID

; Menu, GuiMenu, Show , &File
; Menu, GuiMenu, Color, 555555 

Gui, %GuiName43%:Menu, GuiMenu, x15 y15 h15 w15

; ControlFocus, &File, FastClipboardWMouseWheelCustom_43
; Menu, GuiMenu, Enable, &File



; Retrieve the number of items in a menu.
; item_count := DllCall("GetMenuItemCount", "ptr", MenuGetHandle("MyMenu"))

; ; Retrieve the ID of the last item.
; last_id := DllCall("GetMenuItemID", "ptr", MenuGetHandle("MyMenu"), "int", item_count-1)

; MsgBox, MyMenu has %item_count% items, and its last item has ID %last_id%.

; Menu, GuiMenu, Check, &File
; ControlFocus, File, FastClipboardWMouseWheelCustom_43

; ControlFocus, Edit1, Test_Gui 
; ControlFocus, Edit1, Test_Gui 
; ControlFocus, Edit1, Test_Gui 

Gui, Margin, %MarginX%, %MarginY%
; Style buttons
Gui, %GuiName43%:Font, Bold, Arial
; Gui, %GuiName43%:Add, Picture, yp-10 xp+220 h20 w20 g43RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\font_bold.png
Gui, %GuiName43%:Add, Picture, x308 y256 w20 h20 vBTSTB gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\font_bold.png
Gui, %GuiName43%:Font, Norm Italic
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTI gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\font_italic.png
Gui, %GuiName43%:Font, Norm Underline
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTU gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\font_underline.png
Gui, %GuiName43%:Font, Norm Strike
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTS gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\Strikethrough.jpg
Gui, %GuiName43%:Font, Norm, Arial
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTH gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\superscript.jpg
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTL gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\subscript.jpg
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTSTN gSetFontStyle, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\broom.jpg
Gui, %GuiName43%:Add, Picture, x+10 yp wp hp vBTTXC gBTextColor, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\textcolor48.png
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBGC gBackGroundColor, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\colorpalette48.png
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTBGC gBTextBkColor, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\fillcolor48.png
Gui, %GuiName43%:Add, Edit, x+10 yp w150 hp ReadOnly vFNAME, %FontName%
Gui, %GuiName43%:Font, Bold, MS Comic Sans
Gui, %GuiName43%:Add, Button, x+0 yp w25 hp vBTCHF gChooseFont, F
Gui, %GuiName43%:Font
Gui, %GuiName43%:Add, Edit, x+5 yp vFSIZE ReadOnly, 8888
Gui, %GuiName43%:Add, UpDown, gChangeSize vUDVAL range4-120, 10
; Gui, %GuiName43%:Add, Picture, x+30 yp wp hp gSettings505, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\settings.ico


; Gui, %GuiName43%:Add, Picture, yp-10 xp+220 h34 w34 g43RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png

;****************************************************************;
; RichEdit #18
;****************************************************************;

Gui, %GuiName43%:Font, Bold Italic, Arial
Gui, %GuiName43%:Add, Text, x+10 yp hp vT1,
GuiControlGet, T, Pos, T1
TX := EditW - TW + MarginX
GuiControl, Move, T1, x%TX%
Gui, Font, s8, Arial
Options := " x" . 800 . " y" . TY . " w" . 100 . " h" . TH
If !IsObject(RE1 := New RichEdit(43, Options, False)) {
   MsgBox, 16, Error, %ErrorLevel%
   ExitApp
}
RE1.ReplaceSel("AaBbYyZz")
RE1.AlignText("CENTER")
RE1.SetOptions(["READONLY"], "SET")
Gui, %GuiName43%:Font, Norm, Arial


; Alignment & line spacing
Gui, %GuiName43%:Add, Text, x308 y280 w600 h2 0x1000
;Gui, Add, Button, x10 y+1 w20 h20 vBTTAL gAlignLeft, |<

; This is the second line 
Gui, %GuiName43%:Add, Picture, xp yp+10 w20 h20 vBTTAL gAlignLeft, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\align_left.bmp
;Gui, Add, Button, x+0 yp wp hp vBTTAC gAlignCenter, ><
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAC gAlignCenter, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\align_center.bmp
;Gui, Add, Button, x+0 yp wp hp vBTTAR gAlignRight, >|
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAR gAlignRight, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\align_right.bmp
;Gui, Add, Button, x+0 yp wp hp vBTTAJ gAlignJustify, |<>|
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp vBTTAJ gAlignJustify, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\align_none.bmp
;~ Gui, Add, Button, x+10 yp wp hp vBTL10 gSpacing10, 1
;~ Gui, Add, Button, x+0 yp wp hp vBTL15 gSpacing15, % "1" . Chr(189)
;~ Gui, Add, Button, x+0 yp wp hp vBTL20 gSpacing20, 2
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp gIndentation, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\format_indent.bmp
Gui, %GuiName43%:Add, Picture, x+2 yp wp hp gResetIndentation, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\format_outdent.bmp
Gui, %GuiName43%:Add, Picture, x+30 yp wp hp, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\spacing-button.jpg
Gui, %GuiName43%:Add, Edit, x+5 yp vLSPC ReadOnly, 1111
Gui, %GuiName43%:Add, UpDown, gChangeLS vLSVAL range1-5, 1

; ; RichEdit #2
Gui, %GuiName43%:Font, s10, Arial

; Gui, %GuiName43%:Add, Edit, x308 y320 w350 h60 vEditFieldForClipboard_43 +hwndhEditFieldForClipboard_43HWND, % Clipboard
Gui, %GuiName43%:Add, Edit, x8 y320 w292 h300 vEditFieldForClipboard_43Dynamic +hwndhEditFieldForClipboard_43HWNDDynamic, % Clipboard

; THIS IS THE EDIT FIELD

Global EditFieldForClipboard_43
Global RE2
Options := "x308 y320 w" . EditW . " r20 gRE2MessageHandler vEditFieldForClipboard_43 +hwndhEditFieldForClipboard_43HWND" ; " h" . EditH

If !IsObject(RE2 := New RichEdit(43, Options)) {
   MsgBox, 16, Error, %ErrorLevel%
   ExitApp
}

GuiControl,%GuiName43%:, EditFieldForClipboard_43, "The Quick Brown Fox Jumps Over The Lazddddddy Dog`r`n"



; GuiControl,%GuiName43%:, EditFieldForClipboard_43HWND, "The Quick Brown Fox Jumps Over The Lazy Dog`r`n"


; Edit_SetText(hEditFieldForClipboard_43HWND,"The Quick Brown Fox Jumps Over The Lazy Dog`r`n")

; Options2 := "xm y300 w" . EditW . " r20 gRE2MessageHandler2" vEditFieldForClipboard_43Dynamic2 +hwndhEditFieldF1orClipboard_43HWNDDynamic2, ; " h" . EditH

; Global EditFieldForClipboard_43_2
; Options2 := "x308 y320 w" . EditW . " r20 gRE2MessageHandler2 vEditFieldForClipboard_43_2 +hwndhEditFieldForClipboard_43HWND_2" ; " h" . EditH

; If !IsObject(RE2 := New RichEdit(43, Options2)) {
;    MsgBox, 16, Error, %ErrorLevel%
;    ExitApp
; }

; SB_SetText = Statusbar set text

GuiControlGet, RE, Pos, % RE2.HWND
RE_SetOleCallback(RE2.HWND)
OnMessage(0x204, "RightClick") ; WM_RIGHTBUTTONDOWN added - burque505
RE2.SetBkgndColor(BackColor)
RE2.SetEventMask(["SELCHANGE"])
Gui, %GuiName43%:Font
; The rest
Gui, %GuiName43%:Add, Statusbar
SB_SetParts(10, 200)

; Stats := RE2.GetStatistics()
; MsgBox % Stats.LinePos

; Stats := RE2.GetStatistics()
; SB_SetText(Stats.Line . " : " . Stats.LinePos . " (" . Stats.LineCount . ")  [" . Stats.CharCount . "]", 2)


; setworkingdir,%A_MyDocuments%
; Gui,43:default
; Gui,43:  -DPIScale
; Gui,43:Font,Cdefault,Fixedsys
; Gui,43:Color,Black
; Gui,43:Color,ControlColor, Black
; ;-------------------------------------------------
; Menu,S1,add,calc               ,MH1a
; Menu,S1,add,charmap            ,MH1a
; menu,myMenuBar,Add,Programs     ,:S1

; Menu, MyMenuBar, Add, Notepad  , Label1
; Menu, MyMenuBar, Icon,Notepad  , Notepad.exe,0,20  ;- 20 is size , maybe 16
; gui,43:menu,MyMenuBar ,
; ;-------------------------------------------------
; Gui,43:add,Text,    x10    y10             cGray       ,Test
; Gui,43:show,x10 y10 w200 h100, Test




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

; Menu, GuiMenu, Show, 110, 110
; #z::Menu, GuiMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.

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

; GuiControlGet,43,, RE2

   ;  GuiControlGet, OutputVar_For_EditFieldForClipboardMain_43, %GuiName43%:EditFieldForClipboardMain_43
   ;  GuiControlGet, RE2, %GuiName43%:

; GuiControlGet, OutputVar_For_Statusbar, %GuiName43%:Statusbar

   ;  GuiControlGet, RE2,  Pos, % RE2.HWND


; Stats := RE2.GetStatistics()
; MsgBox % Stats.LinePos


; GuiControl,43:, MyEdit,% Chr(wParam)
; GuiControl,%GuiName43%:, EditFieldForClipboard_43, 

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

    GuiControl, MoveDraw, EditFieldForClipboard_43, % "x" 308 " y" 320 " w" Width  - 300 - 8 - 8 " h" (Height - 340) - 8
    GuiControl, MoveDraw, EditFieldForClipboard_43Dynamic, % "x" 8 " y" 320 " w" 296 " h" (Height - 340) - 8
    
   ;  GuiControl, MoveDraw, GuiMenu, % "x" 177 " y" 77 " w" Width - 2 " h" 1
    


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

43WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

43WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 1 : "")
}

43WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
    Global X, Y, gX, gY

	WinGetPos, gX, gY, gW, gH
	X := lParam << 48 >> 48, Y := lParam << 32 >> 48
	HL := X < gX + 6, HR := X >= (gX + gW) - 6
	HT := Y < gY + 6, HB := Y >= (gY + gH) - 6
    IfEqual, HT, 1, return "0x" (HL ? "D" : HR ? "E" : "C")
    IfEqual, HB, 1, return "0x" (HL ? "10" : HR ? "11" : "F")
    IfEqual
, HL, 1, return 0xA
    IfEqual, HR, 1, return 0xB
}

; 43WinActiveCheck() {
;     Global ; Assume-global mode
;     Static Normal := 0, Disabled := 0, Count := 0

;     ;  code for 43
;     ; {

;     IsActive := WinActive("ahk_id " Gui43Hwnd)

;     If (IsActive) {
;         If (Normal) || (!Count)  {
;             return
;         }

;         GuiControl,, 43BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
;         GuiControl,, 43BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
;         GuiControl,, 43BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
;         GuiControl,, 43BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
;         GuiControl, +c000000, TitleText
;         GuiControl, MoveDraw, TitleText
;         Disabled := 0, Normal := 1, Count++
;     } Else {
;         If (Disabled) {
;             return
;         }

;         GuiControl,, 43BtnBackN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-disabled.png
;         GuiControl,, 43BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-disabled.png
;         GuiControl,, 43BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-disabled.png
;         GuiControl,, 43BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-disabled.png
;         GuiControl,, 43BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-disabled.png
;         GuiControl, +c999999, TitleText
;         GuiControl, MoveDraw, TitleText
;         Normal := 0, Disabled := 1, Count++
;     }


;     ; }

; }



43RefreshButton(){
    ; GuiControl,%GuiName43%:, EditFieldForClipboard_43, % Clipboard
    ; Edit_SetSel(EditFieldForClipboard_43HWND,Edit_GetTextLength(EditFieldForClipboard_43HWND))
    

    
}

43CopiedTextFromGuiElement:
    Clipboard = "(((|||CustomDelimeter|||)))" 
return

43RefreshPosition(){
    resetClipboardTime43()
    GuiControl,%GuiName43%:, StringListPosition43_43, 0
}



; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace_43(keyCounter, ReturnedStringThatNeedsToBeSeparated){
; ;    ReturnedStringThatNeedsToBeSeparated := Clipboard

;     ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, " ")
;     MaxValue := % ColorArray.MaxIndex()

;     if (keyCounter > MaxValue) {
;         keyCounter = %MaxValue%
;         IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
;         IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
;         GuiControl,41:, StringListPosition41, %keyCounter%
        
;     }

;     if (keyCounter < 0) {
;         keyCounter := 0
;         IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
;         IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
;         GuiControl,41:, StringListPosition41, %keyCounter%
       
;     }

;     AbsValueDividedValue := % keyCounter
;     this_color := % ColorArray[AbsValueDividedValue]
;     LengthValueDividedValue := % StrLen(this_color)
;     VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

;     SetKeyDelay -1
;     SetBatchLines -1

;     StringReplace, this_color, this_color, `n,`r`n, All
;     Clipboard := % this_color
;     SendInput ^v

;     ; 41StringListPositionFunction()
;     ; GoSub, 41StringListPositionLabel

;     TimeClipboardVariable := LengthValueDividedValue * -15
;     SplashTextOn,,,%AbsValueDividedValue%,
;     SetTimer, RemoveToolTipClipboard, %TimeClipboardVariable%

;     SendInput {Shift down}
;     SendInput {Left %LengthValueDividedValue%}
;     SendInput {Shift up}

; }

AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated){
;    ReturnedStringThatNeedsToBeSeparated := Clipboard

; ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, EditFieldForClipboardMain_43

; StringReplace, ReturnedStringThatNeedsToBeSeparated, ReturnedStringThatNeedsToBeSeparated, `n,`r`n, All

; Edit_SetText(EditFieldForClipboard_43HWND,"The Quick Brown Fox Jumps Over The Lazy Dog`r`n")



; OutputVar_For_EditFieldForClipboardMain_43 := Edit_GetText(Edit1)
; MsgBox, % OutputVar_For_EditFieldForClipboardMain_43 


    ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, Edit1, FastClipboardWMouseWheelCustom_43

    ; MsgBox, % OutputVar_For_EditFieldForClipboardMain_43

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, %GuiName43%:, EditFieldForClipboardMain_43

    ; OutputVar_For_EditFieldForClipboardMain_43 := ControlGetText("EditFieldForClipboardMain_43", "FastClipboardWMouseWheelCustom_43")

    ; GuiControlGet
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_43, %GuiName43%:EditFieldForClipboardMain_43

    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_43,, %GuiName43%:EditFieldForClipboardMain_43

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, EditFieldForClipboardMain_43,FastClipboardWMouseWheelCustom_43
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_43, 41:, EditFieldForClipboardMain_43

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_43, , % 43EditField_43

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_43,Text,, %GuiName43%:EditFieldForClipboardMain_43,

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_43,, %GuiName43%:EditFieldForClipboardMain_43
    ; ControlGet, 43, OutputVar_For_EditFieldForClipboardMain_43,EditFieldForClipboardMain_43

    ; MsgBox % OutputVar_For_EditFieldForClipboardMain_43

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, OutputVar_For_EditFieldForClipboardMain_43)
    MaxValue := % ColorArray.MaxIndex()

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        
        GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%
    }

    if (keyCounter < 0) {
        keyCounter := 0
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
        
        
        GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%
    }

    AbsValueDividedValue := % keyCounter
    this_color := % ColorArray[AbsValueDividedValue]
    ; LengthValueDividedValue := % StrLen(this_color)

    ; MsgBox, %LengthValueDividedValue%

    ; LengthValueDividedValue = % LengthValueDividedValue - 1

    ; MsgBox, %LengthValueDividedValue%

    SetKeyDelay -1
    SetBatchLines -1

    StringReplace, this_color, this_color, `n,`r`n, All
    StringReplace, this_color,this_color, `r,, All
    StringReplace, this_color,this_color, `n,, All

    ; StringReplace, this_color, this_color,"",`r`n, All
    Clipboard := % this_color

    LengthValueDividedValue1 := % StrLen(Clipboard)
    ; MsgBox, %LengthValueDividedValue1%


    

    GuiControlGet, HoldtoclickClipboardOrText_43, %GuiName43%:
    if(HoldtoclickClipboardOrText_43==1)
    {
        SendInput ^v
    }   
    if(HoldtoclickClipboardOrText_43==0)
    {
        SendInput, %this_color%
    }   

    ; 

    

    ; 41StringListPositionFunction()
    ; GoSub, 41StringListPositionLabel

    TimeClipboardVariable := LengthValueDividedValue1 * -5
    SplashTextOn,,,%AbsValueDividedValue%,
    SetTimer, RemoveToolTipClipboard_43ALL_IN_ONE, %TimeClipboardVariable%

    ; SendInput {Shift down}
    ; SendInput {Left %LengthValueDividedValue%}
    ; SendInput {Shift up}



;    SendInput, % this_color

;    TimeClipboardVariable := LengthValueDividedValue * -15
;    SplashTextOn,,,%AbsValueDividedValue%,
;    SetTimer, RemoveToolTipClipboard, %TimeClipboardVariable%

;    loop, %LengthValueDividedValue%
;    {
;       SendInput {Shift down}
;       SendInput {left}
;       SendInput {Shift up}
;    }

    SendInput {Shift down}
    SendInput {Left %LengthValueDividedValue1%}
    SendInput {Shift up}

    ; StringReplace, this_color, this_color, `n,`r`n, All
    ; ClipSaved := Clipboard
    ; Clipboard := this_color
    ; Send ^v
    ; Clipboard := ClipSaved

    ; SendInput {Shift down}
    ; SendInput {Left %LengthValueDividedValue%}
    ; SendInput {Shift up}

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




; MsgBox, %Global_var_telling_if_CalledDirectly_or_Included%

;*******************
;*                 *
;*    Functions    *
;*                 *
;*******************


; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
   #include %A_ScriptDir%\AHKassociatedFiles\_Functions
   #include Edit.ahk
   #include Fnt.ahk
; }










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

;  if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
   #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Class_RichEdit.ahk
   #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Class_RichEditDlgs.ahk
   #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\RichEdit\RichEditOleCallback.ahk
; }




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



; ;-------------------------------------------------------------------------------
; TextLabelNoPicture_version_for_helpy(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName) {  ; hex RGB with spaces
; ;-------------------------------------------------------------------------------
;     FileName := A_Temp "\" Colour ".bmp"
;     Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
;         , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

;     ;---------------------------------------------------------------------------
;     Picture =
;     ;---------------------------------------------------------------------------
;         ( Join LTrim
;             42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
;             00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
;             00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
;             00 00 00 00 | 00 00
;         )

;     Picture .= SubStr(Colour, 7, 2)
;             .  SubStr(Colour, 4, 2)
;             .  SubStr(Colour, 3, 2) "00"
;     StringReplace, Picture, Picture, |,, All
;     StringReplace, Picture, Picture, %A_Space%,, All

;     Loop, % StrLen(Picture) // 2 {
;         StringLeft, Hex, Picture, 2
;         StringTrimLeft, Picture, Picture, 2
;         DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
;             , "Int", 1, "IntP", BytesWritten, "Int", 0)
;     }
;     DllCall("CloseHandle", "Int", Handle)
    
    

;     Gui, %ButtonNameOFGui%:Add, Picture, x%ButtonX% y%ButtonY% w%ButtonW% h%ButtonH% v%ButtonVariableName%, %FileName%

;     ; ButtonX += 4
;     ; ButtonY += 4

;     StringLen, LengthVar, ButtonStringName

;     ButtonX := ButtonX + (ButtonW / 2) - (LengthVar * 3)
;     ButtonY := ButtonY + (ButtonH / 2) - 7

;     ; Gui, %ButtonNameOFGui%:Add, Picture, %ButtonXCoordinate% %ButtonYCoordinate% , PictureLocationOnDrive
;     Gui, %ButtonNameOFGui%:Add, Text, x%ButtonX% y%ButtonY% cFFFFFF BackgroundTrans Center 0x200,%ButtonStringName%


;     ; Gui, 41: +LastFound
;     ; WinSet, Region, 0-0 w350 h30 R30-15

;     FileDelete, %FileName%
; }


GrayRoundButton_version_for_helpy(NameOFGui, Options, FunctionName, VariableName, hwndName, StringName) { 
    
    Gui, %NameOFGui%:Add, Button, %Options% g%FunctionName% v%VariableName% hwnd%hwndName%, %StringName%
    Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%hwndName%, Opt1, Opt2, , , Opt5)
}

GrayRoundButtonWithPicture_version_for_helpy(ButtonNameOFGui, ButtonXCoordinate, ButtonYCoordinate, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) { 
    



    Gui, %ButtonNameOFGui%:Add, Button, %ButtonXCoordinate% %ButtonYCoordinate% g%ButtonFunctionName% v%ButtonVariableName% hwnd%ButtonhwndName%, %ButtonStringName%
    Gui, %ButtonNameOFGui%:Add, Picture, xp-30 yp, %PictureLocationOnDrive%
    


    Opt1 := [0, 0x80333333, , "White", "8", "0x00333333", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%ButtonhwndName%, Opt1, Opt2, , , Opt5)
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableName_version_for_helpy(Options, Colour, VariableName) { ; hex RGB with spaces
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
41Gui_AddPicture_VariableNameExperimental_version_for_helpy(Options, Colour, VariableName) { ; hex RGB with spaces
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
42Gui_AddPicture_VariableName_version_for_helpy(Options, Colour, VariableName) { ; hex RGB with spaces
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
42Gui_AddPicture_VariableNameExperimental_version_for_helpy(Options, Colour, VariableName) { ; hex RGB with spaces
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
TextLabelWithpicture_version_for_helpy(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) {  ; hex RGB with spaces
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
TextLabelNoPicture_version_for_helpy(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName) {  ; hex RGB with spaces
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

RandomGenerationFunction_local_43Version(){
;MsgBox, % RandomStr()
;MsgBox, % RegExReplace(RandomStr(), "\W", "i") ; only alphanum.
ReturnString = % RegExReplace(RandomStr(), "\W", "i")
;IfWinActive, ahk_class AutoHotkeyGUI
;{WinClose ;
;}
;IfWinActive, ahk_class AutoHotkeyGUI
;{WinClose ;
;}
;gEditBox
return ReturnString
}
RandomStr_local_43Version(l = 16, i = 48, x = 122) { ; length, lowest and highest Asc value
    Loop, %l% {
        Random, r, i, x
        s .= Chr(r)
    }
    Return, s
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

CtlShowHide(ShowHide, Controls*) {
    Static K, V
    For K, V In Controls {
    Split := StrSplit(V, ",")
    Loop % Split.MaxIndex() {
    GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

RemoveToolTipClipboard_43ALL_IN_ONE()
{
SplashTextOff
}
