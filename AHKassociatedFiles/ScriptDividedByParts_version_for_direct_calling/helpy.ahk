
;|helpy||SEARCHINDICATOR|
;    _          _
;   | |        | |
;   | |__   ___| |_ __  _   _
;   | '_ \ / _ \ | '_ \| | | |
;   | | | |  __/ | |_) | |_| |
;   |_| |_|\___|_| .__/ \__, |
;                | |     __/ |
;                |_|    |___/
WinR:
SendInput {Lwin down}
sleep, 10
SendInput {r}
sleep, 10
SendInput {Lwin up}
return

ClipboardMaster:
WinActivate ahk_id %previous_ID%
#InstallKeybdHook on
#InstallMouseHook on
#UseHook on
sendlevel 0

SendInput {ctrl down}
SendInput {Lalt down}
SendInput {w}
SendInput {Lalt up}
; sleep, 1
; SendInput {Insert}
; sleep, 1
SendInput {ctrl up}

; SendInput {Lshift down}
; SendInput {Lalt down}
; SendInput {d}
; SendInput {Lalt down}
; SendInput {Lshift down}

#InstallKeybdHook off
#InstallMouseHook off
#UseHook off
return


TEST:
WinActivate ahk_id %previous_ID%
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\bcrypt_sha512.ahk
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\bcrypt_sha512_hmac.ahk
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\class_bcrypt.ahk
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10
; MsgBox % bcrypt.pbkdf2("The quick brown fox jumps over the lazy dog", "Secret Salt", "SHA256", 4096, 32)
SendInput %PG6v129mjWr390pBy%
closeHelpyAfterExecutingCommands()
; SendInput %PG6v129mjWr390pBy%
return
NumpadUpHelpy:
splashy("setSoundTo100")
setSoundTo100()
;Gosub, shiftyUp
return
NumpadPgUpHelpy:
splashy("setSoundTo0")
setSoundTo0()
;Gosub, shiftyUp
return
MuteHelpy:
splashy("setSoundToMute")
setSoundToMute()
;Gosub, shiftyUp
return
Search:
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {a}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
MsgBox, %Clipboard%
sleep, 500
Run, http://www.google.com/search?&q=%Clipboard%&btnI=I'm+Feeling+Lucky
return
SpreedThat:
WinActivate ahk_id %previous_ID%
sleep, 1
SendInput {Lalt down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lalt up}
sleep, 300
WinClose ahk_class AutoHotkeyGUI
return
DoubleSearch:
url=www.google.com
run % "chrome.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) url
sleep, 1000
SendInput {Lwin down}
sleep, 1
SendInput {left}
sleep, 1
SendInput {Lwin up}
run % "chrome.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) url
sleep, 1000
SendInput {Lwin down}
sleep, 1
SendInput {right}
sleep, 1
SendInput {Lwin up}
return
SaveInfo:
urlglisthub=https://gist.github.com/
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {a}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
run % "chrome.exe" ( winExist("ahk_class Chrome_WidgetWin_1") ? " --new-window " : " " ) urlglisthub
sleep, 2000
WinActivate ahk_class Chrome_WidgetWin_1
sleep, 1000
SendInput {Lwin down}
sleep, 1
SendInput {up}
sleep, 1
SendInput {Lwin up}
sleep, 1000
MouseClick, left
sleep, 1
RepeatCount2 = 16
SendInput {Lshift down}
Loop %RepeatCount2% {
    SendInput {tab}
sleep, 50
}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 1
MouseClick, left
sleep, 1
RepeatCount = 11
SendInput {Lshift down}
Loop %RepeatCount% {
    SendInput {tab}
sleep, 50
}
SendInput {Lshift up}
sleep, 1
SendInput {enter}
sleep, 2500
SendInput {f6}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {n}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 1500
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 200
SendInput {enter}
sleep, 1
SendInput ahkbookZ
sleep, 1
SendInput {enter}
sleep, 1
SendInput ahkbookZ
sleep, 1
SendInput {enter}
sleep, 300
WinClose ahk_class AutoHotkeyGUI
sleep, 100
WinClose ahk_class ENSingleNoteView
return
BooleanLaunch:
WinActivate ahk_id %previous_ID%
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, False`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, test, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
:*:kkkkkh::
FileReadLine, line, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt, 1
MsgBox, %line%
if ( False = %line% ){
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, True`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
FileAppend,, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt
;GoTo, Keyloggerino
}
else if ( True = %line% ){
FileDelete, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, False`n, %A_ScriptDir%\AHKassociatedFiles\resources\BooleanFile.txt
FileReadLine, line2, %A_ScriptDir%\AHKassociatedFiles\resources\KeystrokeForSearch.txt, 1
StringTrimLeft, line2, line2, 1
MsgBox, %line2%
}
return
return
MPLaunchBR:
WinActivate ahk_id %previous_ID%
Loop{
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := A_ScreenWidth - 5
ScreenHeight := A_ScreenHeight - 5
Sleep,1
If (ScreenWidth <= xpos) and (ScreenHeight <= ypos){
If WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class Notepad") or WinActive("ahk_class WorkerW") or WinActive("ahk_class Sandbox:DefaultBox:UnityWndClass")
{
SendInput {Lctrl down}
sleep, 1
SendInput {Lwin down}
sleep, 1
SendInput {f3}
sleep, 1
SendInput {Lwin up}
sleep, 1
SendInput {Lctrl up}
}
}
}
return
MPLaunchTR:
WinActivate ahk_id %previous_ID%
Loop{
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := A_ScreenWidth - 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth <= xpos) and (ScreenHeight >= ypos)
{
MsgBox, it is working
}
}
return
MPLaunchBL:
WinActivate ahk_id %previous_ID%
Loop{
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenHeight := A_ScreenHeight - 5
Sleep,1
If (ScreenWidth >= xpos) and (ScreenHeight <= ypos)
{
MsgBox, it is working
}
}
return
MPLaunchTL:
WinActivate ahk_id %previous_ID%
Loop{
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth >= xpos) and (ScreenHeight >= ypos)
{
MsgBox, it is working
}
}
return
SwitchWindow:
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {Lwin down}
sleep, 1
SendInput {f4}
sleep, 1
SendInput {Lwin up}
sleep, 1
SendInput {Lctrl up}
return
ActivateClipboard:
WinActivate ahk_id %previous_ID%
if clipboardOld =
{
clipboardOld = %Clipboard%
}
loop{
if clipboardOld != %Clipboard%
{
fileappend, %Clipboard%`n, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardDatabase.txt
clipboardOld = %Clipboard%
}
sleep,1000
}
return
SavePaste:
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
fileappend, %Clipboard%`n, %A_ScriptDir%\AHKassociatedFiles\resources\Clipy.txt
return
OpenClipy:
WinActivate ahk_id %previous_ID%
Run %A_ScriptDir%\AHKassociatedFiles\resources\Clipy.txt
return
OpenWebClipy:
WinActivate ahk_id %previous_ID%
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {n}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 1000
SendInput https://www.evernote.com/shard/s236/nl/30918519/01ffeb0b-c1ad-47c5-872a-9a2b1881c61b
sleep, 1
SendInput {enter}
return

MNZnoButton:
CoordMode, Mouse, Screen
Gui, 16:Destroy
Gui, 16:Add, Groupbox, w550 h350,

ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]
ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

Gui, 16:Add, Button, xm w100 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
ImageButton.Create(ExOrb, ExOrb1)
Gui, 16:Add, Edit, %k_Position% w250 vMNZnoButton,
Gui, 16:Add, Text, xm x150 yp+25  cWhite ,
Gui, 16:Add, Edit, xm w350 h20 x100 yp+25 vGeneratedPassZlogy,
Gui, 16:Add, Button, xm w350 x100 yp+25 gGenerateMNZnoButton,MNZnoButton
Gui, 16:Font, s18 cRed Bold, Verdana
GuiControl, 16:Font, MyEdit
Gui, 16:Color, 000000, FFFFFF
Gui, 16:Show, x65 y65, Zlogy2
MouseMove, 65, 340
WinSet, Redraw,, Zlogy2
return

GenerateMNZnoButton:
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

Index := % findLocationOfStringInFile(FileLocation, SearchString)
GuiControlGet, MNZnoButton
; GuiControlGet, UsernameZlogy
; GuiControlGet, PassZlogy
randomString = % RandomGenerationFunction()
; randomString1 = % RandomGenerationFunction()
; randomString2 = % RandomGenerationFunction()
; Msgbox, %URLZlogy% %UsernameZlogy% %PassZlogy% %randomString%  %randomString1%
TF(NameOfFile)
IndexToUse1 := Index+1
TextToInsert1 := randomString . "=" . MNZnoButton
; TextToInsert2 := randomString1 . "=" . UsernameZlogy
; TextToInsert3 := randomString2 . "=" . PassZlogy
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)
FileDelete, %NameOfFile%
FileAppend, %t%, %NameOfFile%
; sleep, 100
Line := False
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

;section2

Index1 := % findLocationOfStringInFile(FileLocation1, SearchString)
; Msgbox, %Index1%
randomStringK = % RandomGenerationFunction()
; randomString1E = % RandomGenerationFunction()
; randomString2P = % RandomGenerationFunction()
TF(NameOfFile1)
IndexToUse1 := Index1+1

; unclock with hash

TextToInsert1 := "K" . randomStringK . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
; TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
; TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

;lock with hash

; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
Line := False

;section3


; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringa)
; ; Msgbox, %Index1%
; TF(NameOfFile1)
; randomStringButton = % RandomGenerationFunction()
; IndexToUse1 := Index1+1
; TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsertButton)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; sleep, 100
; Line := False
; Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringb)
; ; Msgbox, %Index1%
; IndexToUse2 := Index1+1
; TextToInsert1b := randomStringButton . ":" . "`r`n" . "WinActivate ahk_id %previous_ID%"
; ; TextToInsert2b :=
; TextToInsert3b := "SendInput %" . "E" . randomString1E . "%{tab}%" . "P" . randomString2P . "%{tab}{enter}"
; TextToInsert4b := "return"
; TF(NameOfFile1)
; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert4b)
; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3b)
; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1b)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%

outputRandomStringK := "K" . randomStringK
Clipboard := outputRandomStringK
GuiControl, 16:, GeneratedPassZlogy, %outputRandomStringK%
; %CounterZlogy12%

FileGetAttrib,attribs,%A_ScriptFullPath%
FileSetAttrib,-A,%A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
closeHelpyAfterExecutingCommands()
return

RemoveSpecificZlogy:
CoordMode, Mouse, Screen
Gui, 17:Destroy
Gui, 17:Add, Groupbox, h1000 w1650,
Gui, 17:Add, ListView, xm r20 w1450 h800 x100 yp+25 gRemoveSpecificZlogyListView, Key|1st random string|2nd random string
Gui, 17:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
Gui, 17:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
Gui, 17:Font, s18 cRed Bold, Verdana
GuiControl, 17:Font, MyEdit
Gui, 17:Color, 000000, FFFFFF
Gui, 17:Show, h1000 w1650 x65 y65, Zlogy2

Gui, 17:Default
Gosub, AutoStartLabel17

; RemoveSpecificZlogyFunc()

return

RemoveSpecificZlogyFunc:
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
GuiControlGet, RemoveSpecificZlogy
FileLocation = %A_ScriptDir%\StringBank.txt

ArrayFromString := StrSplit(RemoveSpecificZlogy, " ","")

; UStringBank 424 EStringBank 425 PStringBank 426 |||
; UValueMaped 3222 EValueMaped 3223 PValueMaped 3224  |||
; GuiFunctionValueMaped 3464 |||
; LabelValueMapedLine1 4155 LabelValueMapedLine2 4156 LabelValueMapedLine3 4157 LabelValueMapedLine4 4158

Uvalue := ArrayFromString[2]
Evalue := ArrayFromString[4]
Pvalue := ArrayFromString[6]

UvalueMapped := ArrayFromString[9]
EvalueMapped := ArrayFromString[11]
PvalueMapped := ArrayFromString[13]

GuiMapped := ArrayFromString[17]

LabelMapped1 := ArrayFromString[20]
LabelMapped2 := ArrayFromString[22]
LabelMapped3 := ArrayFromString[24]
LabelMapped4 := ArrayFromString[26]

TF(NameOfFile)
t := TF_RemoveLines(t, Uvalue, Uvalue)
t := TF_RemoveLines(t, Uvalue, Uvalue)
t := TF_RemoveLines(t, Uvalue, Uvalue)
FileDelete, %NameOfFile%
FileAppend, %t%, %NameOfFile%

TF(NameOfFile1)
t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)
t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)
t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)

GuiMappedWithReductionOft := GuiMapped - 3

t := TF_RemoveLines(t, GuiMappedWithReductionOft, GuiMappedWithReductionOft)

LabelMapped1WithReductionOft := LabelMapped1 - 4

t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%

FileGetAttrib,attribs,%A_ScriptFullPath%
FileSetAttrib,-A,%A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
closeHelpyAfterExecutingCommands()

; TF(NameOfFile)
; t := TF_RemoveLines(t, StartIndex, EndIndex)
; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%
;
; FileGetAttrib,attribs,%A_ScriptFullPath%
; FileSetAttrib,-A,%A_ScriptFullPath%
; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; closeHelpyAfterExecutingCommands()


; MsgBox, %Uvalue% %Evalue% %Pvalue% %UvalueMapped% %EvalueMapped% %PvalueMapped% %GuiMapped% %LabelMapped1% %LabelMapped2% %LabelMapped3% %LabelMapped4%
return

AutoStartLabel17:
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
GuiControlGet, RemoveSpecificZlogy
FileLocation = %A_ScriptDir%\StringBank.txt

WholeLineArray1 := []
WholeLineArray2 := []
WholeLineArray3 := []

LineNumberForWholeLineArray1 := []
LineNumberForWholeLineArray2 := []
LineNumberForWholeLineArray3 := []
LineNumberForWholeLineArray4 := []
LineNumberForWholeLineArray5 := []
LineNumberForWholeLineArray6 := []
LineNumberForWholeLineArray7 := []

Line := False

; StartIndex := % findLocationOfStringInFile(FileLocation1, SearchStringa)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile(FileLocation1, SearchStringaend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile1)
; t := TF_ReadLines(t, StartIndex, EndIndex)
;
; Loop, Parse, t, `n, `r

StartIndex := % findLocationOfStringInFile(FileLocation, SearchString)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation, SearchStringend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
; FileReadLine, variableT, %NameOfFile%, StartIndex
TF(NameOfFile)
t := TF_ReadLines(t, StartIndex, EndIndex)
variableT := t
; MsgBox, % variableT
ArrayOfFile := StrSplit(variableT, "`n","")
; MsgBox, % ArrayOfFile[5]
; Loop, Parse, t, `n, `r
; Loop, Read, %FileLocation%
; Loop, Parse, variableT, `n, `r
; Loop, %ArrayOfFile%
for index, element in ArrayOfFile
{

  ; MsgBox, % A_LoopReadLine
  ; MsgBox, % element

  WholeLineString1 := StrSplit(element, "=")[1]
  WholeLineString2 := StrSplit(element, "=")[2]

  WholeLineArray1[Index] := WholeLineString1
  WholeLineArray2[Index] := WholeLineString2

  LineNumberForWholeLineArray1[Index] := element

}



