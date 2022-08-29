
;|EndZlogies||SEARCHINDICATOR|
; ______           _ _______             _
; |  ____|         | |___  / |           (_)
; | |__   _ __   __| |  / /| | ___   __ _ _  ___  ___
; |  __| | '_ \ / _` | / / | |/ _ \ / _` | |/ _ \/ __|
; | |____| | | | (_| |/ /__| | (_) | (_| | |  __/\__ \
; |______|_| |_|\__,_/_____|_|\___/ \__, |_|\___||___/
;                                   __/ |
;                                  |___/

Experiments:
CoordMode, Mouse, Screen
Gui, 2:Destroy
Gui, 2:Add, Groupbox,w550 h950,
Gui, 2:Add, Button, xm gTEST x20 yp+15,Test
Gui, 2:Add, Button, xm gTESTMsgbox x20 yp+25,TESTMsgbox
Gui, 2:Add, Button, xm gIFTTTsimpleFunction x20 yp+25,IFTTT
Gui, 2:Add, Button, xm gExperimentForTaskbarTransperency x20 yp+25,ExperimentForTaskbarTransperency
Gui, 2:Add, Button, xm gSearch x20 yp+25,Search
Gui, 2:Add, Button, xm gSpreedThat x20 yp+25,SpreedThat
Gui, 2:Add, Button, xm gDoubleSearch x20 yp+25,DoubleSearch
Gui, 2:Add, Button, xm gSaveInfo x20 yp+25,SaveInfo
Gui, 2:Add, Button, xm gBooleanLaunch x20 yp+25,BooleanLaunch
Gui, 2:Add, Button, xm gActivateClipboard x20 yp+25,CP ActivateClipboard
Gui, 2:Add, Button, xm gMPLaunchTL x20 yp+25,TopLeft
Gui, 2:Add, Button, %k_Position% gMPLaunchTR x20 yp+25,TopRight
Gui, 2:Add, Button, xm  gMPLaunchBL x20 yp+25 ,BotLeft
Gui, 2:Add, Button, %k_Position% gMPLaunchBR x20 yp+25 ,BotRight
Gui, 2:Add, Button, xm  gSwitchWindow x20 yp+25,SwitchWindow
; Gui, 2:Add, Button, xm gNavigation,Navigation
Gui, 2:Add, Button, xm gSoundy x20 yp+25,Soundy
Gui, 2:Add, Button, xm gSpreedThatArticle x20 yp+25,SpreedThatArticle
Gui, 2:Add, Button, xm gtesttest x20 yp+25,imagetest
Gui, 2:Add, Button, gRunMasterPassword %k_Position% ,RunMasterPassword
Gui, 2:Add, Button, gRunCliMasterPassword %k_Position% ,RunCliMasterPassword
Gui, 2:Add, Button, xm gSaveATicket x20 yp+25,SaveATicket
Gui, 2:Add, Button, xm gAddToXyengine x20 yp+25,Add to Xyengine
; Gui, 2:Add, Button, xm gManagePasswordsFromUrl x20 yp+25,ManagePasswordsFromUrl
; Gui, 2:Add, Button, xm gChromeOnlineManagePasswordsFromUrl x20 yp+25,ChromeOnlineManagePasswordsFromUrl
Gui, 2:Add, Button, xm gDateOfScript x20 yp+25,DateOfScript
Gui, 2:Add, Button, xm gDate x20 yp+25,Date
Gui, 2:Add, Button, xm gSearchForAStringInFiles x20 yp+25,SearchForAStringInFiles
Gui, 2:Add, Button, xm gIPHelperGUI x20 yp+25,IPHelperGUI
Gui, 2:Add, Button, xm gEditBoxToShowRandomString x20 yp+25,RandomGenerationFunction
global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
Gui, 2:Add, Edit, xm w100 ReadOnly  x20 yp+25,ReadWrite
Gui, 2:Add, Edit, xm w100 x20 yp+25,          ReadWrite
Gui, 2:Add, Edit, xm w100 ReadOnly x20 yp+25, ReadOnly
Gui, 2:Add, Edit, xm w100 x20 yp+25,          ReadWrite
Gui, 2:Add, Edit, xm w100 ReadOnly x20 yp+25, ReadOnly
Gui, 2:Add, Edit, xm w100 ReadOnly x20 yp+25, services.msc

Gui, 2:Add, Button, xm w100 x20 yp+25 hwndExOrb cFF5733,ExOrb

ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
; ExOrb1 := [0, 0x00FFFFFF, "White", , "White", 4]         ; normal flat background & text color
; ExOrb2 := [ , "red"]
; ExOrb3 := {5: "White"}                                      ; hot flat background color
; ExOrb4 := [ , , ,"White"]                                      ; defaulted text color -> animation

; Opt1 := [0, 0x80CF0000, , "White", "H", , "red", 4]         ; normal flat background & text color
; Opt2 := [ , "White"]                                          ; hot flat background color
; Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation

If !ImageButton.Create(ExOrb, ExOrb1, ExOrb2, ExOrb3, , ExOrb4)
   MsgBox, 0, ImageButton Error ExOrb, % ImageButton.LastError

Gui, 2:Add, Edit, xm w100 ReadOnly x20 yp+25 , services.msc

Gui_2AddPicture("xm w100 h20 x20 yp+25", "FF FF FF") ; background
Gui, 2:Add, Text, xm w100 x20 yp hp cFF5733 BackgroundTrans Center 0x200 E0x200, Label 3

Gui, 2:Add, Edit, xm w150 ReadOnly x20 yp+25, % RandomGenerationFunction()
Gui_2AddPicture("xm w100 h20 x20 yp+25", "FF 00 99") ; background
Gui, 2:Add, Text, xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3
Gui_2AddPicture("xm w100 h20 x20 yp+25", "FF 57 33") ; background
Gui, 2:Add, Text, xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3

; GuiControl,, 2:Label1, New text line 1.`nNew text line 2.
; GuiControl, 2:, Label1, New Text 1

; GuiControl, 2:, MirrorOfKalandra, New Text 1
; GuiControl, 2:, MirrorOfKalandra, +Border, New Text 1
; GuiControl, +Border, 2:, MirrorOfKalandra, New Text 1
; GuiControl, 2:, MirrorOfKalandra, New Text 1
; GuiControl, % hButton%a_index%, Button%a_index% ;+v
; GuiControl, +g, % hButton%a_index%, %OnClick%

; Gui, 2:Add, Edit, xm w100 ReadOnly x20 yp+25, services.msc
; Gui, 2:Add, Text, 0x5 w100,
; Gui, 2:Add, Text, xp0 yp0 +BackgroundTrans, This is a test



; Gui, 2:Add, Groupbox, w100 h150 section ym,
; Gui, 2:Add, Edit, gReleaseIP x580 yp+15, services.msc
; Gui, 2:Add, Button, gRenewIP x580 yp+25 , Renew IP
; Gui, 2:Add, Button, gFlushDNS x580 yp+25 , Flush DNS
; Gui, 2:Add, Button, gGetExternalIP x580 yp+25 , External IP

Gui, 2:Font, s18 cRed Bold, Verdana
GuiControl, 2:Font, MyEdit
Gui, 2:Color, 000000, FFFFFF
Gui, 2:Show, x65 y65, Helpy2
MouseMove, 65, 340
WinSet, Redraw,, Helpy2

Gosub, ExperimentsGui2

; WinWaitNotActive, ahk_id %current_ID%
; previous_ID := current_ID
;x%xpos% y%ypos%, 2
return

; __Webapp_AppStart:
; ;<< Header End >>

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

; Gui, 21:Add, ListView, xm x20 yp+25 w200 h200 HwndResultsLV1 +LV0x00010000 AltSubmit

; Gui, 21:Add, Button, xm x20 yp+25 gRunWebapp,RunWebapp
Gui, 21:Add, ActiveX, x500 y0 w640 h480 vWB, Shell.Explorer  ; The final parameter is the name of the ActiveX component.
WB.silent := true ;Surpress JS Error boxes
Display(WB,HTML_page_FromFile)
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
				MsgBox Hello world!
			else if InStr(what,"soundplay/ding")
				SoundPlay, %A_WinDir%\Media\ding.wav
            else if InStr(what,"option4")
                MsgBox 1234
		}
		;else do nothing
	}
}

Display(WB,html_str) {
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



#Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TScriptsData.ahk




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
