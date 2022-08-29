
; return ; End automatic execution
; ==============================================================================

; Labels =======================================================================
; GuiEscape:
; GuiClose:
; ExitSub:
;     WinClose ahk_class AutoHotkeyGUI
;     ; ExitApp ; Terminate the script unconditionally
; return


    ; global var_to_check_if_WhiteLineNumberMain2_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain3_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain4_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain5_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain6_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain7_exists = 0
    ; global var_to_check_if_WhiteLineNumberMain8_exists = 0

; ==============================================================================

; Functions ====================================================================

helpy2:

    global var_to_check_if_WhiteLineNumberMain2_exists = 0
    global var_to_check_if_WhiteLineNumberMain3_exists = 0
    global var_to_check_if_WhiteLineNumberMain4_exists = 0
    global var_to_check_if_WhiteLineNumberMain5_exists = 0
    global var_to_check_if_WhiteLineNumberMain6_exists = 0
    global var_to_check_if_WhiteLineNumberMain7_exists = 0
    global var_to_check_if_WhiteLineNumberMain8_exists = 0

    SplashTextOn,,,Loading,

    ; loadedRunOfCommonlyUsedFunctions = false
    ; loadedDalayedRunOfSelfContainedScripts = false
    ; loadedDalayedRunOfMenuText4 = false
    ; loadedDalayedRunOfMenuText5 = false
    ; loadedDalayedRunOfMenuText6 = false
    ; loadedDalayedRunOfMenuText7 = false
    ; loadedDalayedRunOfMenuText8 = false

    ; IniWrite, %loadedRunOfCommonlyUsedFunctions%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean
    ; IniWrite, %loadedDalayedRunOfSelfContainedScripts%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean1
    ; IniWrite, %loadedDalayedRunOfMenuText4%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean2
    ; IniWrite, %loadedDalayedRunOfMenuText5%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean3
    ; IniWrite, %loadedDalayedRunOfMenuText6%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean4
    ; IniWrite, %loadedDalayedRunOfMenuText7%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean5
    ; IniWrite, %loadedDalayedRunOfMenuText8%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean6

            
    Gui Destroy

    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos
    previous_ID := 0
    k_Position = x+0 0
    ; WinGet, current_ID, ID, A
    ; k_Position = x+0 0

    global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
    global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
    OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
    OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
    OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
    OnMessage(0x201, "WM_LBUTTONDOWN")

    OnMessage(0x0083, "WM_NCCALCSIZE")
    OnMessage(0x0086, "WM_NCACTIVATE")
    OnMessage(0x0084, "WM_NCHITTEST")

    Gui, +LastFound +Resize -Caption -Border -DPIScale +MinSize600x400 +HwndGuiHwnd
    Gui, Margin, 10, 10
    Gui, Color, 000000

    MenuHoverLocation                = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover.png
    MenuPressedLocation              = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-pressed.png
    MenuSelectLocation               = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel.png
    MenuSelectPurpleLocation         = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menusel-purple.png
    MenuAlternativeColourLocation    = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-menu-hover-alternative-colour.png
    BorderTopLocation                = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
    BorderBottomLocation             = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
    BorderLeftLocation               = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
    BorderRightLocation              = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\border-top-normal.png
    BtnBackNLocation                 = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-normal.png
    BtnBackHLocation                 = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-hover.png
    BtnBackPLocation                 = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-back-pressed.png
    BtnCloseNLocation                = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-normal.png
    BtnCloseHLocation                = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-hover.png
    BtnClosePLocation                = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-close-pressed.png
    BtnMaxNLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-normal.png
    BtnMaxHLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-hover.png
    BtnMaxPLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-maximize-pressed.png
    BtnRestoreNLocation              = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-normal.png
    BtnRestoreHLocation              = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-hover.png
    BtnRestorePLocation              = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-restore-pressed.png
    BtnMinNLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-normal.png
    BtnMinHLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-hover.png
    BtnMinPLocation                  = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Directory_For_ExampleGuiWithTabs-8Tabs\images\button-minimize-pressed.png

    Gui, Add, Picture, vBorderTop,                                               % BorderTopLocation                                          
    Gui, Add, Picture, vBorderBottom,                                            % BorderBottomLocation                                         
    Gui, Add, Picture, vBorderLeft,                                              % BorderLeftLocation                                           
    Gui, Add, Picture, vBorderRight,                                             % BorderRightLocation                                   
    Gui, Add, Picture, vBtnBackN HwndhBtnBackN Hidden1,                          % BtnBackNLocation                               
    Gui, Add, Picture, vBtnBackH HwndhBtnBackH Hidden1,                          % BtnBackNLocation                                           
    Gui, Add, Picture, vBtnBackP HwndhBtnBackP Hidden1,                          % BtnBackPLocation                                        
    Gui, Add, Picture, vBtnCloseN HwndhBtnCloseN,                                % BtnCloseNLocation                                        
    Gui, Add, Picture, vBtnCloseH HwndhBtnCloseH Hidden1,                        % BtnCloseHLocation                                         
    Gui, Add, Picture, vBtnCloseP HwndhBtnCloseP Hidden1,                        % BtnClosePLocation                                            
    Gui, Add, Picture, vBtnMaxN HwndhBtnMaxN,                                    % BtnMaxNLocation                                            
    Gui, Add, Picture, vBtnMaxH HwndhBtnMaxH Hidden1,                            % BtnMaxHLocation                                            
    Gui, Add, Picture, vBtnMaxP HwndhBtnMaxP Hidden1,                            % BtnMaxPLocation                                           
    Gui, Add, Picture, vBtnRestoreN HwndhBtnRestoreN Hidden1,                    % BtnRestoreNLocation                                           
    Gui, Add, Picture, vBtnRestoreH HwndhBtnRestoreH Hidden1,                    % BtnRestoreHLocation                                           
    Gui, Add, Picture, vBtnRestoreP HwndhBtnRestoreP Hidden1,                    % BtnRestorePLocation                                             
    Gui, Add, Picture, vBtnMinN HwndhBtnMinN,                                    % BtnMinNLocation                                             
    Gui, Add, Picture, vBtnMinH HwndhBtnMinH Hidden1,                            % BtnMinHLocation                                             
    Gui, Add, Picture, vBtnMinP HwndhBtnMinP Hidden1,                            % BtnMinPLocation                                         
    Gui, Add, Picture, vMenuHover HwndhMenuHover Hidden1,                        % MenuHoverLocation                                          
    Gui, Add, Picture, vMenuPressed HwndhMenuPressed Hidden1,                    % MenuPressedLocation                          
    Gui, Add, Picture, vMenuSelect HwndhMenuSelect,                              % MenuSelectLocation                                    
    Gui, Add, Picture, vMenuSelectPurple HwndhMenuSelectPurple,                  % MenuSelectPurpleLocation                                          
    Gui, Add, Picture, vMenuAlternativeColour HwndhMenuAlternativeColour,        % MenuAlternativeColourLocation 

    Gui, Font, s9, Segoe UI
    Gui, Add, Text, x14 y8 vTitleText BackgroundTrans, 

    Gui, Add, Tab2, vTab x0 y0 w0 h0 +Theme -Wrap AltSubmit Choose1, Tab1|Tab2|Tab3|Tab4|Tab5|Tab6|Tab7|Tab8

    Gui, Tab, 1
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans c9400D3, 
    Gui, Add, Text, vWhiteLineNumberMain1 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray
    Gui, Add, Text, cWhite xp+50 yp+6 w1 h20 , 
 
    ; settimer, DalayedRunOfHelpy, -100

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
    #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\HelpyLauncher.ahk
    ; }


    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\HelpyLauncher.ahk

	; MsgBox, %A_WorkingDir%

    Gui, Tab
    ; settimer, DalayedRunOfPictures, -1100

    gui, add, text, vLineA h55 0x11  ;Vertical Line > Etched Gray
    gui, add, text, vLineB h55 0x11  ;Vertical Line > Etched Gray
    gui, add, text, vLineC h55 0x11  ;Vertical Line > Etched Gray
    gui, add, text, vLineD h55 0x11  ;Vertical Line > Etched Gray

    Gui, Font, s11, Segoe UI
    Gui, Add, Text, cWhite vMenuText1 HwndhMenuText1 BackgroundTrans 0x200 c9400D3, % "       Helpy"
    Gui, Add, Text, cWhite vMenuText2 HwndhMenuText2 BackgroundTrans 0x200, % "  Commonly used functions"
    Gui, Add, Text, cWhite vMenuText3 HwndhMenuText3 BackgroundTrans 0x200, % "  Self contained scripts"
    Gui, Add, Text, cWhite vMenuText4 HwndhMenuText4 BackgroundTrans 0x200, % "   Tagging"
    Gui, Add, Text, cWhite vMenuText5 HwndhMenuText5 BackgroundTrans 0x200, % "   Mouse Configuration"
    Gui, Add, Text, cWhite vMenuText6 HwndhMenuText6 BackgroundTrans 0x200, % "   Tscripts"
    Gui, Add, Text, cWhite vMenuText7 HwndhMenuText7 BackgroundTrans 0x200, % "   Multilingual Scrips"
    Gui, Add, Text, cWhite vMenuText8 HwndhMenuText8 BackgroundTrans 0x200, % "   Experiments"

    VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(GuiHwnd, TME, 8)

    Gui, Font, s11, Segoe UI
    Gui, Add, Text, cWhite vMenuTextExperimentsSubTabs1 HwndhMenuTextExperimentsSubTabs1 BackgroundTrans 0x200, % "  Experiments page 1"
    Gui, Add, Text, cWhite vMenuTextExperimentsSubTabs2 HwndhMenuTextExperimentsSubTabs2 BackgroundTrans 0x200, % "  Experiments page 2"
    Gui, Add, Text, cWhite vMenuTextExperimentsSubTabs3 HwndhMenuTextExperimentsSubTabs3 BackgroundTrans 0x200, % "  Experiments page 3"
    Gui, Add, Text, cWhite vMenuTextExperimentsSubTabs4 HwndhMenuTextExperimentsSubTabs4 BackgroundTrans 0x200, % "  Experiments page 4"

    VarSetCapacity(TME, 16, 0), NumPut(16, TME, 0), NumPut(2, TME, 4), NumPut(GuiHwnd, TME, 8)

    GuiControlGet, MenuText1PosInitial , Pos, MenuText1 
    GuiControlGet, MenuText2PosInitial , Pos, MenuText2
    GuiControlGet, MenuText3PosInitial , Pos, MenuText3 
    GuiControlGet, MenuText4PosInitial , Pos, MenuText4
    GuiControlGet, MenuText5PosInitial , Pos, MenuText5
    GuiControlGet, MenuText6PosInitial , Pos, MenuText6
    GuiControlGet, MenuText7PosInitial , Pos, MenuText7
    GuiControlGet, MenuText8PosInitial , Pos, MenuText8

    GuiControl, MoveDraw, MenuSelect, % "x" 10 " y" 1 " w" 80 " h" 4
    GuiControl, MoveDraw, MenuSelectPurple, % "x" 10 " y" 1 " w" 80 " h" 4

    GuiControlGet, MenuText1Pos, Pos, MenuText1  

    GuiControl, MoveDraw, MenuText1, % "x" 1 " y" 1 " w" MenuText1PosInitialW+30 " h" 48
    GuiControlGet, MenuText1Pos, Pos, MenuText1  

    GuiControl, MoveDraw, MenuText2, % "x" MenuText1PosX + MenuText1PosW " y" 1 " w" MenuText2PosInitialW+10 " h" 48
    GuiControlGet, MenuText2Pos, Pos, MenuText2  

    GuiControl, MoveDraw, MenuText3, % "x" MenuText2PosX + MenuText2PosW " y" 1 " w" MenuText3PosInitialW+10 " h" 48
    GuiControlGet, MenuText3Pos, Pos, MenuText3  
    GuiControl, MoveDraw, MenuText4, % "x" MenuText3PosX + MenuText3PosW " y" 1 " w" MenuText4PosInitialW+10 " h" 48
    GuiControlGet, MenuText4Pos, Pos, MenuText4
    GuiControl, MoveDraw, MenuText5, % "x" MenuText4PosX + MenuText4PosW " y" 1 " w" MenuText5PosInitialW+10 " h" 48
    GuiControlGet, MenuText5Pos, Pos, MenuText5  
    GuiControl, MoveDraw, MenuText6, % "x"  MenuText5PosX + MenuText5PosW " y" 1 " w" MenuText6PosInitialW+10 " h" 48
    GuiControlGet, MenuText6Pos, Pos, MenuText6  
    GuiControl, MoveDraw, MenuText7, % "x"  MenuText6PosX + MenuText6PosW " y" 1 " w" MenuText7PosInitialW+10 " h" 48
    GuiControlGet, MenuText7Pos, Pos, MenuText7 
    GuiControl, MoveDraw, MenuText8, % "x"  MenuText7PosX + MenuText7PosW " y" 1 " w" MenuText8PosInitialW+10 " h" 48

    GuiControlGet, MenuTextExperimentsSubTabs1PosInitial , Pos, MenuTextExperimentsSubTabs1 
    GuiControlGet, MenuTextExperimentsSubTabs2PosInitial , Pos, MenuTextExperimentsSubTabs2
    GuiControlGet, MenuTextExperimentsSubTabs3PosInitial , Pos, MenuTextExperimentsSubTabs3 
    GuiControlGet, MenuTextExperimentsSubTabs4PosInitial , Pos, MenuTextExperimentsSubTabs4

    GuiControl, MoveDraw, MenuTextExperimentsSubTabs1, % "x" 1 " y" 56 " w" MenuText1PosInitialW+80 " h" 48
    GuiControlGet, MenuTextExperimentsSubTabs1Pos, Pos, MenuTextExperimentsSubTabs1  
    GuiControl, MoveDraw, MenuTextExperimentsSubTabs2, % "x" MenuTextExperimentsSubTabs1PosX + MenuTextExperimentsSubTabs1PosW " y" 56 " w" MenuTextExperimentsSubTabs2PosInitialW+10 " h" 48
    GuiControlGet, MenuTextExperimentsSubTabs2Pos, Pos, MenuTextExperimentsSubTabs2  
    GuiControl, MoveDraw, MenuTextExperimentsSubTabs3, % "x" MenuTextExperimentsSubTabs2PosX + MenuTextExperimentsSubTabs2PosW " y" 56 " w" MenuTextExperimentsSubTabs3PosInitialW+10 " h" 48
    GuiControlGet, MenuTextExperimentsSubTabs3Pos, Pos, MenuTextExperimentsSubTabs3  
    GuiControl, MoveDraw, MenuTextExperimentsSubTabs4, % "x" MenuTextExperimentsSubTabs3PosX + MenuTextExperimentsSubTabs3PosW " y" 56 " w" MenuTextExperimentsSubTabs4PosInitialW+10 " h" 48
    GuiControlGet, MenuTextExperimentsSubTabs4Pos, Pos, MenuTextExperimentsSubTabs4


    MenuTextExperimentsSubTabs1PosX := MenuTextExperimentsSubTabs1PosX+MenuTextExperimentsSubTabs1PosW-1
    MenuTextExperimentsSubTabs1PosY := MenuTextExperimentsSubTabs1PosY
    GuiControl, MoveDraw, LineA, % "x" MenuTextExperimentsSubTabs1PosX " y" MenuTextExperimentsSubTabs1PosY

    ; GuiControlGet, MenuTextExperimentsSubTabs2Pos, Pos, MenuTextExperimentsSubTabs2
    MenuTextExperimentsSubTabs2PosX := MenuTextExperimentsSubTabs2PosX+MenuTextExperimentsSubTabs2PosW-1
    MenuTextExperimentsSubTabs2PosY := MenuTextExperimentsSubTabs2PosY
    GuiControl, MoveDraw, LineB, % "x" MenuTextExperimentsSubTabs2PosX " y" MenuTextExperimentsSubTabs2PosY

    MenuTextExperimentsSubTabs3PosX := MenuTextExperimentsSubTabs3PosX+MenuTextExperimentsSubTabs3PosW-1
    MenuTextExperimentsSubTabs3PosY := MenuTextExperimentsSubTabs3PosY
    GuiControl, MoveDraw, LineC, % "x" MenuTextExperimentsSubTabs3PosX " y" MenuTextExperimentsSubTabs3PosY

    MenuTextExperimentsSubTabs4PosX := MenuTextExperimentsSubTabs4PosX+MenuTextExperimentsSubTabs4PosW-1
    MenuTextExperimentsSubTabs4PosY := MenuTextExperimentsSubTabs4PosY
    GuiControl, MoveDraw, LineD, % "x" MenuTextExperimentsSubTabs4PosX " y" MenuTextExperimentsSubTabs4PosY


    HideOtherTabs()

    Gui, Color, 000000, FFFFFF
    xpos := xpos
    ypos := ypos
    Gui, Show, x35 y45 w1280 h900, Helpy

    SplashTextOff
    RemoveToolTipClipboard_help2()

    OnMessage(0x0200, "WM_MOUSEMOVE")

    ; WinWaitNotActive, ahk_id %current_ID%
    ; previous_ID := current_ID
    ; GroupAdd, MyGui, % "ahk_id " . WinExist()
    OnMessage(0x114, "OnScroll") ; WM_HSCROLL
    Gui, +LastFound
    WinSet, Redraw ; 0x800000 is WS_BORDER.

