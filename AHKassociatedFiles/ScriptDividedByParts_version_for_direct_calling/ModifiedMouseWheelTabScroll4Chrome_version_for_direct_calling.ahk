;|MouseWheelTabScroll4Chrome||SEARCHINDICATOR|
;
;  __  __                       __          ___               _   _______    _        _____                _ _   _  _      _____ _
; |  \/  |                      \ \        / / |             | | |__   __|  | |      / ____|              | | | | || |    / ____| |
; | \  / | ___  _   _ ___  ___   \ \  /\  / /| |__   ___  ___| |    | | __ _| |__   | (___   ___ _ __ ___ | | | | || |_  | |    | |__  _ __ ___  _ __ ___   ___
; | |\/| |/ _ \| | | / __|/ _ \   \ \/  \/ / | '_ \ / _ \/ _ \ |    | |/ _` | '_ \   \___ \ / __| '__/ _ \| | | |__   _| | |    | '_ \| '__/ _ \| '_ ` _ \ / _ \
; | |  | | (_) | |_| \__ \  __/    \  /\  /  | | | |  __/  __/ |    | | (_| | |_) |  ____) | (__| | | (_) | | |    | |   | |____| | | | | | (_) | | | | | |  __/
; |_|  |_|\___/ \__,_|___/\___|     \/  \/   |_| |_|\___|\___|_|    |_|\__,_|_.__/  |_____/ \___|_|  \___/|_|_|    |_|    \_____|_| |_|_|  \___/|_| |_| |_|\___|
;

FastClipboardWMouseWheelSpace_41:
Gui, 41:Destroy

    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos
    previous_ID := 0
    k_Position = x+0 0
    WinGet, current_ID, ID, A
    k_Position = x+0 0
    global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
    OnMessage(0x0138, "41WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
    OnMessage(0x0133, "41WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
    OnMessage(0x0132, "41WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
    ; OnMessage(0x0200, "41WM_MOUSEMOVE")
    ; OnMessage(0x201, "41WM_LBUTTONDOWN")

    ; OnLoad()
    OnMessage(0x0083, "41WM_NCCALCSIZE")
    OnMessage(0x0086, "41WM_NCACTIVATE")
    OnMessage(0x0084, "41WM_NCHITTEST")

    Gui, 41:+LastFound +Resize -Caption -Border -DPIScale +MinSize800x400
    Gui, 41:Margin, 10, 10
    Gui, 41:Color, 000000

    Gui, 41:Add, Picture, v41BorderTop, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal.png
    Gui, 41:Add, Picture, v41BorderBottom, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 41:Add, Picture, v41BorderLeft, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 41:Add, Picture, v41BorderRight, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 41:Add, Picture, v41BtnBackN Hwnd41hBtnBackN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-normal.png
    Gui, 41:Add, Picture, v41BtnBackH Hwnd41hBtnBackH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-hover.png
    Gui, 41:Add, Picture, v41BtnBackP Hwnd41hBtnBackP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-pressed.png
    Gui, 41:Add, Picture, v41BtnCloseN Hwnd41hBtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
    Gui, 41:Add, Picture, v41BtnCloseH Hwnd41hBtnCloseH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-hover.png
    Gui, 41:Add, Picture, v41BtnCloseP Hwnd41hBtnCloseP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-pressed.png
    Gui, 41:Add, Picture, v41BtnMaxN Hwnd41hBtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
    Gui, 41:Add, Picture, v41BtnMaxH Hwnd41hBtnMaxH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-hover.png
    Gui, 41:Add, Picture, v41BtnMaxP Hwnd41hBtnMaxP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-pressed.png
    Gui, 41:Add, Picture, v41BtnRestoreN Hwnd41hBtnRestoreN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
    Gui, 41:Add, Picture, v41BtnRestoreH Hwnd41hBtnRestoreH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-hover.png
    Gui, 41:Add, Picture, v41BtnRestoreP Hwnd41hBtnRestoreP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-pressed.png
    Gui, 41:Add, Picture, v41BtnMinN Hwnd41hBtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
    Gui, 41:Add, Picture, v41BtnMinH Hwnd41hBtnMinH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-hover.png
    Gui, 41:Add, Picture, v41BtnMinP Hwnd41hBtnMinP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-pressed.png

    Gui, 41:Add, Picture, v41MenuHover Hwnd41hMenuHover Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover.png
    Gui, 41:Add, Picture, v41MenuPressed Hwnd41hMenuPressed Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-pressed.png
    Gui, 41:Add, Picture, v41MenuSelect Hwnd41hMenuSelect, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel.png
    Gui, 41:Add, Picture, v41MenuSelectPurple Hwnd41hMenuSelectPurple, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel-purple.png
    Gui, 41:Add, Picture, v41MenuAlternativeColour Hwnd41hMenuAlternativeColour, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-alternative-colour.png

    ; VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(41GuiHwnd, TME, 8)

    pic1Location = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\ahk-icon24x24.png

    Gui, 41:Font, s9, Segoe UI
    Gui, 41:Add, Text, x14 y8 vTitleText BackgroundTrans, 

    Gui, 41:Add, Text, v41WhiteLineNumberMain x10 yp+2 w1280 0x10

    global 41Gui2CommonlyUsedFunctionsBackground
    41Gui_AddPicture_VariableName_LocalMouseWheelTabScroll("x1 y34 w200 h300", "22 22 22", "41Gui2CommonlyUsedFunctionsBackground") ; background

    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 41, "20", "60", "200", "30","TESTMsgbox",CustomVariableControl2, "HBT1Helpy112", "Information:")

    Gui, 41:Add, Text, yp-8 xp+160 w550 h20 cWhite , You can paste parts of your clipboard very fast using the mouse wheel. 
    Gui, 41:Add, Text, yp+22 xp w550 h20 cWhite , The parts are separated by space and you paste the next or last word by going up or down. 
    Gui, 41:Add, Text, yp+20 xp w550 h20 cWhite , Copy while the first tick is selected and use the mouse wheel while the second teck is selected.

    Gui, 41:Add, Text, yp+60 xp-26 v41WhiteLineNumberLesser1 w1280 0x10
    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 41, "20", "140", "200", "30","TESTMsgbox",CustomVariableControl2, "HBT1Helpy112", "Check an option:")


    Gui, 41:Add, Checkbox , yp-6 xp+170 cWhite w130 h20 vHoldtoclick1, Copy text now, use 
    Gui, 41:Add, Edit, yp xp+130 w160 h20 vEditFieldForClipboardMain Hwnd41EditField, Space
    Gui, 41:Add, Text, yp+2 xp+170 w350 h20 cWhite , as a delimeter to separate parts of this text

    Gui, 41:Add, Checkbox , yp+40 xp-300 w350 h20 cWhite vHoldtoclick2, Use mouse scroll to quickly insert parts of the copied text

    Gui, 41:Add, Text, yp+60 xp-26 v41WhiteLineNumberLesser2 w1280 0x10
    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 41, "20", "280", "200", "30","TESTMsgbox",CustomVariableControl3, "HBT1Helpy113", "Clipboard:")

    Gui, 41:Add, Text, yp-10 xp+150 w300 h20 cWhite, Paste the clipboard into the text field bellow:
    Gui, 41:Add, Picture, yp xp+250 h34 w34 g41RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png
    Gui, 41:Add, Text, yp xp+50 w150 h20 cWhite, Position of the string list:
    Gui, 41:Add, Edit, yp x+10 w30 h20 vStringListPosition41,
    Gui, 41:Add, Picture, yp xp+50 h34 w34 g41RefreshPosition, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png

    GuiControl,41:, StringListPosition41, 0

    Gui, 41:Add, Edit, yp xp+200 w350 h600 r9 vEditFieldForClipboard, % Clipboard

    ; Gui, 41:Font, s18 cRed Bold, Verdana
 
    xpos := xpos
    ypos := ypos
    Gui, 41:Show, h600 w800 x640 y65, FastClipboardWMouseWheelSpace_41

    WinWaitNotActive, ahk_id %current_ID%
    previous_ID := current_ID
    OnMessage(0x114, "OnScroll") ; WM_HSCROLL
    Gui, +LastFound
    WinSet, Redraw ; 0x800000 is WS_BORDER.

return

#Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\41GuiConfig_version_for_direct_calling.ahk

FastClipboardWMouseWheelCustom_42:

Gui, 42:Destroy

    ListLines Off

    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos
    previous_ID := 0
    k_Position = x+0 0
    WinGet, current_ID, ID, A
    k_Position = x+0 0
    global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
    OnMessage(0x0138, "42WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
    OnMessage(0x0133, "42WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
    OnMessage(0x0132, "42WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
    ; OnMessage(0x0200, "41WM_MOUSEMOVE")
    ; OnMessage(0x201, "41WM_LBUTTONDOWN")

    ; OnLoad()
    OnMessage(0x0083, "42WM_NCCALCSIZE")
    OnMessage(0x0086, "42WM_NCACTIVATE")
    OnMessage(0x0084, "42WM_NCHITTEST")

    Gui,42: New, +Hwnd42hwnd +LastFound +Resize -Caption -Border -DPIScale +MinSize800x400
    ; Gui, 42:+LastFound +Resize -Caption -Border -DPIScale +MinSize800x400
    Gui, 42:Margin, 10, 10
    Gui, 42:Color, 000000

    Gui, 42:Add, Picture, v42BorderTop, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal.png
    Gui, 42:Add, Picture, v42BorderBottom, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 42:Add, Picture, v42BorderLeft, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 42:Add, Picture, v42BorderRight, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal.png
    Gui, 42:Add, Picture, v42BtnBackN Hwnd42hBtnBackN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-normal.png
    Gui, 42:Add, Picture, v42BtnBackH Hwnd42hBtnBackH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-hover.png
    Gui, 42:Add, Picture, v42BtnBackP Hwnd42hBtnBackP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-pressed.png
    Gui, 42:Add, Picture, v42BtnCloseN Hwnd42hBtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
    Gui, 42:Add, Picture, v42BtnCloseH Hwnd42hBtnCloseH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-hover.png
    Gui, 42:Add, Picture, v42BtnCloseP Hwnd42hBtnCloseP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-pressed.png
    Gui, 42:Add, Picture, v42BtnMaxN Hwnd42hBtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
    Gui, 42:Add, Picture, v42BtnMaxH Hwnd42hBtnMaxH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-hover.png
    Gui, 42:Add, Picture, v42BtnMaxP Hwnd42hBtnMaxP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-pressed.png
    Gui, 42:Add, Picture, v42BtnRestoreN Hwnd42hBtnRestoreN Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
    Gui, 42:Add, Picture, v42BtnRestoreH Hwnd42hBtnRestoreH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-hover.png
    Gui, 42:Add, Picture, v42BtnRestoreP Hwnd42hBtnRestoreP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-pressed.png
    Gui, 42:Add, Picture, v42BtnMinN Hwnd42hBtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
    Gui, 42:Add, Picture, v42BtnMinH Hwnd42hBtnMinH Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-hover.png
    Gui, 42:Add, Picture, v42BtnMinP Hwnd42hBtnMinP Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-pressed.png

    Gui, 42:Add, Picture, v42MenuHover Hwnd42hMenuHover Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover.png
    Gui, 42:Add, Picture, v42MenuPressed Hwnd42hMenuPressed Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-pressed.png
    Gui, 42:Add, Picture, v42MenuSelect Hwnd42hMenuSelect, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel.png
    Gui, 42:Add, Picture, v42MenuSelectPurple Hwnd42hMenuSelectPurple, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel-purple.png
    Gui, 42:Add, Picture, v42MenuAlternativeColour Hwnd42hMenuAlternativeColour, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-alternative-colour.png

    ; VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(41GuiHwnd, TME, 8)

    pic1Location = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\ahk-icon24x24.png

    ; Gui, 42:Font, s9, Segoe UI
    Gui, 42:Add, Text, x14 y8 vTitleText BackgroundTrans, 

    Gui, 42:Add, Text, v42WhiteLineNumberMain x10 yp+2 w1280 0x10

    global 42Gui2CommonlyUsedFunctionsBackground
    42Gui_AddPicture_VariableName_LocalMouseWheelTabScroll("x1 y34 w200 h300", "22 22 22", "42Gui2CommonlyUsedFunctionsBackground") ; background

    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 42, "20", "60", "200", "30","TESTMsgbox",CustomVariableControl2_42, "HBT1Helpy112", "Information:")

    Gui, 42:Add, Text, yp-8 xp+160 w550 h20 cWhite , You can paste parts of your clipboard very fast using the mouse wheel. 
    Gui, 42:Add, Text, yp+22 xp w550 h20 cWhite , The parts are separated by space and you paste the next or last word by going up or down. 
    Gui, 42:Add, Text, yp+20 xp w550 h20 cWhite , Copy while the first tick is selected and use the mouse wheel while the second teck is selected.

    Gui, 42:Add, Text, yp+60 xp-26 v42WhiteLineNumberLesser1 w1280 0x10
    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 42, "20", "140", "200", "30","TESTMsgbox",CustomVariableControl2_42, "HBT1Helpy112", "Check an option:")


    Gui, 42:Add, Checkbox , yp-6 xp+170 cWhite w130 h20 vHoldtoclick1_42, Copy text now, use 
    Gui, 42:Add, Edit, yp xp+130 w160 h20 vEditFieldForClipboardMain_42 +Hwnd42EditField_42,(((|||CustomDelimeter|||)))
    Gui, 42:Add, Text, yp+2 xp+170 w350 h20 cWhite , as a delimeter to separate parts of this text

    Gui, 42:Add, Checkbox , yp+40 xp-300 w350 h20 cWhite vHoldtoclick2_42, Use mouse scroll to quickly insert parts of the copied text

    Gui, 42:Add, Text, yp+60 xp-26 v42WhiteLineNumberLesser2 w1280 0x10
    TextLabelNoPicture_LocalMouseWheelTabScroll("33 33 33", 42, "20", "280", "200", "30","TESTMsgbox",CustomVariableControl3_42, "HBT1Helpy113", "Clipboard:")

    Gui, 42:Add, Text, yp-10 xp+150 w300 h20 cWhite, Paste the clipboard into the text field bellow:
    Gui, 42:Add, Picture, yp xp+250 h34 w34 g42RefreshButton, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png
    Gui, 42:Add, Text, yp xp+50 w150 h20 cWhite, Position of the string list:
    Gui, 42:Add, Edit, yp x+10 w30 h20 vStringListPosition42_42,
    Gui, 42:Add, Picture, yp xp+50 h34 w34 g42RefreshPosition, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\icons\\refresh-button2.png

    GuiControl,42:, StringListPosition42_42, 0

    Gui, 42:Font,% "s" . Fnt_GetMessageFontSize(),% Fnt_GetMessageFontName()
    ; Gui, 42:Add, Edit, yp xp+200 w350 h600 r9 vEditFieldForClipboard_42 hwndEditFieldForClipboard_42HWND, % Clipboard

    Gui, 42:Add, Edit, yp xp+200 w350 h600 r9 vEditFieldForClipboard_42 hwndEditFieldForClipboard_42HWND,
    
    Edit_SetText(EditFieldForClipboard_42HWND,"The Quick Brown Fox Jumps Over The Lazy Dog`r`n")
    
    ; Gui, 42:Add,Edit,hwndhEdit w400 r15


    ; Gui, 42:Font, s18 cRed Bold, Verdana
 
    xpos := xpos
    ypos := ypos
    Gui, 42:Show, h900 w900 x640 y65, FastClipboardWMouseWheelCustom_42

    WinWaitNotActive, ahk_id %current_ID%
    previous_ID := current_ID
    OnMessage(0x114, "OnScroll") ; WM_HSCROLL
    Gui, +LastFound
    WinSet, Redraw ; 0x800000 is WS_BORDER.

return

#Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\42GuiConfig_version_for_direct_calling.ahk

AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace_local(keyCounter, ReturnedStringThatNeedsToBeSeparated){
;    ReturnedStringThatNeedsToBeSeparated := Clipboard

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, " ")
    MaxValue := % ColorArray.MaxIndex()

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
        GuiControl,41:, StringListPosition41, %keyCounter%
        
    }

    if (keyCounter < 0) {
        keyCounter := 0
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
        GuiControl,41:, StringListPosition41, %keyCounter%
       
    }

    AbsValueDividedValue := % keyCounter
    this_color := % ColorArray[AbsValueDividedValue]
    LengthValueDividedValue := % StrLen(this_color)
    VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

    SetKeyDelay -1
    SetBatchLines -1

    StringReplace, this_color, this_color, `n,`r`n, All
    Clipboard := % this_color
    SendInput ^v

    ; 41StringListPositionFunction()
    ; GoSub, 41StringListPositionLabel

    TimeClipboardVariable := LengthValueDividedValue * -15
    SplashTextOn,,,%AbsValueDividedValue%,
    SetTimer, RemoveToolTipClipboard_LocalMouseWheelTabScroll, %TimeClipboardVariable%

    SendInput {Shift down}
    SendInput {Left %LengthValueDividedValue%}
    SendInput {Shift up}

}

AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_local(keyCounter, ReturnedStringThatNeedsToBeSeparated){
;    ReturnedStringThatNeedsToBeSeparated := Clipboard

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, EditFieldForClipboardMain_42

; StringReplace, ReturnedStringThatNeedsToBeSeparated, ReturnedStringThatNeedsToBeSeparated, `n,`r`n, All

    ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, Edit1, FastClipboardWMouseWheelCustom_42


    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, 42:, EditFieldForClipboardMain_42

    ; OutputVar_For_EditFieldForClipboardMain_42 := ControlGetText("EditFieldForClipboardMain_42", "FastClipboardWMouseWheelCustom_42")

    ; GuiControlGet
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42, 42:EditFieldForClipboardMain_42

    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42,, 42:EditFieldForClipboardMain_42

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, EditFieldForClipboardMain_42,FastClipboardWMouseWheelCustom_42
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42, 41:, EditFieldForClipboardMain_42

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, , % 42EditField_42

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_42,Text,, 42:EditFieldForClipboardMain_42,

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_42,, 42:EditFieldForClipboardMain_42
    ; ControlGet, 42, OutputVar_For_EditFieldForClipboardMain_42,EditFieldForClipboardMain_42

    ; MsgBox % OutputVar_For_EditFieldForClipboardMain_42

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, OutputVar_For_EditFieldForClipboardMain_42)
    MaxValue := % ColorArray.MaxIndex()

    ; MsgBox, %MaxValue%

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        
        GuiControl,42:, StringListPosition42_42, %keyCounter%
    }

    if (keyCounter < 0) {
        keyCounter := 0
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        
        
        GuiControl,42:, StringListPosition42_42, %keyCounter%
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


    SendInput ^v

    ; 41StringListPositionFunction()
    ; GoSub, 41StringListPositionLabel

    TimeClipboardVariable := LengthValueDividedValue1 * -5
    SplashTextOn,,,%AbsValueDividedValue%,
    SetTimer, RemoveToolTipClipboard_LocalMouseWheelTabScroll, %TimeClipboardVariable%

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

ClipboardWScrollSpacePlus_local(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, 41
    ++keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41

    GuiControl,41:, StringListPosition41, %keyCounter%
    

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace_local(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := % ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollSpaceMinus_local(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    --keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41

    GuiControl,41:, StringListPosition41, %keyCounter%
    

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace_local(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollCustomPlus_local(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    ++keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42

    
    GuiControl,42:, StringListPosition42_42, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_local(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollCustomMinus_local(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    --keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42

    GuiControl,42:, StringListPosition42_42, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_local(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ChromeTabsMouseWheelScrolling_local(){
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

resetClipboardTime41()
{
    IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
}

resetClipboardTime42()
{
    IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
}


; ;-------------------------------------------------------------------------------
; 41Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
; ;-------------------------------------------------------------------------------
;     FileName := A_Temp "\" Colour ".bmp"
;     Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
;         , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

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
;             .  SubStr(Colour, 1, 2) "00"
;     StringReplace, Picture, Picture, |,, All
;     StringReplace, Picture, Picture, %A_Space%,, All

;     Loop, % StrLen(Picture) // 2 {
;         StringLeft, Hex, Picture, 2
;         StringTrimLeft, Picture, Picture, 2
;         DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
;             , "Int", 1, "IntP", BytesWritten, "Int", 0)
;     }
;     DllCall("CloseHandle", "Int", Handle)
;     Gui, 41:Add, Picture, v%VariableName% %Options%, %FileName%
;     FileDelete, %FileName%
; }

GrayRoundButton_local_ModifiedMouseWheel(NameOFGui, Options, FunctionName, VariableName, hwndName, StringName) { 
    
    Gui, %NameOFGui%:Add, Button, %Options% g%FunctionName% v%VariableName% hwnd%hwndName%, %StringName%
    Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%hwndName%, Opt1, Opt2, , , Opt5)
}

GrayRoundButtonWithPicture_local_ModifiedMouseWheel(ButtonNameOFGui, ButtonXCoordinate, ButtonYCoordinate, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) { 
    



    Gui, %ButtonNameOFGui%:Add, Button, %ButtonXCoordinate% %ButtonYCoordinate% g%ButtonFunctionName% v%ButtonVariableName% hwnd%ButtonhwndName%, %ButtonStringName%
    Gui, %ButtonNameOFGui%:Add, Picture, xp-30 yp, %PictureLocationOnDrive%
    


    Opt1 := [0, 0x80333333, , "White", "8", "0x00333333", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%ButtonhwndName%, Opt1, Opt2, , , Opt5)
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableName_LocalMouseWheelTabScroll(Options, Colour, VariableName) { ; hex RGB with spaces
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
41Gui_AddPicture_VariableNameExperimental_LocalMouseWheelTabScroll(Options, Colour, VariableName) { ; hex RGB with spaces
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
42Gui_AddPicture_VariableName_LocalMouseWheelTabScroll(Options, Colour, VariableName) { ; hex RGB with spaces
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
42Gui_AddPicture_VariableNameExperimental_LocalMouseWheelTabScroll(Options, Colour, VariableName) { ; hex RGB with spaces
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
TextLabelWithpicture_LocalMouseWheelTabScroll(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) {  ; hex RGB with spaces
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
TextLabelNoPicture_LocalMouseWheelTabScroll(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName) {  ; hex RGB with spaces
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

RandomGenerationFunction_LocalMouseWheelTabScroll(){
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

RandomStr_LocalMouseWheelTabScroll(l = 16, i = 48, x = 122) { ; length, lowest and highest Asc value
    Loop, %l% {
        Random, r, i, x
        s .= Chr(r)
    }
    Return, s
}

RemoveToolTipClipboard_LocalMouseWheelTabScroll()
{
SplashTextOff
}

;*******************
;*                 *
;*    Functions    *
;*                 *
;*******************
#include %A_ScriptDir%\AHKassociatedFiles\_Functions
#include Edit.ahk
#include Fnt.ahk
