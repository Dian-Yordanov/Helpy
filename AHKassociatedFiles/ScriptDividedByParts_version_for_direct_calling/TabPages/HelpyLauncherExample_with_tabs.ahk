   
; Gui, Example_with_tabs_:Add, Text, x5 y5 w150 0x10  ;Horizontal Line > Etched Gray
; Gui, Example_with_tabs_:Add, Text, x5 y5 h150 0x11  ;Vertical Line > Etched Gray
; Gui, Example_with_tabs_:Add, Text, x5 y155 w150 h1 0x7  ;Horizontal Line > Black
; Gui, Example_with_tabs_:Add, Text, x155 y5 w1 h150 0x7  ;Vertical Line > Black

Gui, Example_with_tabs_:Font, s11, Segoe UI

bottom_y_var = 450

Gui, Example_with_tabs_:Add, Text, xp+250 cFFFFFF h%bottom_y_var% section 0x11

Gui, Example_with_tabs_:Add, Button, gWinR x20 yp+15 hwndHBT1Helpy, Win+R
Gui, Example_with_tabs_:Add, Button, gCtrlA %k_Position% hwndHBT2Helpy, Ctrl+A
Gui, Example_with_tabs_:Add, Button, gCtrlF %k_Position% hwndHBT3Helpy, Ctrl+F
Gui, Example_with_tabs_:Add, Button, gCtrlW %k_Position% hwndHBT4Helpy, Ctrl+W

; Gui, Example_with_tabs_:Add, Text, xp+70 cFFFFFF h100 section 0x11
; Gui, Example_with_tabs_:Add, Text, xp+90 cFFFFFF h100 ys 0x11
Gui, Example_with_tabs_:Add, Text, x20 yp+40 BackgroundTrans

Gui, Example_with_tabs_:Add, Button, gStartLinuxHelpy hwndHBT5Helpy yp ,StartLinuxHelpy
Gui, Example_with_tabs_:Add, Button, %k_Position% gTimeManager hwndHBT8Helpy,TimeManager

; Gui, Example_with_tabs_:Add, Text, x20 yp+20 section BackgroundTrans

; Gui, Example_with_tabs_:Add, Text, xp+90 cFFFFFF h100 ys 0x11

; Gui, Example_with_tabs_:Add, Text, %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button, ys gClipboardMaster hwndHBTN,ClipboardMaster
; CCButton.Attach(HBTN, 0x008000)

;Gui, Example_with_tabs_:Add, Button, ys gLaunchBitwarden hwndHBTN,Bitwarden
;CCButton.Attach(HBTN, 0x0000FF)

; Gui, Example_with_tabs_:Add, Button, %k_Position% gLaunchEasyGitJS hwndHBTN,EasyGitJS
; CCButton.Attach(HBTN, 0xFF0000)

Gui, Example_with_tabs_:Add, Text, vBottom_Section yp+%bottom_y_var% x20 cFFFFFF w2000 section 0x10  

Gui, Example_with_tabs_:Add, Text, xs yp+20 cWhite, Left mouse click context menu toggle:
Gui, Example_with_tabs_:Add, Picture, xp+360 yp-8 +BackgroundTrans vCheckboxSwitchingButtonLauncher1 gCheckboxSwitchingButtonLauncherFunction1, %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\off.png
Gui, Example_with_tabs_:Add, Picture, xp yp +BackgroundTrans vCheckboxSwitchingButtonLauncher2 gCheckboxSwitchingButtonLauncherFunction2 hidden, %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\on3.png

Gui, Example_with_tabs_:Add, Text, x20 yp+55 cWhite, Toggle for writting into ProgramUsedLogger.txt:
Gui, Example_with_tabs_:Add, Picture, xp+360 yp-8 +BackgroundTrans vProgramUsedLogger_CheckboxSwitchingButton1 gProgramUsedLogger_CheckboxSwitchingButton_function1, %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\off.png
Gui, Example_with_tabs_:Add, Picture, xp yp +BackgroundTrans vProgramUsedLogger_CheckboxSwitchingButton2 gProgramUsedLogger_CheckboxSwitchingButton_function2 hidden, %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\on3.png

IniRead, OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

If (OutputVar == 0)
{

    CheckboxSwitchingButtonLauncheri := 2
    GuiControl Hide, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    GuiControl, +Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    CheckboxSwitchingButtonLauncheri := 1
    GuiControl Show, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    GuiControl, -Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%

}
Else 
{

    CheckboxSwitchingButtonLauncheri := 1
    GuiControl Hide, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    GuiControl, +Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    CheckboxSwitchingButtonLauncheri := 2
    GuiControl Show, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    GuiControl, -Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%

}

IniRead, OutputVar2, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, boolean_for_helpy_ProgramUsedLogger

If (OutputVar2 == 0)
{

    ProgramUsedLogger_CheckboxSwitchingButtoni := 2
    GuiControl Hide, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, +Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    ProgramUsedLogger_CheckboxSwitchingButtoni := 1
    GuiControl Show, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, -Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%

}
Else 
{

    ProgramUsedLogger_CheckboxSwitchingButtoni := 1
    GuiControl Hide, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, +Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    ProgramUsedLogger_CheckboxSwitchingButtoni := 2
    GuiControl Show, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, -Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%

}


;   _                       _    __             ____        _   _                  
;  | |                     | |  / _|           |  _ \      | | | |                 
;  | |____      ___ __   __| | | |_ ___  _ __  | |_) |_   _| |_| |_ ___  _ __  ___ 
;  | '_ \ \ /\ / / '_ \ / _` | |  _/ _ \| '__| |  _ <| | | | __| __/ _ \| '_ \/ __|
;  | | | \ V  V /| | | | (_| | | || (_) | |    | |_) | |_| | |_| || (_) | | | \__ \
;  |_| |_|\_/\_/ |_| |_|\__,_| |_| \___/|_|    |____/ \__,_|\__|\__\___/|_| |_|___/
                                                                                 
Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
ImageButton.Create(HBT1Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT2Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT3Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT4Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT5Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT6Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT7Helpy, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT8Helpy, Opt1, Opt2, , , Opt5)