return

GuiClose: 
ExitSub:
; MsgBox, "ffff"
    ExitApp
return

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
        #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\helpy2GuiConfig_version_for_direct_calling.ahk
    ; }

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\helpy2GuiConfig.ahk

AutoStartControllerV2:

    IniRead, OutputVar, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
    If (OutputVar == 1)
    {
    Gosub, CheckCheckbox19V2
    }

return

; PythonRedditScriptV2:
; return

ChangeIni19V2:
    IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
    IniWrite, 0, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
return

UnChangeIni19V2:
    IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
    IniWrite, 1, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
return

CheckCheckbox19V2:
    GuiControl, Focus, PythonRedditScript,
    ControlSend,, {Space}, Autohotkey.ahk
return

UncheckCheckbox19V2:
    GuiControl, Focus, PythonRedditScript,
    ControlSend,, {Space}, Autohotkey.ahk
return

; GuiClose:
19GuiCloseV2:
    Gui Cancel
    GuiControlGet, Checked,,PythonRedditScript
    ; MsgBox, %Checked%
    If (Checked == 1)
    {
        Gosub, UnChangeIni19V2
    }
    If (Checked == 0)
    {
        Gosub, ChangeIni19V2
    }
Return

; ManuallyStartPythonRedditScriptV2:
;   FileLocation = %A_ScriptDir%\StringBank.txt
;   KxzCWi_RiFqi81eDi = % getStringFromBank("sFgLhE4EiiLUmiCF", FileLocation)
;   K2hHnguiQDvyiCWlm = % getStringFromBank("3i1Hb0q8Bkb9Ri8m", FileLocation)
;   KA0Su6ickIUkZpjNi = % getStringFromBank("i6EOUbEivkLs9s2e", FileLocation)
;   KiviPiiqnRvnivNxi = % getStringFromBank("i5i3tHTfrlqgii_0", FileLocation)
;   KvRziCrD_VjPi8ORi = % getStringFromBank("3ai45tJ3S3sy5piw", FileLocation)

