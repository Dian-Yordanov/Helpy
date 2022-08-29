
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
; WinGet, current_ID, ID, A
; k_Position = x+0 0

global BkColor2  := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)

OnMessage(0x0138, "Example_with_tabs_WM_CTLCOLOR")    
OnMessage(0x0133, "Example_with_tabs_WWM_CTLCOLOR2")    
OnMessage(0x0132, "Example_with_tabs_WWM_CTLCOLOR3")   

OnMessage(0x201, "Example_with_tabs_WWM_LBUTTONDOWN")

OnMessage(0x0083, "Example_with_tabs_WWM_NCCALCSIZE")
OnMessage(0x0086, "Example_with_tabs_WWM_NCACTIVATE")
OnMessage(0x0084, "Example_with_tabs_WWM_NCHITTEST")

Gui, Example_with_tabs_:+LastFound +Resize -Caption -Border -DPIScale +MinSize600x400 +HwndGuiHwnd
Gui, Example_with_tabs_:Margin, 10, 10
Gui, Example_with_tabs_:Color, 000000

Gui, Example_with_tabs_:Add, Picture, vMenuHover HwndhMenuHover Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover.png
Gui, Example_with_tabs_:Add, Picture, vMenuPressed HwndhMenuPressed Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-pressed.png
Gui, Example_with_tabs_:Add, Picture, vMenuSelect HwndhMenuSelect, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel.png
Gui, Example_with_tabs_:Add, Picture, vMenuSelectPurple HwndhMenuSelectPurple, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel-purple.png
Gui, Example_with_tabs_:Add, Picture, vMenuAlternativeColour HwndhMenuAlternativeColour, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover-alternative-colour.png

Gui, Example_with_tabs_:Add, Picture, vBorderTop, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
Gui, Example_with_tabs_:Add, Picture, vBorderBottom, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
Gui, Example_with_tabs_:Add, Picture, vBorderLeft, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
Gui, Example_with_tabs_:Add, Picture, vBorderRight, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnBackN HwndhBtnBackN Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnBackH HwndhBtnBackH Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-hover.png
Gui, Example_with_tabs_:Add, Picture, vBtnBackP HwndhBtnBackP Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-pressed.png
Gui, Example_with_tabs_:Add, Picture, vBtnCloseN HwndhBtnCloseN, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnCloseH HwndhBtnCloseH Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-hover.png
Gui, Example_with_tabs_:Add, Picture, vBtnCloseP HwndhBtnCloseP Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-pressed.png
Gui, Example_with_tabs_:Add, Picture, vBtnMaxN HwndhBtnMaxN, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnMaxH HwndhBtnMaxH Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-hover.png
Gui, Example_with_tabs_:Add, Picture, vBtnMaxP HwndhBtnMaxP Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-pressed.png
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreN HwndhBtnRestoreN Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreH HwndhBtnRestoreH Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-hover.png
Gui, Example_with_tabs_:Add, Picture, vBtnRestoreP HwndhBtnRestoreP Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-pressed.png
Gui, Example_with_tabs_:Add, Picture, vBtnMinN HwndhBtnMinN, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-normal.png
Gui, Example_with_tabs_:Add, Picture, vBtnMinH HwndhBtnMinH Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-hover.png
Gui, Example_with_tabs_:Add, Picture, vBtnMinP HwndhBtnMinP Hidden1, %A_ScriptDir%\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-pressed.png

Example_with_tabs_CtlShowHide("Hide", "MenuHover")

Gui, Example_with_tabs_:Color, 000000, FFFFFF
xpos := xpos
ypos := ypos
Gui, Example_with_tabs_:Show, x35 y45 w1280 h900, Helpy

Gui, Example_with_tabs_:Font, s11, Segoe UI
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText1 HwndhMenuText1 BackgroundTrans 0x200 c9400D3, % "       Helpy"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText2 HwndhMenuText2 BackgroundTrans 0x200, % "  Commonly used functions"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText3 HwndhMenuText3 BackgroundTrans 0x200, % "  Self contained scripts"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText4 HwndhMenuText4 BackgroundTrans 0x200, % "   Tagging"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText5 HwndhMenuText5 BackgroundTrans 0x200, % "   Mouse Configuration"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText6 HwndhMenuText6 BackgroundTrans 0x200, % "   Tscripts"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText7 HwndhMenuText7 BackgroundTrans 0x200, % "   Multilingual Scrips"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuText8 HwndhMenuText8 BackgroundTrans 0x200, % "   Experiments"

Example_with_tabs_CtlShowHide("Hide", "MenuHover")

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

MenuTextExperimentsSubTabs1PosX := MenuTextExperimentsSubTabs1PosX+MenuTextExperimentsSubTabs1PosW-1
MenuTextExperimentsSubTabs1PosY := MenuTextExperimentsSubTabs1PosY
GuiControl, MoveDraw, LineA, % "x" MenuTextExperimentsSubTabs1PosX " y" MenuTextExperimentsSubTabs1PosY

MenuTextExperimentsSubTabs2PosX := MenuTextExperimentsSubTabs2PosX+MenuTextExperimentsSubTabs2PosW-1
MenuTextExperimentsSubTabs2PosY := MenuTextExperimentsSubTabs2PosY
GuiControl, MoveDraw, LineB, % "x" MenuTextExperimentsSubTabs2PosX " y" MenuTextExperimentsSubTabs2PosY

MenuTextExperimentsSubTabs3PosX := MenuTextExperimentsSubTabs3PosX+MenuTextExperimentsSubTabs3PosW-1
MenuTextExperimentsSubTabs3PosY := MenuTextExperimentsSubTabs3PosY
GuiControl, MoveDraw, LineC, % "x" MenuTextExperimentsSubTabs3PosX " y" MenuTextExperimentsSubTabs3PosY