Loop, Read, %FileLocation1%
{
WholeLine3 := % findWholeLineOfStringInFile(FileLocation1, WholeLineArray1[A_Index])
WholeLineString3 := StrSplit(WholeLine3, "=")[1]
WholeLineArray3[A_Index] := WholeLineString3
LineNumberForWholeLineArray2 := A_Index
}

Loop, Read, %FileLocation%
{
LV_Add("",WholeLineArray2[A_Index], WholeLineArray1[A_Index], WholeLineArray3[A_Index])
; LV_Add("", WholeLineArray2[A_Index], WholeLineArray1[A_Index])
LV_ModifyCol()
}
}
return

RemoveSpecificZlogyListView:
if A_GuiEvent = DoubleClick
{
    isUrl = 0
    getWholeLineOfGuiAdder =
    LV_GetText(RowText, A_EventInfo)
    removedStartofStringLineNumberForWholeLineArray4 =

    ; LineNumber1 := % LineNumberForWholeLineArray1[A_EventInfo]
    ; LineNumber2 := % LineNumberForWholeLineArray2[A_EventInfo]

    LineNumberForWholeLineArray3[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, WholeLineArray3[A_EventInfo])

    removedStartofString := % SubStr(LineNumberForWholeLineArray3[A_EventInfo], 3)

    getLastNumberArray := StrSplit(removedStartofString, " ","")
    getLastNumberArrayMaxIndex := getLastNumberArray.MaxIndex() - 1

    ; MsgBox, % removedStartofString

    getLocationOfLabel := getLastNumberArray[getLastNumberArrayMaxIndex] - 2

    ; MsgBox, % getLastNumberArrayMaxIndex
    ; MsgBox, % getLastNumberArray[1]

    ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]

    ;need to make the returns uniform and not have 2 kind of returns: urls and others
    ; MsgBox, % getLocationOfLabel

    FileReadLine, LocationOfLabel, %NameOfFile1%, getLocationOfLabel
    StringTrimRight, LocationOfLabelNoColomn, LocationOfLabel, 1

     ; MsgBox, % LocationOfLabelNoColomn
    ; LocationOfLabelNoColomn is the name of the label; the path for urls and for nonurls shoould be different
    LengthLocationOfLabelNoColomn := StrLen(LocationOfLabelNoColomn)

    if(LengthLocationOfLabelNoColomn == 16)
    {
      LineNumberForWholeLineArray4[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, LocationOfLabelNoColomn)
      removedStartofStringLineNumberForWholeLineArray4 := % SubStr(LineNumberForWholeLineArray4[A_EventInfo], 3)

      isUrl := 0
    }
    else
    {
      getLastNumberArray := StrSplit(removedStartofString, " ","")
      getSecondIndexFromArray := getLastNumberArray[2]
      ; This is the GuiFunctionValueMaped
      ; MsgBox, % getSecondIndexFromArray
      isUrl := 1
      ; MsgBox,%LocationOfLabelNoColomn%
    }

    getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

    ; gives us the location of the gui call
    ; MsgBox, % getFirstNumberArray4[1]

    if(isUrl == 0)
    {
      FileReadLine, getWholeLineOfGuiAdder, %NameOfFile1%, getFirstNumberArray4[1]
    }
    if(isUrl == 1)
    {
      FileReadLine, getWholeLineOfGuiAdder, %NameOfFile1%, getSecondIndexFromArray
    }

    ; MsgBox, % getWholeLineOfGuiAdder

    StringTrimRight, getWholeLineOfGuiAdderStrimmed, getWholeLineOfGuiAdder, 1
    ; MsgBox, % getWholeLineOfGuiAdder

    ; gives us the whole line from the location of the gui call
    ; MsgBox, % getWholeLineOfGuiAdder

    getTheUrlFromTheStringArray := StrSplit(getWholeLineOfGuiAdderStrimmed, ",%","")

    ; MsgBox, % getTheUrlFromTheStringArray[2]
    ; MsgBox, %isUrl%

    if(isUrl == 0)
    {
    LineNumberForWholeLineArray5[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, getTheUrlFromTheStringArray[2])
    removedStartofStringLineNumberForWholeLineArray5 := % SubStr(LineNumberForWholeLineArray5[A_EventInfo], 3)

    ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]
    FileReadLine, WholeLocationOfWholeLineWithTwoValues, %NameOfFile1%, getLastNumberArray[getLastNumberArrayMaxIndex]

    ; MsgBox, % WholeLocationOfWholeLineWithTwoValues
    LocationOfWholeLineWithTwoValuesNoStart := StrReplace(WholeLocationOfWholeLineWithTwoValues, "SendInput %","")
    LocationOfWholeLineWithTwoValuesNoEnd := StrReplace(LocationOfWholeLineWithTwoValuesNoStart, "%{tab}{enter}","")

    twoValuesArray := StrSplit(LocationOfWholeLineWithTwoValuesNoEnd, "%{tab}%","")
    value1FromArray := twoValuesArray[1]
    value2FromArray := twoValuesArray[2]

    ; MsgBox, value1 %value1FromArray% value2 %value2FromArray%

    LineNumberForWholeLineArray6[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, value1FromArray)
    removedStartofStringLineNumberForWholeLineArray6 := % SubStr(LineNumberForWholeLineArray6[A_EventInfo], 3)

    LineNumberForWholeLineArray7[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, value2FromArray)
    removedStartofStringLineNumberForWholeLineArray7 := % SubStr(LineNumberForWholeLineArray7[A_EventInfo], 3)

    ; The Above makes the numbers. The bellow, maps the numbers

    ; LineNumber1 426 labelLocation 3464 4155  urlLocations 3222 3464  values1 3223 4157  values2 3224 4157

    ; labelLocation 3464 4155
    ; urlLocations 3222 3464
    ; values1 3223 4157
    ; values2 3224 4157
    ; getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

    UValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray5, " ","")
    UValueMaped := UValueMapedArray[1]

    EValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray6, " ","")
    EValueMaped := EValueMapedArray[1]

    PValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray7, " ","")
    PValueMaped := PValueMapedArray[1]

    LabelValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")
    LabelValueMapedLine1 := LabelValueMapedArray[2]
    LabelValueMapedLine2 := LabelValueMapedLine1 + 1
    LabelValueMapedLine3 := LabelValueMapedLine2 + 1
    LabelValueMapedLine4 := LabelValueMapedLine3 + 1

    GuiFunctionValueMaped := UValueMapedArray[2]

    UValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, UValueMaped)
    EValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, EValueMaped)
    PValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, PValueMaped)

    GuiControl, 17:, RemoveSpecificZlogy, UStringBank %UValueMapedLocationInStringBank% EStringBank %EValueMapedLocationInStringBank% PStringBank %PValueMapedLocationInStringBank% ||| UValueMaped %UValueMaped% EValueMaped %EValueMaped% PValueMaped %PValueMaped%  ||| GuiFunctionValueMaped %GuiFunctionValueMaped% ||| LabelValueMapedLine1 %LabelValueMapedLine1% LabelValueMapedLine2 %LabelValueMapedLine2% LabelValueMapedLine3 %LabelValueMapedLine3% LabelValueMapedLine4 %LabelValueMapedLine4%
    }
    if(isUrl == 1)
    {
      LineNumberForWholeLineArray5[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, getTheUrlFromTheStringArray[2])
      removedStartofStringLineNumberForWholeLineArray5 := % SubStr(LineNumberForWholeLineArray5[A_EventInfo], 3)


      ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]
      FileReadLine, WholeLocationOfWholeLineWithTwoValues, %NameOfFile1%, getLastNumberArray[getLastNumberArrayMaxIndex]

      ; MsgBox, % WholeLocationOfWholeLineWithTwoValues
      LocationOfWholeLineWithTwoValuesNoStart := StrReplace(WholeLocationOfWholeLineWithTwoValues, "SendInput %","")
      LocationOfWholeLineWithTwoValuesNoEnd := StrReplace(LocationOfWholeLineWithTwoValuesNoStart, "%{tab}{enter}","")

      twoValuesArray := StrSplit(LocationOfWholeLineWithTwoValuesNoEnd, "%{tab}%","")
      value1FromArray := twoValuesArray[1]
      value2FromArray := twoValuesArray[2]

      ; MsgBox, value1 %value1FromArray% value2 %value2FromArray%

      LineNumberForWholeLineArray6[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, value1FromArray)
      removedStartofStringLineNumberForWholeLineArray6 := % SubStr(LineNumberForWholeLineArray6[A_EventInfo], 3)

      LineNumberForWholeLineArray7[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, value2FromArray)
      removedStartofStringLineNumberForWholeLineArray7 := % SubStr(LineNumberForWholeLineArray7[A_EventInfo], 3)

      ; The Above makes the numbers. The bellow, maps the numbers

      ; LineNumber1 426 labelLocation 3464 4155  urlLocations 3222 3464  values1 3223 4157  values2 3224 4157

      ; labelLocation 3464 4155
      ; urlLocations 3222 3464
      ; values1 3223 4157
      ; values2 3224 4157
      ; getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

      UValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray5, " ","")

      FileReadLine, getWholeLineOfGUIForTheLabel, %NameOfFile1%, UValueMapedArray[2]
      ; MsgBox, % getWholeLineOfGUIForTheLabel

      ; StrReplace(A_LoopFieldString, "%", "")
      getWholeLineOfGUIForTheLabel := StrReplace(getWholeLineOfGUIForTheLabel, "Gui, 15:Add, Button, %k_Position% g", "")
      getWholeLineOfGUIForTheLabel := StrReplace(getWholeLineOfGUIForTheLabel, "%", "")

      ; MsgBox, % getWholeLineOfGUIForTheLabel
      getWholeLineOfGUIForTheLabelArray := StrSplit(getWholeLineOfGUIForTheLabel, ",", "")
      getWholeLineOfGUIForTheLabelLabelLocation := getWholeLineOfGUIForTheLabelArray[1]
      ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation
      getWholeLineOfGUIForTheLabelLabelLocation := % findAllLocationOfStringInFile(FileLocation1, getWholeLineOfGUIForTheLabelLabelLocation)
      ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation
      removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation := % SubStr(getWholeLineOfGUIForTheLabelLabelLocation, 3)
      ; MsgBox, % removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation
      removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray := StrSplit(removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation, " ","")
      ; getWholeLineOfGUIForTheLabelLabelLocation := removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray[2]

      ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation

      UValueMaped := UValueMapedArray[1]

      ; EValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray6, " ","")
      EValueMaped := UValueMaped + 1 ;EValueMapedArray[1]

      ; PValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray7, " ","")
      PValueMaped := EValueMaped + 1 ;PValueMapedArray[1]

      ; LabelValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")
      LabelValueMapedLine1 := removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray[2]
      LabelValueMapedLine2 := LabelValueMapedLine1 + 1
      LabelValueMapedLine3 := LabelValueMapedLine2 + 1
      LabelValueMapedLine4 := LabelValueMapedLine3 + 1

      GuiFunctionValueMaped := UValueMapedArray[2]

      UValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, UValueMaped)
      EValueMapedLocationInStringBank := UValueMapedLocationInStringBank + 1 ;getStringUsedForBank(NameOfFile1, FileLocation, EValueMaped)
      PValueMapedLocationInStringBank := EValueMapedLocationInStringBank + 1 ;getStringUsedForBank(NameOfFile1, FileLocation, PValueMaped)

      GuiControl, 17:, RemoveSpecificZlogy, UStringBank %UValueMapedLocationInStringBank% EStringBank %EValueMapedLocationInStringBank% PStringBank %PValueMapedLocationInStringBank% ||| UValueMaped %UValueMaped% EValueMaped %EValueMaped% PValueMaped %PValueMaped%  ||| GuiFunctionValueMaped %GuiFunctionValueMaped% ||| LabelValueMapedLine1 %LabelValueMapedLine1% LabelValueMapedLine2 %LabelValueMapedLine2% LabelValueMapedLine3 %LabelValueMapedLine3% LabelValueMapedLine4 %LabelValueMapedLine4%

    ; GuiControl, 17:, RemoveSpecificZlogy, "hhhhhh"
    }
}
return

