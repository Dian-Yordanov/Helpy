
;|OnStart||SEARCHINDICATOR|
;   ____         _____ _             _
;  / __ \       / ____| |           | |
; | |  | |_ __ | (___ | |_ __ _ _ __| |_
; | |  | | '_ \ \___ \| __/ _` | '__| __|
; | |__| | | | |____) | || (_| | |  | |_
; \____/|_| |_|_____/ \__\__,_|_|   \__|
;

OnStart:
; MsgBox, "cvfddf"

; StartUpScript("startUpLogger.txt")

; I am commenting this in order to be able to disable HelpyMPC. The change is done on 24.12.2019 
; dataStorageForStartAndExit("Start")

;<empty pointer>
goto, start

start:
De1()
return

De1()
{
    ;some code
}
;</empty pointer>

StartUpScript(stringToBeUsed){
dateToBePrinted := getDate()
;RemoveFirstLine()
Source = "
StringMid, newline1, Source, 2, 2
newline2 = %dateToBePrinted%
newline = %newline1% %newline2%

;1Source = \
;StringMid, 1newline1, 1Source, 2, 2
;1newline2 = %stringToBeUsed% "
1newline = \%stringToBeUsed%

f := A_MyDocuments 1newline
a := FilePrePend(f, newline)
if !(a)
   fileappend,, startUpLogger.txt
;else
   ;run, %f%
}

; getDate(){
; FormatTime, TimeString,,H:mm:ss d/M/yyyy
; return TimeString
; }

; RemoveFirstLine(){
; textLocation = A_MyDocuments "\AutoHotkey.ahk"
; 	TF_RemoveLines(textLocation, 1) ;remove first line
; }

; FilePrePend(fileIN, string) {
;    IfNotExist, %fileIN%
;       return false
;    input := FileOpen(fileIN, 0)
;    text := input.Read()
;    input.Close()
;    output := FileOpen(fileIN, 5)
;    output.WriteLine(string)
;    output.Write(text)
;    output.Close()
;    return true
; }

return

PieChart(hwndWin, xpos, ypos, size,segments,bordersize, showpercentages = 1)
{
	;define colors
	color_1	:= 0x008000							;green
	color_2 := 0x0000FF							;red
	color_3	:= 0xFF0000							;blue
	color_4 := 0x00FFFF							;yellow
	color_5 := 0x00FF00							;lime
	color_6 := 0x808000							;teal
	color_7 := 0xFFFF00							;aqua
	color_8	:= 0xFF00FF							;fuchsia
	color_9 := 0x800080							;purple
	color_10:= 0xFFFFFF							;white

	;get a dc for the window
	hdcWin := DllCall("GetDC", "UInt", hwndWin)
	Pen := DllCall("CreatePen", int, 0, int, bordersize, int, 0x000000)
	DllCall("SelectObject", uint, hdcWin, uint, pen)

	;draw ellipse to the window
	DllCall("Ellipse", uint, hdcWin, int, xpos, int, ypos, int, xpos + size, int, ypos + size)

	;set variables
	radius := size / 2
	tradius := size / 2 * .8								;test radius
	2pi := 2*3.1415926
	center_x := xpos + size / 2
	center_y := ypos + size / 2
	dangle	:= 0											;set the initial angle to 0 degrees
	rangle	:= dangle * .01745329252						;convert degrees to radians
	prev_x	:= center_x + radius * cos(rangle-2pi/4)		;find the x coord of the initial angle
	prev_y	:= center_y + radius * sin(rangle-2pi/4)		;find the y coord of the initial angle

	;count the number of segments
	Loop, Parse, segments, `,
		{
			Segment_Count := A_Index
			Loop, Parse, A_Loopfield, |
				{
					If (A_Index & 1)
						continue
					Piece_Count += A_Loopfield
				}
		}

	;get the size of each piece
	piece_size_deg := 1 / Piece_Count * 360

	;draw pie slice
	loop, parse, segments, `,
		{
			bcolor := A_Index
			if A_Index > 10								; only storing 10 diffent colors, if there is more pie pieces
				bcolor := A_Index - 10					; than this, then start reusing the colors..

			bcolor := color_%bcolor%
			Loop, parse, A_Loopfield, |
				{
					if (A_Index & 1)
						continue
					else
						{
							brush := DllCall("CreateSolidBrush", int, bcolor)
							DllCall("SelectObject", uint, hdcWin, uint, brush)
							if !(bordersize)
								{
									Pen := DllCall("CreatePen", int, 0, int, 1, int, bcolor)
									DllCall("SelectObject", uint, hdcWin, uint, pen)
								}
							dangle += piece_size_deg * A_Loopfield
							rangle	:= dangle * .01745329252
							next_x := center_x + radius * cos(rangle-2pi/4)
							next_y := center_y + radius * sin(rangle-2pi/4)
							DllCall("Pie", uint, hdcWin, int, xpos, int, ypos, int, xpos + size, int, ypos + size, int, next_x, int, next_y, int, prev_x, int, prev_y)
							;show percentages if that parameter is set.
							If (showpercentages)
								{
									segment_percent := Round((A_LoopField / piece_count) * 100,1) "%"
									StringLen,segment_percentL, segment_percent
									tangle := dangle - (piece_size_deg * A_LoopField) /2
									rangle	:= tangle * .01745329252
									text_x := center_x + tradius * cos(rangle-2pi/4)
									text_y := center_y + tradius * sin(rangle-2pi/4)
									DllCall("SetBkColor", "Int", hdcWin, "Int", bcolor)
									DllCall("SetTextAlign", uint, hdcWin, int, 6)
									DllCall("TextOut", uint, hdcwin, int, text_x, int, text_y, uint, &segment_percent, int, segment_percentL)
								}

							prev_x := next_x
							prev_y := next_y
							DllCall("DeleteObject", uint, brush)
							if !(bordersize)
								DllCall("DeleteObject", uint, pen)
						}
				}
		}
DllCall("DeleteObject", uint, pen)
DllCall("ReleaseDC", uint, hdcWin)
}

CtrlDown:
SendInput {Lctrl down}
return

CtrlUp:
SendInput {Lctrl up}
return

IsCtrlDown:
IsCtrlDown()
return

IsCtrlDown()
{
  GetKeyState, state, Ctrl
  if state = D
      ; MsgBox At least one Ctrl key is down.
      SendInput {Lctrl up}
      ; MsgBox At least one Ctrl key is down.
      ; MsgBox Neither Ctrl key is down.
}

ActivateMouseClicker:
Gui, 29:Destroy

Gui, 29:Add, Text, cWhite , Pressing f8 will keep the mouse clicking ; Static1idea
Gui, 29:Add, Checkbox , xm cWhite vHoldtoclick, Toggle to start and exit clicking with f8. if not checked, you need to hold f8 to click

; GuiControlGet, Holdtoclick
; if(Holdtoclick==1)
; {
; Msgbox, "gf"
; }

; Gui, 21:Add, Groupbox, h1000 w1650,
; Gui, 21:Add, Button, xm gTextToSpeechUsingCliAndNoInstalls x20 yp+25,TextToSpeechUsingCliAndNoInstalls
; Gui, 21:Add, Edit, xm w60 ReadOnly x20 yp+25, Rainlander
; Gui, 21:Add, Button, %k_Position% gSaveToRainlanderFromHelpy,SaveToRainlanderFromHelpy
; Gui, 21:Add, Button, %k_Position% gChangeRainlanderSizeStartingAt500,ChangeRainlanderSizeStartingAt500
; Gui, 21:Add, Button, xm x20 yp+25 g2ndButtonOfHelpylander,2ndButtonOfHelpylander
; Gui, 21:Add, Button, %k_Position% g3rdButtonOfHelpylander,3rdButtonOfHelpylander
; Gui, 21:Add, Button, xm x20 yp+25 gRunAutoGUI,RunAutoGUI
; Gui, 21:Add, Button, xm x20 yp+25 gRunCodeQuickTester,RunCodeQuickTester
; Gui, 21:Add, Button, xm x20 yp+25 gRunLiveXGraph,RunLiveXGraph
; Gui, 21:Add, Button, xm x20 yp+25 gRunBarChartExample1,RunBarChartExample1
; Gui, 21:Add, Button, xm x20 yp+25 gSQLiteINSERTINTOxVALUES,SQLiteINSERTINTOxVALUES
; Gui, 21:Add, Button, xm x20 yp+25 gSQLiteSELECT*FROM,SQLiteSELECT*FROM
; Gui, 21:Add, Button, xm x20 yp+25 gSQLiteExampleAdjustedToWorkWithHelpy,SQLiteExampleAdjustedToWorkWithHelpy
; Gui, 21:Add, Button, xm x20 yp+25 gCtrlDown,CtrlDown
; Gui, 21:Add, Button, xm x20 yp+25 gCtrlUp,CtrlUp
; Gui, 21:Add, Button, xm x20 yp+25 gIsCtrlDown,IsCtrlDown
; Gui, 21:Add, Button, xm x20 yp+25 gActivateMouseClicker,ActivateMouseClicker

; Gui, 21:Add, ListView, xm x20 yp+25 w200 h200 HwndResultsLV1 +LV0x00010000 AltSubmit

; Gui, 21:Add, Button, xm x20 yp+25 gRunWebapp,RunWebapp
; Gui, 29:Add, ActiveX, x500 y0 w640 h480 vWB, Shell.Explorer  ; The final parameter is the name of the ActiveX component.
; WB.silent := true ;Surpress JS Error boxes
; Display(WB,HTML_page_FromFile)
; ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.

; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy

; Gui, Color, 0x008080
; Gui, Font, S10 CDefault Bold, Verdana

Gui, 29:Font, s18 cRed Bold, Verdana
Gui, 29:Color, 000000, FFFFFF

Gui, 29:Show, h300 w500 x640 y65, ActivateMouseClicker
return

OneTimePasswordGeneration:
run, chrome.exe https://secure.packetizer.com/pwgen/
return
