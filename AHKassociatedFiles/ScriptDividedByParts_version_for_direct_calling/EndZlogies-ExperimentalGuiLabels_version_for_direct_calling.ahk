
;|EndZlogies-ExperimentalGuiLabels||SEARCHINDICATOR|
;   ______           _ _______             _                  ______                      _                      _        _  _____       _ _           _          _     
;  |  ____|         | |___  / |           (_)                |  ____|                    (_)                    | |      | |/ ____|     (_) |         | |        | |    
;  | |__   _ __   __| |  / /| | ___   __ _ _  ___  ___ ______| |__  __  ___ __   ___ _ __ _ _ __ ___   ___ _ __ | |_ __ _| | |  __ _   _ _| |     __ _| |__   ___| |___ 
;  |  __| | '_ \ / _` | / / | |/ _ \ / _` | |/ _ \/ __|______|  __| \ \/ / '_ \ / _ \ '__| | '_ ` _ \ / _ \ '_ \| __/ _` | | | |_ | | | | | |    / _` | '_ \ / _ \ / __|
;  | |____| | | | (_| |/ /__| | (_) | (_| | |  __/\__ \      | |____ >  <| |_) |  __/ |  | | | | | | |  __/ | | | || (_| | | |__| | |_| | | |___| (_| | |_) |  __/ \__ \
;  |______|_| |_|\__,_/_____|_|\___/ \__, |_|\___||___/      |______/_/\_\ .__/ \___|_|  |_|_| |_| |_|\___|_| |_|\__\__,_|_|\_____|\__,_|_|______\__,_|_.__/ \___|_|___/
;                                     __/ |                              | |                                                                                            
;                                    |___/                               |_|                                                                                            

ExperimentsGui2:
Gui, 21:Destroy
; Gui, 21:Add, Groupbox, h1000 w1650,
Gui, 21:Add, Button, xm gTextToSpeechUsingCliAndNoInstalls x20 yp+25,TextToSpeechUsingCliAndNoInstalls
Gui, 21:Add, Edit, xm w60 ReadOnly x20 yp+25, Rainlander
Gui, 21:Add, Button, %k_Position% gSaveToRainlanderFromHelpy,SaveToRainlanderFromHelpy
Gui, 21:Add, Button, %k_Position% gChangeRainlanderSizeStartingAt500,ChangeRainlanderSizeStartingAt500
Gui, 21:Add, Button, xm x20 yp+25 g2ndButtonOfHelpylander,2ndButtonOfHelpylander
Gui, 21:Add, Button, %k_Position% g3rdButtonOfHelpylander,3rdButtonOfHelpylander
Gui, 21:Add, Button, xm x20 yp+25 gRunAutoGUI,RunAutoGUI
Gui, 21:Add, Button, xm x20 yp+25 gRunCodeQuickTester,RunCodeQuickTester
Gui, 21:Add, Button, xm x20 yp+25 gRunLiveXGraph,RunLiveXGraph
Gui, 21:Add, Button, xm x20 yp+25 gRunBarChartExample1,RunBarChartExample1
Gui, 21:Add, Button, xm x20 yp+25 gSQLiteINSERTINTOxVALUES,SQLiteINSERTINTOxVALUES
Gui, 21:Add, Button, xm x20 yp+25 gSQLiteSELECT*FROM,SQLiteSELECT*FROM
Gui, 21:Add, Button, xm x20 yp+25 gSQLiteExampleAdjustedToWorkWithHelpy,SQLiteExampleAdjustedToWorkWithHelpy
Gui, 21:Add, Button, xm x20 yp+25 gSQLiteSELECTFROMGetSpecificColumnAndUseInClipboard,SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard
Gui, 21:Add, Button, xm x20 yp+25 gCtrlDown,CtrlDown
Gui, 21:Add, Button, xm x20 yp+25 gCtrlUp,CtrlUp
Gui, 21:Add, Button, xm x20 yp+25 gIsCtrlDown,IsCtrlDown
Gui, 21:Add, Button, xm x20 yp+25 gActivateMouseClicker,ActivateMouseClicker
;Gui, 21:Add, Button, xm x20 yp+25 gTRANSFERBrowserAddons,TRANSFERBrowserAddons

; Gui, 21:Add, ListView, xm x20 yp+25 w200 h200 HwndResultsLV1 +LV0x00010000 AltSubmit

; Gui, 21:Add, Button, xm x20 yp+25 gRunWebapp,RunWebapp
Gui, 21:Add, ActiveX, x500 y0 w640 h480 vWB, Shell.Explorer  ; The final parameter is the name of the ActiveX component.
WB.silent := true ;Surpress JS Error boxes
Display_local_EndZlogies(WB,HTML_page_FromFile)
ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.

; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
Gui, 21:Font, s18 cRed Bold, Verdana
Gui, 21:Color, 000000, FFFFFF
Gui, 21:Show, h700 w1200 x640 y65, Helpy3
return

class WB_events
{
	;for more events and other, see http://msdn.microsoft.com/en-us/library/aa752085

	NavigateComplete2(wb) {
		wb.Stop() ;blocked all navigation, we want our own stuff happening
	}
	DownloadComplete(wb, NewURL) {
		wb.Stop() ;blocked all navigation, we want our own stuff happening
	}
	DocumentComplete(wb, NewURL) {
		wb.Stop() ;blocked all navigation, we want our own stuff happening
	}

	BeforeNavigate2(wb, NewURL)
	{
		wb.Stop() ;blocked all navigation, we want our own stuff happening
		;parse the url
		global MYAPP_PROTOCOL
		if (InStr(NewURL,MYAPP_PROTOCOL "://")==1) { ;if url starts with "myapp://"
			what := SubStr(NewURL,Strlen(MYAPP_PROTOCOL)+4) ;get stuff after "myapp://"
			if InStr(what,"msgbox/hello")
				MsgBox, Hello world!2
			else if InStr(what,"soundplay/ding")
				SoundPlay, %A_WinDir%\Media\ding.wav
            else if InStr(what,"option4")
                MsgBox 1234
		}
		;else do nothing
	}
}

Display_local_EndZlogies(WB,html_str) {
	Count:=0
	while % FileExist(f:=A_Temp "\" A_TickCount A_NowUTC "-tmp" Count ".DELETEME.html")
		Count+=1
	FileAppend,%html_str%,%f%
	WB.Navigate("file://" . f)
}

Navigation:
CoordMode, Mouse, Screen
Loop, read, %A_ScriptDir%\Autohotkey.ahk
    IfInString, A_LoopReadLine, `;|SL|%A_SPACE%
    {
        StringReplace, A_LoopReadLine1, A_LoopReadLine, `;|SL|,, All
        ; StringReplace, A_LoopReadLine2, A_LoopReadLine1, |,, All
        StringSplit, word_array, A_LoopReadLine1, ||, .  ; Omits periods.
        ; MsgBox, %word_array1% %word_array3%.
        A_LoopReadLine2 = %word_array1%
        gotoButton = %A_LoopReadLine2%
        word_array3 = 0x%word_array3%

        MyVar := CVar(gotoButton) ; create a variable o1bject
        OnClick := Func("OnClick").Bind(MyVar) ; bind it to your glabel/function
        Gui, 3:Add, Button, w200 r1 hwndhButton%a_index% Left, %gotoButton%

        Opt1 := [0,word_array3]         ; normal flat background & text color
        Opt2 := [ , "Red"]
        Opt3 := {4: "Red"}                                      ; hot flat background color
        Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
        ImageButton.Create(hButton%a_index%, Opt1)
        ;     MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
        GuiControl, % hButton%a_index%, Button%a_index% ;+v
        GuiControl, +g, % hButton%a_index%, %OnClick%
    }
Gui, Font, s18 cRed Bold, Verdana
GuiControl, Font, MyEdit
Gui, 3:Color, 000000, FFFFFF
Gui, 3:Show, x65 y65, Helpy3
MouseMove, 65, 540
return
Gui, Show
return
OnClick(args*)
{
    test := args[1], value := test.Value
    closeHelpyAfterExecutingCommands()
    sleep, 100
    WinActivate ahk_id %previous_ID%
    sleep, 100
    SendInput {Lctrl down}
    SendInput {f}
    SendInput {Lctrl up}
    sleep, 100
    SendInput, %value%
    ; MsgBox %value% ; read value
}
CVar(value)
{return new CVariable(value)
}
class CVariable
{__New(value)
    {this.Value := value
    }
    Value {
        get {
            return this._Value
        }
        set {
            return this._Value := value
        }
    }
}
Tscrips:
Gui, 20:Destroy
BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
BkColor   := 0xFFFF8F   ; Background Color | BGR (BLUE - GREEN - RED)
BkColor3   := 0x001111   ; Background Color | BGR (BLUE - GREEN - RED)
TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
;OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; Gui, 20:Add, Groupbox, h1000 w1650,

; Gui, 20:Add, Edit, xm w250 h20 x100 vLabelView,
; Gui, 20:Add, Edit, w250 h20 %k_Position% vTscriptEditView,
; Gui, 20:Add, Edit, xm w60 ReadOnly x20 yp+25, Sound
; Gui, 20:Add, Button, w250 h20 %k_Position% gFastCreateTscrips,FastCreateTscrips

Gui, 20:Add, Button, w250 h20 %k_Position% gFastCreateTscrips,FastCreateTscrips



#Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\TScriptsData_version_for_direct_calling.ahk




; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
Gui, 20:Font, s18 cRed Bold, Verdana
Gui, 20:Color, 000000, FFFFFF
Gui, 20:Show, h900 w650 x65 y65,
; MsgBox, "works"
return

MultilingualScripts:
Gui, 19:Destroy
Gui, 19:Font, s12 cRed Bold, Verdana
; Gui, 19:Add, Groupbox, h250 w950,
Gui, 19:Add, Checkbox, vPythonRedditScript gPythonRedditScript, PythonRedditScript
Gui, 19:Add, Button, %k_Position% gManuallyStartPythonRedditScript, ManuallyStartPythonRedditScript
; Gui, 19:Add, Checkbox,vPythonRedditScript1 gPythonRedditScript1, PythonRedditScript1
Gui, 19:Color, 000000, FFFFFF
Gui, 19:Show, h500 w550 x65 y65,

Gosub, AutoStartController
return

AutoStartController:

IniRead, OutputVar, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
If (OutputVar == 1)
{
  Gosub, CheckCheckbox19
}

return

PythonRedditScript:
return

ChangeIni19:
IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
IniWrite, 0, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
return
UnChangeIni19:
IniDelete, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
IniWrite, 1, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
return
CheckCheckbox19:
GuiControl, 19:Focus, PythonRedditScript,
ControlSend,, {Space}, Autohotkey.ahk
return
UncheckCheckbox19:
GuiControl, 19:Focus, PythonRedditScript,
ControlSend,, {Space}, Autohotkey.ahk
return

; GuiClose:
19GuiClose:
Gui 19:Cancel
GuiControlGet, Checked,,PythonRedditScript
; MsgBox, %Checked%
If (Checked == 1)
{
    Gosub, UnChangeIni19
}
If (Checked == 0)
{
    Gosub, ChangeIni19
}
Return

ManuallyStartPythonRedditScript:
  FileLocation = %A_ScriptDir%\StringBank.txt
  KxzCWi_RiFqi81eDi = % getStringFromBank("sFgLhE4EiiLUmiCF", FileLocation)
  K2hHnguiQDvyiCWlm = % getStringFromBank("3i1Hb0q8Bkb9Ri8m", FileLocation)
  KA0Su6ickIUkZpjNi = % getStringFromBank("i6EOUbEivkLs9s2e", FileLocation)
  KiviPiiqnRvnivNxi = % getStringFromBank("i5i3tHTfrlqgii_0", FileLocation)
  KvRziCrD_VjPi8ORi = % getStringFromBank("3ai45tJ3S3sy5piw", FileLocation)

  commands=
  (join&
  echo off
  cd `%userprofile`%\Documents\AHKHelpy\AHKassociatedFiles\BilingualScrips\PythonBot
  python .\bot.py %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%
  )
  runwait, %comspec% /c %commands%
Return

Navigation1:
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
Control Uncheck,, Button13

CheckboxSwitchingButtoni := 1
GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%

; OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

;   commands=
;   (join&
; taskkill /im "autohotkey.exe" 
;   )
;   runwait, %comspec% /c %commands%
Return

Navigation2:
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 1, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
Control Check,, Button13

CheckboxSwitchingButtoni := 2
GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%

; OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

; Run, %A_ScriptDir%\AHKDaemon\Cyber_Clip.ahk
Return

Navigation3:
; MsgBox, "gggg"
Return

CheckboxSwitchingButtonLauncherFunction1:
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 1, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

; Control Check,, Button13

CheckboxSwitchingButtonLauncheri := 2
GuiControl Hide, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
GuiControl, +Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    CheckboxSwitchingButtonLauncheri := 3 - CheckboxSwitchingButtonLauncheri
GuiControl Show, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
GuiControl, -Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%

; Run, %A_ScriptDir%\AHKDaemon\Cyber_Clip.ahk, , , PID1

Run, %A_ScriptDir%\AHKDaemon\Cyber_Clip\Cyber_Clip.ahk


; Run, %A_ScriptDir%\AHK\ahkprivate\AHKassociatedFiles\LinuxRelatedFiles\WindowsQtC++Helpy\debug\QtHelpy.exe, , , PID1
; Run, %A_ScriptDir%\AHK\ahkprivate\AHKassociatedFiles\LinuxRelatedFiles\EasyToCallFolder\debug\LeftClickContextMenu.exe, , , PID1

Return

CheckboxSwitchingButtonLauncherFunction2:
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

; Control Uncheck,, Button13

CheckboxSwitchingButtonLauncheri := 1
GuiControl Hide, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
GuiControl, +Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
    CheckboxSwitchingButtonLauncheri := 3 - CheckboxSwitchingButtonLauncheri
GuiControl Show, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%
GuiControl, -Redraw, CheckboxSwitchingButtonLauncher%CheckboxSwitchingButtonLauncheri%


    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Cyber_Clip.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

    ; Get the PID of the window with the title matching the format "*\Scriptname - AutoHotkey v*"
    WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"
    ; MsgBox, % Script "'s PID is:`n" PID

    Process, Close, % PID


; Process, Close, % PID1
; Process, Close, % PID2
Return

ProgramUsedLogger_CheckboxSwitchingButton_function1:
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, boolean_for_helpy_ProgramUsedLogger
    IniWrite, 1, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, boolean_for_helpy_ProgramUsedLogger

; Control Check,, Button13

    ProgramUsedLogger_CheckboxSwitchingButtoni := 2
    GuiControl Hide, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, +Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    ProgramUsedLogger_CheckboxSwitchingButtoni := 3 - ProgramUsedLogger_CheckboxSwitchingButtoni
    GuiControl Show, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, -Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%

return

ProgramUsedLogger_CheckboxSwitchingButton_function2:
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, boolean_for_helpy_ProgramUsedLogger
    IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, boolean_for_helpy_ProgramUsedLogger

; Control Uncheck,, Button13

    ProgramUsedLogger_CheckboxSwitchingButtoni := 1
    GuiControl Hide, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, +Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    ProgramUsedLogger_CheckboxSwitchingButtoni := 3 - ProgramUsedLogger_CheckboxSwitchingButtoni
    GuiControl Show, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%
    GuiControl, -Redraw, ProgramUsedLogger_CheckboxSwitchingButton%ProgramUsedLogger_CheckboxSwitchingButtoni%

return