ZlogiesListView:
CoordMode, Mouse, Screen
Gui, 18:Destroy
Gui, 18:Add, Groupbox, h1000 w1650,
Gui, 18:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
Gui, 18:Font, s18 cRed Bold, Verdana
GuiControl, 18:Font, MyEdit
Gui, 18:Color, 000000, FFFFFF
Gui, 18:Show, h1000 w1650 x65 y65, Zlogy2

Gui, 18:Default
Gosub, AutoStartLabel18
return

AutoStartLabel18:
StartIndex := % findLocationOfStringInFile(FileLocation1, SearchStringa)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation1, SearchStringaend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
TF(NameOfFile1)
t := TF_ReadLines(t, StartIndex, EndIndex)


Loop, Parse, t, `n, `r
{

  Haystack := A_LoopField
  Needle := "Edit, xm w60 ReadOnly x20 yp+25"

  A_LoopFieldString := StrReplace(A_LoopField, "Gui, 15:Add, Button, %k_Position% g", "")
  A_LoopFieldStringPercentDel := StrReplace(A_LoopFieldString, "%", "")

  A_LoopFieldArrayFromString := StrSplit(A_LoopFieldStringPercentDel, ",","")
  ; A_LoopField := StrReplace(t, ReplaceString, TextToInsert4b)

  ; MsgBox, %Needle%
  If InStr(Haystack, Needle)
  {
    ; MsgBox, The string was found.
  }
  Else
  {

    LineFromStringBank := findLocationOfStringInFile(FileLocation1, A_LoopFieldArrayFromString[2])
    FileReadLine, getWholeLine, %NameOfFile1%, LineFromStringBank

    getWholeLine := StrReplace(getWholeLine, ", FileLocation)", "")
    getWholeLine := StrSplit(getWholeLine, " = % getStringFromBank(","")
    getWholeLine := getWholeLine[2]
    StringTrimRight, getWholeLine, getWholeLine, 1
    StringTrimLeft, getWholeLine, getWholeLine, 1
    ; MsgBox, %getWholeLine%
    getLineFromBank := findLocationOfStringInFile(FileLocation, getWholeLine)
    FileReadLine, getWholeLineFromBank, %NameOfFile%, getLineFromBank
    getWholeLine := StrSplit(getWholeLineFromBank, "=","")
    getWholeLineTwo := getWholeLine[2]

    LV_Add("",getWholeLineTwo, A_LoopFieldArrayFromString[1])
    LV_ModifyCol()
  }
}

}