;   commands=
;   (join&
;   echo off
;   cd `%userprofile`%\Documents\AHKHelpy\AHKassociatedFiles\BilingualScrips\PythonBot
;   python .\bot.py %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%
;   )
;   runwait, %comspec% /c %commands%
; Return


HideSelfContainedScripts() {
    Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
    {
        MyEdit = %A_LoopFileName%
    ; MsgBox, %MyEdit%
        HaystackSelfContainedScriptsShortcut := MyEdit
        NeedleSelfContainedScriptsShortcut := ".ahk"

        IfVarScriptsShortcut := % InStr(HaystackSelfContainedScriptsShortcut, NeedleSelfContainedScriptsShortcut)

        if (IfVarScriptsShortcut != 0)
        {
    ; MsgBox, %MyEdit%
            StringReplace, MyEdit, MyEdit, .ahk,, All
            StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
            StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
            StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
            StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
            StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
            StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
            StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
            StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
            StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
            StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
            StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
            StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
            StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
            StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
            StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
            StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
            StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
            StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
            StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
            StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
            StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
            StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
            StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
            StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
            StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
            StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
            StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
            StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
            StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
            StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
            StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
            StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
            StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

            ; MsgBox, %MyEdit%
            GuiControl, Hide, %MyEdit%
        }
        
    }
    Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
    {
        MyEdit = %A_LoopFileName%

        HaystackSelfContainedScriptsShortcut := MyEdit
        NeedleSelfContainedScriptsShortcut := ".lnk"

        IfVarScriptsShortcut := % InStr(HaystackSelfContainedScriptsShortcut, NeedleSelfContainedScriptsShortcut)

        if (IfVarScriptsShortcut != 0)
        {
    ; MsgBox, %MyEdit%
        StringReplace, MyEdit, MyEdit, .lnk,, All
        StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
        StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
        StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
        StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
        StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
        StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
        StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
        StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
        StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
        StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
        StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
        StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
        StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
        StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
        StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
        StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
        StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
        StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
        StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
        StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
        StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
        StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
        StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
        StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
        StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
        StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
        StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
        StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
        StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
        StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
        StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
        StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
        StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

    ; MsgBox, %MyEdit%
        GuiControl, Hide, %MyEdit%
        }
    }

        GuiControl, Hide, WhiteLineNumberMainExe
        GuiControl, Hide, WhiteLineNumberMainExeText
        GuiControl, Hide, WhiteLineNumberMainShortcut
        GuiControl, Hide, WhiteLineNumberMainShortcutText
}

