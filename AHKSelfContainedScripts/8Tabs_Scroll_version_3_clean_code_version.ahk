global variable_to_move_to_the_right_of_right_corner = 17

if (A_PtrSize = 8) {
   Run, "C:\Program Files\AutoHotkey\AutoHotkeyU32.exe" %A_ScriptFullPath%
   ExitApp
}   

OnMessage(0x115, "Example_with_tabs_OnScroll") ; WM_VSCROLL
OnMessage(0x114, "Example_with_tabs_OnScroll") ; WM_HSCROLL

Gui Example_with_tabs_:Destroy

global var_to_check_if_WhiteLineNumberMain2_exists = 0
global var_to_check_if_WhiteLineNumberMain3_exists = 0
global var_to_check_if_WhiteLineNumberMain4_exists = 0
global var_to_check_if_WhiteLineNumberMain5_exists = 0
global var_to_check_if_WhiteLineNumberMain6_exists = 0
global var_to_check_if_WhiteLineNumberMain7_exists = 0
global var_to_check_if_WhiteLineNumberMain8_exists = 0

CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
previous_ID := 0
k_Position = x+0 0


Gui, Example_with_tabs_:+LastFound +Resize -Caption -Border -DPIScale +MinSize600x400 +HwndGuiHwnd
; Gui, Example_with_tabs_:+LastFound +Resize -DPIScale +MinSize600x400 +HwndGuiHwnd
Gui, Example_with_tabs_:Margin, 10, 10
Gui, Example_with_tabs_:Color, 000000

MenuHoverLocation                = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover.png
MenuPressedLocation              = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-pressed.png
MenuSelectLocation               = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel.png
MenuSelectPurpleLocation         = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel-purple.png
MenuAlternativeColourLocation    = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover-alternative-colour.png
BorderTopLocation                = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
BorderBottomLocation             = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
BorderLeftLocation               = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
BorderRightLocation              = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
BtnBackNLocation                 = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-normal.png
BtnBackHLocation                 = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-hover.png
BtnBackPLocation                 = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-pressed.png
BtnCloseNLocation                = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-normal.png
BtnCloseHLocation                = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-hover.png
BtnClosePLocation                = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-pressed.png
BtnMaxNLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-normal.png
BtnMaxHLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-hover.png
BtnMaxPLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-pressed.png
BtnRestoreNLocation              = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-normal.png
BtnRestoreHLocation              = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-hover.png
BtnRestorePLocation              = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-pressed.png
BtnMinNLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-normal.png
BtnMinHLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-hover.png
BtnMinPLocation                  = %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-pressed.png

Gui, Example_with_tabs_:Add, Picture, vMenuHover HwndhMenuHover Hidden1,                        %MenuHoverLocation%
Gui, Example_with_tabs_:Add, Picture, vMenuPressed HwndhMenuPressed Hidden1,                    %MenuPressedLocation%
Gui, Example_with_tabs_:Add, Picture, vMenuSelect HwndhMenuSelect,                              %MenuSelectLocation%
Gui, Example_with_tabs_:Add, Picture, vMenuSelectPurple HwndhMenuSelectPurple,                  %MenuSelectPurpleLocation%
Gui, Example_with_tabs_:Add, Picture, vMenuAlternativeColour HwndhMenuAlternativeColour,        %MenuAlternativeColourLocation%
Gui, Example_with_tabs_:Add, Picture, vBorderTop,                                               %BorderTopLocation%
Gui, Example_with_tabs_:Add, Picture, vBorderBottom,                                            %BorderBottomLocation%
Gui, Example_with_tabs_:Add, Picture, vBorderLeft,                                              %BorderLeftLocation%
Gui, Example_with_tabs_:Add, Picture, vBorderRight,                                             %BorderRightLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnBackN HwndhBtnBackN Hidden1,                          %BtnBackNLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnBackH HwndhBtnBackH Hidden1,                          %BtnBackHLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnBackP HwndhBtnBackP Hidden1,                          %BtnBackPLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnCloseN HwndhBtnCloseN,                                %BtnCloseNLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnCloseH HwndhBtnCloseH Hidden1,                        %BtnCloseHLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnCloseP HwndhBtnCloseP Hidden1,                        %BtnClosePLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMaxN HwndhBtnMaxN,                                    %BtnMaxNLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMaxH HwndhBtnMaxH Hidden1,                            %BtnMaxHLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMaxP HwndhBtnMaxP Hidden1,                            %BtnMaxPLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreN HwndhBtnRestoreN Hidden1,                    %BtnRestoreNLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreH HwndhBtnRestoreH Hidden1,                    %BtnRestoreHLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreP HwndhBtnRestoreP Hidden1,                    %BtnRestorePLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMinN HwndhBtnMinN,                                    %BtnMinNLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMinH HwndhBtnMinH Hidden1,                            %BtnMinHLocation%
Gui, Example_with_tabs_:Add, Picture, vBtnMinP HwndhBtnMinP Hidden1,                            %BtnMinPLocation%