return

ZlogiesListViewLabel:

NameOfFile := "StringBank.txt"
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
FileLocation = %A_ScriptDir%\StringBank.txt
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk

; LineNumberForWholeLineArray3[A_EventInfo] := findAllLocationOfStringInFile(FileLocation1, WholeLineArray3[A_EventInfo])


if A_GuiEvent = DoubleClick
{
  LV_GetText(RowText, A_EventInfo,1)
  LV_GetText(RowText2, A_EventInfo,2)

  Gosub, Zlogies
  Gosub, %RowText2%
  ; FileGetAttrib,attribs,%A_ScriptFullPath%
  ; FileSetAttrib,-A,%A_ScriptFullPath%
  ; SplashTextOn,,,Updated script,
  ; Sleep,500
  ; Reload
  closeHelpyAfterExecutingCommands()

}
return

getStringUsedForBank(NameOfFile1, File, StringLocation){
FileReadLine, WholeLineString, %NameOfFile1%, StringLocation
; MsgBox, %WholeLineString%
WholeLineStringRemovedEnd := StrSplit(WholeLineString, ", FileLocation)","")
firstIndex := WholeLineStringRemovedEnd[1]
StringTrimRight, firstIndex, firstIndex, 1

WholeLineStringRemovedStart := StrSplit(firstIndex, "getStringFromBank(","")
SecondIndex := WholeLineStringRemovedStart[2]
StringTrimLeft, SecondIndex, SecondIndex, 1

; MsgBox, %SecondIndex%
; StringToReturn
StringToReturn := % findLocationOfStringInFile(File, SecondIndex)
return StringToReturn
}

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

WriteInfoRemoveSpecificZlogy:
GuiControl, 17:, RemoveSpecificZlogy, Xelnect@unseen.is
return

MakeNewZlogy:
CoordMode, Mouse, Screen
Gui, 5:Destroy
Gui, 5:Add, Groupbox, w550 h450,

global BkColor   := 0x8000000   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0x8000000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT

ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]
ExOrb5 := [0, 0x00f91111, , "black", , , "black", 1]

