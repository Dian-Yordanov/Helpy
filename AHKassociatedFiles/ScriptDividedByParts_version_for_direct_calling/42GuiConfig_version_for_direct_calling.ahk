
42GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, 42BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 42BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 42BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 42BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 42BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 42BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 42BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31

    GuiControl, MoveDraw, 42BtnMinN, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnMinH, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnMinP, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnMaxN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnMaxH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnMaxP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnRestoreN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnRestoreH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnRestoreP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnCloseN, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnCloseH, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 42BtnCloseP, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    
    GuiControl, MoveDraw, 42Gui3CommonlyUsedFunctionsBackground, % "x" 1 " y" 1 " w" (Width - 1) - 138 " h" 31
    GuiControl, MoveDraw, 42Gui2CommonlyUsedFunctionsBackground, % "x" 1 " y" 34 " w" 226 " h" (Height - 4) - 31


    GuiControl, MoveDraw, 42MenuHover, % "x" 1 " y" 1 " w" Width " h" 48
    GuiControl, MoveDraw, 42MenuPressed, % "x" 1 " y" 1 " w" Width " h" 48

    ; GuiControl, MoveDraw, 42MenuHoverSize130, % "x" 1 " y" 1 " w" 100 " h" 48
    ; GuiControl, MoveDraw, 42MenuPressedSize130, % "x" 1 " y" 1 " w" 100 " h" 48

    GuiControl, MoveDraw, 42WhiteLineNumber2, % "x" 10 " y" 108 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain1, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain2, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain3, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain4, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain5, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain6, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain7, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberMain8, % "x" 10 " y" 52 " w" Width - 18 " h" 2 

    GuiControl, MoveDraw, 42WhiteLineNumberMain, % "x" 10 " y" 32 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberLesser1, % "x" 230 " y" 120 " w" Width - 236 " h" 2 
    GuiControl, MoveDraw, 42WhiteLineNumberLesser2, % "x" 230 " y" 260 " w" Width - 236 " h" 2 

    GuiControl, MoveDraw, EditFieldForClipboard_42, % "x" 234 " y" 320 " w" Width - 240 " h" (Height - 320) - 8
    

    


}

42GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "42BtnRestoreN,42BtnRestoreH,42BtnRestoreP")
    CtlShowHide("Show", "42BtnMaxN")

}

42GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "42BtnMaxN,42BtnMaxH,42BtnMaxP")
    CtlShowHide("Show", "42BtnRestoreN")
}

42CtlShowHide(ShowHide, Controls*) {
    Static K, V

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

42WM_LBUTTONDBLCLK(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0203, "42WM_LBUTTONDBLCLK")

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

42WM_MOUSELEAVE(wParam, lParam, Msg, Hwnd) {
	Global ; Assume-global mode
    Static Init := OnMessage(0x2A3, "WM_MOUSELEAVE")

    CtlShowHide("Hide", "42BtnBackH,42BtnMinH,42BtnMaxH,42BtnRestoreH,42BtnCloseH,42MenuHover")
    CtlShowHide("Hide", "42BtnBackP,42BtnMinP,42BtnMaxP,42BtnRestoreP,42BtnCloseP,42MenuPressed")

}

42WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

42WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 1 : "")
}

42WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
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

42WinActiveCheck() {
    Global ; Assume-global mode
    Static Normal := 0, Disabled := 0, Count := 0

    ;  code for 42
    ; {

    IsActive := WinActive("ahk_id " Gui42Hwnd)

    If (IsActive) {
        If (Normal) || (!Count)  {
            return
        }

        GuiControl,, 42BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
        GuiControl,, 42BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
        GuiControl,, 42BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
        GuiControl,, 42BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
        GuiControl, +c000000, TitleText
        GuiControl, MoveDraw, TitleText
        Disabled := 0, Normal := 1, Count++
    } Else {
        If (Disabled) {
            return
        }

        GuiControl,, 42BtnBackN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-disabled.png
        GuiControl,, 42BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-disabled.png
        GuiControl,, 42BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-disabled.png
        GuiControl,, 42BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-disabled.png
        GuiControl,, 42BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-disabled.png
        GuiControl, +c999999, TitleText
        GuiControl, MoveDraw, TitleText
        Normal := 0, Disabled := 1, Count++
    }

    ; }

}



42RefreshButton(){
    ; GuiControl,42:, EditFieldForClipboard_42, % Clipboard
    ; Edit_SetSel(EditFieldForClipboard_42HWND,Edit_GetTextLength(EditFieldForClipboard_42HWND))
    

    
}

42CopiedTextFromGuiElement:
    Clipboard = "(((|||CustomDelimeter|||)))" 
return

42RefreshPosition(){
    resetClipboardTime42()
    GuiControl,42:, StringListPosition42_42, 0
}


