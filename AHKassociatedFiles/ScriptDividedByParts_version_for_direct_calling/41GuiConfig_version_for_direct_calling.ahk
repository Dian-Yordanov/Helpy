
41GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, 41BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 41BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, 41BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 41BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, 41BtnBackN, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 41BtnBackH, % "x" 1 " y" 1 " w" 48 " h" 31
    GuiControl, MoveDraw, 41BtnBackP, % "x" 1 " y" 1 " w" 48 " h" 31

    GuiControl, MoveDraw, 41BtnMinN, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnMinH, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnMinP, % "x" (Width - 1) - 138 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnMaxN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnMaxH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnMaxP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnRestoreN, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnRestoreH, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnRestoreP, % "x" (Width - 1) - 92 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnCloseN, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnCloseH, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    GuiControl, MoveDraw, 41BtnCloseP, % "x" (Width - 1) - 46 " y" 1 " w" 46 " h" 31
    
    GuiControl, MoveDraw, 41Gui3CommonlyUsedFunctionsBackground, % "x" 1 " y" 1 " w" (Width - 1) - 138 " h" 31
    GuiControl, MoveDraw, 41Gui2CommonlyUsedFunctionsBackground, % "x" 1 " y" 34 " w" 226 " h" (Height - 4) - 31


    GuiControl, MoveDraw, 41MenuHover, % "x" 1 " y" 1 " w" Width " h" 48
    GuiControl, MoveDraw, 41MenuPressed, % "x" 1 " y" 1 " w" Width " h" 48

    ; GuiControl, MoveDraw, 41MenuHoverSize130, % "x" 1 " y" 1 " w" 100 " h" 48
    ; GuiControl, MoveDraw, 41MenuPressedSize130, % "x" 1 " y" 1 " w" 100 " h" 48

    GuiControl, MoveDraw, 41WhiteLineNumber2, % "x" 10 " y" 108 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain1, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain2, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain3, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain4, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain5, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain6, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain7, % "x" 10 " y" 52 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberMain8, % "x" 10 " y" 52 " w" Width - 18 " h" 2 

    GuiControl, MoveDraw, 41WhiteLineNumberMain, % "x" 10 " y" 32 " w" Width - 18 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberLesser1, % "x" 230 " y" 120 " w" Width - 236 " h" 2 
    GuiControl, MoveDraw, 41WhiteLineNumberLesser2, % "x" 230 " y" 260 " w" Width - 236 " h" 2 

    GuiControl, MoveDraw, EditFieldForClipboard, % "x" 234 " y" 320 " w" Width - 240 " h" (Height - 320) - 8
    

    


}

41GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "41BtnRestoreN,41BtnRestoreH,41BtnRestoreP")
    CtlShowHide("Show", "41BtnMaxN")

}

41GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "41BtnMaxN,41BtnMaxH,41BtnMaxP")
    CtlShowHide("Show", "41BtnRestoreN")
}

41CtlShowHide(ShowHide, Controls*) {
    Static K, V

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}

; GuiRestore() {
;     WinRestore
;     CtlShowHide("Hide", "41BtnRestoreN,41BtnRestoreH,41BtnRestoreP")
;     CtlShowHide("Show", "41BtnMaxN")

; }

; GuiMaximize() {
;     WinMaximize
;     CtlShowHide("Hide", "41BtnMaxN,41BtnMaxH,41BtnMaxP")
;     CtlShowHide("Show", "41BtnRestoreN")
; }

; CtlShowHide(ShowHide, Controls*) {
;     Static K, V

;     For K, V In Controls {
;         Split := StrSplit(V, ",")

;         Loop % Split.MaxIndex() {
;             GuiControl, % ShowHide, % Split[A_Index]
;         }
;     }
; }



41WM_LBUTTONDBLCLK(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0203, "41WM_LBUTTONDBLCLK")

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

41WM_MOUSELEAVE(wParam, lParam, Msg, Hwnd) {
	Global ; Assume-global mode
    Static Init := OnMessage(0x2A3, "WM_MOUSELEAVE")

    CtlShowHide("Hide", "41BtnBackH,41BtnMinH,41BtnMaxH,41BtnRestoreH,41BtnCloseH,41MenuHover")
    CtlShowHide("Hide", "41BtnBackP,41BtnMinP,41BtnMaxP,41BtnRestoreP,41BtnCloseP,41MenuPressed")

}

41WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 0 : "")
}

41WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
    return (A_Gui ? 1 : "")
}

41WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
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

41WinActiveCheck() {
    Global ; Assume-global mode
    Static Normal := 0, Disabled := 0, Count := 0

    ;  code for 41
    ; {

    IsActive := WinActive("ahk_id " Gui41Hwnd)

    If (IsActive) {
        If (Normal) || (!Count)  {
            return
        }

        GuiControl,, 41BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-normal.png
        GuiControl,, 41BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-normal.png
        GuiControl,, 41BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-normal.png
        GuiControl,, 41BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-normal.png
        GuiControl, +c000000, TitleText
        GuiControl, MoveDraw, TitleText
        Disabled := 0, Normal := 1, Count++
    } Else {
        If (Disabled) {
            return
        }

        GuiControl,, 41BtnBackN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-back-disabled.png
        GuiControl,, 41BtnMinN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-minimize-disabled.png
        GuiControl,, 41BtnMaxN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-maximize-disabled.png
        GuiControl,, 41BtnRestoreN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-restore-disabled.png
        GuiControl,, 41BtnCloseN, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-close-disabled.png
        GuiControl, +c999999, TitleText
        GuiControl, MoveDraw, TitleText
        Normal := 0, Disabled := 1, Count++
    }

    ; }

}



41RefreshButton(){
    GuiControl,, EditFieldForClipboard, % Clipboard
    
}

41CopiedTextFromGuiElement:
    Clipboard = "(((|||CustomDelimeter|||)))" 
return

41RefreshPosition(){
    resetClipboardTime41()
    GuiControl,41:, StringListPosition41, 0
}