Gui, 5:Add, Button, xm w350 h20 x100 yp+25 gTestInfoAdd5 cFF5733,Test Info
Gui, 5:Add, Text, xm x150 yp+25  cWhite ,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
ImageButton.Create(ExOrb, ExOrb1)
Gui, 5:Add, Edit, %k_Position% w250 vURLZlogy,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cFF5733,Email/Username
ImageButton.Create(ExOrb, ExOrb1)
Gui, 5:Add, Edit, %k_Position% w250 vUsernameZlogy,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cFF5733,Pass
ImageButton.Create(ExOrb, ExOrb1)
Gui, 5:Add, Edit, %k_Position% w250 vPassZlogy,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cf99619,Type
ImageButton.Create(ExOrb, ExOrb2)
Gui, 5:Add, Edit, %k_Position% w250 vTypeZlogy,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cf99619,Counter
ImageButton.Create(ExOrb, ExOrb2)
Gui, 5:Add, Edit, %k_Position% w250 vCounterZlogy,
; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,

; Gui, 5:Add, Text, %k_Position% x100 yp+25  cWhite ,
Gui, 5:Add, Text, xm x100 yp+25 cWhite ,
Gui, 5:Add, Text, xm x100 yp+25 cWhite ,

Gui, 5:Add, Button, %k_Position% w100 h20 hwndExOrb cf91111,Special Characters
ImageButton.Create(ExOrb, ExOrb5)
Gui, 5:Add, Checkbox , %k_Position% gSpecialCharacters vSpecialCharacters, Special Characters

Gui, 5:Add, Button, %k_Position% w100 h20   hwndExOrb cf91111,Show password
ImageButton.Create(ExOrb, ExOrb5)
Gui, 5:Add, Checkbox , %k_Position% vShowPassword gShowPassword, Show password

; Gui, 5:add, edit, xm x100 yp+25 vPassword w180 Password, Password

Gui, 5:Add, Text, xm x100 yp+25  cWhite ,
; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,
; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,

ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

Gui, 5:Add, Button, w100 h20 x100 yp+25 hwndExOrb cf91111,Master Password
ImageButton.Create(ExOrb, ExOrb5)
Gui, 5:Add, Edit, %k_Position% w250 vGeneratedPassZlogy Password,


; GuiControl, 5:hide, GeneratedPassZlogy


Gui, 5:Add, Button, xm w350 x100 yp+25 gGenerateAPassword vGenerateAPassword,Generate A Password
Gui, 5:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy,Generate New Zlogy

; GuiControl, 5:Hide, GenerateAPassword

; Gui, 5:Add, Text, xm w100 ReadOnly ,ReadWrite
; Gui, 5:Add, Text, xm w100,          ReadWrite
; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
Gui, 5:Font, s18 cRed Bold, Verdana
GuiControl, 5:Font, MyEdit
Gui, 5:Color, 000000, FFFFFF
Gui, 5:Show, x65 y65, Zlogy2
MouseMove, 65, 340
WinSet, Redraw,, Zlogy2
return

ShowPassword:
GuiControlGet, Checked,,ShowPassword
If (Checked == 1)
{
    ; Msgbox, "dddd1"
    GuiControl, 5:-Password, GeneratedPassZlogy
    ; OutputVar := % RegExReplace(OutputVar,"[^\w]","")
}
If (Checked == 0)
{
    ; Msgbox, "saaaa0"
    
    GuiControl, 5:+Password, GeneratedPassZlogy
    ; OutputVar := OutputVar
}   
return

SpecialCharacters:
return

;|GenerateNewZlogy||SEARCHINDICATOR|
GenerateNewZlogy:
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

Index := % findLocationOfStringInFile(FileLocation, SearchString)
GuiControlGet, URLZlogy
GuiControlGet, UsernameZlogy
GuiControlGet, PassZlogy
randomString = % RandomGenerationFunction()
randomString1 = % RandomGenerationFunction()
randomString2 = % RandomGenerationFunction()
; Msgbox, %URLZlogy% %UsernameZlogy% %PassZlogy% %randomString%  %randomString1%
TF(NameOfFile)
IndexToUse1 := Index+1
TextToInsert1 := randomString . "=" . URLZlogy
TextToInsert2 := randomString1 . "=" . UsernameZlogy
TextToInsert3 := randomString2 . "=" . PassZlogy
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)
FileDelete, %NameOfFile%
FileAppend, %t%, %NameOfFile%
; sleep, 100
Line := False
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

;section2

Index1 := % findLocationOfStringInFile(FileLocation1, SearchString)
; Msgbox, %Index1%
randomStringU = % RandomGenerationFunction()
randomString1E = % RandomGenerationFunction()
randomString2P = % RandomGenerationFunction()
TF(NameOfFile1)
IndexToUse1 := Index1+1

; unclock with hash

TextToInsert1 := "U" . randomStringU . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

;lock with hash

t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
Line := False

;section3


NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringa)
; Msgbox, %Index1%
TF(NameOfFile1)
randomStringButton = % RandomGenerationFunction()
IndexToUse1 := Index1+1
TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsertButton)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
sleep, 100
Line := False
; Loop, Read, %FileLocation1%
; {

Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringb)
; Msgbox, %Index1%
IndexToUse2 := Index1+1
TextToInsert1b := randomStringButton . ":" . "`r`n" . "WinActivate ahk_id %previous_ID%"
; TextToInsert2b :=
TextToInsert3b := "SendInput %" . "E" . randomString1E . "%{tab}%" . "P" . randomString2P . "%{tab}{enter}"
TextToInsert4b := "return"
TF(NameOfFile1)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert4b)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3b)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; sleep, 100
; TF(NameOfFile1)
; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2b)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1b)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
FileGetAttrib,attribs,%A_ScriptFullPath%
; IfInString,attribs,A
; {
FileSetAttrib,-A,%A_ScriptFullPath%
; sleep, 5000
; Run %A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
; }
closeHelpyAfterExecutingCommands()
return

CleanGeneratedContent:

StartIndex := % findLocationOfStringInFile(FileLocation, SearchString)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation, SearchStringend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
TF(NameOfFile)
t := TF_RemoveLines(t, StartIndex, EndIndex)
FileDelete, %NameOfFile%
FileAppend, %t%, %NameOfFile%
}
StartIndex := % findLocationOfStringInFile(FileLocation1, SearchString)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation1, SearchStringend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
TF(NameOfFile1)
t := TF_RemoveLines(t, StartIndex, EndIndex)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
}
StartIndex := % findLocationOfStringInFile(FileLocation1, SearchStringa)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation1, SearchStringaend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
TF(NameOfFile1)
t := TF_RemoveLines(t, StartIndex, EndIndex)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
}
StartIndex := % findLocationOfStringInFile(FileLocation1, SearchStringb)
StartIndex := StartIndex + 1
EndIndex := % findLocationOfStringInFile(FileLocation1, SearchStringbend)
if(EndIndex <> StartIndex)
{
EndIndex := EndIndex - 1
TF(NameOfFile1)
t := TF_RemoveLines(t, StartIndex, EndIndex)
FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
}
FileGetAttrib,attribs,%A_ScriptFullPath%
; IfInString,attribs,A
; {
FileSetAttrib,-A,%A_ScriptFullPath%
; sleep, 5000
; Run %A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
; }
closeHelpyAfterExecutingCommands()
return

TestInfoAdd5:
GuiControl, 5:, URLZlogy, masterpasswordapp.com
GuiControl, 5:, UsernameZlogy, user
GuiControl, 5:, PassZlogy, 1234
GuiControl, 5:, TypeZlogy, long
GuiControl, 5:, CounterZlogy, 1
return

GenerateAPassword(){
; Run, %A_ScriptDir%\AHKlibs\Security\masterpassword-gui.jar
FileLocation4= %A_ScriptDir%\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release

; GenerateAPassword
; GenerateNewZlogy

GuiControlGet, URLZlogy
GuiControlGet, UsernameZlogy
GuiControlGet, GeneratedPassZlogy

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
ConsoleMasterPassword -u "%UsernameZlogy%" -s "%URLZlogy%" -t long -c 1 -p "%GeneratedPassZlogy%"
)
runwait, %comspec% /c %commands%

