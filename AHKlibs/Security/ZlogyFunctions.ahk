; ﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; ; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]

; TestTestTest()
; {
; MsgBox, "hhffff"
; return
; }

MakeNewZlogy()
{
CoordMode, Mouse, Screen
Gui, 5:Destroy
Gui, 5:Add, Groupbox, w550 h350,

ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]

Gui, 5:Add, Button, xm w350 h20 x100 yp+25 gTestInfoAdd5 cFF5733,Test Info
Gui, 5:Add, Text, xm x150 yp+25  cWhite ,
Gui, 5:Add, Button, xm w100 h20 x100 yp+25 hwndExOrb cFF5733,URL
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
Gui, 5:Add, Text, xm x100 yp+25  cWhite ,

; Gui, 5:Add, Text, xm w100 x20 yp+20,URL
; Gui, 5:Add, Edit, %k_Position% vURLZlogy,
; Gui, 5:Add, Text, xm w100 x20 yp+20,Username
; Gui, 5:Add, Edit, %k_Position% vUsernameZlogy,
; Gui, 5:Add, Text, xm w100 x20 yp+20,Pass
; Gui, 5:Add, Edit, %k_Position% vPassZlogy,

ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

Gui, 5:Add, Button, xm w150 x100 yp+25 gGenerateAPassword,Generate A Password
Gui, 5:Add, Edit, %k_Position% w200 vGeneratedPassZlogy,
Gui, 5:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy,Generate New Zlogy

; ImageButton.Create(GenerateAPassword, ExOrb3)
; ImageButton.Create(GenerateNewZlogy, ExOrb4)

; GenerateAPasswordCall := Func("GenerateAPassword").Bind("arg")
; GenerateNewZlogyCall := Func("GenerateNewZlogy").Bind("arg")
; GuiControl, +g, % GenerateAPassword, % GenerateAPasswordCall
; GuiControl, +g, % GenerateNewZlogy, % GenerateNewZlogyCall

; Gui, 5:Add, Text, xm w100 ReadOnly ,ReadWrite
; Gui, 5:Add, Text, xm w100,          ReadWrite
global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
Gui, 5:Font, s18 cRed Bold, Verdana
GuiControl, 5:Font, MyEdit
Gui, 5:Color, 000000, FFFFFF
Gui, 5:Show, x65 y65, Zlogy2
MouseMove, 65, 340
WinSet, Redraw,, Zlogy2
return
}

;|GenerateNewZlogy||SEARCHINDICATOR|
GenerateNewZlogy:
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\Autohotkey.ahk
NameOfFile1 := "Autohotkey.ahk"

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
NameOfFile1 := "Autohotkey.ahk"

;section2

; Loop, Read, %FileLocation1%
; {

;     If InStr(A_LoopReadLine, SearchString){

;         If !Line
;         {
;             Line := A_LoopReadLine
;             Index1 = %A_Index%
;             Continue
;         }
;         Else
;         {
;             Line .= "`r`n" . A_LoopReadLine
;             IndexToUse := %Index1% + 1
;             Break
;         }
;     }
; }
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


NameOfFile1 := "Autohotkey.ahk"
; Loop, Read, %FileLocation1%
; {

;     If InStr(A_LoopReadLine, SearchStringa){

;         If !Line
;         {
;             Line := A_LoopReadLine
;             Index1 = %A_Index%
;             Continue
;         }
;         Else
;         {
;             Line .= "`r`n" . A_LoopReadLine
;             IndexToUse := %Index1% + 1
;             Break
;         }
;     }
; }
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

;     If InStr(A_LoopReadLine, SearchStringb){

;         If !Line
;         {
;             Line := A_LoopReadLine
;             Index1 = %A_Index%
;             Continue
;         }
;         Else
;         {
;             Line .= "`r`n" . A_LoopReadLine
;             IndexToUse := %Index1% + 1
;             Break
;         }
;     }
; }
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