ShowSelfContainedScripts() {
Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
{
    MyEdit = %A_LoopFileName%

    HaystackSelfContainedScriptsShortcut := MyEdit
    NeedleSelfContainedScriptsShortcut := ".ahk"

    IfVarScriptsShortcut := % InStr(HaystackSelfContainedScriptsShortcut, NeedleSelfContainedScriptsShortcut)

    if (IfVarScriptsShortcut != 0)
    {
; MsgBox, %MyEdit%
        StringReplace, MyEdit, MyEdit, .ahk,, All
        StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
        StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
        StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
        StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
        StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
        StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
        StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
        StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
        StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
        StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
        StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
        StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
        StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
        StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
        StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
        StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
        StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
        StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
        StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
        StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
        StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
        StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
        StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
        StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
        StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
        StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
        StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
        StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
        StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
        StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
        StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
        StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
        StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

    GuiControl, Show, %MyEdit%
    }

}
Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
{
    MyEdit = %A_LoopFileName%

    HaystackSelfContainedScriptsShortcut := MyEdit
    ; NeedleSelfContainedScriptsShortcut := "nk"
    NeedleSelfContainedScriptsShortcut := ".lnk"

    IfVarScriptsShortcut := % InStr(HaystackSelfContainedScriptsShortcut, NeedleSelfContainedScriptsShortcut)
    ; MsgBox, %MyEdit%

    if (IfVarScriptsShortcut != 0)
    {
        ; MsgBox, %MyEdit%
        ; FileAppend, %MyEdit%, %A_ScriptDir%\Test.txt
        StringReplace, MyEdit, MyEdit, .lnk,, All
        StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
        StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
        StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
        StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
        StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
        StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
        StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
        StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
        StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
        StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
        StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
        StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
        StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
        StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
        StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
        StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
        StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
        StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
        StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
        StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
        StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
        StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
        StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
        StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
        StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
        StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
        StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
        StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
        StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
        StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
        StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
        StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
        StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

    ; MsgBox, %MyEdit%
    
    GuiControl, Show, %MyEdit%

    }
}

    GuiControl, Show, WhiteLineNumberMainExe
    GuiControl, Show, WhiteLineNumberMainExeText
    GuiControl, Show, WhiteLineNumberMainShortcut
    GuiControl, Show, WhiteLineNumberMainShortcutText
}