FileRead, OutputVar, %FileLocation4%\WriteText.txt

GuiControlGet, Checked,,SpecialCharacters
If (Checked == 1)
{
    ; Msgbox, "dddd1"
    OutputVar := % RegExReplace(OutputVar,"[^\w]","")
}
If (Checked == 0)
{
    ; Msgbox, "saaaa0"
    OutputVar := OutputVar
}       


; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\


; Msgbox, %OutputVar%
GuiControl, 5:, PassZlogy, %OutputVar%
FileDelete,  %FileLocation4%\WriteText.txt

return
}


MakeNewZlogyFromUrl:
CoordMode, Mouse, Screen
Gui, 12:Destroy
Gui, 12:Add, Groupbox, w550 h350,

; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0xFFF000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]

Gui, 12:Add, Text, xm w350 h20 x110 yp+25 cRed ,Less secure than needed and also cannot be used with logged Zloggy
Gui, 12:Add, Text, xm h1 x110 yp+25  cRed ,_______________________________________________________
Gui, 12:Add, Text, xm h20 x100 yp+25  cWhite ,

; Gui, 12:Add, Button, xm w350 h20 x100 yp+25 gTestInfoAdd5 cFF5733,Test Info
; Gui, 12:Add, Text, xm x150 yp+25  cWhite ,
Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Master Password
ImageButton.Create(ExOrb, ExOrb1)
Gui, 12:Add, Edit, %k_Position% w200 vPassZlogy12 password,
Gui, 12:Add, Button, xm w150 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
ImageButton.Create(ExOrb, ExOrb1)
Gui, 12:Add, Edit, %k_Position% w200 vURLZlogy12,
Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Email/Username
ImageButton.Create(ExOrb, ExOrb1)
Gui, 12:Add, Edit, %k_Position% w200 vUsernameZlogy12,
Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Generated password on start
ImageButton.Create(ExOrb, ExOrb1)
Gui, 12:Add, Edit, %k_Position% w200 vPassZlogy12onStart,
Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cf99619,Type
ImageButton.Create(ExOrb, ExOrb2)
Gui, 12:Add, Edit, %k_Position% w200 vTypeZlogy12,long
Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cf99619,Counter
ImageButton.Create(ExOrb, ExOrb2)
Gui, 12:Add, Edit, %k_Position% w200 vCounterZlogy12,1
Gui, 12:Add, Text, xm x100 yp+25  cWhite ,

ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

Gui, 12:Add, Button, xm w150 x100 yp+25 gGenerateAPassword12,Generate A New Password
Gui, 12:Add, Edit, %k_Position% w200 vGeneratedPassZlogy12,
Gui, 12:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy12,Generate New Zlogy

global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
Gui, 12:Font, s18 cRed Bold, Verdana
GuiControl, 12:Font, MyEdit
Gui, 12:Color, 000000, FFFFFF
Gui, 12:Show, x65 y65, Zlogy2
MouseMove, 65, 340
WinSet, Redraw,, Zlogy2
WinGet, currentWindow_ID, ID, A

WinActivate ahk_id %previous_ID%
SendInput {f6}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
ClipWait

; Msgbox, %PeIkwKsSDzKiLYt07%

; addressNeeded:= "https://.*.com"
; addressName:= Clipboard
; ; FoundPos := RegExMatch(addressName, (addressNeeded), SubPat)

; url = http://autohotkey.com/forum/posting.php?mode=newtopic&f=1

RegexMatch(Clipboard, InStr(Clipboard, "//www") ? "\.(.+?)\/" : "\/\/(.+?)\/" , domain)

; msgbox % domain1
addressName := % domain1

GuiControl, 12:, URLZlogy12, %addressName%
; GuiControl, 12:, URLZlogy12, % domain1
GuiControl, 12:, PassZlogy12, %PeIkwKsSDzKiLYt07%
GuiControl, 12:, UsernameZlogy12, %ErpOKDpZi6ii2bqgg%

GuiControlGet, TypeZlogy12, 12:
GuiControlGet, CounterZlogy12, 12:

WinActivate ahk_id %currentWindow_ID%

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
ConsoleMasterPassword -u "%ErpOKDpZi6ii2bqgg%" -s "%addressName%" -t %TypeZlogy12% -c %CounterZlogy12% -p "%PeIkwKsSDzKiLYt07%"
)
runwait, %comspec% /c %commands%

FileRead, OutputVar, %FileLocation4%\WriteText.txt
GuiControl, 12:, PassZlogy12onStart, %OutputVar%
FileDelete,  %FileLocation4%\WriteText.txt

return

GenerateAPassword12(){
; Run, %A_ScriptDir%\AHKlibs\Security\masterpassword-gui.jar
FileLocation4= %A_ScriptDir%\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release

; GenerateAPassword
; GenerateNewZlogy



GuiControlGet, URLZlogy12, 12:
GuiControlGet, UsernameZlogy12, 12:
GuiControlGet, PassZlogy12, 12:
GuiControlGet, TypeZlogy12, 12:
GuiControlGet, CounterZlogy12, 12:

CounterZlogy12 := CounterZlogy12+1

GuiControl, 12:, CounterZlogy12, %CounterZlogy12%

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
ConsoleMasterPassword -u "%UsernameZlogy12%" -s "%URLZlogy12%" -t %TypeZlogy12% -c %CounterZlogy12% -p "%PassZlogy12%"
)
runwait, %comspec% /c %commands%

; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\

FileRead, OutputVar, %FileLocation4%\WriteText.txt
; Msgbox, %OutputVar%
GuiControl, 12:, GeneratedPassZlogy12, %OutputVar%
FileDelete,  %FileLocation4%\WriteText.txt

return
}

findLocationOfStringInFile(File, String){
    ; unclock with hash
Line := False
Loop, Read, %File%
{

    If InStr(A_LoopReadLine, String){

        If !Line
        {
            Line := A_LoopReadLine
            lineLocation = %A_Index%
            Continue
        }
        Else
        {
            Line .= "`r`n" . A_LoopReadLine
            IndexToUse := %lineLocation% + 1
            Break
        }
    }
}
    ;lock with hash
return lineLocation
}