Gui, Example_with_tabs_:Color, 000000, FFFFFF
xpos := xpos
ypos := ypos
; Gui, Example_with_tabs_:Show, x35 y45 w1280 h900, Helpy

Gui, Example_with_tabs_:Font, s11, Segoe UI
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText1 HwndhMenuText1 BackgroundTrans 0x200 c9400D3, % "       Helpy"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText2 HwndhMenuText2 BackgroundTrans 0x200, % "  Commonly used functions"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText3 HwndhMenuText3 BackgroundTrans 0x200, % "  Self contained scripts"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText4 HwndhMenuText4 BackgroundTrans 0x200, % "   Tagging"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText5 HwndhMenuText5 BackgroundTrans 0x200, % "   Mouse Configuration"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText6 HwndhMenuText6 BackgroundTrans 0x200, % "   Tscripts"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText7 HwndhMenuText7 BackgroundTrans 0x200, % "   Multilingual Scrips"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText8 HwndhMenuText8 BackgroundTrans 0x200, % "   Experiments"

Gui, Example_with_tabs_:Add, Tab2, vTab x0 y0 w0 h0 +Theme -Wrap AltSubmit Choose1, Tab1|Tab2|Tab3|Tab4|Tab5|Tab6|Tab7|Tab8






; ------------------------------------------------------------------------------------------------------------------------------
; This is where tab 1 goes
; ------------------------------------------------------------------------------------------------------------------------------

Gui, Tab, 1

Gui, Example_with_tabs_:Font, s14, Segoe UI
Gui, Example_with_tabs_:Add, Text, cWhite x1 y50  BackgroundTrans c9400D3, 
Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain1 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 , 
 
Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  1111111111111111


; UpdateScrollBars(A_Gui, A_GuiWidth, A_GuiHeight)
; Gui, Example_with_tabs_:+Resize +0x300000 ; WS_VSCROLL | WS_HSCROLL


I := 0
Gui,  Example_with_tabs_:Add, Text, w370 h20 0x200 cFFFFFF Section, % "Edit " . ++I
Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
Loop, 12 {
Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 cFFFFFF 0x200, % "Edit " . ++I
Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
}
Gui,  Example_with_tabs_:Add, Text, ys wp h20 0x200 cFFFFFF, % "Edit " . ++I
Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
Loop, 12 {
Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 0x200 cFFFFFF, % "Edit " . ++I
Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
}



Gui, Example_with_tabs_:Add, Text, cWhite xp yp+6 w1 h20 , 


; WinGet, currentWindow, ID, Helpy
; WinSet, Style, -0x50000, ahk_id %currentWindow%




global gui_width := 1280
global gui_height := 900
Gui, Example_with_tabs_:Show, x35 y45 w%gui_width% h%gui_height%, Helpy



GuiControlGet, MenuText1PosInitial , Example_with_tabs_:Pos, MenuText1 
GuiControlGet, MenuText2PosInitial , Example_with_tabs_:Pos, MenuText2
GuiControlGet, MenuText3PosInitial , Example_with_tabs_:Pos, MenuText3 
GuiControlGet, MenuText4PosInitial , Example_with_tabs_:Pos, MenuText4
GuiControlGet, MenuText5PosInitial , Example_with_tabs_:Pos, MenuText5
GuiControlGet, MenuText6PosInitial , Example_with_tabs_:Pos, MenuText6
GuiControlGet, MenuText7PosInitial , Example_with_tabs_:Pos, MenuText7
GuiControlGet, MenuText8PosInitial , Example_with_tabs_:Pos, MenuText8

GuiControl, Example_with_tabs_:MoveDraw, MenuSelect, % "x" 10 " y" 1 " w" 80 " h" 4
GuiControl, Example_with_tabs_:MoveDraw, MenuSelectPurple, % "x" 10 " y" 1 " w" 80 " h" 4

GuiControlGet, MenuText1Pos, Example_with_tabs_:Pos, MenuText1  