HideCommonlyUsedFunctions() {

    GuiControl, Hide, %MyEdit%

}

DalayedRunOfHelpy:

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
    ;    #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Helpy.ahk
    ; }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Helpy.ahk

return

DalayedRunOfCommonlyUsedFunctions:

    Gui, Tab, 2
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50 BackgroundTrans,


    ; Gui, Add, Text, vWhiteLineNumberMain2 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


    if(var_to_check_if_WhiteLineNumberMain2_exists == "0"){
        Gui, Add, Text, vWhiteLineNumberMain2 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    
    
        Gui, Add, Text, cWhite xp+50 yp+6 w1 h20 ,  
    ; Gui, Add, Text, xp+50 yp+10 , Page 2

    ; settimer, DalayedRunOfCommonlyUsedFunctions, -100

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
        #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\CommonlyUsedFunctions.ahk
    ; }

        var_to_check_if_WhiteLineNumberMain2_exists = 1
    }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\CommonlyUsedFunctions.ahk
    ; loadedRunOfCommonlyUsedFunctions = true
    ; IniWrite, %loadedRunOfCommonlyUsedFunctions%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean

return

DalayedRunOfSelfContainedScripts:

    Gui, Tab, 3
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans,
    ; Gui, Add, Text, vWhiteLineNumberMain3 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    if(var_to_check_if_WhiteLineNumberMain3_exists == 0){
        Gui, Add, Text, vWhiteLineNumberMain3 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


        Gui, Add, Text, cWhite xp+50 yp+6 w1 h20 ,    ;Horizontal Line > Etched Gray

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
        #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\SelfContainedScripts.ahk
    ; }

            var_to_check_if_WhiteLineNumberMain3_exists = 1
    }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\SelfContainedScripts.ahk
    ; loadedDalayedRunOfSelfContainedScripts = true
    ; IniWrite, %loadedDalayedRunOfSelfContainedScripts%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean1