findAllLocationOfStringInFile(File, String){
Line := False
lineLocation := []
returnStringFromArray = ""
indexOfArray = -1
; MsgBox, %String%
; Loop, Parse, File, `r`n ;Read through "Contents" variable
Loop, Read, %File%, `r`n
{

NewStr := StrReplace(A_LoopReadLine, "`%"," ")

    If InStr(NewStr, String){
      ; MsgBox, %NewStr% ||| %A_LoopReadLine% ||| %String% ;%A_Index%
        ; If !Line
        ; {
            ; Line := A_LoopReadLine
            indexOfArray := indexOfArray + 1
            lineLocation[indexOfArray] := A_Index
            stringToPrint := % lineLocation[indexOfArray]
    }
}

; for key, value in lineLocation
; {
;     MsgBox, %value%
; }

for key, value in lineLocation
{
    ; MsgBox, %value%
    returnStringFromArray .= value . " "
    ; LineNumber3 := LineNumberForWholeLineArray3[A_EventInfo]
}

return returnStringFromArray
}

findWholeLineOfStringInFile(File, String){
    ; unclock with hash
Line := False
Loop, Read, %File%
{

    If InStr(A_LoopReadLine, String){

        If !Line
        {
            Line := A_LoopReadLine
            lineLocation = %A_Index%
            Continue
        }
        Else
        {
            Line .= "`r`n" . A_LoopReadLine
            IndexToUse := %lineLocation% + 1
            Break
        }
    }
}

FileReadLine, OutputVar, %File%, %lineLocation%
return OutputVar
}



GenerateNewZlogy12:
FileLocation = %A_ScriptDir%\StringBank.txt
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk

NameOfFile := "StringBank.txt"
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

SearchString1 := "[...&"
SearchString2 := "&&...]"
SearchString := SearchString1 . SearchString2
SearchString1end := "[...&e"
SearchString2end := "&e&...]"
SearchStringend := SearchString1end . SearchString2end
SearchString1a := "[..&&"
SearchString2a := "&&&..]"
SearchStringa := SearchString1a . SearchString2a
SearchString1aend := "[..&e&e"
SearchString2aend := "&e&e&..]"
SearchStringaend := SearchString1aend . SearchString2aend
SearchString1b := "[.&&&"
SearchString2b := "&&&&.]"
SearchStringb := SearchString1b . SearchString2b
SearchString1bend := "[.&e&e&e"
SearchString2bend := "&e&e&e&.]"
SearchStringbend := SearchString1bend . SearchString2bend
ReplaceString1 := "wP2HmBpInN7Riytio52yDB"
ReplaceString2 := "nidO4JeiAj"
ReplaceString := ReplaceString1 . ReplaceString2
Index := 0
Index1 := 0
IndexEnd := 0
Index1End := 0
pauseloop := 0
stringToHashAndUseForDecryption :=
stringToHashAndUseForEncryption :=

TF("WriteText.txt") ; read file, create global var t
; MsgBox % T

;section1

Index := % findLocationOfStringInFile(FileLocation, SearchString)

GuiControlGet, URLZlogy12, 12:
GuiControlGet, UsernameZlogy12, 12:
GuiControlGet, PassZlogy12onStart, 12:

randomString = % RandomGenerationFunction()
randomString1 = % RandomGenerationFunction()
randomString2 = % RandomGenerationFunction()

IndexToUse1 := Index+1
TextToInsert1 := randomString . "=" . URLZlogy12
TextToInsert2 := randomString1 . "=" . UsernameZlogy12
TextToInsert3 := randomString2 . "=" . PassZlogy12onStart
TF("StringBank.txt") ; read file, create global var t
t:=TF_ReadLines(t,5) ; pass on global var t created by TF(), read lines 5 to end of file, assign result to t

TF(NameOfFile)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)

; Msgbox,%t%
; Msgbox,t

FileDelete, %NameOfFile%
FileAppend, %t%, %NameOfFile%

Line := False

;section2

Index1 := % findLocationOfStringInFile(FileLocation1, SearchString)
; Msgbox, %Index1%
randomStringU = % RandomGenerationFunction()
randomString1E = % RandomGenerationFunction()
randomString2P = % RandomGenerationFunction()
TF(NameOfFile1)
IndexToUse1 := Index1+1

; unclock with hash

TextToInsert1 := "U" . randomStringU . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

;lock with hash

t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert2)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1)

FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
Line := False

;section3

NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringa)
TF(NameOfFile1)
randomStringButton = % RandomGenerationFunction()

IndexToUse1 := Index1+1
TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"

t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsertButton)

FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
sleep, 100
Line := False

;section4

Index1 := % findLocationOfStringInFile(FileLocation1, SearchStringb)
IndexToUse2 := Index1+1

TextToInsert1b := randomStringButton . ":" . "`r`n" . "WinActivate ahk_id %previous_ID%"
TextToInsert3b := "SendInput %" . "E" . randomString1E . "%{tab}%" . "P" . randomString2P . "%{tab}{enter}"
TextToInsert4b := "return"

TF(NameOfFile1)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert4b)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert3b)
t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
t := StrReplace(t, ReplaceString, TextToInsert1b)

FileDelete, %NameOfFile1%
FileAppend, %t%, %NameOfFile1%
FileGetAttrib,attribs,%A_ScriptFullPath%
FileSetAttrib,-A,%A_ScriptFullPath%

SplashTextOn,,,Updated script,
Sleep,500
Reload
; }
closeHelpyAfterExecutingCommands()
return




; ManagePasswordsFromUrl:
; WinActivate ahk_id %previous_ID%
; SendInput {f6}
; sleep, 1
; SendInput {Lctrl down}
; sleep, 1
; SendInput {c}
; sleep, 1
; SendInput {Lctrl up}
; ClipWait
; addressNeeded:= "https://.*.com"
; addressName:= Clipboard
; FoundPos := RegExMatch(addressName, (addressNeeded), SubPat)
; Run, %A_ScriptDir%\AHKlibs\Security\masterpassword-gui.jar
; sleep, 3000
; SendInput {tab}%NiN1QWJiht9iPclsx%  %PQH0JiiV97gyjNNiL%
; sleep, 10
; SendInput {space}
; sleep, 10
; SendInput {space}
; sleep, 10
; SendInput {tab}
; sleep, 500
; SendInput %NiN1QWJiht9iPclsx%
; sleep, 10
; SendInput {tab}
; sleep, 10
; SendInput %PQH0JiiV97gyjNNiL%
; sleep, 10
; SendInput {enter}
; sleep, 500
; SendInput %SubPat%
; sleep, 10
; SendInput {enter}
; return

; ChromeOnlineManagePasswordsFromUrl:
; WinActivate ahk_id %previous_ID%
; sleep, 50
; SendInput {Lshift down}
; sleep, 10
; SendInput {home}
; sleep, 10
; SendInput {Lshift up}
; sleep, 10
; SendInput {backspace}
; sleep, 70
; SendInput %NiN1QWJiht9iPclsx%
; sleep, 20
; SendInput {tab}
; sleep, 20
; SendInput %PQH0JiiV97gyjNNiL%
; sleep, 20
; SendInput {enter}
; sleep, 20
; WinClose ahk_class AutoHotkeyGUI
; return



UnlockZlogy:
CoordMode, Mouse, Screen
Gui, 7:Destroy
Gui, 7:Add, Groupbox, w550 h700 ,
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Enter your password or use a cashed one
Gui, 7:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForDecryption,
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 7:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltStringUnlock,
Gui, 7:Add, Button, %k_Position% w100 gimportSalt,Import Salt
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
Gui, 7:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
Gui, 7:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsStringUnlock,8192
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
Gui, 7:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyStringUnlock,32
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
Gui, 7:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForUnclocking,Save hash for uncloking
Gui, 7:Add, Button, %k_Position% w150 gDoNotSaveStringToHash,Unlock with data
Gui, 7:Add, Button, xm w150 x125 yp+25 gSaveStringToHashUnlock,Save a hash for unlocking
Gui, 7:Add, Button, %k_Position% w150 gUseAhashUnlock,Unlock with saved data
Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
Gui, 7:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
Gui, 7:Font, s18 cRed Bold, Verdana
GuiControl, 7:Font, MyEdit
Gui, 7:Color, 000000, FFFFFF
Gui, 7:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return

importSalt:
FileRead, OutputVarImport,  %FileLocation3%
arraySaltImport := StrSplit(OutputVarImport, A_Space)
stringToUseForUnlocking := arraySaltImport[2]
GuiControl,,bcrypthpbkdf2SaltStringUnlock,%stringToUseForUnlocking%
return

DoNotSaveStringToHash:
GuiControlGet, stringToHashAndUseForDecryption
GuiControlGet, bcrypthpbkdf2SaltStringUnlock
GuiControlGet, bcrypthpbkdf2IterationsStringUnlock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlock
stringToHashAndUseForUnlocking := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)

GuiControlGet, CheckboxVarForUnclocking
if(CheckboxVarForUnclocking==1)
{
SaveStringToHashUnlockFunc(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
}

unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForUnlocking)
return

UseAhashUnlock:
FileRead, OutputVar,  %FileLocation3%
arrayStringToUseForUnlocking := StrSplit(OutputVar, A_Space)
stringToUseForUnlocking := arrayStringToUseForUnlocking[1]
unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToUseForUnlocking)
return

UseAhashUnlockFunc()
{
FileRead, OutputVarUseAhashUnlockFunc,  %FileLocation3%
arrayStringToUseForUnlocking := StrSplit(OutputVarUseAhashUnlockFunc, A_Space)
stringToUseForUnlocking := arrayStringToUseForUnlocking[1]
unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToUseForUnlocking)
return
}