CleanGeneratedContent()
{
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
}

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
GuiControlGet, PassZlogy

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
ConsoleMasterPassword -u "%UsernameZlogy%" -s "%URLZlogy%" -t long -c 1 -p "%PassZlogy%"
)
runwait, %comspec% /c %commands%

; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\

FileRead, OutputVar, %FileLocation4%\WriteText.txt
; Msgbox, %OutputVar%
GuiControl, 5:, GeneratedPassZlogy, %OutputVar%
FileDelete,  %FileLocation4%\WriteText.txt

return
}

MakeNewZlogyFromUrl()
{
CoordMode, Mouse, Screen
Gui, 12:Destroy
Gui, 12:Add, Groupbox, w550 h350,

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
Gui, 12:Add, Button, xm w150 h20 x100 yp+25 hwndExOrb cFF5733,URL
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

; TF("WriteText.txt") ; read file, create global var t
; MsgBox % T

; ImageButton.Create(GenerateAPassword12, ExOrb3)
; ImageButton.Create(GenerateNewZlogy12, ExOrb4)

; GenerateAPassword12Call := Func("GenerateAPassword12").Bind("arg")
; GenerateNewZlogy12Call := Func("GenerateNewZlogy12").Bind("arg")
; GuiControl, +g, % GenerateAPassword12, % GenerateAPassword12Call
; GuiControl, +g, % GenerateNewZlogy12, % GenerateNewZlogy12Call

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
}

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

GenerateNewZlogy12:
FileLocation = %A_ScriptDir%\StringBank.txt
FileLocation1 = %A_ScriptDir%\Autohotkey.ahk

NameOfFile := "StringBank.txt"
NameOfFile1 := "Autohotkey.ahk"

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

NameOfFile1 := "Autohotkey.ahk"
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


UnlockZlogy()
{
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
}

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
FileLocation3 = %A_ScriptDir%\HashPass.txt
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

LockZlogy(){
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
}

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
FileLocation3 = %A_ScriptDir%\HashPass.txt
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

FileLock()
{
CoordMode, Mouse, Screen
Gui, 13:Destroy
Gui, 13:Add, Groupbox, w550 h700 ,
Gui, 13:Add, Text, xm x125 yp+25 w100 cWhite ,Choose a file:
Gui, 13:Add, Button, %k_Position% w200 gFileChooseFileLock,Choose a file
Gui, 13:Add, Edit, xm w300 x125 yp+25 vFileLockDirectoryURL,
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Enter a password to lock
Gui, 13:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForEncryptionFileLock,
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 13:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltStringFileLock,
Gui, 13:Add, Button, %k_Position% w100 ggenerateSalt1FileLock,Generate Salt
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
Gui, 13:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
Gui, 13:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsStringFileLock,8192
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
Gui, 13:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyStringFileLock,32
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
Gui, 13:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForLockingFileLock,Save hash for locking
Gui, 13:Add, Button, %k_Position% w150 glockingFunctionFileLock,Lock with data
Gui, 13:Add, Button, xm w150 x125 yp+25 gSaveStringToHashLockFileLock,Save a hash
Gui, 13:Add, Button, %k_Position% w150 gUseAhashLockFileLock,Lock with saved hash
Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
Gui, 13:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
Gui, 13:Font, s18 cRed Bold, Verdana
GuiControl, 13:Font, MyEdit
Gui, 13:Color, 000000, FFFFFF
Gui, 13:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return
}

FileChooseFileLock:
FileSelectFile, SelectedFile, 3, , Open a file,
if SelectedFile =
    MsgBox, The user didn't select anything.
else
GuiControl,,FileLockDirectoryURL,%SelectedFile%
return

