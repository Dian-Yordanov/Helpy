
WM_MOUSEMOVE(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0200, "WM_MOUSEMOVE"), Hover := 0, Curr := ""

	DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    If (MouseCtrl ~= hBtnBackH "|" hBtnMinH "|" hBtnMaxH "|" hBtnRestoreH "|" hBtnCloseH) {
        return
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8 "|" hMenuTextExperimentsSubTabs1 "|" hMenuTextExperimentsSubTabs2 "|" hMenuTextExperimentsSubTabs3 "|" hMenuTextExperimentsSubTabs4) {
        CtlShowHide("Show", "MenuHover")
        IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
        GuiControlGet, MenuPos, Pos, % MouseCtrl

        GuiControl, MoveDraw, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH
        GuiControl, MoveDraw, MenuPressed, % "x" MenuPosX " y" MenuPosY " w" MenuPosW " h" MenuPosH

        GuiControl, MoveDraw, MenuHover, +BackgroundTrans

        Hover := 1, Curr := MouseCtrl
    }
    Else {
        CtlShowHide("Hide", "MenuHover"), Hover := 0
    } 

    GuiControl, % (MouseCtrl = hBtnBackN ? "Show" : "Hide"), BtnBackH
    GuiControl, % (MouseCtrl = hBtnMinN ? "Show" : "Hide"), BtnMinH
    GuiControl, % (MouseCtrl = hBtnMaxN ? "Show" : "Hide"), BtnMaxH
    GuiControl, % (MouseCtrl = hBtnRestoreN ? "Show" : "Hide"), BtnRestoreH
    GuiControl, % (MouseCtrl = hBtnCloseN ? "Show" : "Hide"), BtnCloseH
    IfEqual, MouseCtrl,, Try CtlShowHide("Hide", "BtnBackH,BtnBackP,BtnMinH,BtnMinP,BtnMaxH,BtnMaxP,BtnCloseH,BtnCloseP")

    if (WinExist("FastClipboardWMouseWheelSpace_41"))
    {

        If (MouseCtrl ~= 41hBtnBackH "|" 41hBtnMinH "|" 41hBtnMaxH "|" 41hBtnRestoreH "|" 41hBtnCloseH) {
            return
        }

        ; CtlShowHide("Hide", "41MenuHover"), Hover := 0

        GuiControl, % (MouseCtrl = 41hBtnBackN ? "Show" : "Hide"), 41BtnBackH
        GuiControl, % (MouseCtrl = 41hBtnMinN ? "Show" : "Hide"), 41BtnMinH
        GuiControl, % (MouseCtrl = 41hBtnMaxN ? "Show" : "Hide"), 41BtnMaxH
        GuiControl, % (MouseCtrl = 41hBtnRestoreN ? "Show" : "Hide"), 41BtnRestoreH
        GuiControl, % (MouseCtrl = 41hBtnCloseN ? "Show" : "Hide"), 41BtnCloseH
        IfEqual, MouseCtrl,, Try CtlShowHide("Hide", "41BtnBackH,41BtnBackP,41BtnMinH,41BtnMinP,41BtnMaxH,41BtnMaxP,41BtnCloseH,41BtnCloseP")

    }
    ; }

    ; code for 42
    ; {

    if (WinExist("FastClipboardWMouseWheelCustom_42"))
    {

    If (MouseCtrl ~= 42hBtnBackH "|" 42hBtnMinH "|" 42hBtnMaxH "|" 42hBtnRestoreH "|" 42hBtnCloseH) {
        return
    }

    ; CtlShowHide("Hide", "42MenuHover"), Hover := 0

    GuiControl, % (MouseCtrl = 42hBtnBackN ? "Show" : "Hide"), 42BtnBackH
    GuiControl, % (MouseCtrl = 42hBtnMinN ? "Show" : "Hide"), 42BtnMinH
    GuiControl, % (MouseCtrl = 42hBtnMaxN ? "Show" : "Hide"), 42BtnMaxH
    GuiControl, % (MouseCtrl = 42hBtnRestoreN ? "Show" : "Hide"), 42BtnRestoreH
    GuiControl, % (MouseCtrl = 42hBtnCloseN ? "Show" : "Hide"), 42BtnCloseH
    IfEqual, MouseCtrl,, Try CtlShowHide("Hide", "42BtnBackH,42BtnBackP,42BtnMinH,42BtnMinP,42BtnMaxH,42BtnMaxP,42BtnCloseH,42BtnCloseP")

    }

    ; code for 43
    ; {

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

    If (MouseCtrl ~= hBtnBackP "|" hBtnMinP "|" hBtnMaxP "|" hBtnRestoreP "|" hBtnCloseP) {
        return
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8 "|" hMenuTextExperimentsSubTabs1 "|" hMenuTextExperimentsSubTabs2 "|" hMenuTextExperimentsSubTabs3 "|" hMenuTextExperimentsSubTabs4) {
        CtlShowHide("Show", "MenuPressed")
    }

    GuiControl, % (MouseCtrl = hBtnBackH ? "Show" : "Hide"), BtnBackP
    GuiControl, % (MouseCtrl = hBtnMinH ? "Show" : "Hide"), BtnMinP
    GuiControl, % (MouseCtrl = hBtnMaxH ? "Show" : "Hide"), BtnMaxP
    GuiControl, % (MouseCtrl = hBtnRestoreH ? "Show" : "Hide"), BtnRestoreP
    GuiControl, % (MouseCtrl = hBtnCloseH ? "Show" : "Hide"), BtnCloseP

    ; code for gui 41:
    ; {
    if (WinExist("FastClipboardWMouseWheelSpace_41"))
    {
        If (MouseCtrl ~= 41hBtnBackP "|" 41hBtnMinP "|" 41hBtnMaxP "|" 41hBtnRestoreP "|" 41hBtnCloseP) {
            return
        }

        GuiControl, % (MouseCtrl = 41hBtnBackH ? "Show" : "Hide"), 41BtnBackP
        GuiControl, % (MouseCtrl = 41hBtnMinH ? "Show" : "Hide"), 41BtnMinP
        GuiControl, % (MouseCtrl = 41hBtnMaxH ? "Show" : "Hide"), 41BtnMaxP
        GuiControl, % (MouseCtrl = 41hBtnRestoreH ? "Show" : "Hide"), 41BtnRestoreP
        GuiControl, % (MouseCtrl = 41hBtnCloseH ? "Show" : "Hide"), 41BtnCloseP
    }
    ; }

    ; code for gui 42:
    ; {
    if (WinExist("FastClipboardWMouseWheelCustom_42"))
    {
        If (MouseCtrl ~= 42hBtnBackP "|" 42hBtnMinP "|" 42hBtnMaxP "|" 42hBtnRestoreP "|" 42hBtnCloseP) {
            return
        }

        GuiControl, % (MouseCtrl = 42hBtnBackH ? "Show" : "Hide"), 42BtnBackP
        GuiControl, % (MouseCtrl = 42hBtnMinH ? "Show" : "Hide"), 42BtnMinP
        GuiControl, % (MouseCtrl = 42hBtnMaxH ? "Show" : "Hide"), 42BtnMaxP
        GuiControl, % (MouseCtrl = 42hBtnRestoreH ? "Show" : "Hide"), 42BtnRestoreP
        GuiControl, % (MouseCtrl = 42hBtnCloseH ? "Show" : "Hide"), 42BtnCloseP
    }
    ; }

    ; code for gui 43:
    ; {
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

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        CtlShowHide("Show", "MenuHover")
        IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
        ; GuiControlGet, MenuPos, Pos, % MouseCtrl
        GuiControlGet, MenuName, Name , % MouseCtrl

        IniRead, loadedRunOfCommonlyUsedFunctions, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean
        IniRead, loadedDalayedRunOfSelfContainedScripts, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean1
        IniRead, loadedDalayedRunOfMenuText4, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean2
        IniRead, loadedDalayedRunOfMenuText5, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean3
        IniRead, loadedDalayedRunOfMenuText6, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean4
        IniRead, loadedDalayedRunOfMenuText7, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean5
        IniRead, loadedDalayedRunOfMenuText8, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean6

        if(MenuName=="MenuText2") and (loadedRunOfCommonlyUsedFunctions=="false")
        {
            settimer, DalayedRunOfCommonlyUsedFunctions, -100
        }
        if(MenuName=="MenuText3") and (loadedDalayedRunOfSelfContainedScripts=="false")
        {
            settimer, DalayedRunOfSelfContainedScripts, -100
        }
        if(MenuName=="MenuText4") and (loadedDalayedRunOfMenuText4=="false")
        {
            settimer, DalayedRunOfMenuText4, -100
        }
        if(MenuName=="MenuText5") and (loadedDalayedRunOfMenuText5=="false")
        {
            settimer, DalayedRunOfMenuText5, -100
        }
        if(MenuName=="MenuText6") and (loadedDalayedRunOfMenuText6=="false")
        {
            settimer, DalayedRunOfMenuText6, -100
        }
        if(MenuName=="MenuText7") and (loadedDalayedRunOfMenuText7=="false")
        {
            settimer, DalayedRunOfMenuText7, -100
        }
        if(MenuName=="MenuText8") and (loadedDalayedRunOfMenuText8=="false")
        {
            settimer, DalayedRunOfMenuText8, -100
        }

        if(MenuName=="MenuText8")
        {
            ShowOtherTabs()
        }
        if(MenuName!="MenuText8")
        {
            HideOtherTabs()
        }

        if(MenuPosX!=1)
        {
            GuiControl, MoveDraw, MenuSelect, % "x" MenuPosX + 10 " y" 1 " w" MenuPosW-24 " h" 4
        }

    }

	If (MouseCtrl = hBtnBackP) {
        CtlShowHide("Hide", "BtnBackN")
        GuiControl,, TitleText, 
        GuiControl, MoveDraw, TitleText, x14
    }

    If (MouseCtrl ~= hMenuText1 "|" hMenuText2 "|" hMenuText3 "|" hMenuText4 "|" hMenuText5 "|" hMenuText6 "|" hMenuText7 "|" hMenuText8) {
        GuiControlGet, MenuVar, Name, % MouseCtrl
        GuiControl, Choose, Tab, % SubStr(MenuVar, 9)
        indexNumForColour := 1

        Loop, 8 {
            
            if(A_Index!=1)
            {
                GuiControl, +cFFFFFF +Redraw, % "MenuText" A_Index
            }
            GuiControl, MoveDraw, % "MenuText" A_Index
            indexNumForColour++
        }

        if(MenuPosX==1)
        {
            GuiControl, +c9400D3 +Redraw, % MouseCtrl
            GuiControl, MoveDraw, % MouseCtrl
            GuiControl, Show, MenuSelectPurple
            GuiControl, Hide, MenuSelect

            GuiControl, MoveDraw, MenuSelectPurple, % " x" MenuPosX+12
        }
        if(MenuPosX!=1)
        {
             GuiControl, +c0078D7 +Redraw, % MouseCtrl
             GuiControl, MoveDraw, % MouseCtrl
             GuiControl, Show, MenuSelect
             GuiControl, Hide, MenuSelectPurple

             GuiControl, MoveDraw, MenuSelect, % " x" MenuPosX+12
        }
    }

    If (MouseCtrl ~= hMenuTextExperimentsSubTabs1 "|" hMenuTextExperimentsSubTabs2 "|" hMenuTextExperimentsSubTabs3 "|" hMenuTextExperimentsSubTabs4) {
        GuiControlGet, MenuVarExperimentsSubTabs, Name, % MouseCtrl
        GuiControl, Choose, ExperimentsSubTabs, % SubStr(MenuVarExperimentsSubTabs, 27)

    }

    IfEqual, MouseCtrl, % hBtnMinP, WinMinimize
    IfEqual, MouseCtrl, % hBtnCloseP, GoSub, ExitSub
    IfEqual, MouseCtrl, % hBtnMaxP, Try GuiMaximize()
    IfEqual, MouseCtrl, % hBtnRestoreP, Try GuiRestore()
    CtlShowHide("Hide", "BtnBackP,BtnMinP,BtnMaxP,BtnRestoreP,BtnCloseP,MenuPressed")

    ; ;  code for 41
    ; ; {
    if (WinExist("FastClipboardWMouseWheelSpace_41"))
    {
        If (MouseCtrl = 41hBtnBackP) {
            CtlShowHide("Hide", "41BtnBackN")
            GuiControl,, TitleText, 
            GuiControl, MoveDraw, TitleText, x14
            ; GuiControl,, ClickBtn, Click Here!
        }

        IfEqual, MouseCtrl, % 41hBtnMinP, WinMinimize
        IfEqual, MouseCtrl, % 41hBtnCloseP, GoSub, ExitSub
        IfEqual, MouseCtrl, % 41hBtnMaxP, Try GuiMaximize()
        IfEqual, MouseCtrl, % 41hBtnRestoreP, Try GuiRestore()
        IfEqual, MouseCtrl, % 41EditField, GoSub, 41CopiedTextFromGuiElement_local_WM_Mousemove
        CtlShowHide("Hide", "41BtnBackP,41BtnMinP,41BtnMaxP,41BtnRestoreP,41BtnCloseP,41MenuPressed")
    }
    ; ; }

    ; ;  code for 42
    ; ; {
    if (WinExist("FastClipboardWMouseWheelCustom_42"))
    {
        If (MouseCtrl = 42hBtnBackP) {
            CtlShowHide("Hide", "42BtnBackN")
            GuiControl,, TitleText, 
            GuiControl, MoveDraw, TitleText, x14
            ; GuiControl,, ClickBtn, Click Here!
        }

        IfEqual, MouseCtrl, % 42hBtnMinP, WinMinimize
        IfEqual, MouseCtrl, % 42hBtnCloseP, GoSub, ExitSub
        IfEqual, MouseCtrl, % 42hBtnMaxP, Try GuiMaximize()
        IfEqual, MouseCtrl, % 42hBtnRestoreP, Try GuiRestore()
        ; IfEqual, MouseCtrl, % 42EditField, GoSub, 42CopiedTextFromGuiElement
        CtlShowHide("Hide", "42BtnBackP,42BtnMinP,42BtnMaxP,42BtnRestoreP,42BtnCloseP,42MenuPressed")
    }
    ; ; }

    ; ;  code for 43
    ; ; {
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



41CopiedTextFromGuiElement_local_WM_Mousemove:
    Clipboard = "(((|||CustomDelimeter|||)))" 
return