SaveStringToHashUnlock:
GuiControlGet, stringToHashAndUseForDecryption
GuiControlGet, bcrypthpbkdf2SaltStringUnlock
GuiControlGet, bcrypthpbkdf2IterationsStringUnlock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlock
stringToHashAndUseForUnlocking := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)

SringToAppend = %stringToHashAndUseForUnlocking% %bcrypthpbkdf2SaltStringUnlock% %bcrypthpbkdf2IterationsStringUnlock% %bcryptpbkdf2LengthOfKeyStringUnlock%

FileDelete, %FileLocation3%
FileAppend, %SringToAppend% , %FileLocation3%
return

SaveStringToHashUnlockFunc(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
{
FileLocation3 = %A_ScriptDir%\AHKassociatedFiles\resources\HashPass.txt
UseStringToHashAndUseForEncryption := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
SringToAppendFunc = %UseStringToHashAndUseForEncryption% %bcrypthpbkdf2SaltStringUnlock% %bcrypthpbkdf2IterationsStringUnlock% %bcryptpbkdf2LengthOfKeyStringUnlock%
; Msgbox, %SringToAppendFunc%
; Msgbox, %FileLocation3%
FileDelete, %FileLocation3%
FileAppend, %SringToAppendFunc% , %FileLocation3%
return
}

DoNotSaveStringToHashInsecure:
unlockingFunction()
return

Cancel:
WinClose ;
return

unlockingFunction(){
GuiControlGet, stringToHashAndUseForDecryption
stringToHashAndUseForDecryption := hashSHA256(stringToHashAndUseForDecryption)

unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForDecryption)

return
}

unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForDecryptionCore)
{

commands=
(join&
7z x StringBank.7z -p%stringToHashAndUseForDecryptionCore%
%A_ScriptDir%\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCore% %A_ScriptDir%\StringBank.txt.aes
del StringBank.txt.aes
)

if FileExist("StringBank.7z")
{
    runwait, %comspec% /c %commands%
}

commands=
(join&
del StringBank.7z
)

if FileExist("StringBank.txt")
{
    runwait, %comspec% /c %commands%
}



Reload
return
}

unlockingFunctionCore(stringToHashAndUseForDecryptionCore)
{

commands=
(join&
7z x StringBank.7z -p%stringToHashAndUseForDecryptionCore%
`%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCore% `%userprofile`%\Documents\AHKHelpy\StringBank.txt.aes
del StringBank.txt.aes
)

if FileExist("StringBank.7z")
{
    runwait, %comspec% /c %commands%
}

commands=
(join&
del StringBank.7z
)

if FileExist("StringBank.txt")
{
    runwait, %comspec% /c %commands%
}



Reload

}


lockZlogy:
CoordMode, Mouse, Screen
Gui, 8:Destroy
Gui, 8:Add, Groupbox, w550 h700 ,
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Enter a password to lock
Gui, 8:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForEncryption,
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 8:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltString,
Gui, 8:Add, Button, %k_Position% w100 ggenerateSalt1,Generate Salt
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
Gui, 8:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
Gui, 8:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsString,8192
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
Gui, 8:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyString,32
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
Gui, 8:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForLocking,Save hash for locking
Gui, 8:Add, Button, %k_Position% w150 glockingFunction,Lock with data
Gui, 8:Add, Button, xm w150 x125 yp+25 gSaveStringToHashLock,Save a hash
Gui, 8:Add, Button, %k_Position% w150 gUseAhashLock,Lock with saved hash
Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
Gui, 8:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
Gui, 8:Font, s18 cRed Bold, Verdana
GuiControl, 8:Font, MyEdit
Gui, 8:Color, 000000, FFFFFF
Gui, 8:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return

lockingFunction:
GuiControlGet, stringToHashAndUseForEncryption
GuiControlGet, bcrypthpbkdf2SaltString
GuiControlGet, bcrypthpbkdf2IterationsString
GuiControlGet, bcryptpbkdf2LengthOfKeyString
stringToHashAndUseForEncryptionLock := % bcrypt.pbkdf2(stringToHashAndUseForEncryption, bcrypthpbkdf2SaltString, "Sha256", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
GuiControlGet, CheckboxVarForLocking
if(CheckboxVarForLocking==1)
{
SaveStringToHashLockFunc(stringToHashAndUseForEncryption, bcrypthpbkdf2SaltString, bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
}
lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryptionLock)
return

UseAhashLock:
FileRead, OutputVarhashLock,  %FileLocation3%
arrayStringToHashAndUseForEncryption := StrSplit(OutputVarhashLock, A_Space)
stringToHashAndUseForEncryptionForCore := arrayStringToHashAndUseForEncryption[1]
lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryptionForCore)
return

UseAhashLockFunc()
{
FileRead, OutputVarhashLockUseAhashLockFunc,  %FileLocation3%
arrayStringToHashAndUseForEncryption := StrSplit(OutputVarhashLockUseAhashLockFunc, A_Space)
stringToHashAndUseForEncryptionForCore := arrayStringToHashAndUseForEncryption[1]
lockingFunctionCore(stringToHashAndUseForEncryptionForCore)
return
}

UseAhashLockFuncWithScriptDirectoryLocationForCMD()
{
FileRead, OutputVarhashLockUseAhashLockFunc,  %FileLocation3%
arrayStringToHashAndUseForEncryption := StrSplit(OutputVarhashLockUseAhashLockFunc, A_Space)
stringToHashAndUseForEncryptionForCore := arrayStringToHashAndUseForEncryption[1]

lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryptionForCore)
return
}

SaveStringToHashLock:

GuiControlGet, stringToHashAndUseForEncryption
GuiControlGet, bcrypthpbkdf2SaltString
GuiControlGet, bcrypthpbkdf2IterationsString
GuiControlGet, bcryptpbkdf2LengthOfKeyString
UseStringToHashAndUseForEncryption := % bcrypt.pbkdf2(stringToHashAndUseForEncryption, bcrypthpbkdf2SaltString, "Sha256", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
SringToAppend = %UseStringToHashAndUseForEncryption% %bcrypthpbkdf2SaltString% %bcrypthpbkdf2IterationsString% %bcryptpbkdf2LengthOfKeyString%
FileDelete, %FileLocation3%
FileAppend, %SringToAppend% , %FileLocation3%

return

SaveStringToHashLockFunc(stringToHashAndUseForEncryption, bcrypthpbkdf2SaltString, bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
{
FileLocation3 = %A_ScriptDir%\AHKassociatedFiles\resources\HashPass.txt
UseStringToHashAndUseForEncryption := % bcrypt.pbkdf2(stringToHashAndUseForEncryption, bcrypthpbkdf2SaltString, "Sha256", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
SringToAppendFunc = %UseStringToHashAndUseForEncryption% %bcrypthpbkdf2SaltString% %bcrypthpbkdf2IterationsString% %bcryptpbkdf2LengthOfKeyString%
FileDelete, %FileLocation3%
FileAppend, %SringToAppendFunc% , %FileLocation3%
return
}

lockingFunctionInsecure:
GuiControlGet, stringToHashAndUseForEncryption
stringToHashAndUseForEncryption := hashSHA256(stringToHashAndUseForEncryption)
lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryption)
return

lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryptionCore)
{
commands=
    (join&
    %A_ScriptDir%\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCore% %A_ScriptDir%\StringBank.txt
    7z u -mhe=on -p%stringToHashAndUseForEncryptionCore% StringBank.7z StringBank.txt.aes
    del StringBank.txt.aes
    del StringBank.txt
    )

if FileExist("StringBank.txt")
{
    runwait, %comspec% /c %commands%
}
Reload
return
}

lockingFunctionCore(stringToHashAndUseForEncryptionCore)
{
commands=
    (join&
    `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCore% `%userprofile`%\Documents\AHKHelpy\StringBank.txt
    7z u -mhe=on -p%stringToHashAndUseForEncryptionCore% StringBank.7z StringBank.txt.aes
    del StringBank.txt.aes
    del StringBank.txt
    )

if FileExist("StringBank.txt")
{
    runwait, %comspec% /c %commands%
}

Reload
return
}