lockingFunctionFileLock:
GuiControlGet, stringToHashAndUseForEncryptionFileLock
GuiControlGet, bcrypthpbkdf2SaltStringFileLock
GuiControlGet, bcrypthpbkdf2IterationsStringFileLock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringFileLock
GuiControlGet, FileLockDirectoryURL
stringToHashAndUseForEncryptionLockFileLock := % bcrypt.pbkdf2(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, "Sha256", bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
GuiControlGet, CheckboxVarForLockingFileLock
if(CheckboxVarForLockingFileLock==1)
{
SaveStringToHashLockFunc(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
}
lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionLockFileLock, FileLockDirectoryURL)
return

UseAhashLockFileLock:
GuiControlGet, FileLockDirectoryURL
FileRead, OutputVarhashLock,  %FileLocation3%
arrayStringToHashAndUseForEncryptionFileLock := StrSplit(OutputVarhashLock, A_Space)
stringToHashAndUseForEncryptionForCoreFileLock := arrayStringToHashAndUseForEncryptionFileLock[1]
lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionForCoreFileLock, FileLockDirectoryURL)
return

; UseAhashLockFunc()
; {
; FileRead, OutputVarhashLockUseAhashLockFunc,  %FileLocation3%
; arrayStringToHashAndUseForEncryptionFileLock := StrSplit(OutputVarhashLockUseAhashLockFunc, A_Space)
; stringToHashAndUseForEncryptionForCoreFileLock := arrayStringToHashAndUseForEncryptionFileLock[1]
; lockingFunctionCoreFileLock(stringToHashAndUseForEncryptionForCoreFileLock)
; return
; }

UseAhashLockFuncWithScriptDirectoryLocationForCMDFileLock()
{
GuiControlGet, FileLockDirectoryURL
FileRead, OutputVarhashLockUseAhashLockFunc,  %FileLocation3%
arrayStringToHashAndUseForEncryptionFileLock := StrSplit(OutputVarhashLockUseAhashLockFunc, A_Space)
stringToHashAndUseForEncryptionForCoreFileLock := arrayStringToHashAndUseForEncryptionFileLock[1]

lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionForCoreFileLock, directoryForFileLock)
return
}

SaveStringToHashLockFileLock:

