

Gui, Add, Text, x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray
Gui, Add, Tab2, vExperimentsSubTabs x0 y0 w0 h0 +Theme -Wrap AltSubmit Choose1 xp+50, a|b|c|d ; note that the position is x-100, so it wont show up in the gui

Gui, Font, s8, Verdana

Gui, tab, a

; Gui, Add, Checkbox, vMyCheckbox2 xp+20 yp+200, Sample checkbox
Gui, Add, Text, w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray
Gui, Add, Button, xm gTEST x20 yp+10,Test
Gui, Add, Button, xm gTESTMsgbox x20 yp+25,TESTMsgbox
Gui, Add, Button, xm gIFTTTsimpleFunction x20 yp+25,IFTTT
;Gui, Add, Button, xm gExperimentForTaskbarTransperency x20 yp+25,ExperimentForTaskbarTransperency
Gui, Add, Button, xm gSearch x20 yp+25,Search
Gui, Add, Button, xm gSpreedThat x20 yp+25,SpreedThat
Gui, Add, Button, xm gDoubleSearch x20 yp+25,DoubleSearch
Gui, Add, Button, xm gSaveInfo x20 yp+25,SaveInfo
Gui, Add, Button, xm gBooleanLaunch x20 yp+25,BooleanLaunch
; Gui, Add, Button, xm gActivateClipboard x20 yp+25,CP ActivateClipboard
Gui, Add, Button, xm gMPLaunchTL x20 yp+25,TopLeft
Gui, Add, Button, %k_Position% gMPLaunchTR x20 yp+25,TopRight
Gui, Add, Button, xm  gMPLaunchBL x20 yp+25 ,BotLeft
Gui, Add, Button, %k_Position% gMPLaunchBR x20 yp+25 ,BotRight
Gui, Add, Button, xm  gSwitchWindow x20 yp+25,SwitchWindow
; Gui, Add, Button, xm gSoundy x20 yp+25,Soundy
Gui, Add, Button, xm gSpreedThatArticle x20 yp+25,SpreedThatArticle
Gui, Add, Button, xm gtesttest x20 yp+25,imagetest
Gui, Add, Button, gRunMasterPassword %k_Position% ,RunMasterPassword
Gui, Add, Button, gRunCliMasterPassword %k_Position% ,RunCliMasterPassword
;Gui, Add, Button, xm gSaveATicket x20 yp+25,SaveATicket
; Gui, Add, Button, xm gAddToXyengine x20 yp+25,Add to Xyengine
Gui, Tab, b

Gui, Add, Text, w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Add, Text, w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray
Gui, Add, Button, xm gDateOfScript x20 yp+25,DateOfScript
Gui, Add, Button, xm gDate x20 yp+25,Date
Gui, Add, Button, xm gSearchForAStringInFiles x20 yp+25,SearchForAStringInFiles
; Gui, Add, Button, xm gIPHelperGUI x20 yp+25,IPHelperGUI
Gui, Add, Button, xm gEditBoxToShowRandomString x20 yp+25,RandomGenerationFunction
; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
Gui, Add, Edit, xm w100 ReadOnly  x20 yp+25,ReadWrite
Gui, Add, Edit, xm w100 x20 yp+25,          ReadWrite
Gui, Add, Edit, xm w100 ReadOnly x20 yp+25, ReadOnly
Gui, Add, Edit, xm w100 x20 yp+25,          ReadWrite
Gui, Add, Edit, xm w100 ReadOnly x20 yp+25, ReadOnly
Gui, Add, Edit, xm w100 ReadOnly x20 yp+25, services.msc

Gui, Add, Button, xm w100 x20 yp+25 hwndExOrb cFF5733,ExOrb

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

Gui, Add, Edit, xm w100 ReadOnly x20 yp+25 , services.msc

Gui_AddPicture("xm w100 h20 x20 yp+25", "FF FF FF") ; background
Gui, Add, Text, xm w100 x20 yp hp cFF5733 BackgroundTrans Center 0x200 E0x200, Label 3

Gui, Add, Edit, xm w150 ReadOnly x20 yp+25, % RandomGenerationFunction()
Gui_AddPicture("xm w100 h20 x20 yp+25", "FF 00 99") ; background
Gui, Add, Text, xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3
Gui_AddPicture("xm w100 h20 x20 yp+25", "FF 57 33") ; background
Gui, Add, Text, xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3

Gui, Tab, c