MenuTextExperimentsSubTabs4PosX := MenuTextExperimentsSubTabs4PosX+MenuTextExperimentsSubTabs4PosW-1
MenuTextExperimentsSubTabs4PosY := MenuTextExperimentsSubTabs4PosY
GuiControl, MoveDraw, LineD, % "x" MenuTextExperimentsSubTabs4PosX " y" MenuTextExperimentsSubTabs4PosY







; SplashTextOff
; RemoveToolTipClipboard_help2()

; OnMessage(0x0200, "WM_MOUSEMOVE")

; WinWaitNotActive, ahk_id %current_ID%
; previous_ID := current_ID
; GroupAdd, MyGui, % "ahk_id " . WinExist()
; OnMessage(0x114, "OnScroll") ; WM_HSCROLL

Gui, Example_with_tabs_:+LastFound
WinSet, Redraw 

Example_with_tabs_CtlShowHide("Hide", "MenuHover")

return

GuiClose: 
ExitSub:
; MsgBox, "ffff"
    ExitApp
return


Example_with_tabs_GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, Example_with_tabs_:MoveDraw, BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, Example_with_tabs_:MoveDraw, BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, Example_with_tabs_:MoveDraw, BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, Example_with_tabs_:MoveDraw, BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
    GuiControl, Example_with_tabs_:MoveDraw, BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31

    GuiControl, Example_with_tabs_:MoveDraw, BtnMinN, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMinH, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMinP, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnMaxP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnRestoreP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseN, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseH, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, BtnCloseP, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, Gui3CommonlyUsedFunctionsBackground, % "x" 1 " y" 1 " w" (Width - 1) - 138 " h" 31
    GuiControl, Example_with_tabs_:MoveDraw, Gui2CommonlyUsedFunctionsBackground, % "x" 1 " y" 34 " w" 226 " h" (Height - 4) - 31
    GuiControl, Example_with_tabs_:MoveDraw, MenuHover, % "x" 1 " y" 1 " w" Width " h" 48
    GuiControl, Example_with_tabs_:MoveDraw, MenuPressed, % "x" 1 " y" 1 " w" Width " h" 48
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumber2, % "x" 10 " y" 108 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain1, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain2, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain3, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain4, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain5, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain6, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain7, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain8, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberMain, % "x" 10 " y" 32 " w" Width - 18 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberLesser1, % "x" 230 " y" 120 " w" Width - 236 " h" 2 
    GuiControl, Example_with_tabs_:MoveDraw, WhiteLineNumberLesser2, % "x" 230 " y" 260 " w" Width - 236 " h" 2 

    Example_with_tabs_CtlShowHide("Hide", "MenuHover")

}

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
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

Example_with_tabs_WWM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

Example_with_tabs_WWM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 1 : "")
}

Example_with_tabs_WWM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
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

Example_with_tabs_WWM_LBUTTONDOWN(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0201, "Example_with_tabs_WWM_LBUTTONDOWN")

    If (MouseCtrl ~= hBtnBackP "|" hBtnMinP "|" hBtnMaxP "|" hBtnRestoreP "|" hBtnCloseP) {
        return
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        Example_with_tabs_CtlShowHide("Show", "MenuPressed")
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

}

Example_with_tabs_WM_LBUTTONUP(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0202, "Example_with_tabs_WM_LBUTTONUP")

    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        Example_with_tabs_CtlShowHide("Show", "MenuHover")
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
                Gui,  Example_with_tabs_:Add, Text, xp y+20 wp h20 cFFFFFF 0x200, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }
                Gui,  Example_with_tabs_:Add, Text, ys wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                Loop, 12 {
                Gui,  Example_with_tabs_:Add, Text, xp y+20 wp h20 0x200 cFFFFFF, % "Edit " . ++I
                Gui,  Example_with_tabs_:Add, Edit, xp y+0 wp r6
                }


                var_to_check_if_WhiteLineNumberMain2_exists = 1
            }
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


                var_to_check_if_WhiteLineNumberMain3_exists = 1
            }
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


                var_to_check_if_WhiteLineNumberMain4_exists = 1
            }
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


                var_to_check_if_WhiteLineNumberMain5_exists = 1
            }
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

    ; If (MouseCtrl ~= hMenuTextExperimentsSubTabs1 "|" hMenuTextExperimentsSubTabs2 "|" hMenuTextExperimentsSubTabs3 "|" hMenuTextExperimentsSubTabs4) {
    ;     GuiControlGet, MenuVarExperimentsSubTabs, Name, % MouseCtrl
    ;     GuiControl, Choose, ExperimentsSubTabs, % SubStr(MenuVarExperimentsSubTabs, 27)

    ; }

    IfEqual, MouseCtrl, % hBtnMinP, WinMinimize
    IfEqual, MouseCtrl, % hBtnCloseP, GoSub, ExitSub
    IfEqual, MouseCtrl, % hBtnMaxP, Try Example_with_tabs_GuiMaximize()
    IfEqual, MouseCtrl, % hBtnRestoreP, Try Example_with_tabs_GuiRestore()
    Example_with_tabs_CtlShowHide("Hide", "BtnBackP,BtnMinP,BtnMaxP,BtnRestoreP,BtnCloseP,MenuPressed")



}

Example_with_tabs_WM_CTLCOLOR(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor", "Ptr", wParam, "UInt", BkColor)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 2)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}
Example_with_tabs_WWM_CTLCOLOR2(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor2, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor2", "Ptr", wParam, "UInt", BkColor2)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}
Example_with_tabs_WWM_CTLCOLOR3(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor3, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor3", "Ptr", wParam, "UInt", BkColor3)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}