; HideSelfContainedScripts()
return

DalayedRunOfPictures:
    Gui, Add, Picture, vMenuHover HwndhMenuHover Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover.png
    Gui, Add, Picture, vMenuPressed HwndhMenuPressed Hidden1, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-pressed.png
    Gui, Add, Picture, vMenuSelect HwndhMenuSelect, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel.png
    Gui, Add, Picture, vMenuSelectPurple HwndhMenuSelectPurple, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menusel-purple.png
    Gui, Add, Picture, vMenuAlternativeColour HwndhMenuAlternativeColour, %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-alternative-colour.png
return

DalayedRunOfMenuText4:

    Gui, Tab, 4
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans, 

    if(var_to_check_if_WhiteLineNumberMain4_exists == 0){
        Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain4 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


    ; Gui, Add, Text,  x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray
        Gui, Add, Text, cWhite xp+50 yp+20 w1 h20 ,  ;Horizontal Line > Etched Gray

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
        #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Tagging.ahk



        var_to_check_if_WhiteLineNumberMain4_exists = 1
    }
    ; }
    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Tagging.ahk
    ; loadedDalayedRunOfMenuText4 = true
    ; IniWrite, %loadedDalayedRunOfMenuText4%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean2

return

DalayedRunOfMenuText5:

    Gui, Tab, 5
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50 BackgroundTrans, 
    ; Gui, Add, Text, x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    if(var_to_check_if_WhiteLineNumberMain5_exists == 0){
        Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain5 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray



        Gui, Add, Text, cWhite xp+50 yp+20 w1 h20 ,  ;Horizontal Line > Etched Gray

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
        #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\MouseConfiguration.ahk
    ; }

        var_to_check_if_WhiteLineNumberMain5_exists = 1
    }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\MouseConfiguration.ahk
    ; loadedDalayedRunOfMenuText5 = true
    ; IniWrite, %loadedDalayedRunOfMenuText5%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean3