Gui, Add, Text, w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Add, Text, w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray
; Gui, 21:Destroy
; Gui, 21:Add, Groupbox, h1000 w1650,
Gui, Add, Button, xm gTextToSpeechUsingCliAndNoInstalls x20 yp+25,TextToSpeechUsingCliAndNoInstalls
Gui, Add, Edit, xm w60 ReadOnly x20 yp+25, Rainlander
Gui, Add, Button, %k_Position% gSaveToRainlanderFromHelpy,SaveToRainlanderFromHelpy
Gui, Add, Button, %k_Position% gChangeRainlanderSizeStartingAt500,ChangeRainlanderSizeStartingAt500
Gui, Add, Button, xm x20 yp+25 g2ndButtonOfHelpylander,2ndButtonOfHelpylander
Gui, Add, Button, %k_Position% g3rdButtonOfHelpylander,3rdButtonOfHelpylander
Gui, Add, Button, xm x20 yp+25 gRunAutoGUI,RunAutoGUI
Gui, Add, Button, xm x20 yp+25 gRunCodeQuickTester,RunCodeQuickTester
Gui, Add, Button, xm x20 yp+25 gRunLiveXGraph,RunLiveXGraph
Gui, Add, Button, xm x20 yp+25 gRunBarChartExample1,RunBarChartExample1
Gui, Add, Button, xm x20 yp+25 gSQLiteINSERTINTOxVALUES,SQLiteINSERTINTOxVALUES
Gui, Add, Button, xm x20 yp+25 gSQLiteSELECT*FROM,SQLiteSELECT*FROM
Gui, Add, Button, xm x20 yp+25 gSQLiteExampleAdjustedToWorkWithHelpy,SQLiteExampleAdjustedToWorkWithHelpy
Gui, Add, Button, xm x20 yp+25 gSQLiteSELECTFROMGetSpecificColumnAndUseInClipboard,SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard
Gui, Add, Button, xm x20 yp+25 gCtrlDown,CtrlDown
Gui, Add, Button, xm x20 yp+25 gCtrlUp,CtrlUp
Gui, Add, Button, xm x20 yp+25 gIsCtrlDown,IsCtrlDown
;Gui, Add, Button, xm x20 yp+25 gActivateMouseClicker,ActivateMouseClicker
;Gui, Add, Button, xm x20 yp+25 gTRANSFERBrowserAddons,TRANSFERBrowserAddons
Gui, Add, Button, xm x20 yp+25 gClassImageButtonExperiments,ClassImageButtonExperiments



; Gui, 21:Add, ListView, xm x20 yp+25 w200 h200 HwndResultsLV1 +LV0x00010000 AltSubmit

; Gui, 21:Add, Button, xm x20 yp+25 gRunWebapp,RunWebapp
Gui, Add, ActiveX, x500 y0 w640 h480 vWB, Shell.Explorer  ; The final parameter is the name of the ActiveX component.
WB.silent := true ;Surpress JS Error boxes
Display(WB,HTML_page_FromFile)
ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.

; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
; Gui, Font, s18 cRed Bold, Verdana
; Gui, Color, 000000, FFFFFF
; Gui, Show, h700 w1200 x640 y65, Helpy3
Gui, Tab, d
Gui, Add, Text, w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Add, Text, w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray

; CoordMode, Mouse, Screen
; Loop, read, %A_ScriptDir%\Autohotkey.ahk
;     IfInString, A_LoopReadLine, `;|SL|%A_SPACE%
;     {
;         StringReplace, A_LoopReadLine1, A_LoopReadLine, `;|SL|,, All
;         ; StringReplace, A_LoopReadLine2, A_LoopReadLine1, |,, All
;         StringSplit, word_array, A_LoopReadLine1, ||, .  ; Omits periods.
;         ; MsgBox, %word_array1% %word_array3%.
;         A_LoopReadLine2 = %word_array1%
;         gotoButton = %A_LoopReadLine2%
;         word_array3 = 0x%word_array3%

;         MyVar := CVar(gotoButton) ; create a variable o1bject
;         OnClick := Func("OnClick").Bind(MyVar) ; bind it to your glabel/function
;         Gui, 3:Add, Button, w200 r1 hwndhButton%a_index% Left, %gotoButton%

;         Opt1 := [0,word_array3]         ; normal flat background & text color
;         Opt2 := [ , "Red"]
;         Opt3 := {4: "Red"}                                      ; hot flat background color
;         Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
;         ImageButton.Create(hButton%a_index%, Opt1)
;         ;     MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
;         GuiControl, % hButton%a_index%, Button%a_index% ;+v
;         GuiControl, +g, % hButton%a_index%, %OnClick%
;     }
; Gui, Font, s18 cRed Bold, Verdana
; GuiControl, Font, MyEdit
; Gui, 3:Color, 000000, FFFFFF
; Gui, 3:Show, x65 y65, Helpy3
; MouseMove, 65, 540
Gui, Tab 

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



Display(WB,html_str) {
	Count:=0
	while % FileExist(f:=A_Temp "\" A_TickCount A_NowUTC "-tmp" Count ".DELETEME.html")
		Count+=1
	FileAppend,%html_str%,%f%
	WB.Navigate("file://" . f)
}