GuiControlGet, stringToHashAndUseForEncryptionFileLock
GuiControlGet, bcrypthpbkdf2SaltStringFileLock
GuiControlGet, bcrypthpbkdf2IterationsStringFileLock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringFileLock
; GuiControlGet, FileLockDirectoryURL
UseStringToHashAndUseForEncryptionFileLock := % bcrypt.pbkdf2(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, "Sha256", bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
SringToAppend = %UseStringToHashAndUseForEncryptionFileLock% %bcrypthpbkdf2SaltStringFileLock% %bcrypthpbkdf2IterationsStringFileLock% %bcryptpbkdf2LengthOfKeyStringFileLock%
FileDelete, %FileLocation3%
FileAppend, %SringToAppend% , %FileLocation3%

return

SaveStringToHashLockFuncFileLock(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
{
FileLocation3 = %A_ScriptDir%\HashPass.txt
UseStringToHashAndUseForEncryptionFileLock := % bcrypt.pbkdf2(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, "Sha256", bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
SringToAppendFunc = %UseStringToHashAndUseForEncryptionFileLock% %bcrypthpbkdf2SaltStringFileLock% %bcrypthpbkdf2IterationsStringFileLock% %bcryptpbkdf2LengthOfKeyStringFileLock%
FileDelete, %FileLocation3%
FileAppend, %SringToAppendFunc% , %FileLocation3%
return
}

; lockingFunctionInsecure:
; GuiControlGet, stringToHashAndUseForEncryption
; stringToHashAndUseForEncryption := hashSHA256(stringToHashAndUseForEncryption)
; lockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForEncryption)
; return

lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionCoreFileLock, directoryForFileLock)
{
SplitPath, directoryForFileLock, nameOfFileForFileLock
nameOfFileForFileLockArray := StrSplit(nameOfFileForFileLock, ".")
nameOfFileForFileLockArrayNoExtension := nameOfFileForFileLockArray[1]

directoryForFileLockArray := StrSplit(directoryForFileLock, ".")
directoryForFileLockArrayNoExtension := directoryForFileLockArray[1]

; MsgBox, %stringToHashAndUseForEncryptionCoreFileLock%
; MsgBox, %directoryForFileLock% - %nameOfFileForFileLock% - %nameOfFileForFileLockArrayNoExtension%

commands=
    (join&
    %A_ScriptDir%\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLock%
    7z u -mhe=on -p%stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLockArrayNoExtension%.7z %directoryForFileLock%.aes
    del %directoryForFileLock%.aes
    del %directoryForFileLock%
    )

; if FileExist("%directoryForFileLock%")
; {
    runwait, %comspec% /c %commands%
; }
Reload
return
}

; getNameOfFileFromDirectory(directoryForFileLock)
; {
; return NameOfFileFromDirectory
; }

FileUnlock()
{
CoordMode, Mouse, Screen
Gui, 14:Destroy
Gui, 14:Add, Groupbox, w550 h700 ,
Gui, 14:Add, Text, xm x125 yp+25 w100 cWhite ,Choose a file:
Gui, 14:Add, Button, %k_Position% w200 gFileChooseFileUnlock,Choose a file
Gui, 14:Add, Edit, xm w300 x125 yp+25 vFileUnlockDirectoryURLFileUnlock,
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,Enter your password or use a cashed one
Gui, 14:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForDecryptionFileUnlock,
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 14:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltStringUnlockFileUnlock,
Gui, 14:Add, Button, %k_Position% w100 gimportSaltFileUnlock,Import Salt
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,
Gui, 14:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
Gui, 14:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsStringUnlockFileUnlock,8192
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
Gui, 14:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyStringUnlockFileUnlock,32
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,
Gui, 14:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForUnclockingFileUnlock,Save hash for uncloking
Gui, 14:Add, Button, %k_Position% w150 gDoNotSaveStringToHashFileUnlock,Unlock with data
Gui, 14:Add, Button, xm w150 x125 yp+25 gSaveStringToHashUnlockFileUnlock,Save a hash for unlocking
Gui, 14:Add, Button, %k_Position% w150 gUseAhashUnlockFileUnlock,Unlock with saved hash
Gui, 14:Add, Text, xm x125 yp+25 cWhite ,
Gui, 14:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
Gui, 14:Font, s18 cRed Bold, Verdana
GuiControl, 14:Font, MyEdit
Gui, 14:Color, 000000, FFFFFF
Gui, 14:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return
}

FileChooseFileUnlock:
FileSelectFile, SelectedFileFileUnlock, 3, , Open a file,
if SelectedFileFileUnlock =
    MsgBox, The user didn't select anything.
else
GuiControl,,FileUnlockDirectoryURLFileUnlock,%SelectedFileFileUnlock%
return

importSaltFileUnlock:
FileRead, OutputVarImport,  %FileLocation3%
arraySaltImport := StrSplit(OutputVarImport, A_Space)
stringToUseForUnlocking := arraySaltImport[2]
GuiControl,,bcrypthpbkdf2SaltStringUnlockFileUnlock,%stringToUseForUnlocking%
return

DoNotSaveStringToHashFileUnlock:
GuiControlGet, stringToHashAndUseForDecryptionFileUnlock
GuiControlGet, bcrypthpbkdf2SaltStringUnlockFileUnlock
GuiControlGet, bcrypthpbkdf2IterationsStringUnlockFileUnlock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock
GuiControlGet, FileUnlockDirectoryURLFileUnlock
stringToHashAndUseForUnlockingFileUnlock := % bcrypt.pbkdf2(stringToHashAndUseForDecryptionFileUnlock, bcrypthpbkdf2SaltStringUnlockFileUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlockFileUnlock, bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock)
GuiControlGet, CheckboxVarForUnclockingFileUnlock
if(CheckboxVarForUnclockingFileUnlock==1)
{
SaveStringToHashUnlockFuncFileUnlock(stringToHashAndUseForDecryptionFileUnlock, bcrypthpbkdf2SaltStringUnlockFileUnlock, bcrypthpbkdf2IterationsStringUnlockFileUnlock, bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock)
}
unlockingFunctionCoreWithScriptDirectoryLocationForCMDFileUnlock(stringToHashAndUseForUnlockingFileUnlock, FileUnlockDirectoryURLFileUnlock)
return

UseAhashUnlockFileUnlock:
GuiControlGet, FileUnlockDirectoryURLFileUnlock
FileRead, OutputVar,  %FileLocation3%
arrayStringToUseForUnlockingFileUnlock := StrSplit(OutputVar, A_Space)
stringToUseForUnlockingFileUnlock := arrayStringToUseForUnlockingFileUnlock[1]
unlockingFunctionCoreWithScriptDirectoryLocationForCMDFileUnlock(stringToUseForUnlockingFileUnlock, FileUnlockDirectoryURLFileUnlock)
return

UseAhashUnlockFuncFileUnlock()
{
GuiControlGet, FileUnlockDirectoryURLFileUnlock
FileRead, OutputVarUseAhashUnlockFunc,  %FileLocation3%
arrayStringToUseForUnlockingFileUnlock := StrSplit(OutputVarUseAhashUnlockFunc, A_Space)
stringToUseForUnlockingFileUnlock := arrayStringToUseForUnlockingFileUnlock[1]
unlockingFunctionCoreWithScriptDirectoryLocationForCMDFileUnlock(stringToUseForUnlockingFileUnlock, FileUnlockDirectoryURLFileUnlock)
return
}

SaveStringToHashUnlockFileUnlock:
GuiControlGet, stringToHashAndUseForDecryptionFileUnlock
GuiControlGet, bcrypthpbkdf2SaltStringUnlockFileUnlock
GuiControlGet, bcrypthpbkdf2IterationsStringUnlockFileUnlock
GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock
GuiControlGet, FileUnlockDirectoryURLFileUnlock
stringToHashAndUseForUnlockingFileUnlock := % bcrypt.pbkdf2(stringToHashAndUseForDecryptionFileUnlock, bcrypthpbkdf2SaltStringUnlockFileUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlockFileUnlock, bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock)
SringToAppend = %stringToHashAndUseForUnlockingFileUnlock% %bcrypthpbkdf2SaltStringUnlockFileUnlock% %bcrypthpbkdf2IterationsStringUnlockFileUnlock% %bcryptpbkdf2LengthOfKeyStringUnlockFileUnlock%
FileDelete, %FileLocation3%
FileAppend, %SringToAppend% , %FileLocation3%
return

SaveStringToHashUnlockFuncFileUnlock(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
{
FileLocation3 = %A_ScriptDir%\HashPass.txt
UseStringToHashAndUseForEncryption := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
SringToAppendFunc = %UseStringToHashAndUseForEncryption% %bcrypthpbkdf2SaltStringUnlock% %bcrypthpbkdf2IterationsStringUnlock% %bcryptpbkdf2LengthOfKeyStringUnlock%
FileDelete, %FileLocation3%
FileAppend, %SringToAppendFunc% , %FileLocation3%
return
}

DoNotSaveStringToHashInsecureFileUnlock:
unlockingFunctionFileUnlock()
return

unlockingFunctionFileUnlock(){
GuiControlGet, FileUnlockDirectoryURLFileUnlock
GuiControlGet, stringToHashAndUseForDecryption
stringToHashAndUseForDecryption := hashSHA256(stringToHashAndUseForDecryption)
unlockingFunctionCoreWithScriptDirectoryLocationForCMDFileUnlock(stringToHashAndUseForDecryption, FileUnlockDirectoryURLFileUnlock)
return
}

unlockingFunctionCoreWithScriptDirectoryLocationForCMDFileUnlock(stringToHashAndUseForDecryptionCoreFileUnlock, directoryForFileUnlock)
{

SplitPath, directoryForFileUnlock, nameOfFileForFileUnlock, dirOfFileForFileUnlock
nameOfFileForFileUnlockArray := StrSplit(nameOfFileForFileUnlock, ".")
nameOfFileForFileUnlockArrayNoExtension := nameOfFileForFileUnlockArray[1]

directoryForFileUnlockArray := StrSplit(directoryForFileUnlock, ".")
directoryForFileUnlockArrayNoExtension := directoryForFileUnlockArray[1]

directoryForFileUnlockArrayAnyExtension = %directoryForFileUnlockArrayNoExtension%.*

; Msgbox, %directoryForFileUnlock% - %directoryForFileUnlockArrayNoExtension% - %directoryForFileUnlockArrayAnyExtension% - %nameOfFileForFileUnlockArrayNoExtension% - %nameOfFileForFileUnlock%
; FileDelete, C:\Users\Fallar\Desktop\sss.txt
; FileAppend, %directoryForFileUnlock% - %directoryForFileUnlockArrayNoExtension% - %directoryForFileUnlockArrayAnyExtension% - %nameOfFileForFileUnlockArrayNoExtension% - %nameOfFileForFileUnlock% , C:\Users\Fallar\Desktop\sss.txt

commands=
(join&
cd %dirOfFileForFileUnlock%
7z x %nameOfFileForFileUnlock% -p%stringToHashAndUseForDecryptionCoreFileUnlock%
%A_ScriptDir%\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCoreFileUnlock% %directoryForFileUnlockArrayAnyExtension%.aes
del %directoryForFileUnlockArrayAnyExtension%.aes
)

; echo cd
; cd
; echo `%cd`%
; %A_ScriptDir%\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCoreFileUnlock% %directoryForFileUnlockArrayAnyExtension%.aes
; del %directoryForFileUnlockArrayAnyExtension%.aes

if FileExist(directoryForFileUnlock)
{
    runwait, %comspec% /c %commands%
}
commands=
(join&
del %directoryForFileUnlockArrayNoExtension%.7z
)
if FileExist(directoryForFileUnlockArrayAnyExtension)
{
    runwait, %comspec% /c %commands%
}
Reload
return
}

; RandomGenerationFunction(){
; ReturnString = % RegExReplace(RandomStr(), "\W", "i")
; return ReturnString
; }

generateSalt1:
GuiControlGet, bcrypthmacSaltString
randomPartOfSalt := % RandomGenerationFunction()
GUIDOfSalt := % CreateGUID()
randomSalt = %GUIDOfSalt%%randomPartOfSalt%
GuiControl,,bcrypthpbkdf2SaltString,%randomSalt%
return

generateSalt1FileLock:
GuiControlGet, bcrypthmacSaltString
randomPartOfSalt := % RandomGenerationFunction()
GUIDOfSalt := % CreateGUID()
randomSalt = %GUIDOfSalt%%randomPartOfSalt%
GuiControl,,bcrypthpbkdf2SaltStringFileLock,%randomSalt%
return

MakeHashPassSharable()
{
; MsgBox, "jj"
FileRead, OutputVar,  %FileLocation3%
arrayForOutputVarOfHashPass := StrSplit(OutputVar, A_Space)
stringHash := arrayForOutputVarOfHashPass[1]
stringSalt := arrayForOutputVarOfHashPass[2]
stringIterrations := arrayForOutputVarOfHashPass[3]
stringSize := arrayForOutputVarOfHashPass[4]

SringToAppend = x %stringSalt% x x

FileDelete, %FileLocation3%
FileAppend, %SringToAppend% , %FileLocation3%
return
}


; ImageButton.Create(GenerateAPassword12, ExOrb3)
; ImageButton.Create(GenerateNewZlogy12, ExOrb4)

; GenerateAPassword12Call := Func("GenerateAPassword12").Bind("arg")
; GenerateNewZlogy12Call := Func("GenerateNewZlogy12").Bind("arg")

; GuiControl, +g, % GenerateAPassword12, % GenerateAPassword12Call
; GuiControl, +g, % GenerateNewZlogy12, % GenerateNewZlogy12Call
; ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
; ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]
;
; Gui, 12:Add, Button, xm w150 x100 yp+25 gGenerateAPassword12,Generate A New Password
; Gui, 12:Add, Edit, %k_Position% w200 vGeneratedPassZlogy12,
; Gui, 12:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy12,Generate New Zlogy