return

DalayedRunOfMenuText6:

    Gui, Tab, 6
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans,
    ; Gui, Add, Text, x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    if(var_to_check_if_WhiteLineNumberMain6_exists == 0){
        Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain6 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

        Gui, Add, Text, cWhite xp+50 yp+20 w1 h20 ,  
    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Tscripts.ahk

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
         #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\Tscripts_version_for_direct_calling.ahk
    ; }

        var_to_check_if_WhiteLineNumberMain6_exists = 1
    }


    ; loadedDalayedRunOfMenuText6 = true
    ; IniWrite, %loadedDalayedRunOfMenuText6%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean4

return

DalayedRunOfMenuText7:

    Gui, Tab, 7
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans,
    ; Gui, Add, Text, x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    if(var_to_check_if_WhiteLineNumberMain7_exists == 0){
        Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain7 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


        Gui, Add, Text, cWhite xp+50 yp+20 w1 h20 ,  

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
         #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\MultilingualScrips.ahk
    ; }

        var_to_check_if_WhiteLineNumberMain7_exists = 1
    }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\MultilingualScrips.ahk
    ; loadedDalayedRunOfMenuText7 = true
    ; IniWrite, %loadedDalayedRunOfMenuText7%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean5

return

DalayedRunOfMenuText8:

    Gui, Tab, 8
    Gui, Font, s14, Segoe UI
    Gui, Add, Text, cWhite x1 y50  BackgroundTrans,
    ; Gui, Add, Text, x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray

    if(var_to_check_if_WhiteLineNumberMain8_exists == 0){
        Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMain8 x10 yp+2 w1280 0x10  ;Horizontal Line > Etched Gray


        Gui, Add, Text, cWhite xp+50 yp+20 w1 h20 ,  

    ; if(Global_var_telling_if_CalledDirectly_or_Included == "Included"){
         #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\HelpySubTabs.ahk
    ; }

        var_to_check_if_WhiteLineNumberMain8_exists = 1
    }

    ; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\HelpySubTabs.ahk
    ; loadedDalayedRunOfMenuText8 = true
    ; IniWrite, %loadedDalayedRunOfMenuText8%, %A_ScriptDir%\AutohotkeyIniFile.ini, OpennedTabs, TabLoadedBoolean6

return

RemoveToolTipClipboard_help2()
{
SplashTextOff
}