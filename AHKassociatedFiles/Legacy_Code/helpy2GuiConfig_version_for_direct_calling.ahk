GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, BtnMinN, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnMinH, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnMinP, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnMaxN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnMaxH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnMaxP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnRestoreN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnRestoreH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnRestoreP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnCloseN, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnCloseH, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, BtnCloseP, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31

    GuiControl, MoveDraw, WhiteLineNumber2, % "x" 10 " y" 108 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain1, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain2, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain3, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain4, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain5, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain6, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain7, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, WhiteLineNumberMain8, % "x" 10 " y" 52 " w" Width - 18 " h" 2 

    GuiControl, MoveDraw, Bottom_Section, % "x" 10 " y" 512 " w" Width - 18 " h" 2 
    

}

WM_LBUTTONDBLCLK(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0203, "WM_LBUTTONDBLCLK")

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

WM_MOUSELEAVE(wParam, lParam, Msg, Hwnd) {
	Global ; Assume-global mode
    Static Init := OnMessage(0x2A3, "WM_MOUSELEAVE")

    CtlShowHide("Hide", "BtnBackH,BtnMinH,BtnMaxH,BtnRestoreH,BtnCloseH,MenuHover")
    CtlShowHide("Hide", "BtnBackP,BtnMinP,BtnMaxP,BtnRestoreP,BtnCloseP,MenuPressed")

}

WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 1 : "")
}

WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
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
WinActiveCheck() {
    Global ; Assume-global mode
    Static Normal := 0, Disabled := 0, Count := 0

    IsActive := WinActive("ahk_id " GuiHwnd)

    If (IsActive) {
        If (Normal) || (!Count)  {
            return
        }

        GuiControl,, BtnMinN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
        GuiControl,, BtnMaxN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
        GuiControl,, BtnRestoreN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
        GuiControl,, BtnCloseN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
        GuiControl, +c000000, TitleText
        GuiControl, MoveDraw, TitleText
        Disabled := 0, Normal := 1, Count++
    } Else {
        If (Disabled) {
            return
        }

        GuiControl,, BtnBackN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-disabled.png
        GuiControl,, BtnMinN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-disabled.png
        GuiControl,, BtnMaxN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-disabled.png
        GuiControl,, BtnRestoreN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-disabled.png
        GuiControl,, BtnCloseN, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-disabled.png
        GuiControl, +c999999, TitleText
        GuiControl, MoveDraw, TitleText
        Normal := 0, Disabled := 1, Count++
    }

}
; ==============================================================================

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