GuiControl,Example_with_tabs_:MoveDraw, MenuText1, % "x" 1 " y" 1 " w" MenuText1PosInitialW+30 " h" 48
GuiControlGet, MenuText1Pos, Example_with_tabs_:Pos, MenuText1  
GuiControl, Example_with_tabs_:MoveDraw, MenuText2, % "x" MenuText1PosX + MenuText1PosW " y" 1 " w" MenuText2PosInitialW+10 " h" 48
GuiControlGet, MenuText2Pos, Example_with_tabs_:Pos, MenuText2  
GuiControl, Example_with_tabs_:MoveDraw, MenuText3, % "x" MenuText2PosX + MenuText2PosW " y" 1 " w" MenuText3PosInitialW+10 " h" 48
GuiControlGet, MenuText3Pos, Example_with_tabs_:Pos, MenuText3  
GuiControl, Example_with_tabs_:MoveDraw, MenuText4, % "x" MenuText3PosX + MenuText3PosW " y" 1 " w" MenuText4PosInitialW+10 " h" 48
GuiControlGet, MenuText4Pos, Example_with_tabs_:Pos, MenuText4
GuiControl, Example_with_tabs_:MoveDraw, MenuText5, % "x" MenuText4PosX + MenuText4PosW " y" 1 " w" MenuText5PosInitialW+10 " h" 48
GuiControlGet, MenuText5Pos, Example_with_tabs_:Pos, MenuText5  
GuiControl, Example_with_tabs_:MoveDraw, MenuText6, % "x"  MenuText5PosX + MenuText5PosW " y" 1 " w" MenuText6PosInitialW+10 " h" 48
GuiControlGet, MenuText6Pos, Example_with_tabs_:Pos, MenuText6  
GuiControl, Example_with_tabs_:MoveDraw, MenuText7, % "x"  MenuText6PosX + MenuText6PosW " y" 1 " w" MenuText7PosInitialW+10 " h" 48
GuiControlGet, MenuText7Pos, Example_with_tabs_:Pos, MenuText7 
GuiControl, Example_with_tabs_:MoveDraw, MenuText8, % "x"  MenuText7PosX + MenuText7PosW " y" 1 " w" MenuText8PosInitialW+10 " h" 48

WinGet, currentWindow, ID, Helpy
WinSet, Style, -0x50000, ahk_id %currentWindow%


Gui, Example_with_tabs_:+LastFound
GroupAdd, MyGui, % "ahk_id " . WinExist()


    Example_with_tabs_CtlShowHide("Hide", "MenuHover")
    ; Example_with_tabs_CtlShowHide("Hide", "MenuPressed"), Hover := 0

return


#IfWinActive ahk_group MyGui

WheelUp::
WheelDown::
+WheelUp::
+WheelDown::

    OnScrollMouseWheel(InStr(A_ThisHotkey,"Down") ? 1 : 0, 0, GetKeyState("Shift") ? 0x114 : 0x115, WinExist())
return
#IfWinActive

; UpdateScrollBars(GuiNum, GuiWidth, GuiHeight)
; {

;     static SIF_RANGE=0x1, SIF_PAGE=0x2, SIF_DISABLENOSCROLL=0x8, SB_HORZ=0, SB_VERT=1

;     ; GuiNum := Example_with_tabs_

;     ; Gui, %GuiNum%:Default
;     ; Gui, %GuiNum%:+LastFound
   
;     ; Calculate scrolling area.
;     Left := Top := 9999
;     Right := Bottom := 0
;     WinGet, ControlList, ControlList
;     Loop, Parse, ControlList, `n
;     {
;         GuiControlGet, c, %GuiNum%:Pos, %A_LoopField%
;         if (cX < Left)
;             Left := cX
;         if (cY < Top)
;             Top := cY
;         if (cX + cW > Right)
;             Right := cX + cW
;         if (cY + cH > Bottom)
;             Bottom := cY + cH
;     }
;     Left -= 8
;     Top -= 8
;     Right += 8
;     Bottom += 8
;     ScrollWidth := Right-Left
;     ScrollHeight := Bottom-Top
   
;     ; Initialize SCROLLINFO.
;     VarSetCapacity(si, 28, 0)
;     NumPut(28, si) ; cbSize
;     NumPut(SIF_RANGE | SIF_PAGE, si, 4) ; fMask
   
;     ; Update horizontal scroll bar.
;     NumPut(ScrollWidth, si, 12) ; nMax
;     NumPut(GuiWidth, si, 16) ; nPage
;     DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_HORZ, "uint", &si, "int", 1)
   
;     ; Update vertical scroll bar.
; ;     NumPut(SIF_RANGE | SIF_PAGE | SIF_DISABLENOSCROLL, si, 4) ; fMask
;     NumPut(ScrollHeight, si, 12) ; nMax
;     NumPut(GuiHeight, si, 16) ; nPage
;     DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_VERT, "uint", &si, "int", 1)
   
;     if (Left < 0 && Right < GuiWidth)
;         x := Abs(Left) > GuiWidth-Right ? GuiWidth-Right : Abs(Left)
;     if (Top < 0 && Bottom < GuiHeight)
;         y := Abs(Top) > GuiHeight-Bottom ? GuiHeight-Bottom : Abs(Top)
;     if (x || y)
;         DllCall("ScrollWindow", "uint", WinExist(), "int", x, "int", y, "uint", 0, "uint", 0)

; }

UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing(GuiNum, GuiWidth, GuiHeight)
{

    static SIF_RANGE=0x1, SIF_PAGE=0x2, SIF_DISABLENOSCROLL=0x8, SB_HORZ=0, SB_VERT=1

    ; GuiNum := Example_with_tabs_

    ; Gui, %GuiNum%:Default
    ; Gui, %GuiNum%:+LastFound
   
    ; Calculate scrolling area.
    Left := Top := 9999
    Right := Bottom := 0
    WinGet, ControlList, ControlList
    Loop, Parse, ControlList, `n
    {
        GuiControlGet, c, %GuiNum%:Pos, %A_LoopField%
        if (cX < Left)
            Left := cX
        if (cY < Top)
            Top := cY
        if (cX + cW > Right)
            Right := cX + cW
        if (cY + cH > Bottom)
            Bottom := cY + cH
    }
    Left -= 8
    Top -= 0
    Right += 8
    Bottom += 8
    ScrollWidth := Right-Left
    ScrollHeight := Bottom-Top
   
    ; Initialize SCROLLINFO.
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_RANGE | SIF_PAGE, si, 4) ; fMask
   
    NumPut(ScrollHeight, si, 12) ; nMax
    NumPut(GuiHeight, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_VERT, "uint", &si, "int", 1)
   
    ; MsgBox, %Bottom% %Right%

    ; if (Left < 0 && Right < GuiWidth)
    ;     x := Abs(Left) > GuiWidth-Right ? GuiWidth-Right : Abs(Left)
    if (Top < 0 && Bottom < GuiHeight)
        y := Abs(Top) > GuiHeight-Bottom ? GuiHeight-Bottom : Abs(Top)
    if (x || y)
        DllCall("ScrollWindow", "uint", WinExist(), "int", x, "int", y, "uint", 0, "uint", 0)

}


UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing_ScrollHeight_var_function(GuiNum, GuiWidth, GuiHeight, ScrollHeight)
{

    static SIF_RANGE=0x1, SIF_PAGE=0x2, SIF_DISABLENOSCROLL=0x8, SB_HORZ=0, SB_VERT=1

    ; GuiNum := Example_with_tabs_

    ; Gui, %GuiNum%:Default
    ; Gui, %GuiNum%:+LastFound
   
    ; Calculate scrolling area.
    Left := Top := 9999
    Right := Bottom := 0
    WinGet, ControlList, ControlList
    Loop, Parse, ControlList, `n
    {
        GuiControlGet, c, %GuiNum%:Pos, %A_LoopField%
        if (cX < Left)
            Left := cX
        if (cY < Top)
            Top := cY
        if (cX + cW > Right)
            Right := cX + cW
        if (cY + cH > Bottom)
            Bottom := cY + cH
    }
    Left -= 8
    Top -= 0
    Right += 8
    Bottom += 8
    ScrollWidth := Right-Left
    ; ScrollHeight := Bottom-Top
   
    ; Initialize SCROLLINFO.
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_RANGE | SIF_PAGE, si, 4) ; fMask
   
    NumPut(ScrollHeight, si, 12) ; nMax
    NumPut(GuiHeight, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_VERT, "uint", &si, "int", 1)
   
    ; MsgBox, %Bottom% %Right%

    ; if (Left < 0 && Right < GuiWidth)
    ;     x := Abs(Left) > GuiWidth-Right ? GuiWidth-Right : Abs(Left)
    if (Top < 0 && Bottom < GuiHeight)
        y := Abs(Top) > GuiHeight-Bottom ? GuiHeight-Bottom : Abs(Top)
    if (x || y)
        DllCall("ScrollWindow", "uint", WinExist(), "int", x, "int", y, "uint", 0, "uint", 0)

}

OnScrollMouseWheel(wParam, lParam, msg, hwnd)
{
    static SIF_ALL=0x17, SCROLL_STEP=10
   
    bar := msg=0x115 ; SB_HORZ=0, SB_VERT=1
   
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_ALL, si, 4) ; fMask
    if !DllCall("GetScrollInfo", "uint", hwnd, "int", bar, "uint", &si)
        return
   
    VarSetCapacity(rect, 16)
    DllCall("GetClientRect", "uint", hwnd, "uint", &rect)

    new_pos := NumGet(si, 20) ; nPos
   
    action := wParam & 0xFFFF
    if action = 0 ; SB_LINEUP
        new_pos -= SCROLL_STEP
    else if action = 1 ; SB_LINEDOWN
        new_pos += SCROLL_STEP
    else if action = 2 ; SB_PAGEUP
        new_pos -= NumGet(rect, 12, "int") - SCROLL_STEP
    else if action = 3 ; SB_PAGEDOWN
        new_pos += NumGet(rect, 12, "int") - SCROLL_STEP
    else if (action = 5 || action = 4) ; SB_THUMBTRACK || SB_THUMBPOSITION
        new_pos := wParam>>16
    else if action = 6 ; SB_TOP
        new_pos := NumGet(si, 8, "int") ; nMin
    else if action = 7 ; SB_BOTTOM
        new_pos := NumGet(si, 12, "int") ; nMax
    else
        return
   
    min := NumGet(si, 8, "int") ; nMin
    max := NumGet(si, 12, "int") - NumGet(si, 16) ; nMax-nPage
    new_pos := new_pos > max ? max : new_pos
    new_pos := new_pos < min ? min : new_pos
   
    old_pos := NumGet(si, 20, "int") ; nPos
   
    x := y := 0
    if (bar = 0) ; SB_HORZ
    {
        x := old_pos-new_pos
    }
    else
    {
        y := old_pos-new_pos

        if(y<0)
        {
            GuiControl, Example_with_tabs_:MoveDraw, BorderTop        , % " y" y + 20
            GuiControl, Example_with_tabs_:MoveDraw, BorderBottom     , % " y" y + gui_height + 12 + 1 + 20
            GuiControl, Example_with_tabs_:MoveDraw, BorderLeft       , % " y" y - 200 "h" y + gui_height + 300 + 20
        }
        else if(y>0)
        {
            GuiControl, Example_with_tabs_:MoveDraw, BorderTop        , % " y" y - 20
            GuiControl, Example_with_tabs_:MoveDraw, BorderBottom     , % " y" y + gui_height + 12 + 1 - 20
            GuiControl, Example_with_tabs_:MoveDraw, BorderLeft       , % " y" y - 200 "h" y + gui_height + 300 + 20
        }
    }
    
    ; Scroll contents of window and invalidate uncovered area.
    DllCall("ScrollWindow", "uint", hwnd, "int", x, "int", y, "uint", 0, "uint", 0)
   
    ; Update scroll bar.
    NumPut(new_pos, si, 20, "int") ; nPos
    DllCall("SetScrollInfo", "uint", hwnd, "int", bar, "uint", &si, "int", 1)


}


Example_with_tabs_OnScroll(wParam, lParam, msg, hwnd)
{
    static SIF_ALL=0x17, SCROLL_STEP=10
   
    bar := msg=0x115 ; SB_HORZ=0, SB_VERT=1
   
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_ALL, si, 4) ; fMask
    if !DllCall("GetScrollInfo", "uint", hwnd, "int", bar, "uint", &si)
        return
   
    VarSetCapacity(rect, 16)
    DllCall("GetClientRect", "uint", hwnd, "uint", &rect)

    new_pos := NumGet(si, 20) ; nPos
   
    action := wParam & 0xFFFF
    if action = 0 ; SB_LINEUP
        new_pos -= SCROLL_STEP
    else if action = 1 ; SB_LINEDOWN
        new_pos += SCROLL_STEP
    else if action = 2 ; SB_PAGEUP
        new_pos -= NumGet(rect, 12, "int") - SCROLL_STEP
    else if action = 3 ; SB_PAGEDOWN
        new_pos += NumGet(rect, 12, "int") - SCROLL_STEP
    else if (action = 5 || action = 4) ; SB_THUMBTRACK || SB_THUMBPOSITION
        new_pos := wParam>>16
    else if action = 6 ; SB_TOP
        new_pos := NumGet(si, 8, "int") ; nMin
    else if action = 7 ; SB_BOTTOM
        new_pos := NumGet(si, 12, "int") ; nMax
    else
        return
   
    min := NumGet(si, 8, "int") ; nMin
    max := NumGet(si, 12, "int") - NumGet(si, 16) ; nMax-nPage
    new_pos := new_pos > max ? max : new_pos
    new_pos := new_pos < min ? min : new_pos
   
    old_pos := NumGet(si, 20, "int") ; nPos
   
    x := y := 0
    if (bar = 0) ; SB_HORZ
    {
        x := old_pos-new_pos
    }
    else
    {
        y := old_pos-new_pos
    }
    ; Scroll contents of window and invalidate uncovered area.
    DllCall("ScrollWindow", "uint", hwnd, "int", x, "int", y, "uint", 0, "uint", 0)
   
    ; Update scroll bar.
    NumPut(new_pos, si, 20, "int") ; nPos
    DllCall("SetScrollInfo", "uint", hwnd, "int", bar, "uint", &si, "int", 1)

    GuiControl, Example_with_tabs_:MoveDraw, BorderLeft       , % " y" y "h" y + A_GuiHeight
    GuiControl, Example_with_tabs_:MoveDraw, BorderTop        , % " y" y
    GuiControl, Example_with_tabs_:MoveDraw, BorderBottom     , % " y" y + gui_height + 12 + 1
}



GuiClose: 
ExitSub:
; MsgBox, "ffff"
    ExitApp
return

Example_with_tabs_GuiSize:


    GuiControl, Example_with_tabs_:MoveDraw, BorderTop, % "x" 1 " y" 0 " w" A_GuiWidth - 2 " h" 1
    GuiControl, Example_with_tabs_:MoveDraw, BorderBottom, % "x" 1 " y" A_GuiHeight - 1 " w" A_GuiWidth - 2 " h" 1
    GuiControl, Example_with_tabs_:MoveDraw, BorderLeft, % "x" 0 " y" 0 " w" 1 " h" A_GuiHeight
    GuiControl, Example_with_tabs_:MoveDraw, BorderRight, % "x" A_GuiWidth - 1 " y" 0 " w" 1 " h" A_GuiHeight

    GuiControl, Example_with_tabs_:MoveDraw, BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31

    GuiControl, Example_with_tabs_:MoveDraw, BtnMinN, % "x" (A_GuiWidth - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMinH, % "x" (A_GuiWidth - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMinP, % "x" (A_GuiWidth - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxN, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxH, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxP, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreN, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreH, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreP, % "x" (A_GuiWidth - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseN, % "x" (A_GuiWidth - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseH, % "x" (A_GuiWidth - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseP, % "x" (A_GuiWidth - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, Gui3CommonlyUsedFunctionsBackground, % "x" 1 " y" 1 " w" (A_GuiWidth - 1) - 138 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, Gui2CommonlyUsedFunctionsBackground, % "x" 1 " y" 34 " w" 226 " h" (A_GuiWidth - 4) - 31
    GuiControl, Example_with_tabs_:MoveDraw, MenuHover, % "x" 1 " y" 1 " w" A_GuiWidth " h" 48
    GuiControl, Example_with_tabs_:MoveDraw, MenuPressed, % "x" 1 " y" 1 " w" A_GuiWidth " h" 48
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumber2, % "x" 10 " y" 108 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain1, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain2, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain3, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain4, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain5, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain6, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain7, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain8, % "x" 10 " y" 52 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain, % "x" 10 " y" 32 " w" A_GuiWidth - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberLesser1, % "x" 230 " y" 120 " w" A_GuiWidth - 236 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberLesser2, % "x" 230 " y" 260 " w" A_GuiWidth - 236 " h" 2 

    Example_with_tabs_CtlShowHide("Hide", "MenuHover")
    
return

Example_with_tabs_GuiRestore() {
    WinRestore
    Example_with_tabs_CtlShowHide("Hide", "BtnRestoreN,BtnRestoreH,BtnRestoreP")
    Example_with_tabs_CtlShowHide("Show", "BtnMaxN")

}

Example_with_tabs_GuiMaximize() {
    WinMaximize
    Example_with_tabs_CtlShowHide("Hide", "BtnMaxN,BtnMaxH,BtnMaxP")
    Example_with_tabs_CtlShowHide("Show", "BtnRestoreN")
}

Example_with_tabs_CtlShowHide(ShowHide, Controls*) {
    Static K, V

    

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            ; MsgBox, % Split[A_Index]
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

Example_with_tabs_WWM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    
    hit_left    := x <  gX+border_size
    hit_right   := x >= gX+gW-border_size
    hit_top     := y <  gY+border_size
    hit_bottom  := y >= gY+gH-border_size

    if hit_bottom
    {
        if hit_left
        MsgBox, "hit_left"
            ; return 0x10
        else if hit_right
            return "0x" (HL ? "D" : HR ? "E" : "C")
            return "0x" (HL ? "10" : HR ? "11" : "F")
    }
}

Example_with_tabs_WWM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    ; if A_Gui
        ; return 0    ; Sizes the client area to fill the entire window.
    ; return (A_Gui ? 1 : "")
    if A_Gui
        return 1
}

Example_with_tabs_WWM_NCHITTEST(wParam, lParam, Msg, Hwnd) {

    ; MsgBox, %lParam%

    if A_Gui
        return 1

    static border_size = 6
    
    if !A_Gui
        return
    
    WinGetPos, gX, gY, gW, gH
    
    x := lParam<<48>>48, y := lParam<<32>>48
    
    hit_left    := x <  gX+border_size
    hit_right   := x >= gX+gW-border_size
    hit_top     := y <  gY+border_size
    hit_bottom  := y >= gY+gH-border_size

    ; return 16
    
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

}

Example_with_tabs_WWM_LBUTTONDOWN(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0201, "Example_with_tabs_WWM_LBUTTONDOWN")

    ; GuiControlGet, MenuPos, Example_with_tabs_:Pos, % MouseCtrl
    ; GuiControl, Example_with_tabs_:MoveDraw, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH
    ; GuiControl, Example_with_tabs_:MoveDraw, MenuPressed, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH


    ; Example_with_tabs_CtlShowHide("Hide", "MenuHover")

    If (MouseCtrl ~= hBtnBackP "|" hBtnMinP "|" hBtnMaxP "|" hBtnRestoreP "|" hBtnCloseP) {
        return
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        Example_with_tabs_CtlShowHide("Show", "MenuPressed")
        
        ; Example_with_tabs_CtlShowHide("Show", "MenuHover")

        ; Example_with_tabs_CtlShowHide("Hide", "MenuPressed"), Hover := 0

        GuiControl, Example_with_tabs_:MoveDraw, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH
        ; GuiControl, Example_with_tabs_:MoveDraw, MenuPressed, % "x" MenuPosX " y" MenuPosY " w" 50 " h" MenuPosH



    }

    GuiControl, % (MouseCtrl = hBtnBackH ? "Show" : "Hide"), BtnBackP
    GuiControl, % (MouseCtrl = hBtnMinH ? "Show" : "Hide"), BtnMinP
    GuiControl, % (MouseCtrl = hBtnMaxH ? "Show" : "Hide"), BtnMaxP
    GuiControl, % (MouseCtrl = hBtnRestoreH ? "Show" : "Hide"), BtnRestoreP
    GuiControl, % (MouseCtrl = hBtnCloseH ? "Show" : "Hide"), BtnCloseP

    If (!MouseCtrl) {
        cX := X - gX, cY := Y - gY

        If (cY < 31) {
            PostMessage, 0xA1, 2
        }
    }
}

Example_with_tabs_WM_MOUSEMOVE(wParam, lParam, Msg, Hwnd) {


    Global ; Assume-global mode
    Static Init := OnMessage(0x0200, "Example_with_tabs_WM_MOUSEMOVE"), Hover := 0, Curr := ""


	DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    GuiControlGet, MenuPos, Example_with_tabs_:Pos, % MouseCtrl
    GuiControl, Example_with_tabs_:Move, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH
    GuiControl, Example_with_tabs_:Move, MenuPressed, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH


    If (MouseCtrl ~= hBtnBackH "|" hBtnMinH "|" hBtnMaxH "|" hBtnRestoreH "|" hBtnCloseH) {
        return
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        Example_with_tabs_CtlShowHide("Show", "MenuHover")
        IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
        GuiControlGet, MenuPos, Example_with_tabs_:Pos, % MouseCtrl

        GuiControl, Example_with_tabs_:MoveDraw, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH
        GuiControl, Example_with_tabs_:MoveDraw, MenuPressed, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH

        GuiControl, Example_with_tabs_:MoveDraw, MenuHover, +BackgroundTrans

        Hover := 1, Curr := MouseCtrl
    }
    Else {
        Example_with_tabs_CtlShowHide("Hide", "MenuHover"), Hover := 0
    } 

    GuiControl, % (MouseCtrl = hBtnBackN ? "Show" : "Hide"), BtnBackH
    GuiControl, % (MouseCtrl = hBtnMinN ? "Show" : "Hide"), BtnMinH
    GuiControl, % (MouseCtrl = hBtnMaxN ? "Show" : "Hide"), BtnMaxH
    GuiControl, % (MouseCtrl = hBtnRestoreN ? "Show" : "Hide"), BtnRestoreH
    GuiControl, % (MouseCtrl = hBtnCloseN ? "Show" : "Hide"), BtnCloseH
    IfEqual, MouseCtrl,, Try Example_with_tabs_CtlShowHide("Hide", "BtnBackH,BtnBackP,BtnMinH,BtnMinP,BtnMaxH,BtnMaxP,BtnCloseH,BtnCloseP")



; ;;;;;;;;;;;;;;;;;;




}

Example_with_tabs_WM_LBUTTONUP(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0202, "Example_with_tabs_WM_LBUTTONUP")

    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        ; Example_with_tabs_CtlShowHide("Show", "MenuHover")
        IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
        ; GuiControlGet, MenuPos, Pos, % MouseCtrl
        GuiControlGet, MenuName, Example_with_tabs_:Name , % MouseCtrl

        ; ------------------------------------------------------------------------------------------------------------------------------
        ; This is where the rest of the tabs go
        ; ------------------------------------------------------------------------------------------------------------------------------

        if(MenuName=="MenuText2")
        {

            Gui, Tab, 2
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain2_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain2 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  222222222222222222222222222222222222222


                I := 0
                Gui,  Example_with_tabs_:Add, Text, w370 h20 0x200 cFFFFFF Section, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 cFFFFFF 0x200, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }
                Gui,  Example_with_tabs_:Add, Text, ys wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }

                var_to_check_if_WhiteLineNumberMain2_exists = 1
            }
            UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing(A_Gui, A_GuiWidth, 900)
        }
        if(MenuName=="MenuText3")
        {

            
            Gui, Tab, 3
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain3_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain3 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  3333333333333333333333333333332

                var_to_check_if_WhiteLineNumberMain3_exists = 1
            }
            UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing_ScrollHeight_var_function(A_Gui, A_GuiWidth, A_GuiHeight, 0)
        }
        if(MenuName=="MenuText4")
        {
            Gui, Tab, 4
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain4_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain4 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  444444444444444444444444444444444444

                I := 0
                Gui,  Example_with_tabs_:Add, Text, w370 h20 0x200 cFFFFFF Section, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+20 wp h20 cFFFFFF 0x200, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }
                Gui,  Example_with_tabs_:Add, Text, ys wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+20 wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }

                var_to_check_if_WhiteLineNumberMain4_exists = 1
            }
            UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing_ScrollHeight_var_function(A_Gui, A_GuiWidth, A_GuiHeight, 0)

        }
        if(MenuName=="MenuText5")
        {
            Gui, Tab, 5
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain5_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain5 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

            

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  555555555555555555555


                I := 0
                Gui,  Example_with_tabs_:Add, Text, w370 h20 0x200 cFFFFFF Section, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 cFFFFFF 0x200, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }
                Gui,  Example_with_tabs_:Add, Text, ys wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+0 wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }



                var_to_check_if_WhiteLineNumberMain5_exists = 1
            }
            UpdateScrollBars_no_horizontal_bar_and_no_Top_margin_fixing_ScrollHeight_var_function(A_Gui, A_GuiWidth, A_GuiHeight, 0)
        }
        if(MenuName=="MenuText6")
        {

            Gui, Tab, 6
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain6_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain6 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

            

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  6666666666666666666


                var_to_check_if_WhiteLineNumberMain6_exists = 1
            }
        }
        if(MenuName=="MenuText7")
        {

            Gui, Tab, 7
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain7_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain7 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

            

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  77777777777777777


                var_to_check_if_WhiteLineNumberMain7_exists = 1
            }
        }
        if(MenuName=="MenuText8")
        {
            Gui, Tab, 8
            Gui, Example_with_tabs_:Font, s14, Segoe UI
            Gui, Example_with_tabs_:Add, Text, cWhite x1 y50 BackgroundTrans,

            if(var_to_check_if_WhiteLineNumberMain8_exists == 0){
                Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain8 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

            

                Gui, Example_with_tabs_:Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
                Gui, Example_with_tabs_:Add, Text, cWhite x200 y200 w200 h200 ,  88888888888888888


                var_to_check_if_WhiteLineNumberMain8_exists = 1
            }
        }

        if(MenuPosX!=1)
        {
            GuiControl, Example_with_tabs_:MoveDraw, MenuSelect, % "x" MenuPosX + 10 " y" 1 " w" MenuPosW-24 " h" 4
        }

    }

	If (MouseCtrl = hBtnBackP) {
        Example_with_tabs_CtlShowHide("Hide", "BtnBackN")
        GuiControl,, TitleText, 
        GuiControl, MoveDraw, TitleText, x14
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        GuiControlGet, MenuVar, Example_with_tabs_:Name, % MouseCtrl
        GuiControl, Example_with_tabs_:Choose, Tab, % SubStr(MenuVar, 9)
        indexNumForColour := 1

        Loop, 8 {
            
            if(A_Index!=1)
            {
                GuiControl, Example_with_tabs_:+cFFFFFF +Redraw, % "MenuText" A_Index
            }
            GuiControl, Example_with_tabs_:MoveDraw, % "MenuText" A_Index
            indexNumForColour++
        }

        if(MenuPosX==1)
        {
            GuiControl, Example_with_tabs_:+c9400D3 +Redraw, % MouseCtrl
            GuiControl, Example_with_tabs_:MoveDraw, % MouseCtrl
            GuiControl, Example_with_tabs_:Show, MenuSelectPurple
            GuiControl, Example_with_tabs_:Hide, MenuSelect

            GuiControl, MoveDraw, MenuSelectPurple, % " x" MenuPosX+12
        }
        if(MenuPosX!=1)
        {
             GuiControl, Example_with_tabs_:+c0078D7 +Redraw, % MouseCtrl
             GuiControl, Example_with_tabs_:MoveDraw, % MouseCtrl
             GuiControl, Example_with_tabs_:Show, MenuSelect
             GuiControl, Example_with_tabs_:Hide, MenuSelectPurple

             GuiControl, Example_with_tabs_:MoveDraw, MenuSelect, % " x" MenuPosX+12
        }
    }

    IfEqual, MouseCtrl, % hBtnMinP, WinMinimize
    IfEqual, MouseCtrl, % hBtnCloseP, GoSub, ExitSub
    IfEqual, MouseCtrl, % hBtnMaxP, Try Example_with_tabs_GuiMaximize()
    IfEqual, MouseCtrl, % hBtnRestoreP, Try Example_with_tabs_GuiRestore()
    Example_with_tabs_CtlShowHide("Hide", "BtnBackP,BtnMinP,BtnMaxP,BtnRestoreP,BtnCloseP,MenuPressed")



}


RandomGenerationFunction(){
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
RandomStr(l = 16, i = 48, x = 122) { ; length, lowest and highest Asc value
    Loop, %l% {
        Random, r, i, x
        s .= Chr(r)
    }
    Return, s
}

