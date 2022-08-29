
;|helpyPMC||SEARCHINDICATOR|
;   _          _             _____  __  __  _____
;  | |        | |           |  __ \|  \/  |/ ____|
;  | |__   ___| |_ __  _   _| |__) | \  / | |
;  | '_ \ / _ \ | '_ \| | | |  ___/| |\/| | |
;  | | | |  __/ | |_) | |_| | |    | |  | | |____
;  |_| |_|\___|_| .__/ \__, |_|    |_|  |_|\_____|
;               | |     __/ |
;               |_|    |___/
ClosePMC:
Process, Close, MacroCreator.ahk
Process, Close, MacroCreator.exe
Process, Close, Pulover's Macro Creator
return
RunPMC:
Gosub, ClosePMC
sleep, 100
; Run %A_ScriptDir%\AHKlibs\AHKpmc\MacroCreator.ahk
Run %A_ScriptDir%\AHKlibs\AHKpmc\Compiled\MacroCreatorPortable\x64\MacroCreator\MacroCreator.exe
sleep, 2000
WinActivate, ahk_exe MacroCreator.exe
sleep, 500
SendInput {Lalt down}
sleep, 10
SendInput {m}
sleep, 10
SendInput {Lalt up}
sleep, 10
SendInput {enter}
sleep, 100
SendInput {enter}
return
F1::
if WinExist("ahk_exe MacroCreator.exe")
    Gosub, CtrlF1n
else
    SendInput {F1}
return
F2::
if WinExist("ahk_exe MacroCreator.exe")
    Gosub, CtrlF2n
else
    SendInput {F2}
return
F4::
if WinExist("ahk_exe MacroCreator.exe")
    Gosub, CtrlF4n
else
    SendInput {F4}
; Gosub, CtrlF4nGames
return
CtrlF1n:
WinActivate ahk_id %previous_ID%
resetMousePositionAtMiddle()
controlclick ,x148 y37, ahk_exe MacroCreator.exe
return
CtrlF2n:
WinActivate ahk_id %previous_ID%
resetMousePositionAtMiddle()
controlclick ,x71 y41, ahk_exe MacroCreator.exe
return
CtrlF4n:
controlclick ,x165 y37, ahk_exe MacroCreator.exe
return
CtrlF1nGames:
altTab()
sleep, 750
resetMousePositionAtMiddle()
controlclick ,x148 y37, ahk_exe MacroCreator.exe
sleep, 750
altTab()
return
CtrlF2nGames:
altTab()
sleep, 750
resetMousePositionAtMiddle()
controlclick ,x71 y41, ahk_exe MacroCreator.exe
sleep, 750
altTab()
return
CtrlF4nGames:
altTab()
sleep, 750
controlclick ,x165 y37, ahk_exe MacroCreator.exe
sleep, 1000
altTab()
return
FocusPMC:
WinGet, currentWindow_ID, ID, A
WinActivate ahk_exe MacroCreator.exe
sleep, 1000
SendInput {tab}
sleep, 10
SendInput {space}
WinActivate ahk_id %currentWindow_ID%
return
OnlyFocusPMC:
#WinActivateForce
WinActivate Pulover's Macro Creator v5.0.5
return
Check:
If (A_GuiControl="Var1") ;if the control that launched this is the first one
GuiControl,,Var2,0 ;uncheck the second
Else ;if not
GuiControl,,Var1,0 ;uncheck the first
Return

MouserecorderGetMouserecorder:
Run, http://www.mouserecorder.com/download.php
return

MouserecorderCtrlStart:
altTab()
sleep, 750
resetMousePositionAtMiddle()
SendInput {1}

; IniRead, 1, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForMouserecorderGetMouserecorder

return

MouserecorderCtrlStop:
altTab()
sleep, 750
resetMousePositionAtMiddle()
SendInput {Escape}
return

MouserecorderCtrlPlay:
altTab()
sleep, 750
resetMousePositionAtMiddle()
SendInput {2}
return

MouserecorderCtrlStartNew:
altTab()
sleep, 750
resetMousePositionAtMiddle()
SendInput {4}
return

bcrypt.hash:
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\class_bcrypt.ahk

; MsgBox % bcrypt.hash("The quick brown fox jumps over the lazy dog", "MD5")
; ; ==> 9e107d9d372bb6826bd81d3542a419d6

; MsgBox % bcrypt.hmac("The quick brown fox jumps over the lazy dog", "Secret Salt", "MD5")
; ; ==> ad8af8953b9f7f880887ab3bd7a7674a

; MsgBox % bcrypt.file("C:\Windows\notepad.exe", "SHA1")
; ; ==> 40f2e778cf1effa957c719d2398e641eff20e613

; MsgBox % bcrypt.pbkdf2("The quick brown fox jumps over the lazy dog", "Secret Salt", "SHA256", 4096, 32)
; ; ==> 70497e570c8cbe1c486e7f6ce755df4f5535dbe16e84337eb04946b1267b0d9d

; MD2, MD4, MD5
; SHA1, SHA256, SHA384, SHA512
; PBKDF2

; MsgBox % bcrypt.hash(bcrypthashHashString, "Sha256")

CoordMode, Mouse, Screen
Gui, 9:Destroy
Gui, 9:Add, Groupbox, w850 h200 ,
Gui, 9:Add, Text, xm x125 yp+25 cWhite ,Please enter a string to hash.
Gui, 9:Add, Edit, xm w600 x125 yp+25 vbcrypthashHashString,
Gui, 9:Add, Text, xm x125 yp+25 cWhite ,
Gui, 9:Add, Button, xm w100 x125 yp+25 gbcrypthashMD5,MD5
Gui, 9:Add, Button, %k_Position% w100 gbcrypthashSha256,Sha256
Gui, 9:Add, Button, %k_Position% w100 gbcrypthashSha512,Sha512
Gui, 9:Add, Text, xm x125 yp+25 cWhite ,
Gui, 9:Add, Edit, xm w600 x125 yp+25 vbcrypthashResultOfFunction,
Gui, 9:Font, s18 cRed Bold, Verdana
Gui, 9:Color, 000000, FFFFFF
Gui, 9:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return

bcrypthashMD5:
GuiControlGet, bcrypthashHashString
varbcrypthash := % bcrypt.hash(bcrypthashHashString, "MD5")
GuiControl,,bcrypthashResultOfFunction,%varbcrypthash%
return

bcrypthashSha256:
GuiControlGet, bcrypthashHashString
varbcrypthash := % bcrypt.hash(bcrypthashHashString, "Sha256")
GuiControl,,bcrypthashResultOfFunction,%varbcrypthash%
return

bcrypthashSha512:
GuiControlGet, bcrypthashHashString
varbcrypthash := % bcrypt.hash(bcrypthashHashString, "Sha512")
GuiControl,,bcrypthashResultOfFunction,%varbcrypthash%
return

bcrypt.hmac:
; MsgBox % bcrypt.hmac("The quick brown fox jumps over the lazy dog", "Secret Salt", "MD5")

CoordMode, Mouse, Screen
Gui, 10:Destroy
Gui, 10:Add, Groupbox, w850 h250 ,
Gui, 10:Add, Text, xm x125 yp+25 cWhite ,Please enter a string to hash.
Gui, 10:Add, Edit, xm w600 x125 yp+25 vbcrypthmacHashString,
Gui, 10:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 10:Add, Edit, xm w500 x125 yp+25 vbcrypthmacSaltString,
Gui, 10:Add, Button, %k_Position% w100 ggenerateSalt,Generate Salt
Gui, 10:Add, Text, xm x125 yp+25 cWhite ,
Gui, 10:Add, Button, xm w100 x125 yp+25 gbcrypthmacMD5,MD5
Gui, 10:Add, Button, %k_Position% w100 gbcrypthmacSha256,Sha256
Gui, 10:Add, Button, %k_Position% w100 gbcrypthmacSha512,Sha512
Gui, 10:Add, Text, xm x125 yp+25 cWhite ,
Gui, 10:Add, Edit, xm w600 x125 yp+25 vbcrypthmacResultOfFunction,
Gui, 10:Font, s18 cRed Bold, Verdana
Gui, 10:Color, 000000, FFFFFF
Gui, 10:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return

bcrypthmacMD5:
GuiControlGet, bcrypthashHashString
GuiControlGet, bcrypthmacSaltString
; MsgBox % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "MD5")
varbcrypthmac := % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "MD5")
GuiControl,,bcrypthmacResultOfFunction,%varbcrypthmac%
return

bcrypthmacSha256:
GuiControlGet, bcrypthashHashString
GuiControlGet, bcrypthmacSaltString
; MsgBox % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "Sha256")
varbcrypthmac := % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "Sha256")
GuiControl,,bcrypthmacResultOfFunction,%varbcrypthmac%
return

bcrypthmacSha512:
GuiControlGet, bcrypthashHashString
GuiControlGet, bcrypthmacSaltString
; MsgBox % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "Sha512")
varbcrypthmac := % bcrypt.hmac(bcrypthashHashString, bcrypthmacSaltString, "Sha512")
GuiControl,,bcrypthmacResultOfFunction,%varbcrypthmac%
return

bcrypt.pbkdf2:
; MsgBox % bcrypt.hmac("The quick brown fox jumps over the lazy dog", "Secret Salt", "MD5")

CoordMode, Mouse, Screen
Gui, 11:Destroy
Gui, 11:Add, Groupbox, w850 h350 ,
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,Please enter a string to hash.
Gui, 11:Add, Edit, xm w600 x125 yp+25 vbcrypthpbkdf2HashString,
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
Gui, 11:Add, Edit, xm w500 x125 yp+25 vbcrypthpbkdf2SaltString,
Gui, 11:Add, Button, %k_Position% w100 ggenerateSalt1,Generate Salt
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
Gui, 11:Add, Edit, xm w500 x125 yp+25 vbcrypthpbkdf2IterationsString,4096
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
Gui, 11:Add, Edit, xm w500 x125 yp+25 vbcryptpbkdf2LengthOfKeyString,32
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,
Gui, 11:Add, Button, xm w100 x125 yp+25 gbcrypthpbkdf2MD5,MD5
Gui, 11:Add, Button, %k_Position% w100 gbcrypthpbkdf2Sha256,Sha256
Gui, 11:Add, Button, %k_Position% w100 gbcrypthpbkdf2Sha512,Sha512
Gui, 11:Add, Text, xm x125 yp+25 cWhite ,
Gui, 11:Add, Edit, xm w600 x125 yp+25 vbcryptpbkdf2ResultOfFunction,
Gui, 11:Font, s18 cRed Bold, Verdana
Gui, 11:Color, 000000, FFFFFF
Gui, 11:Show, x65 y65, Zlogy2
WinSet, Redraw,, Zlogy2
return

; bcrypt.pbkdf2:
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\class_bcrypt.ahk
MsgBox % bcrypt.pbkdf2("The quick brown fox jumps over the lazy dog", "Secret Salt", "SHA256", 4096, 32)
return

bcrypthpbkdf2MD5:
GuiControlGet, bcrypthpbkdf2HashString
GuiControlGet, bcrypthpbkdf2SaltString
GuiControlGet, bcrypthpbkdf2IterationsString
GuiControlGet, bcryptpbkdf2LengthOfKeyString
; MsgBox % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "MD5", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
varbcrypthpbkdf2 := % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "MD5", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
GuiControl,,bcryptpbkdf2ResultOfFunction,%varbcrypthpbkdf2%
return

bcrypthpbkdf2Sha256:
GuiControlGet, bcrypthpbkdf2HashString
GuiControlGet, bcrypthpbkdf2SaltString
GuiControlGet, bcrypthpbkdf2IterationsString
GuiControlGet, bcryptpbkdf2LengthOfKeyString
; MsgBox % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "Sha256", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
varbcrypthpbkdf2 := % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "Sha256", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
GuiControl,,bcryptpbkdf2ResultOfFunction,%varbcrypthpbkdf2%
return

bcrypthpbkdf2Sha512:
GuiControlGet, bcrypthpbkdf2HashString
GuiControlGet, bcrypthpbkdf2SaltString
GuiControlGet, bcrypthpbkdf2IterationsString
GuiControlGet, bcryptpbkdf2LengthOfKeyString
; MsgBox % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "Sha512", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
varbcrypthpbkdf2 := % bcrypt.pbkdf2(bcrypthpbkdf2HashString, bcrypthpbkdf2SaltString, "Sha512", bcrypthpbkdf2IterationsString, bcryptpbkdf2LengthOfKeyString)
GuiControl,,bcryptpbkdf2ResultOfFunction,%varbcrypthpbkdf2%
return

; MsgBox % CreateGUID()    ; ==> {XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX}

; generateSalt:
; GuiControlGet, bcrypthmacSaltString
; randomPartOfSalt := % RandomGenerationFunction()
; GUIDOfSalt := % CreateGUID()
; randomSalt = %GUIDOfSalt%%randomPartOfSalt%
; GuiControl,,bcrypthmacSaltString,%randomSalt%
; return

; generateSalt:
; GuiControlGet, bcrypthmacSaltString
; randomPartOfSalt := % RandomGenerationFunction()
; GUIDOfSalt := % CreateGUID()
; randomSalt = %GUIDOfSalt%%randomPartOfSalt%
; GuiControl,,bcrypthmacSaltString,%randomSalt%
; return

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

MakeHashPassSharable:
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

IFTTTsimpleFunction:

; https://rj-vinodh.github.io/Hash-Button-for-IFTTT/ has info about how to set it up, but you mainly need:
; EventName - the name of the event when you set it up
; Key - found at https://ifttt.com/services/maker_webhooks/settings and more info about it when clicked

; EventName and key needs to be obfuscated and it is done with:
; KODiii4NIY_gtMgro = % getStringFromBank("4Aq9ixzhR1HgsiRr", FileLocation)

K5EyZin3bDWPIPlEv = % getStringFromBank("is4TiS8iiJovCrb4", FileLocation)
Ki8iii5Wi5QbdKLYi = % getStringFromBank("ZcwRxJvku0JiSKCo", FileLocation)

; Ki8iii5Wi5QbdKLYi
; K5EyZin3bDWPIPlEv

EventName = %Ki8iii5Wi5QbdKLYi%
Key = %K5EyZin3bDWPIPlEv%
MyVar1 := 5465645
MyVar2 := 44444444
MyVar3 = "bhbhbhbh"
MakerIFTTTurl := "https://maker.ifttt.com/trigger/"
MakerIFTTTwithKey :=  "/with/key/"

WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
Enabled := ComObjError(false)
PostMessageString = %MakerIFTTTurl%%EventName%%MakerIFTTTwithKey%%Key%
; MsgBox, %PostMessageString%
WinHTTP.Open("POST", PostMessageString , 0)
WinHTTP.SetRequestHeader("Content-Type", "application/json")
Body = {"value1" : %MyVar1%, "value2" : %MyVar2%, "value3" : %MyVar3%}
WinHTTP.Send(Body)
return

; ExperimentForTaskbarTransperency:
; ; uses https://www.howtogeek.com/290221/how-to-make-your-windows-10-taskbar-completely-transparent/ as a core for taskbar transperency
; Gui, 18:Destroy
; ; Gui, 18:Add, Groupbox, w850 h350 ,
; Gui, 18:Add, Button,,MD5
; Gui, 18:Font, s18 cRed Bold, Verdana
; Gui, 18:Color, 000000, FFFFFF
; Gui, 18:-Caption
; Gui, 18:Show, x0 y0, Zlogy2
; return

TextToSpeechUsingCliAndNoInstalls:
commands=
(join&
echo off
PowerShell -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('it does work');"
)
runwait, %comspec% /c %commands%
return

TimeManager:
; Visualise the data

Gui, 22:Destroy

Gui, 22:font, s5
loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Text, hp cFFFFFF vDateView1
  }
  else
  {
    Gui, 22:Add, Text, %k_Position% hp w0 cFFFFFF vDateView%A_Index%
  }
}
Gui, 22:Add, Text, %k_Position% hp cFFFFFF vDateViewRemaining
Gui, 22:font, s7

loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Progress, xm w0 h20 BackgroundNREd cBlue vMyTimeProgress1
  }
  else
  {
    Gui, 22:Add, Progress, %k_Position% w0 h20 BackgroundNREd cBlue vMyTimeProgress%A_Index%
  }
}
Gui, 22:Add, Progress, %k_Position% w0 h20 BackgroundNREd cBlue vMyTimeProgressRemaining

loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Text, xm w0 hp yp+4 cFFFFFF vPercentView1,
  }
  else
  {
    Gui, 22:Add, Text, %k_Position% w0 hp cFFFFFF vPercentView%A_Index%
  }
}

Gui, 22:Add, Text, %k_Position% w0 hp cFFFFFF vPercentViewRemaining
; Second Progress
; Gui, 22:Add, Text, xm cWhite ,

Gui, 22:font, s5
loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Text, yp+23 xm+5 hp cFFFFFF v2DateView1
  }
  else
  {
    Gui, 22:Add, Text, %k_Position% hp w0 cFFFFFF v2DateView%A_Index%
  }
}
Gui, 22:Add, Text, %k_Position% hp cFFFFFF v2DateViewRemaining
Gui, 22:font, s7

; Gui, 22:font, s1
; Gui, 22:Add, Text, ym xm w5 h5 cWhite ,
; Gui, 22:font, s7

loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Progress, yp+10 xp w0 h20 BackgroundNREd cBlue v2MyTimeProgress1
  }
  else
  {
    Gui, 22:Add, Progress, %k_Position% w0 h20 BackgroundNREd cBlue v2MyTimeProgress%A_Index%
  }
}
Gui, 22:Add, Progress, %k_Position% w0 h20 BackgroundNREd cBlue v2MyTimeProgressRemaining

loop 400
{
  if(A_Index = 1)
  {
    Gui, 22:Add, Text, w0 hp yp+4 cFFFFFF v2PercentView1,
  }
  else
  {
    Gui, 22:Add, Text, %k_Position% w0 hp cFFFFFF v2PercentView%A_Index%
  }
}

Gui, 22:Add, Text, %k_Position% w0 hp cFFFFFF v2PercentViewRemaining

Gui, 22:Add, Button, xm hwndcallDataStorageLabelLeisure gcallDataStorageLabelLeisure,Leisure
Opt1Leisure := [0, 0x00568203, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Leisure := ["822288" , "822288"]
Opt3Leisure := {4: "822288"}                                      ; hot flat background color
Opt5Leisure := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelLeisure, Opt1Leisure, Opt2Leisure, Opt3Leisure, Opt5Leisure)
   MsgBox, 0, ImageButton Error callDataStorageLabelLeisure, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelWork gcallDataStorageLabelWork,Work
Opt1Work := [0, 0x00CF0000, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Work := ["882222" , "882222"]
Opt3Work := {4: "Red"}                                      ; hot flat background color
Opt5Work := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelWork, Opt1Work, Opt2Work, Opt3Work, Opt5Work)
   MsgBox, 0, ImageButton Error callDataStorageLabelWork, % ImageButton.LastError
Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelWork1 gcallDataStorageLabelWork1,Work1
Opt1Work1 := [0, 0x00CF0000, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Work1 := ["882222" , "882222"]
Opt3Work1 := {4: "Red"}                                      ; hot flat background color
Opt5Work1 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelWork1, Opt1Work1, Opt2Work1, Opt3Work1, Opt5Work1)
   MsgBox, 0, ImageButton Error callDataStorageLabelWork1, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelSleep gcallDataStorageLabelSleep,Sleep
Opt1Sleep := [0, 0x00FDB22E, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Sleep := [ "822288", "822288"]
Opt3Sleep := {4: "822288"}                                      ; hot flat background color
Opt5Sleep := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelSleep, Opt1Sleep, Opt2Sleep, Opt3Sleep, Opt5Sleep)
    MsgBox, 0, ImageButton Error callDataStorageLabelSleep, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelExercise gcallDataStorageLabelExercise,Exercise
Opt1Exercise := [0, 0x0000FFFF, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Exercise := [ "822288", "822288"]
Opt3Exercise := {4: "822288"}                                      ; hot flat background color
Opt5Exercise := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelExercise, Opt1Exercise, Opt2Exercise, Opt3Exercise, Opt5Exercise)
   MsgBox, 0, ImageButton Error callDataStorageLabelExercise, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelNetBrowsing gcallDataStorageLabelNetBrowsing,NetBrowsing
Opt1NetBrowsing := [0, 0x00822288, , "White", , "White", 4]         ; normal flat background & text color
Opt2NetBrowsing := [ "822288", "822288"]
Opt3NetBrowsing := {4: "822288"}                                      ; hot flat background color
Opt5NetBrowsing := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelNetBrowsing, Opt1NetBrowsing, Opt2NetBrowsing, Opt3NetBrowsing, Opt5NetBrowsing)
   MsgBox, 0, ImageButton Error callDataStorageLabelNetBrowsing, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelMiscellaneous gcallDataStorageLabelMiscellaneous,Miscellaneous
Opt1Miscellaneous := [0, 0x00185395, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Miscellaneous := [ "822288", "822288"]
Opt3Miscellaneous := {4: "822288"}                                      ; hot flat background color
Opt5Miscellaneous := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelMiscellaneous, Opt1Miscellaneous, Opt2Miscellaneous, Opt3Miscellaneous, Opt5Miscellaneous)
   MsgBox, 0, ImageButton Error callDataStorageLabelMiscellaneous, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelGoingOut gcallDataStorageLabelGoingOut,GoingOut
Opt1GoingOut := [0, 0x00D15CAF, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2GoingOut := [ "822288", "822288"]
Opt3GoingOut := {4: "822288"}                                      ; hot flat background color
Opt5GoingOut := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelGoingOut, Opt1GoingOut, Opt2GoingOut, Opt3GoingOut, Opt5GoingOut)
    MsgBox, 0, ImageButton Error callDataStorageLabelGoingOut, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelGaming1 gcallDataStorageLabelGaming1,Gaming1
Opt1Gaming1 := [0, 0x00189547, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Gaming1 := [ "822288", "822288"]
Opt3Gaming1 := {4: "822288"}                                      ; hot flat background color
Opt5Gaming1 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelGaming1, Opt1Gaming1, Opt2Gaming1, Opt3Gaming1, Opt5Gaming1)
   MsgBox, 0, ImageButton Error callDataStorageLabelGaming1, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelGaming2 gcallDataStorageLabelGaming2,Gaming2
Opt1Gaming2 := [0, 0x0018E866, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Gaming2 := [ "822288", "822288"]
Opt3Gaming2 := {4: "822288"}                                      ; hot flat background color
Opt5Gaming2 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelGaming2, Opt1Gaming2, Opt2Gaming2, Opt3Gaming2, Opt5Gaming2)
  MsgBox, 0, ImageButton Error callDataStorageLabelGaming2, % ImageButton.LastError

Gui, 22:Add, Button, %k_Position% hwndcallDataStorageLabelGaming3 gcallDataStorageLabelGaming3,Gaming3
Opt1Gaming3 := [0, 0x005EA579, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2Gaming3 := [ "822288", "822288"]
Opt3Gaming3 := {4: "822288"}                                      ; hot flat background color
Opt5Gaming3 := [ , , ,"Gray"]                                      ; defaulted text color -> animation
If !ImageButton.Create(callDataStorageLabelGaming3, Opt1Gaming3, Opt2Gaming3, Opt3Gaming3, Opt5Gaming3)
   MsgBox, 0, ImageButton Error callDataStorageLabelGaming3, % ImageButton.LastError

Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, DateTime, %k_Position% w100 h20 vDTElement gCallDTElementFunction,
Gui, 22:Add, Text, %k_Position% cWhite ,

GuiControlGet, DTElementValue, , DTElement
DTElementValue2 := % DTElementValue
FormatTime, YearWeek, %DTElementValue2%, YWeek
StringTrimRight, Year, YearWeek, 2
StringTrimLeft, Week, YearWeek, 4

Gui, 22:Add, Edit, %k_Position% h20 w25 vWeekValue , %Week%
Gui, 22:Add, Edit, %k_Position% h20 w40 vYearField , %Year%
 ; Gui, 22:Add, Text, %k_Position% cWhite ,
 ; Gui, 22:Add, Text, %k_Position% cWhite ,


; Gui, 22:Add, Text, xm cWhite ,
; Gui, 22:Add, Groupbox, w265 h195 xm yp+25,
Gui, 22:Add, Text, xm+15 yp+40 cWhite,Activity                  Time in numbers       Time as a percent
Gui, 22:Add, Text, xm w250 h16 x20 yp+25 c568203 vDateFieldLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c568203 vDateFieldLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 cCF0000 vDateWorkLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 cCF0000 vDateWorkLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 cCF0000 vDateWork1Leisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 cCF0000 vDateWork1Leisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 cFDB22E vDateSleepLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 cFDB22E vDateSleepLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c00ffff vDateExerciseLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c00ffff vDateExerciseLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c822288 vDateNetBrowsingLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c822288 vDateNetBrowsingLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c185395 vDateMiscellaneousLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c185395 vDateMiscellaneousLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 cD15CAF vDateGoingOutLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 cD15CAF vDateGoingOutLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c189547 vDateGaming1Leisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c189547 vDateGaming1Leisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c18E866 vDateGaming2Leisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c18E866 vDateGaming2Leisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c5EA579 vDateGaming3Leisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c5EA579 vDateGaming3Leisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c808080 vTotalDayDateRemaining,
Gui, 22:Add, Text, yp xm+230 w50 h16 c808080 vTotalDayDateRemaining2,
Gui, 22:Add, Text, xm cWhite ,

; Gui, 22:Add, Groupbox, w265 h70 yp-5,
Gui, 22:Add, Text, xm yp,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 c568203 vDateExitLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 c568203 vDateExitLeisure2,
Gui, 22:Add, Text, xm w250 h16 x20 yp+15 cFDB22E vDateStartLeisure,
Gui, 22:Add, Text, yp xm+230 w50 h16 cFDB22E vDateStartLeisure2,

; -----------------------------This is for the slider and the test buttons----------------------
; Gui, 22:Add, Slider, xp+30 yp+20 h20 w300	vSlider	gSlide Range0-52 tickinterval4 AltSubmit,
; Gui, 22:Add, Edit, yp xp+310 w25 vWeekValue , %Week%
; Gui, 22:Add, Edit, yp xp+25 w40 vYearField , %Year%
; Gui, 22:Add, text, yp+25 xp-335,
; Gui, 22:Add, text, yp xp w50	h18	Left cWhite,0
; Gui, 22:Add, text, yp xp+250,
; Gui, 22:Add, text, yp xp w50 h18 Right cWhite,52
;
; GuiControl, 22:, Slider, %Week%
;
; Gui, 22:Add, Button, yp+25 xp w100 h20 gLaunchWeekExample,
; Gui, 22:Add, Button, yp+25 xp w100 h20 gLaunchDayExample,
; ---------------------------------------------------------------------------------------------

Gui, 22:Add, Text, x650 yp-253,
Gui, 22:Add, Text, yp+25 xp-100 cWhite,Activity                  Time in numbers       Time as a percent
Gui, 22:Add, Text, yp+25 xp h20 w100 c568203 vTotalDateFieldLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c568203 vTotalDateFieldLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c568203 vTotalDateFieldLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 cCF0000 vTotalDateWorkLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 cCF0000 vTotalDateWorkLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 cCF0000 vTotalDateWorkLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 cCF0000 vTotalDateWork1Leisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 cCF0000 vTotalDateWork1Leisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 cCF0000 vTotalDateWork1Leisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 cFDB22E vTotalDateSleepLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 cFDB22E vTotalDateSleepLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 cFDB22E vTotalDateSleepLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c00ffff vTotalDateExerciseLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c00ffff vTotalDateExerciseLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c00ffff vTotalDateExerciseLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c822288 vTotalDateNetBrowsingLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c822288 vTotalDateNetBrowsingLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c822288 vTotalDateNetBrowsingLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c185395 vTotalDateMiscellaneousLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c185395 vTotalDateMiscellaneousLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c185395 vTotalDateMiscellaneousLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 cD15CAF vTotalDateGoingOutLeisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 cD15CAF vTotalDateGoingOutLeisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 cD15CAF vTotalDateGoingOutLeisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c189547 vTotalDateGaming1Leisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c189547 vTotalDateGaming1Leisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c189547 vTotalDateGaming1Leisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c18E866 vTotalDateGaming2Leisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c18E866 vTotalDateGaming2Leisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c18E866 vTotalDateGaming2Leisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c5EA579 vTotalDateGaming3Leisure,
Gui, 22:Add, Text, yp xp+100 w100 h16 c5EA579 vTotalDateGaming3Leisure2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c5EA579 vTotalDateGaming3Leisure3,
Gui, 22:Add, Text, yp+15 xp-220 w100 h20 c808080 vTotalDateRemaining,
Gui, 22:Add, Text, yp xp+100 w100 h16 c808080 vTotalDateRemaining2,
Gui, 22:Add, Text, yp xp+120 w50 h16 c808080 vTotalDateRemaining3,

; Gui, 22:Add, text, yp+20 xp cWhite, Value:

; Gui, 22:Add, Text, cFDB22E, %MySlider%
; Gui, 22:Add, DateTime, xp yp+20 w100 h20 vDTElementWeek,


; Gui, 22:Add, Slider, xp+30 yp+20 h20 w300	vSlider	gSlide Range0-52 tickinterval4 AltSubmit
; Gui, 22:Add, text, yp+20 xp w50	h18	cWhite, 0
; Gui, 22:Add, text, yp+20 xp+200 w50	h18 Right cWhite, 52
; Gui, 22:Add, text, yp+20 xp, Value:
; Gui, 22:Add, Edit, yp+20 xp+10 w70 vValue , 0

FormatTime, YearWeek, A_Now, YWeek
; MsgBox, %YearWeek%
GuiControl, 22:, DTElementWeek, YearWeek

; Gui, 22:Add, Groupbox, w200 h255 x285 yp-225,
Gui, 22:Add, Text, x840 yp-185,

; Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, Button, xp+5 yp w163 h20 gLoadAndReload22,Reload
; Gui, 22:Add, Text, xm cWhite ,
; Gui, 22:Add, Text, %k_Position%  cWhite ,
Gui, 22:Add, Button, xp yp+25 w163 h20 gLaunchRescueTime,LaunchRescueTime
; Gui, 22:Add, Text, xm cWhite ,
; Gui, 22:Add, Text, %k_Position%  cWhite ,
Gui, 22:Add, Button, xp yp+25 w163 h20 gLaunchManicTime,LaunchManicTime
; Gui, 22:Add, Text, %k_Position%  cWhite ,
; Gui, 22:Add, Text, xm cWhite ,
; Gui, 22:Add, Text, xm cWhite ,
; Gui, 22:Add, Text, xm cWhite ,
Gui, 22:Add, Button, xp yp+25 w100 h20 gCallCallIFTTTAlarmClock1 ,IFTTT Alarm clock
Gui, 22:Add, Text, %k_Position%  cWhite ,
Gui, 22:Add, DateTime, %k_Position% w55 h20 1 vCallIFTTTAlarmClock1, HH:mm
; Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, Button, xp-108 yp+25 w100 h20 gCallCallIFTTTAlarmClock2 ,IFTTT Alarm clock
Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, DateTime, %k_Position% w55 h20 1 vCallIFTTTAlarmClock2, HH:mm
; Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, Button,  xp-108 yp+25 w100 h20 gCallCallIFTTTAlarmClock3 ,IFTTT Alarm clock
Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, DateTime, %k_Position% w55 h20 1 vCallIFTTTAlarmClock3, HH:mm
Gui, 22:Add, Button,  xp-108 yp+25 w100 h20 gCallCallIFTTTAlarmClock4 ,IFTTT Alarm clock
Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, DateTime, %k_Position% w55 h20 1 vCallIFTTTAlarmClock4, HH:mm
Gui, 22:Add, Button,  xp-108 yp+25 w100 h20 gCallCallIFTTTAlarmClock5 ,IFTTT Alarm clock
Gui, 22:Add, Text, %k_Position% cWhite ,
Gui, 22:Add, DateTime,%k_Position% w55 h20 1 vCallIFTTTAlarmClock5, HH:mm

; Gui, 22:Add, Groupbox, w250 h250 yp-115 xp+100,
; ; Gui, 22:Add, Edit, xp yp+5 w250 h250  vTimesAndPorcents1,
; ; Gui, 22:Add, Edit, %k_Position% w150 h250 vTimesAndPorcents2,
; Gui, 22:Add, Text, cWhite ,

Gui, 22:Font, s18 cRed Bold, Verdana
Gui, 22:Color, 000000, FFFFFF

loop 400
{
  if(A_Index = 1)
  {
    GuiControl, 22:BackgroundN%colorBlack%, MyTimeProgress1
  }
  else
  {
    GuiControl, 22:BackgroundN%colorBlack%, MyTimeProgress%A_Index%
  }
}

GuiControl, 22:BackgroundN%colorBlack%, MyTimeProgressRemaining

loop 400
{
  if(A_Index = 1)
  {
    GuiControl, 22:BackgroundN%colorBlack%, 2MyTimeProgress1
  }
  else
  {
    GuiControl, 22:BackgroundN%colorBlack%, 2MyTimeProgress%A_Index%
  }
}

GuiControl, 22:BackgroundN%colorBlack%, 2MyTimeProgressRemaining

Gui, 22:Default
Gui, 22:Show, h440 w1030 x740 y65,


; sleep, 1000
; Gosub, LoadAndReload22

Gosub, LoadAndReload22
Gosub, LaunchWeekExample

; whwnd := WinExist("Autohotkey.ahk")
; data =  Firefox|30, Chrome|50, Opera|20
; PieChart(whwnd,350,120,200,data,3,1)

; WinSet, Redraw
; GoTo, LoadAndReload22Progress2
; WinSet, Redraw
; Reload
; AutoXYWH("reset")

; GuiControl, 22:, +Move, DTElement, x10 y20 w200 h100
; GuiControl, Hide, DTElement
; GuiControl, 22:, DTElement, Hide, %A_Now%
; GuiControl, Choose%Var% , DTElement, %A_Now%
; GuiControl, 22:, DTElement, %A_Now%

; Gui, 22:show, yp+25 xp h800 w1000, piecharts
; whwnd := WinExist("Autohotkey.ahk")
; data =  Firefox|30, Chrome|50, Opera|20
; PieChart(whwnd,350,120,200,data,3,1)

return

2ndButtonOfHelpylander:
EnvSub, MyCount, 2
MyCount -= 2  ; Equivalent to above

var1 = 20040123165900
var3 = 20040123165900
var2 = 20040123165500
EnvSub, var1, %var2%, minutes
EnvSub, var3, %var2%, seconds
MsgBox, %var1% minutes"," %var3% seconds
return

3rdButtonOfHelpylander:

CurrentYearMonthDayDate = %A_YYYY%%A_MM%%A_DD%

; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware
IniWrite, %CurrentYearMonthDayDate%, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware

; IniRead, OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware
nextdate := % nextDay()
MsgBox, %nextdate%

return

LoadAndReload22:
LoadAndReload22Function("default")
LoadAndReload22Progress2Function("default")
GoTo, LaunchWeekExample
return

; LoadAndReload22Progress2:
; LoadAndReload22Progress2Function("default")
; return

CallDTElementFunction:
FileLocation5 = %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
GuiControlGet, DTElementValue, , DTElement

DTElementValue2 := % DTElementValue

StringTrimRight, DTElementValue, DTElementValue, 6
Index1 := % findLocationOfStringInFile(FileLocation5, DTElementValue)
; Msgbox, %Index1%
LoadAndReload22Function(Index1)

; Index1 := % findLocationOfStringInFile(FileLocation5, DTElementValue)
; LoadAndReload22Progress2Function(Index1)

FileLocation6 = %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDatesStartAndExit.csv
GuiControlGet, DTElementValue, , DTElement
StringTrimRight, DTElementValue, DTElementValue, 6
Index2 := % findLocationOfStringInFile(FileLocation6, DTElementValue)
LoadAndReload22Progress2Function(Index2)

; MsgBox, %A_YDay%

; FormatTime, YDay, %DTElementValue%, A_YDay

; MsgBox %DTElementValue2%

FormatTime, YearWeek, %DTElementValue2%, YWeek
StringTrimRight, Year, YearWeek, 2
StringTrimLeft, Week, YearWeek, 4
GuiControl, 22:, WeekValue, %Week%
GuiControl, 22:, Slider, %Week%
GuiControl, 22:, YearField, %Year%
Gosub, LaunchWeekExample



; MsgBox %YearWeek%

; WeekOfYear = %A_YDay%
; WeekOfYear /= 7
; WeekOfYear++go
; MsgBox, %YDay%

; GuiControl, 22:, Edit1, %slider%

return

LaunchWeekExample:
GuiControlGet, DTElementValue, , DTElement
stringReturnedFromFunction := % WeekExample(DTElementValue)
StringTrimRight, DTElementValue, DTElementValue, 6
; MsgBox % DTElementValue
TotalTimePerWeekForLeisure = 0
TotalTimePerWeekForWork = 0
TotalTimePerWeekForWork1 = 0
TotalTimePerWeekForSleep = 0
TotalTimePerWeekForExercise = 0
TotalTimePerWeekForMiscellaneous = 0
TotalTimePerWeekForNetBrowsing = 0
TotalTimePerWeekForGoingOut = 0
TotalTimePerWeekForGaming1 = 0
TotalTimePerWeekForGaming2 = 0
TotalTimePerWeekForGaming3 = 0

; MsgBox % stringReturnedFromFunction
StringSplit, word_array, stringReturnedFromFunction, .,
; for key, value in %word_array%
;     MsgBox %value%
; MsgBox % s
; MsgBox, % word_array.MaxIndex()
;
; For a, b in %word_array0%
; 	count :=	A_Index
; MsgBox %	count

Loop, 7
{
    word_arrayString := word_array%A_Index%
    dateVariable = %DTElementValue%
    ; MsgBox, Color number %A_Index% is %word_arrayString%.
    ; String1 = %word_arrayString%

    String2Leisure := % LoadAndReload22Function1(word_arrayString, "Leisure")
    String2Work := % LoadAndReload22Function1(word_arrayString, "Work")
    String2Work1 := % LoadAndReload22Function1(word_arrayString, "Work1")
    String2Sleep := % LoadAndReload22Function1(word_arrayString, "Sleep")
    String2Exercise :=  % LoadAndReload22Function1(word_arrayString, "Exercise")
    String2Miscellaneous := % LoadAndReload22Function1(word_arrayString, "Miscellaneous")
    String2NetBrowsing := % LoadAndReload22Function1(word_arrayString, "NetBrowsing")
    String2GoingOut := % LoadAndReload22Function1(word_arrayString, "GoingOut")
    String2Gaming1 := % LoadAndReload22Function1(word_arrayString, "Gaming1")
    String2Gaming2 := % LoadAndReload22Function1(word_arrayString, "Gaming2")
    String2Gaming3 := % LoadAndReload22Function1(word_arrayString, "Gaming3")

    TotalTimePerWeekForLeisure := % TotalTimePerWeekForLeisure + String2Leisure
    TotalTimePerWeekForWork := % TotalTimePerWeekForWork + String2Work
    TotalTimePerWeekForWork1 := % TotalTimePerWeekForWork1 + String2Work1
    TotalTimePerWeekForSleep := % TotalTimePerWeekForSleep + String2Sleep
    TotalTimePerWeekForExercise := % TotalTimePerWeekForExercise + String2Exercise
    TotalTimePerWeekForMiscellaneous := % TotalTimePerWeekForMiscellaneous + String2Miscellaneous
    TotalTimePerWeekForNetBrowsing := % TotalTimePerWeekForNetBrowsing + String2NetBrowsing
    TotalTimePerWeekForGoingOut := % TotalTimePerWeekForGoingOut + String2GoingOut
    TotalTimePerWeekForGaming1 := % TotalTimePerWeekForGaming1 + String2Gaming1
    TotalTimePerWeekForGaming2 := % TotalTimePerWeekForGaming2 + String2Gaming2
    TotalTimePerWeekForGaming3 := % TotalTimePerWeekForGaming3 + String2Gaming3
}

dataArray := []
TotalTimeOfAllActivities = 0

TotalTimePerWeekForLeisurea := % GetFormatedTime(TotalTimePerWeekForLeisure)
TotalTimePerWeekForLeisureaPercent := % ApercentOfB(TotalTimePerWeekForLeisure,604800)
dataArray.Push(TotalTimePerWeekForLeisureaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForLeisure
GuiControl, 22:, TotalDateFieldLeisure, Leisure
GuiControl, 22:, TotalDateFieldLeisure2, %TotalTimePerWeekForLeisurea%
GuiControl, 22:, TotalDateFieldLeisure3, %TotalTimePerWeekForLeisureaPercent%
TotalTimePerWeekForWorka := % GetFormatedTime(TotalTimePerWeekForWork)
TotalTimePerWeekForWorkaPercent := % ApercentOfB(TotalTimePerWeekForWork,604800)
dataArray.Push(TotalTimePerWeekForWorkaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForWork
GuiControl, 22:, TotalDateWorkLeisure, Work
GuiControl, 22:, TotalDateWorkLeisure2, %TotalTimePerWeekForWorka%
GuiControl, 22:, TotalDateWorkLeisure3, %TotalTimePerWeekForWorkaPercent%
TotalTimePerWeekForWork1a := % GetFormatedTime(TotalTimePerWeekForWork1)
TotalTimePerWeekForWork1aPercent := % ApercentOfB(TotalTimePerWeekForWork1,604800)
dataArray.Push(TotalTimePerWeekForWork1aPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForWork1
GuiControl, 22:, TotalDateWork1Leisure, Work1
GuiControl, 22:, TotalDateWork1Leisure2, %TotalTimePerWeekForWork1a%
GuiControl, 22:, TotalDateWork1Leisure3, %TotalTimePerWeekForWork1aPercent%
TotalTimePerWeekForSleepa := % GetFormatedTime(TotalTimePerWeekForSleep)
TotalTimePerWeekForSleepaPercent := % ApercentOfB(TotalTimePerWeekForSleep,604800)
dataArray.Push(TotalTimePerWeekForSleepaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForSleep
GuiControl, 22:, TotalDateSleepLeisure, Sleep
GuiControl, 22:, TotalDateSleepLeisure2, %TotalTimePerWeekForSleepa%
GuiControl, 22:, TotalDateSleepLeisure3, %TotalTimePerWeekForSleepaPercent%
TotalTimePerWeekForExercisea := % GetFormatedTime(TotalTimePerWeekForExercise)
TotalTimePerWeekForExerciseaPercent := % ApercentOfB(TotalTimePerWeekForExercise,604800)
dataArray.Push(TotalTimePerWeekForExerciseaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForExercise
GuiControl, 22:, TotalDateExerciseLeisure, Exercise
GuiControl, 22:, TotalDateExerciseLeisure2, %TotalTimePerWeekForExercisea%
GuiControl, 22:, TotalDateExerciseLeisure3, %TotalTimePerWeekForExerciseaPercent%
TotalTimePerWeekForMiscellaneousa := % GetFormatedTime(TotalTimePerWeekForMiscellaneous)
TotalTimePerWeekForMiscellaneousaPercent := % ApercentOfB(TotalTimePerWeekForMiscellaneous,604800)
dataArray.Push(TotalTimePerWeekForMiscellaneousaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForMiscellaneous
GuiControl, 22:, TotalDateMiscellaneousLeisure, Miscellaneous
GuiControl, 22:, TotalDateMiscellaneousLeisure2, %TotalTimePerWeekForMiscellaneousa%
GuiControl, 22:, TotalDateMiscellaneousLeisure3, %TotalTimePerWeekForMiscellaneousaPercent%
TotalTimePerWeekForNetBrowsinga := % GetFormatedTime(TotalTimePerWeekForNetBrowsing)
TotalTimePerWeekForNetBrowsingaPercent := % ApercentOfB(TotalTimePerWeekForNetBrowsing,604800)
dataArray.Push(TotalTimePerWeekForNetBrowsingaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForNetBrowsing
GuiControl, 22:, TotalDateNetBrowsingLeisure, NetBrowsing
GuiControl, 22:, TotalDateNetBrowsingLeisure2, %TotalTimePerWeekForNetBrowsinga%
GuiControl, 22:, TotalDateNetBrowsingLeisure3, %TotalTimePerWeekForNetBrowsingaPercent%
TotalTimePerWeekForGoingOuta := % GetFormatedTime(TotalTimePerWeekForGoingOut)
TotalTimePerWeekForGoingOutaPercent := % ApercentOfB(TotalTimePerWeekForGoingOut,604800)
dataArray.Push(TotalTimePerWeekForGoingOutaPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForGoingOut
GuiControl, 22:, TotalDateGoingOutLeisure, GoingOut
GuiControl, 22:, TotalDateGoingOutLeisure2, %TotalTimePerWeekForGoingOuta%
GuiControl, 22:, TotalDateGoingOutLeisure3, %TotalTimePerWeekForGoingOutaPercent%
TotalTimePerWeekForGaming1a := % GetFormatedTime(TotalTimePerWeekForGaming1)
TotalTimePerWeekForGaming1aPercent := % ApercentOfB(TotalTimePerWeekForGaming1,604800)
dataArray.Push(TotalTimePerWeekForGaming1aPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForGaming1
GuiControl, 22:, TotalDateGaming1Leisure, Gaming1
GuiControl, 22:, TotalDateGaming1Leisure2, %TotalTimePerWeekForGaming1a%
GuiControl, 22:, TotalDateGaming1Leisure3, %TotalTimePerWeekForGaming1aPercent%
TotalTimePerWeekForGaming2a := % GetFormatedTime(TotalTimePerWeekForGaming2)
TotalTimePerWeekForGaming2aPercent := % ApercentOfB(TotalTimePerWeekForGaming2,604800)
dataArray.Push(TotalTimePerWeekForGaming2aPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForGaming2
GuiControl, 22:, TotalDateGaming2Leisure, Gaming2
GuiControl, 22:, TotalDateGaming2Leisure2, %TotalTimePerWeekForGaming2a%
GuiControl, 22:, TotalDateGaming2Leisure3, %TotalTimePerWeekForGaming2aPercent%
TotalTimePerWeekForGaming3a := % GetFormatedTime(TotalTimePerWeekForGaming3)
TotalTimePerWeekForGaming3aPercent := % ApercentOfB(TotalTimePerWeekForGaming3,604800)
dataArray.Push(TotalTimePerWeekForGaming3aPercent)
TotalTimeOfAllActivities := TotalTimeOfAllActivities + TotalTimePerWeekForGaming3
GuiControl, 22:, TotalDateGaming3Leisure, Gaming3
GuiControl, 22:, TotalDateGaming3Leisure2, %TotalTimePerWeekForGaming3a%
GuiControl, 22:, TotalDateGaming3Leisure3, %TotalTimePerWeekForGaming3aPercent%



; TotalSleep2Percent := % ApercentOfB(TotalSleep2,86400)
dataArrayWithRemovedZeroes := []
data =
sumOfElements = 0

for index, element in dataArray
{
  if(element!=0){
  dataArrayWithRemovedZeroes.Push(element)
  }
  ; MsgBox % "Element number " . index . " is " . element
}

for index, element in dataArrayWithRemovedZeroes
{
  ; MsgBox % "Element number " . index . " is " . element
  sumOfElements := sumOfElements+element
  data = %data%,%index%|%element%
}
StringTrimLeft, data, data, 1
sumOfElements := 100 - sumOfElements
index2 := index + 1
data = %data%,%index2%|%sumOfElements%
sumOfElementsTime := 604800 - TotalTimeOfAllActivities
sumOfElementsPercent := % ApercentOfB(sumOfElements,604800)
FormatedTimesumOfElementsTime := % GetFormatedTime(sumOfElementsTime)

GuiControl, 22:, TotalDateRemaining, Remaining time
GuiControl, 22:, TotalDateRemaining2, %FormatedTimesumOfElementsTime%
GuiControl, 22:, TotalDateRemaining3, %sumOfElements%

; MsgBox %sumOfElements%
; MsgBox %data%

whwnd := WinExist("Autohotkey.ahk")
; data =  1|%TotalTimePerWeekForLeisureaPercent%, 2|%TotalTimePerWeekForWorkaPercent%, 3|%TotalTimePerWeekForWork1aPercent%
; , 3|%TotalTimePerWeekForWork1aPercent%,
; 4|%TotalTimePerWeekForSleepaPercent%, 5|%TotalTimePerWeekForExerciseaPercent%, 6|%TotalTimePerWeekForMiscellaneousaPercent%, 7|%TotalTimePerWeekForNetBrowsingaPercent%, 8|%TotalTimePerWeekForGoingOutaPercent%, 9|%TotalTimePerWeekForGaming1aPercent%, 10|%TotalTimePerWeekForGaming2aPercent%, 11|%TotalTimePerWeekForGaming3aPercent%
PieChart(whwnd,310,120,200,data,3,1)



return

LaunchDayExample:
dateVariableRun = 20180511
MsgBox, % SummaryLoadAndReload22Function1(dateVariableRun)
return

SummaryLoadAndReload22Function1(dateVariable)
{
MsgBox, % LoadAndReload22Function1(dateVariable, "Leisure")
MsgBox, % LoadAndReload22Function1(dateVariable, "Work")
MsgBox, % LoadAndReload22Function1(dateVariable, "Work1")
MsgBox, % LoadAndReload22Function1(dateVariable, "Sleep")
MsgBox, % LoadAndReload22Function1(dateVariable, "Exercise")
MsgBox, % LoadAndReload22Function1(dateVariable, "Miscellaneous")
MsgBox, % LoadAndReload22Function1(dateVariable, "NetBrowsing")
MsgBox, % LoadAndReload22Function1(dateVariable, "GoingOut")
MsgBox, % LoadAndReload22Function1(dateVariable, "Gaming1")
MsgBox, % LoadAndReload22Function1(dateVariable, "Gaming2")
MsgBox, % LoadAndReload22Function1(dateVariable, "Gaming3")
return
}

LoadAndReload22Function1(DateVariable, elementType)
{
  FileLocation5 = %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
  ; Msgbox, %DateVariable%
  StringToWrite1 =
  StringToWrite2 =
  totalMaxPorcent = 100
  lastIndex = 0
  PercentIntVarDeltax5 :=
  PercentIntVarMx5 :=
  PercentIntVarMx5p10 :=
  totalMaxPorcentx5 :=
  PercentIntVar2x5 :=
  PercentIntVarMx5p10 :=
  StringToWrite1Index :=
  StringToWrite2Index :=

  color1=Green
  color2=Red
  color3=Purple
  color4=Blue
  color5=Navy

  ; StringTrimRight, DateVariable1, DateVariable, 6
  DateVariable := % findLocationOfStringInFile(FileLocation5, DateVariable)
  ; Msgbox, %DateVariable%

  ; StringTrimRight, DateVariable1, DateVariable, 6
  ; DateVariable := % findLocationOfStringInFile(FileLocation5, DateVariable1)

  colorLeisure:="568203"
  TotalLeisure1 :=
  TotalLeisure2 := 0

  colorWork:="Red"
  TotalWork1 :=
  TotalWork2 := 0

  colorWork1:="Red"
  TotalWork11 :=
  TotalWork21 := 0

  colorSleep:="FDB22E"
  TotalSleep1 :=
  TotalSleep2 := 0

  colorExercise:="00ffff"
  TotalExercise1 :=
  TotalExercise2 := 0

  colorMiscellaneous:="Blue"
  TotalMiscellaneous1 :=
  TotalMiscellaneous2 := 0

  colorNetBrowsing:="FD2EE1"
  TotalNetBrowsing1 :=
  TotalNetBrowsing2 := 0

  colorGoingOut:="D15CAF"
  TotalGoingOut1:=
  TotalGoingOut2:= 0

  colorGaming1:="189547"
  TotalGaming11:=
  TotalGaming12:= 0

  colorGaming2:="18E866"
  TotalGaming21:=
  TotalGaming22:= 0

  colorGaming3:="5EA579"
  TotalGaming31:=
  TotalGaming32:= 0

  Loop, read, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
  {
    LastLine%A_Index% := A_LoopReadLine
    lastIndex := A_Index
  }

  if(DateVariable = "default")
  {
    lastlastIndex := lastIndex
    LastLineString := LastLine%lastIndex%
  }
  else
  {
    lastlastIndex = %DateVariable%
    LastLineString := LastLine%DateVariable%
  }

  ArrayFromString := StrSplit(LastLineString, ",","")
  ; restartValuesOfPercentViewAndMyTimeProgress1()

  for index, element in ArrayFromString
  {
    EndIndexOfArray := % ArrayFromString[Index]
    CalculateTotalTime%index% := % CalculateTotalTime(EndIndexOfArray)
    PercentIntArray%index% := % ApercentOfB(CalculateTotalTime%index%,86400)
    CalculateTotalTimeInt%index% := % CalculateTotalTime%index%
    PercentInt%index% := % PercentIntArray%index%
    indexM := % index-1

    if(index = 1)
    {
      PercentIntDelta%index% := % PercentIntArray%index%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := 0
      PercentIntVar := PercentInt%index%
      PercentIntVarM := 0
    }
    else
    {
      PercentIntDelta%index% := % PercentIntArray%index% - PercentIntArray%indexM%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := % PercentIntDelta%indexM%
      PercentIntVar := PercentInt%index%
      PercentIntVarM := PercentInt%indexM%
    }

    if(index = 1)
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := 0
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := 0
    }
    else
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index% - CalculateTotalTime%indexM%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := % CalculateTotalTimeDelta%indexM%
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := % CalculateTotalTimeInt%indexM%
    }

    ; Calculate the deltas
    CalculateTotalTimeVarDelta := CalculateTotalTimeIntVar - CalculateTotalTimeIntVarM
    PercentIntVarDelta := PercentIntVar - PercentIntVarM

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    CalculateTotalTimeString := CalculateTotalTime%A_Index%
    StringToWrite1%A_Index% = %StringToWrite1Index%%element% %CalculateTotalTimeString%  %PercentIntDeltaVarM% %PercentIntDeltaVar%`n
    ; StringToWrite2%A_Index% = %StringToWrite2Index%%PercentIntVarM% %PercentIntVar% %PercentIntVarDelta%`n
    StringToWrite2%A_Index% = %StringToWrite2Index%%PercentIntVarM% %PercentIntVar% %CalculateTotalTimeVarDelta%`n

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    A_IndexM := % A_Index-1
    StringToWrite1IndexM := % StringToWrite1%A_IndexM%
    StringToWrite2IndexM := % StringToWrite2%A_IndexM%

    StringToWrite1IndexString = %StringToWrite1IndexString%%StringToWrite1Index%
    StringToWrite2IndexString = %StringToWrite2IndexString%%StringToWrite2Index%

    totalMaxPorcent := totalMaxPorcent - PercentIntVarDelta

    ArrayFromElement := StrSplit(element, "_","")
    elementX := ArrayFromElement[2]
    elementY := ArrayFromElement[1]

    StringTrimLeft, elementY, elementY, 8
    StringTrimRight, elementY, elementY, 2

    ; MsgBox, %elementType%

    ; MsgBox, %TotalSleep2%

        if(elementX = "Leisure")
        {
          colorToUse = %colorLeisure%
          TotalLeisure2 := % TotalLeisure2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Work")
        {
          colorToUse = %colorWork%
          TotalWork2 := % TotalWork2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Work1")
        {
          colorToUse = %colorWork1%
          TotalWork21 := % TotalWork21 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Sleep")
        {
          colorToUse = %colorSleep%
          TotalSleep2 := % TotalSleep2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Exercise")
        {
          colorToUse = %colorExercise%
          TotalExercise2 := % TotalExercise2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Miscellaneous")
        {
          colorToUse = %colorMiscellaneous%
          TotalMiscellaneous2 := % TotalMiscellaneous2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "NetBrowsing")
        {
          colorToUse = %colorNetBrowsing%
          TotalNetBrowsing2 := % TotalNetBrowsing2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "GoingOut")
        {
          colorToUse = %colorGoingOut%
          TotalGoingOut2 := % TotalGoingOut2 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Gaming1")
        {
          colorToUse = %colorGaming1%
          TotalGaming12 := % TotalGaming12 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Gaming2")
        {
          colorToUse = %colorGaming2%
          TotalGaming22 := % TotalGaming22 + CalculateTotalTimeVarDelta
        }
        if(elementX = "Gaming3")
        {
          colorToUse = %colorGaming3%
          TotalGaming32 := % TotalGaming32 + CalculateTotalTimeVarDelta
        }

    ; MsgBox, %TotalSleep2% %TotalWork2%

  }

  ; MsgBox, %TotalSleep2% %TotalWork2% %TotalLeisure2%

  if(elementType = "Leisure")
  {
    ; TotalLeisure1 := "Leisure                         "
    ; TotalLeisure2Percent := % ApercentOfB(TotalLeisure2,86400)
    ; TotalWork2Percent := "                      " . TotalWork2Percent
    TotalLeisure2 := intParseReturner(TotalLeisure2)
    ; TotalLeisure2 := % GetFormatedTime(TotalLeisure2)
    ; TotalLeisure2 = %TotalLeisure2%
    return %TotalLeisure2%
  }
  if(elementType = "Work")
  {
    ; TotalWork1 := "Work                         "
    ; TotalWork2Percent := % ApercentOfB(TotalWork2,86400)
    ; TotalWork2Percent := "                      " . TotalWork2Percent
    TotalWork2 := intParseReturner(TotalWork2)
    ; TotalWork2 := % GetFormatedTime(TotalWork2)
    ; TotalWork2 = %TotalWork2%
    return %TotalWork2%
  }
  if(elementType = "Work1")
  {
    ; TotalWork11 := "Work1                       "
    ; TotalWork21Percent := % ApercentOfB(TotalWork21,86400)
    ; TotalWork21Percent := "                      " . TotalWork21Percent
    TotalWork21 := intParseReturner(TotalWork21)
    ; TotalWork21 := % GetFormatedTime(TotalWork21)
    ; TotalWork21 = %TotalWork21%
    return %TotalWork21%
    ; TotalWork11And2 = %TotalWork11%%TotalWork21%
  }
  if(elementType = "Sleep")
  {
    ; Msgbox, "dssd"
    ; TotalSleep2Percent := % ApercentOfB(TotalSleep2,86400)
    TotalSleep2 := intParseReturner(TotalSleep2)
    ; TotalSleep2 := % GetFormatedTime(TotalSleep2)
    ; TotalSleep2 = %TotalSleep2%
    return %TotalSleep2%
  }
  if(elementType = "Exercise")
  {
    ; TotalExercise2Percent := % ApercentOfB(TotalExercise2,86400)
    TotalExercise2 := intParseReturner(TotalExercise2)
    ; TotalExercise2 := % GetFormatedTime(TotalExercise2)
    ; TotalExercise2 = %TotalExercise2%
    return %TotalExercise2%
  }
  if(elementType = "Miscellaneous")
  {
    ; TotalMiscellaneous2Percent := % ApercentOfB(TotalMiscellaneous2,86400)
    TotalMiscellaneous2 := intParseReturner(TotalMiscellaneous2)
    ; TotalMiscellaneous2 := % GetFormatedTime(TotalMiscellaneous2)
    ; TotalMiscellaneous2 = %TotalMiscellaneous2%
    return %TotalMiscellaneous2%
  }
  if(elementType = "NetBrowsing")
  {
    ; TotalNetBrowsing2Percent := % ApercentOfB(TotalNetBrowsing2,86400)
    TotalNetBrowsing2 := intParseReturner(TotalNetBrowsing2)
    ; TotalNetBrowsing2 := % GetFormatedTime(TotalNetBrowsing2)
    ; TotalNetBrowsing2 = %TotalNetBrowsing2%
    return %TotalNetBrowsing2%
  }
  if(elementType = "GoingOut")
  {
    ; TotalGoingOut2Percent := % ApercentOfB(TotalGoingOut2,86400)
    TotalGoingOut2 := intParseReturner(TotalGoingOut2)
    ; TotalGoingOut2 := % GetFormatedTime(TotalGoingOut2)
    ; TotalGoingOut2 = %TotalGoingOut2%
    return %TotalGoingOut2%
  }
  if(elementType = "Gaming1")
  {
    ; TotalGaming12Percent := % ApercentOfB(TotalGaming12,86400)
    TotalGaming12 := intParseReturner(TotalGaming12)
    ; TotalGaming12 := % GetFormatedTime(TotalGaming12)
    ; TotalGaming12 = %TotalGaming12%
    return %TotalGaming12%
  }
  if(elementType = "Gaming2")
  {
    ; TotalGaming22Percent := % ApercentOfB(TotalGaming22,86400)
    TotalGaming22 := intParseReturner(TotalGaming22)
    ; TotalGaming22 := % GetFormatedTime(TotalGaming22)
    ; TotalGaming22 = %TotalGaming22%
    return %TotalGaming22%
  }
  if(elementType = "Gaming3")
  {
    ; TotalGaming32Percent := % ApercentOfB(TotalGaming32,86400)
    TotalGaming32 := intParseReturner(TotalGaming32)
    ; TotalGaming32 := % GetFormatedTime(TotalGaming32)
    ; TotalGaming32 = %TotalGaming32%
    return %TotalGaming32%
  }
}

WeekExample(DTElementValueVar)
{

OutputVarForLoop=


FormatTime, YearWeek, %DTElementValueVar%, YWeek
FormatTime, nSun, %DTElementValueVar%, d/M

; MsgBox, %YearWeek%

loopIndexer = -8
Loop {
  ; MsgBox, %loopIndexer%
  DTElementValueVar%A_Index% := DTElementValueVar
  var2 = %loopIndexer%, days
  EnvAdd , DTElementValueVar%A_Index%,%var2%, days
  var3 := % DTElementValueVar%A_Index%
  FormatTime, YearWeek%A_Index%, %var3%, YWeek
  FormatTime, nSun%A_Index%, %var3%, d/M
  loopIndexer++
  var4 := % nSun%A_Index%
  var5 := % YearWeek%A_Index%
  if(var5==YearWeek){
  ; OutputVarForLoop = %OutputVarForLoop% %var4% %var5%
  StringTrimRight, var5, var5, 2

  ; TestString = This is a test.
  StringSplit, word_array, var4, /,  ; Omits periods.
  a=0
  Loop, Parse, word_array2
     a++
  if(a=1)
  {
    ; word_arrayStr2="0". %word_array2%
    ; word_array2="".%word_arrayStr2% . %word_array2%
    STRword_array2="0"%word_array2%
    StringReplace, STRword_array2, STRword_array2, ",, All
  }
  Else if(a=2)
  {
    STRword_array2=%word_array2%
  }
  ; msgbox,Total Characters=%a%
  ; StringSplit, word_array, var4, /,  ; Omits periods.
; MsgBox, %word_array1%
  a=0
  Loop, Parse, word_array1
     a++
  if(a=1)
  {
    ; word_array1:="0" %word_array1%

    ; word_arrayStr1="0"
    STRword_array1="0"%word_array1%
    StringReplace, STRword_array1, STRword_array1, ",, All
    ; word_arrayStr1=0
    ; word_array1:=%word_arrayStr1% . %word_array1%
  }
  Else if(a=2)
  {
    STRword_array1=%word_array1%
  }

  ; MsgBox, %var5%%STRword_array2%%STRword_array1%
  OutputVarForLoop = %OutputVarForLoop%%var5%%STRword_array2%%STRword_array1%.
  ; StringSplit, var4, var4, .  ; Omits periods.
  ; MsgBox, %var4% %var5%
  }
} Until loopIndexer = 8
; MsgBox, %OutputVarForLoop%
StringTrimRight, OutputVarForLoop, OutputVarForLoop, 1
return %OutputVarForLoop%
}

Slide:
	GuiControl, 22:, WeekValue, %slider%
return

callDataStorageLabelLeisure:
dataStorage("Leisure")
GoTo, LoadAndReload22
return

callDataStorageLabelWork:
dataStorage("Work")
GoTo, LoadAndReload22
return

callDataStorageLabelWork1:
dataStorage("Work1")
GoTo, LoadAndReload22
return

callDataStorageLabelSleep:
dataStorage("Sleep")
GoTo, LoadAndReload22
return

callDataStorageLabelExercise:
dataStorage("Exercise")
GoTo, LoadAndReload22
return

callDataStorageLabelMiscellaneous:
dataStorage("Miscellaneous")
GoTo, LoadAndReload22
return

callDataStorageLabelNetBrowsing:
dataStorage("NetBrowsing")
GoTo, LoadAndReload22
return

callDataStorageLabelGoingOut:
dataStorage("GoingOut")
GoTo, LoadAndReload22
return

callDataStorageLabelGaming1:
dataStorage("Gaming1")
GoTo, LoadAndReload22
return

callDataStorageLabelGaming2:
dataStorage("Gaming2")
GoTo, LoadAndReload22
return

callDataStorageLabelGaming3:
dataStorage("Gaming3")
GoTo, LoadAndReload22
return

LoadAndReload22Function(DateVariable)
{
  StringToWrite1 =
  StringToWrite2 =
  totalMaxPorcent = 100
  lastIndex = 0
  PercentIntVarDeltax5 :=
  PercentIntVarMx5 :=
  PercentIntVarMx5p10 :=
  totalMaxPorcentx5 :=
  PercentIntVar2x5 :=
  PercentIntVarMx5p10 :=
  StringToWrite1Index :=
  StringToWrite2Index :=

  color1=Green
  color2=Red
  color3=Purple
  color4=Blue
  color5=Navy

  colorLeisure:="568203"
  TotalLeisure1 :=
  TotalLeisure2 := 0

  colorWork:="Red"
  TotalWork1 :=
  TotalWork2 := 0

  colorWork1:="Red"
  TotalWork11 :=
  TotalWork21 := 0

  colorSleep:="FDB22E"
  TotalSleep1 :=
  TotalSleep2 := 0

  colorExercise:="00ffff"
  TotalExercise1 :=
  TotalExercise2 := 0

  colorMiscellaneous:="Blue"
  TotalMiscellaneous1 :=
  TotalMiscellaneous2 := 0

  colorNetBrowsing:="FD2EE1"
  TotalNetBrowsing1 :=
  TotalNetBrowsing2 := 0

  colorGoingOut:="D15CAF"
  TotalGoingOut1:=
  TotalGoingOut2:= 0

  colorGaming1:="189547"
  TotalGaming11:=
  TotalGaming12:= 0

  colorGaming2:="18E866"
  TotalGaming21:=
  TotalGaming22:= 0

  colorGaming3:="5EA579"
  TotalGaming31:=
  TotalGaming32:= 0

  Loop, read, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
  {
    LastLine%A_Index% := A_LoopReadLine
    lastIndex := A_Index
  }

  if(DateVariable = "default")
  {
    lastlastIndex := lastIndex
    LastLineString := LastLine%lastIndex%
  }
  else
  {
    lastlastIndex = %DateVariable%
    LastLineString := LastLine%DateVariable%
  }

  ArrayFromString := StrSplit(LastLineString, ",","")
  restartValuesOfPercentViewAndMyTimeProgress()

  for index, element in ArrayFromString
  {
    EndIndexOfArray := % ArrayFromString[Index]
    CalculateTotalTime%index% := % CalculateTotalTime(EndIndexOfArray)
    PercentIntArray%index% := % ApercentOfB(CalculateTotalTime%index%,86400)
    CalculateTotalTimeInt%index% := % CalculateTotalTime%index%
    PercentInt%index% := % PercentIntArray%index%
    indexM := % index-1

    if(index = 1)
    {
      PercentIntDelta%index% := % PercentIntArray%index%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := 0
      PercentIntVar := PercentInt%index%
      PercentIntVarM := 0
    }
    else
    {
      PercentIntDelta%index% := % PercentIntArray%index% - PercentIntArray%indexM%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := % PercentIntDelta%indexM%
      PercentIntVar := PercentInt%index%
      PercentIntVarM := PercentInt%indexM%
    }

    if(index = 1)
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := 0
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := 0
    }
    else
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index% - CalculateTotalTime%indexM%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := % CalculateTotalTimeDelta%indexM%
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := % CalculateTotalTimeInt%indexM%
    }

    ; Calculate the deltas
    CalculateTotalTimeVarDelta := CalculateTotalTimeIntVar - CalculateTotalTimeIntVarM
    PercentIntVarDelta := PercentIntVar - PercentIntVarM

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    CalculateTotalTimeString := CalculateTotalTime%A_Index%
    StringToWrite1%A_Index% = %StringToWrite1Index%%element% %CalculateTotalTimeString%  %PercentIntDeltaVarM% %PercentIntDeltaVar%`n
    ; StringToWrite2%A_Index% = %StringToWrite2Index%%PercentIntVarM% %PercentIntVar% %PercentIntVarDelta%`n
    StringToWrite2%A_Index% = %StringToWrite2Index%%PercentIntVarM% %PercentIntVar% %CalculateTotalTimeVarDelta%`n

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    A_IndexM := % A_Index-1
    StringToWrite1IndexM := % StringToWrite1%A_IndexM%
    StringToWrite2IndexM := % StringToWrite2%A_IndexM%

    StringToWrite1IndexString = %StringToWrite1IndexString%%StringToWrite1Index%
    StringToWrite2IndexString = %StringToWrite2IndexString%%StringToWrite2Index%

    totalMaxPorcent := totalMaxPorcent - PercentIntVarDelta

    ; MsgBox, %PercentIntVarDelta%

    ArrayFromElement := StrSplit(element, "_","")
    elementX := ArrayFromElement[2]
    elementY := ArrayFromElement[1]

    StringTrimLeft, elementY, elementY, 8
    StringTrimRight, elementY, elementY, 2

    if(elementX = "Leisure")
    {
      colorToUse = %colorLeisure%
      TotalLeisure2 := % TotalLeisure2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Work")
    {
      colorToUse = %colorWork%
      TotalWork2 := % TotalWork2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Work1")
    {
      colorToUse = %colorWork1%
      TotalWork21 := % TotalWork21 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Sleep")
    {
      colorToUse = %colorSleep%
      TotalSleep2 := % TotalSleep2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Exercise")
    {
      colorToUse = %colorExercise%
      TotalExercise2 := % TotalExercise2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Miscellaneous")
    {
      colorToUse = %colorMiscellaneous%
      TotalMiscellaneous2 := % TotalMiscellaneous2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "NetBrowsing")
    {
      colorToUse = %colorNetBrowsing%
      TotalNetBrowsing2 := % TotalNetBrowsing2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "GoingOut")
    {
      colorToUse = %colorGoingOut%
      TotalGoingOut2 := % TotalGoingOut2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Gaming1")
    {
      colorToUse = %colorGaming1%
      TotalGaming12 := % TotalGaming12 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Gaming2")
    {
      colorToUse = %colorGaming2%
      TotalGaming22 := % TotalGaming22 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Gaming3")
    {
      colorToUse = %colorGaming3%
      TotalGaming32 := % TotalGaming32 + CalculateTotalTimeVarDelta
    }

    GuiControl, +c%colorToUse%, MyTimeProgress%index%

    PercentIntVarDeltax5 := PercentIntVarDelta*10
    PercentIntVarMx5 := PercentIntVarM*10
    PercentIntVarMx5p10 := PercentIntVarMx5+10
    PercentIntVarMx5p10ph := (PercentIntVarMx5p10+(PercentIntVarDelta/2)*10)-3
    PercentIntVarMx5p10ph := intParseReturner(PercentIntVarMx5p10ph)
    PercentIntVarMx5p10ph2 := (PercentIntVarMx5p10+(PercentIntVarDelta/2)*10)-10
    PercentIntVarMx5p10ph2 := intParseReturner(PercentIntVarMx5p10ph2)

    GuiControl, Move, MyTimeProgress%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
    GuiControl, +Range%PercentIntVarM%-%PercentIntVar%, MyTimeProgress%index%
    GuiControl,, MyTimeProgress%index%, +%PercentIntVarDelta%
    GuiControl, Move, MyTimeProgress%index%, x%PercentIntVarMx5p10%

    GuiControl, Move, PercentView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
    GuiControl, 22:, PercentView%index%, %PercentIntVarDelta%
    GuiControl, Move, PercentView%index%, x%PercentIntVarMx5p10%
    GuiControl +BackgroundTrans, PercentView%index%
    GuiControl, Move, PercentView%index%, x%PercentIntVarMx5p10ph%

    if(A_Index = 1)
    {
      GuiControl, Move, DateView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
      GuiControl, 22:, DateView%index%, 00:00
      GuiControl, Move, DateView%index%, x%PercentIntVarMx5p10%
      GuiControl +BackgroundTrans, DateView%index%
      GuiControl, Move, DateView%index%, x%PercentIntVarMx5p10%
    }
    Else
    {
      StringToWrite3 := StrSplit(StringToWrite1IndexM, "_")[1]
      StringTrimLeft, StringToWrite3, StringToWrite3, 8
      StringTrimRight, StringToWrite3, StringToWrite3, 2
      StringMid, hours, StringToWrite3, 1, 2
      StringMid, minutes, StringToWrite3, 3, 2
      StringToWrite3 = %hours%:%minutes%

      GuiControl, Move, DateView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
      GuiControl, 22:, DateView%index%, %StringToWrite3%
      GuiControl, Move, DateView%index%, x%PercentIntVarMx5p10%
      GuiControl +BackgroundTrans, DateView%index%
      GuiControl, Move, DateView%index%, x%PercentIntVarMx5p10%
    }

    ; Second Progress

  }

  colorGray=Gray
  GuiControl, +c%colorGray%, MyTimeProgressRemaining

  totalMaxPorcentx5 := totalMaxPorcent*10
  PercentIntVar2x5 := PercentIntVar*10
  PercentIntVarMx5p10 := PercentIntVar2x5+10
  PercentIntVarMx5p10ph := (PercentIntVarMx5p10+(totalMaxPorcentx5/2))-3
  PercentIntVarMx5p10ph := intParseReturner(PercentIntVarMx5p10ph)
  PercentIntVarMx5p10ph2 := (PercentIntVarMx5p10+(totalMaxPorcentx5/2))-10
  PercentIntVarMx5p10ph2 := intParseReturner(PercentIntVarMx5p10ph2)

  GuiControl, Move, MyTimeProgressRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, +Range%PercentIntVar%-100, MyTimeProgressRemaining
  GuiControl,, MyTimeProgressRemaining, +%totalMaxPorcentx5%
  GuiControl, Move, MyTimeProgressRemaining, x%PercentIntVarMx5p10%

  GuiControl, Move, PercentViewRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, 22:, PercentViewRemaining, -%totalMaxPorcent%
  GuiControl, Move, PercentViewRemaining, x%PercentIntVarMx5p10%
  GuiControl +BackgroundTrans, PercentViewRemaining
  GuiControl, Move, PercentViewRemaining, x%PercentIntVarMx5p10ph%

  StringToWrite3 := StrSplit(StringToWrite1Index, "_")[1]
  StringTrimLeft, StringToWrite3, StringToWrite3, 8
  StringTrimRight, StringToWrite3, StringToWrite3, 2
  StringMid, hours, StringToWrite3, 1, 2
  StringMid, minutes, StringToWrite3, 3, 2
  StringToWrite3 = %hours%:%minutes%

  GuiControl, Move, DateViewRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, 22:, DateViewRemaining, %StringToWrite3%
  GuiControl, Move, DateViewRemaining, x%PercentIntVarMx5p10%
  GuiControl +BackgroundTrans, DateViewRemaining
  GuiControl, Move, DateViewRemaining, x%PercentIntVarMx5p10%

  TimeSumForRemainer=0

  TotalLeisure1 := "Leisure                     "
  TotalLeisure2Percent := % ApercentOfB(TotalLeisure2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalLeisure2
  ; TotalLeisure2Percent := "                      " . TotalLeisure2Percent
  TotalLeisure2Percent := TotalLeisure2Percent
  TotalLeisure2 := intParseReturner(TotalLeisure2)
  TotalLeisure2 := % GetFormatedTime(TotalLeisure2)
  TotalLeisure2 = %TotalLeisure2%
  TotalLeisure1And2 = %TotalLeisure1%%TotalLeisure2%
  ; TotalLeisure1And2 = %TotalLeisure1And2%%TotalLeisure2Percent%
  GuiControl, 22:, DateFieldLeisure, %TotalLeisure1And2%
  GuiControl, 22:, DateFieldLeisure2, %TotalLeisure2Percent%

  TotalWork1 := "Work                         "
  TotalWork2Percent := % ApercentOfB(TotalWork2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalWork2
  ; TotalWork2Percent := "                      " . TotalWork2Percent
  TotalWork2 := intParseReturner(TotalWork2)
  TotalWork2 := % GetFormatedTime(TotalWork2)
  TotalWork2 = %TotalWork2%
  TotalWork1And2 = %TotalWork1%%TotalWork2%
  ; TotalWork1And2 = %TotalWork1And2%%TotalWork2Percent%
  GuiControl, 22:, DateWorkLeisure, %TotalWork1And2%
  GuiControl, 22:, DateWorkLeisure2, %TotalWork2Percent%

  TotalWork11 := "Work1                       "
  TotalWork21Percent := % ApercentOfB(TotalWork21,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalWork21
  ; TotalWork21Percent := "                      " . TotalWork21Percent
  TotalWork21 := intParseReturner(TotalWork21)
  TotalWork21 := % GetFormatedTime(TotalWork21)
  TotalWork21 = %TotalWork21%
  TotalWork11And2 = %TotalWork11%%TotalWork21%
  ; TotalWork11And2 = %TotalWork11And2%%TotalWork21Percent%
  GuiControl, 22:, DateWork1Leisure, %TotalWork11And2%
  GuiControl, 22:, DateWork1Leisure2, %TotalWork21Percent%

  TotalSleep1 := "Sleep                        "
  TotalSleep2Percent := % ApercentOfB(TotalSleep2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalSleep2
  TotalSleep2 := intParseReturner(TotalSleep2)
  TotalSleep2 := % GetFormatedTime(TotalSleep2)
  TotalSleep2 = %TotalSleep2%
  TotalSleep1And2 = %TotalSleep1%%TotalSleep2%
  GuiControl, 22:, DateSleepLeisure, %TotalSleep1And2%
  GuiControl, 22:, DateSleepLeisure2, %TotalSleep2Percent%

  TotalExercise1 := "Exercise                    "
  TotalExercise2Percent := % ApercentOfB(TotalExercise2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalExercise2
  TotalExercise2 := intParseReturner(TotalExercise2)
  TotalExercise2 := % GetFormatedTime(TotalExercise2)
  TotalExercise2 = %TotalExercise2%
  TotalExercise1And2 = %TotalExercise1%%TotalExercise2%
  GuiControl, 22:, DateExerciseLeisure, %TotalExercise1And2%
  GuiControl, 22:, DateExerciseLeisure2, %TotalExercise2Percent%

  TotalNetBrowsing1 := "NetBrowsing             "
  TotalNetBrowsing2Percent := % ApercentOfB(TotalNetBrowsing2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalNetBrowsing2
  TotalNetBrowsing2 := intParseReturner(TotalNetBrowsing2)
  TotalNetBrowsing2 := % GetFormatedTime(TotalNetBrowsing2)
  TotalNetBrowsing2 = %TotalNetBrowsing2%
  TotalNetBrowsing1And2 = %TotalNetBrowsing1%%TotalNetBrowsing2%
  GuiControl, 22:, DateNetBrowsingLeisure, %TotalNetBrowsing1And2%
  GuiControl, 22:, DateNetBrowsingLeisure2, %TotalNetBrowsing2Percent%

  TotalMiscellaneous1 := "Miscellaneous           "
  TotalMiscellaneous2Percent := % ApercentOfB(TotalMiscellaneous2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalMiscellaneous2
  TotalMiscellaneous2 := intParseReturner(TotalMiscellaneous2)
  TotalMiscellaneous2 := % GetFormatedTime(TotalMiscellaneous2)
  TotalMiscellaneous2 = %TotalMiscellaneous2%
  TotalMiscellaneous1And2 = %TotalMiscellaneous1%%TotalMiscellaneous2%
  GuiControl, 22:, DateMiscellaneousLeisure, %TotalMiscellaneous1And2%
  GuiControl, 22:, DateMiscellaneousLeisure2, %TotalMiscellaneous2Percent%

  TotalGoingOut1 := "GoingOut                  "
  TotalGoingOut2Percent := % ApercentOfB(TotalGoingOut2,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalGoingOut2
  TotalGoingOut2 := intParseReturner(TotalGoingOut2)
  TotalGoingOut2 := % GetFormatedTime(TotalGoingOut2)
  TotalGoingOut2 = %TotalGoingOut2%
  TotalGoingOut1And2 = %TotalGoingOut1%%TotalGoingOut2%
  GuiControl, 22:, DateGoingOutLeisure, %TotalGoingOut1And2%
  GuiControl, 22:, DateGoingOutLeisure2, %TotalGoingOut2Percent%

  TotalGaming11 := "Gaming1                   "
  TotalGaming12Percent := % ApercentOfB(TotalGaming12,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalGaming12
  TotalGaming12 := intParseReturner(TotalGaming12)
  TotalGaming12 := % GetFormatedTime(TotalGaming12)
  TotalGaming12 = %TotalGaming12%
  TotalGaming11And2 = %TotalGaming11%%TotalGaming12%
  GuiControl, 22:, DateGaming1Leisure, %TotalGaming11And2%
  GuiControl, 22:, DateGaming1Leisure2, %TotalGaming12Percent%

  TotalGaming21 := "Gaming2                   "
  TotalGaming22Percent := % ApercentOfB(TotalGaming22,86400)
  TimeSumForRemainer := TimeSumForRemainer + TotalGaming22
  TotalGaming22 := intParseReturner(TotalGaming22)
  TotalGaming22 := % GetFormatedTime(TotalGaming22)
  TotalGaming22 = %TotalGaming22%
  TotalGaming21And2 = %TotalGaming21%%TotalGaming22%
  GuiControl, 22:, DateGaming2Leisure, %TotalGaming21And2%
  GuiControl, 22:, DateGaming2Leisure2, %TotalGaming22Percent%

  TotalGaming31 := "Gaming3                   "
  TotalGaming32Percent := % ApercentOfB(TotalGaming32,86400)
  TimeSumForRemainer := % TimeSumForRemainer + TotalGaming32
  TotalGaming32 := intParseReturner(TotalGaming32)
  TotalGaming32 := % GetFormatedTime(TotalGaming32)
  TotalGaming32 = %TotalGaming32%
  TotalGaming31And2 = %TotalGaming31%%TotalGaming32%
  GuiControl, 22:, DateGaming3Leisure, %TotalGaming31And2%
  GuiControl, 22:, DateGaming3Leisure2, %TotalGaming32Percent%

  ; MsgBox, %TimeSumForRemainer%

  TimeSumForRemainer := 86400 - TimeSumForRemainer
  TimeSumForRemainer := % GetFormatedTime(TimeSumForRemainer)

  TotalRemaining31 := "Remaining time         "
  TotalRemaining31And2 = %TotalRemaining31%%TimeSumForRemainer%
  GuiControl, 22:, TotalDayDateRemaining, %TotalRemaining31And2%
  GuiControl, 22:, TotalDayDateRemaining2, %totalMaxPorcent%

  StringToAdd1 := "________________________________`n`n"
  StringToAdd2 := "___________________`n`n"

  StringToWrite1IndexString = %StringToWrite1IndexString%%StringToAdd1%
  StringToWrite2IndexString = %StringToWrite2IndexString%%StringToAdd2%

  GuiControl, 22:, TimesAndPorcents1, %StringToWrite1IndexString%RemainingData:
  GuiControl, 22:, TimesAndPorcents2, %StringToWrite2IndexString%%PercentIntVar% 100 %totalMaxPorcent%

  AutoXYWH("reset")
  AutoXYWH("reset")
  AutoXYWH("reset")

}

LoadAndReload22Progress2Function(DateVariable)
{
  StringToWrite1 =
  StringToWrite2 =
  totalMaxPorcent = 100
  lastIndex = 0
  PercentIntVarDeltax5 :=
  PercentIntVarMx5 :=
  PercentIntVarMx5p10 :=
  totalMaxPorcentx5 :=
  PercentIntVar2x5 :=
  PercentIntVarMx5p10 :=
  StringToWrite1Index :=
  StringToWrite2Index :=

  color1=Green
  color2=Red
  color3=Purple
  color4=Blue
  color5=Navy

  colorExit:="Green"
  colorStart:="FDB22E"

  TotalExit1:=
  TotalStart1:=

  TotalExit2 := 0
  TotalStart2 := 0

  Loop, read, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDatesStartAndExit.csv
  {
    LastLine%A_Index% := A_LoopReadLine
    lastIndex := A_Index
  }

  if(DateVariable = "default")
  {
    lastlastIndex := lastIndex
    LastLineString := LastLine%lastIndex%
  }
  else
  {
    lastlastIndex = %DateVariable%
    LastLineString := LastLine%DateVariable%
  }

  ArrayFromString := StrSplit(LastLineString, ",","")
  restartValuesOf2PercentViewAnd2MyTimeProgress()

  for index, element in ArrayFromString
  {
    EndIndexOfArray := % ArrayFromString[Index]
    CalculateTotalTime%index% := % CalculateTotalTime(EndIndexOfArray)
    PercentIntArray%index% := % ApercentOfB(CalculateTotalTime%index%,86400)
    CalculateTotalTimeInt%index% := % CalculateTotalTime%index%
    PercentInt%index% := % PercentIntArray%index%
    indexM := % index-1

    if(index = 1)
    {
      PercentIntDelta%index% := % PercentIntArray%index%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := 0
      PercentIntVar := PercentInt%index%
      PercentIntVarM := 0
    }
    else
    {
      PercentIntDelta%index% := % PercentIntArray%index% - PercentIntArray%indexM%
      PercentIntDeltaVar := % PercentIntDelta%index%
      PercentIntDeltaVarM := % PercentIntDelta%indexM%
      PercentIntVar := PercentInt%index%
      PercentIntVarM := PercentInt%indexM%
    }
    if(index = 1)
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := 0
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := 0
    }
    else
    {
      CalculateTotalTimeDelta%index% := % CalculateTotalTime%index% - CalculateTotalTime%indexM%
      CalculateTotalTimeDeltaVar := % CalculateTotalTimeDelta%index%
      CalculateTotalTimeDeltaVarM := % CalculateTotalTimeDelta%indexM%
      CalculateTotalTimeIntVar := % CalculateTotalTimeInt%index%
      CalculateTotalTimeIntVarM := % CalculateTotalTimeInt%indexM%
    }

    CalculateTotalTimeVarDelta := CalculateTotalTimeIntVar - CalculateTotalTimeIntVarM
    PercentIntVarDelta := PercentIntVar - PercentIntVarM

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    StringToWrite1%A_Index% = %StringToWrite1Index%%element% %CalculateTotalTime%  %PercentIntDeltaVarM% %PercentIntDeltaVar%`n
    StringToWrite2%A_Index% = %StringToWrite2Index%%PercentIntVarM% %PercentIntVar% %PercentIntVarDelta%`n

    StringToWrite1Index := % StringToWrite1%A_Index%
    StringToWrite2Index := % StringToWrite2%A_Index%

    A_IndexM := % A_Index-1
    StringToWrite1IndexM := % StringToWrite1%A_IndexM%
    StringToWrite2IndexM := % StringToWrite2%A_IndexM%

    StringToWrite1IndexString = %StringToWrite1IndexString%%StringToWrite1Index%
    StringToWrite2IndexString = %StringToWrite2IndexString%%StringToWrite2Index%

    totalMaxPorcent := totalMaxPorcent - PercentIntVarDelta

    ArrayFromElement := StrSplit(element, "_","")
    elementX := ArrayFromElement[2]
    elementY := ArrayFromElement[1]

    StringTrimLeft, elementY, elementY, 8
    StringTrimRight, elementY, elementY, 2

    if(elementX = "Exit")
    {
      colorToUse = %colorExit%
      TotalExit2 := % TotalExit2 + CalculateTotalTimeVarDelta
    }
    if(elementX = "Start")
    {
      colorToUse = %colorStart%
      TotalStart2 := % TotalStart2 + CalculateTotalTimeVarDelta
    }

    GuiControl, +c%colorToUse%, 2MyTimeProgress%index%

    PercentIntVarDeltax5 := PercentIntVarDelta*10
    PercentIntVarMx5 := PercentIntVarM*10
    PercentIntVarMx5p10 := PercentIntVarMx5+10
    PercentIntVarMx5p10ph := (PercentIntVarMx5p10+(PercentIntVarDelta/2)*10)-3
    PercentIntVarMx5p10ph := intParseReturner(PercentIntVarMx5p10ph)
    PercentIntVarMx5p10ph2 := (PercentIntVarMx5p10+(PercentIntVarDelta/2)*10)-10
    PercentIntVarMx5p10ph2 := intParseReturner(PercentIntVarMx5p10ph2)

    GuiControl, Move, 2MyTimeProgress%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
    GuiControl, +Range%PercentIntVarM%-%PercentIntVar%, 2MyTimeProgress%index%
    GuiControl,, 2MyTimeProgress%index%, +%PercentIntVarDelta%
    GuiControl, Move, 2MyTimeProgress%index%, x%PercentIntVarMx5p10%

    GuiControl, Move, 2PercentView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
    GuiControl, 22:, 2PercentView%index%, %PercentIntVarDelta%
    GuiControl, Move, 2PercentView%index%, x%PercentIntVarMx5p10%
    GuiControl +BackgroundTrans, 2PercentView%index%
    GuiControl, Move, 2PercentView%index%, x%PercentIntVarMx5p10ph%

    if(A_Index = 1)
    {
      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
      GuiControl, 22:, 2DateView%index%, 00:00
      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5p10%
      GuiControl +BackgroundTrans, 2DateView%index%
      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5p10%
    }
    Else
    {
      StringToWrite3 := StrSplit(StringToWrite1IndexM, "_")[1]
      StringTrimLeft, StringToWrite3, StringToWrite3, 8
      StringTrimRight, StringToWrite3, StringToWrite3, 2
      StringMid, hours, StringToWrite3, 1, 2
      StringMid, minutes, StringToWrite3, 3, 2
      StringToWrite3 = %hours%:%minutes%

      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5% w%PercentIntVarDeltax5%
      GuiControl, 22:, 2DateView%index%, %StringToWrite3%
      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5p10%
      GuiControl +BackgroundTrans, 2DateView%index%
      GuiControl, Move, 2DateView%index%, x%PercentIntVarMx5p10%
    }

  }

  colorGray=Gray
  GuiControl, +c%colorGray%, 2MyTimeProgressRemaining

  totalMaxPorcentx5 := totalMaxPorcent*10
  PercentIntVar2x5 := PercentIntVar*10
  PercentIntVarMx5p10 := PercentIntVar2x5+10
  PercentIntVarMx5p10ph := (PercentIntVarMx5p10+(totalMaxPorcentx5/2))-3
  PercentIntVarMx5p10ph := intParseReturner(PercentIntVarMx5p10ph)
  PercentIntVarMx5p10ph2 := (PercentIntVarMx5p10+(totalMaxPorcentx5/2))-10
  PercentIntVarMx5p10ph2 := intParseReturner(PercentIntVarMx5p10ph2)

  GuiControl, Move, 2MyTimeProgressRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, +Range%PercentIntVar%-100, 2MyTimeProgressRemaining
  GuiControl,, 2MyTimeProgressRemaining, +%totalMaxPorcentx5%
  GuiControl, Move, 2MyTimeProgressRemaining, x%PercentIntVarMx5p10%

  GuiControl, Move, 2PercentViewRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, 22:, 2PercentViewRemaining, -%totalMaxPorcent%
  GuiControl, Move, 2PercentViewRemaining, x%PercentIntVarMx5p10%
  GuiControl +BackgroundTrans, 2PercentViewRemaining
  GuiControl, Move, 2PercentViewRemaining, x%PercentIntVarMx5p10ph%

  StringToWrite3 := StrSplit(StringToWrite1Index, "_")[1]
  StringTrimLeft, StringToWrite3, StringToWrite3, 8
  StringTrimRight, StringToWrite3, StringToWrite3, 2
  StringMid, hours, StringToWrite3, 1, 2
  StringMid, minutes, StringToWrite3, 3, 2
  StringToWrite3 = %hours%:%minutes%

  GuiControl, Move, 2DateViewRemaining, x%PercentIntVar2x5% w%totalMaxPorcentx5%
  GuiControl, 22:, 2DateViewRemaining, %StringToWrite3%
  GuiControl, Move, 2DateViewRemaining, x%PercentIntVarMx5p10%
  GuiControl +BackgroundTrans, 2DateViewRemaining
  GuiControl, Move, 2DateViewRemaining, x%PercentIntVarMx5p10%

  TotalExit1 := "TotalExit1`n"
  TotalStart1 := "TotalStart1`n"

  TotalExit1 := "Exit-    ON                 "
  TotalStart1 := "Start-  OFF                "

  TotalExit2Percent := % ApercentOfB(TotalExit2,86400)
  ; TotalExit2Percent := "                      " . TotalExit2Percent

  TotalStart2Percent := % ApercentOfB(TotalStart2,86400)
  ; TotalStart2Percent :="                      " . TotalStart2Percent

  TotalExit2 := intParseReturner(TotalExit2)
  TotalStart2 := intParseReturner(TotalStart2)

  TotalExit2 := % GetFormatedTime(TotalExit2)
  TotalStart2 := % GetFormatedTime(TotalStart2)

  TotalExit2 = %TotalExit2%
  TotalStart2 = %TotalStart2%

  TotalExit1And2 = %TotalExit1%%TotalExit2%
  TotalStart1And2 = %TotalStart1%%TotalStart2%

  ; TotalExit1And2 = %TotalExit1And2%%TotalExit2Percent%
  ; TotalStart1And2 = %TotalStart1And2%%TotalStart2Percent%

  GuiControl, 22:, DateExitLeisure, %TotalExit1And2%
  GuiControl, 22:, DateExitLeisure2, %TotalExit2Percent%

  GuiControl, 22:, DateStartLeisure, %TotalStart1And2%
  GuiControl, 22:, DateStartLeisure2, %TotalStart2Percent%


  StringToAdd1 := "________________________________`n`n"
  StringToAdd2 := "___________________`n`n"

  StringToWrite1IndexString = %StringToWrite1IndexString%%StringToAdd1%
  StringToWrite2IndexString = %StringToWrite2IndexString%%StringToAdd2%

  ; GuiControl, 22:, TimesAndPorcents1, %StringToWrite1IndexString%RemainingData:
  ; GuiControl, 22:, TimesAndPorcents2, %StringToWrite2IndexString%%PercentIntVar% 100 %totalMaxPorcent%

  AutoXYWH("reset")
  AutoXYWH("reset")
  AutoXYWH("reset")

}

CallCallIFTTTAlarmClock1:
CallIFTTTAlarmClock("CallIFTTTAlarmClock1")
return

CallCallIFTTTAlarmClock2:
CallIFTTTAlarmClock("CallIFTTTAlarmClock2")
return

CallCallIFTTTAlarmClock3:
CallIFTTTAlarmClock("CallIFTTTAlarmClock3")
return

CallCallIFTTTAlarmClock4:
CallIFTTTAlarmClock("CallIFTTTAlarmClock4")
return

CallCallIFTTTAlarmClock5:
CallIFTTTAlarmClock("CallIFTTTAlarmClock5")
return

LaunchRescueTime:
Run, https://www.rescuetime.com/dashboard?src=client
return

LaunchManicTime:
; C:\Users\Fallar\Documents\AHKHelpy\AHKassociatedFiles\ManicTimeUsb\ManicTime.exe
Run, %A_ScriptDir%\AHKassociatedFiles\ManicTimeUsb\ManicTime.exe
return

LaunchBitwarden:
;Run, D:\Bitwarden\Bitwarden.exe
Run, chrome.exe "https://bitwarden.com/"
return

; LaunchEasyGitJS:
; commands=
; (join&
; echo off
; cd `%userprofile`%\Documents\AHKHelpy\
; node easyGit.js
; )
; runwait, %comspec% /c %commands%
; return

CallIFTTTAlarmClock(AlarmNumber)
{
GuiControlGet, value, , %AlarmNumber%
; MsgBox, %value%

StringTrimLeft, value, value, 8
StringTrimRight, value, value, 2

StringMid, hours, value, 1, 2
StringMid, minutes, value, 3, 2

; MsgBox, %hours%%minutes%

target_time = %hours%%minutes%
target = %A_YYYY%%A_MM%%A_DD%%target_time%00

if (target < A_Now)
{   ; time(today) has passed already, so use time(tomorrow)
    EnvAdd, target, 1, d
}

; Calculate how many seconds until the target time is reached.
EnvSub, target, %A_Now%, Seconds

; Sleep until the target is reached.
; Sleep, % target * 1000 ; (milliseconds)

SetTimer, TargetTimeReached, % target * -1000 ; negative means run *once*
return
}

TargetTimeReached:
; FormatTime, now, %A_Now%
; MsgBox, The time is now %now%
GoTo, IFTTTAlarmClock
return

IFTTTAlarmClock:
K5EyZin3bDWPIPlEv = % getStringFromBank("is4TiS8iiJovCrb4", FileLocation)
; Ki8iii5Wi5QbdKLYi = % getStringFromBank("ZcwRxJvku0JiSKCo", FileLocation)

; I get the need for security for keys, but event names are probably not really needed to be secret.
; The fuck can you do with the event name? Hack me?

EventName = alarm_event
Key = %K5EyZin3bDWPIPlEv%
MyVar1 := 5465645
MyVar2 := 44444444
MyVar3 = "bhbhbhbh"
MakerIFTTTurl := "https://maker.ifttt.com/trigger/"
MakerIFTTTwithKey :=  "/with/key/"

WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
Enabled := ComObjError(false)
PostMessageString = %MakerIFTTTurl%%EventName%%MakerIFTTTwithKey%%Key%
; MsgBox, %PostMessageString%
WinHTTP.Open("POST", PostMessageString , 0)
WinHTTP.SetRequestHeader("Content-Type", "application/json")
Body = {"value1" : %MyVar1%, "value2" : %MyVar2%, "value3" : %MyVar3%}
WinHTTP.Send(Body)
return

restartValuesOfPercentViewAndMyTimeProgress()
{
  loop 400
  {
    GuiControl, Move, MyTimeProgress%A_Index%, x0 w0
    GuiControl, +Range0-0, MyTimeProgress%A_Index%
    GuiControl,, MyTimeProgress%A_Index%, 0
    GuiControl, Move, MyTimeProgressRemaining, x0 w0
    GuiControl, +Range0-0, MyTimeProgressRemaining
    GuiControl,, MyTimeProgressRemaining, 0

    GuiControl, 22:, PercentView%A_Index%,
    GuiControl, Move, PercentView%A_Index%, x0 w0
    GuiControl, 22:, PercentViewRemaining,
    GuiControl, Move, PercentViewRemaining, x0 w0

    GuiControl, Move, DateView%A_Index%, x0 w0
    GuiControl, 22:, DateView%A_Index%,
    GuiControl, Move, DateViewRemaining, x0 w0
    GuiControl, 22:, DateViewRemaining,

  }
}

restartValuesOfPercentViewAndMyTimeProgress1()
{
  loop 400
  {
    GuiControl, Move, MyTimeProgress%A_Index%, x0 w0
    GuiControl, +Range0-0, MyTimeProgress%A_Index%
    GuiControl,, MyTimeProgress%A_Index%, 0
    GuiControl, Move, MyTimeProgressRemaining, x0 w0
    GuiControl, +Range0-0, MyTimeProgressRemaining
    GuiControl,, MyTimeProgressRemaining, 0

    GuiControl, 22:, PercentView%A_Index%,
    GuiControl, Move, PercentView%A_Index%, x0 w0
    GuiControl, 22:, PercentViewRemaining,
    GuiControl, Move, PercentViewRemaining, x0 w0

    GuiControl, Move, DateView%A_Index%, x0 w0
    GuiControl, 22:, DateView%A_Index%,
    GuiControl, Move, DateViewRemaining, x0 w0
    GuiControl, 22:, DateViewRemaining,

  }
}

restartValuesOf2PercentViewAnd2MyTimeProgress()
{
  loop 400
  {
    GuiControl, Move, 2MyTimeProgress%A_Index%, x0 w0
    GuiControl, +Range0-0, 2MyTimeProgress%A_Index%
    GuiControl,, 2MyTimeProgress%A_Index%, 0
    GuiControl, Move, 2MyTimeProgressRemaining, x0 w0
    GuiControl, +Range0-0, 2MyTimeProgressRemaining
    GuiControl,, 2MyTimeProgressRemaining, 0

    GuiControl, 22:, 2PercentView%A_Index%,
    GuiControl, Move, 2PercentView%A_Index%, x0 w0
    GuiControl, 22:, 2PercentViewRemaining,
    GuiControl, Move, 2PercentViewRemaining, x0 w0

    GuiControl, Move, 2DateView%A_Index%, x0 w0
    GuiControl, 22:, 2DateView%A_Index%,
    GuiControl, Move, 2DateViewRemaining, x0 w0
    GuiControl, 22:, 2DateViewRemaining,

  }
}

GetFormatedTime(_seconds)
{
	local x, t, ft
	static units

	If (_seconds = 0)
		Return "0 seconds"
	units = d.h.m.s
	Loop Parse, units, .
	{
		x := A_Index = 1 ? 24 * 3600 : 60**(4 - A_Index)
		t := _seconds // x
		_seconds -= t * x
		If (t != 0)
			ft .= t . "" . A_LoopField . (t = 1 ? "" : "") . (A_Index = 4 ? "" : "")
	}
	Return ft
}

CalculatePorcentFromDailyTime(A)
{
  percentInt := % (86400*A)/100
  return percentInt
}

ApercentOfB(A, B)
{
  ApercentOfB := A/B*100
  percentInt := % intParseReturner(ApercentOfB)
  return percentInt
}

Resize:
	GuiControl, Move, TimesAndPorcents1, h50
	AutoXYWH("reset") ; Needs to reset if you changed the Control size manually.
return

CalculateTotalTime(EndIndexOfArray)
{
  StringTrimLeft, EndIndexOfArray, EndIndexOfArray, 8
  ; MsgBox, % EndIndexOfArray
  StringMid, hours, EndIndexOfArray, 1, 2
  StringMid, minutes, EndIndexOfArray, 3, 2
  StringMid, seconds, EndIndexOfArray, 5, 2
  ; MsgBox, %hours% %minutes% %seconds% %EndIndexOfArray%

  totalTime := hours*60*60 + minutes*60 + seconds
  ; MsgBox, %totalTime%
  return totalTime
}

; setTimer(2203)
setTimer(target_time_value)
{
  ; target_time = target_time_value ;1755 ; 11:05 pm

  target = %A_YYYY%%A_MM%%A_DD%%target_time_value%00
  if (target < A_Now)
  {   ; time(today) has passed already, so use time(tomorrow)
      ; MsgBox, "Less" %A_Now% %target%
      EnvAdd, target, 1, d
  }
  else
  {
    ; MsgBox, "More" %A_Now% %target%
  }

  EnvSub, target, %A_Now%, Seconds
  SetTimer, TargetTimeReached, % target * -1000 ; negative means run *once*
}

dataStorage(typeOfTime)
{
CurrentYearMonthDayDate = %A_YYYY%%A_MM%%A_DD%
IniRead, OutputDate, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware
dateDiff = %OutputDate%

Loop
	{

    IniRead, OutputDate, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware
    dateDiff = %OutputDate%

    EnvSub, dateDiff, %CurrentYearMonthDayDate%, days

    If(dateDiff<0)
    {
      IniWrite, 1, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      FileAppend, `n, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
      nextdate := % nextDay()
    }
    else
    {
      IniRead, NewLine, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      if(NewLine = 1)
      {
        FileAppend, %A_Now%_%typeOfTime%, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
        IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      }
      Else
      {
        FileAppend, `,%A_Now%_%typeOfTime%, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDates.csv
      }
      Break
    }
	}
return
}

dataStorageForStartAndExit(typeOfTime)
{
CurrentYearMonthDayDate = %A_YYYY%%A_MM%%A_DD%
IniRead, OutputDate, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftwareStartAndExit
dateDiff = %OutputDate%

Loop
	{

    IniRead, OutputDate, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftwareStartAndExit
    dateDiff = %OutputDate%

    EnvSub, dateDiff, %CurrentYearMonthDayDate%, days

    If(dateDiff<0)
    {
      IniWrite, 1, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      FileAppend, `n, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDatesStartAndExit.csv
      nextdate := % nextDayStartAndExit()
    }
    else
    {
      IniRead, NewLine, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      if(NewLine = 1)
      {
        FileAppend, %A_Now%_%typeOfTime%, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDatesStartAndExit.csv
        IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, NewLineBoolean
      }
      Else
      {
        FileAppend, `,%A_Now%_%typeOfTime%, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyDatesStartAndExit.csv
      }
      Break
    }
	}
return
}

intparse(str) {
    SetFormat, Float, 0.2 ; default is 0.6
	str = %str% ; removes formatting
	Loop, Parse, str ; parse through each character
		If A_LoopField in 0,1,2,3,4,5,6,7,8,9,.,+,-
			int = %int%%A_LoopField% ; build integer
	Return, int + 0.0 ; returns real number
}
intParseReturner(str) {
    strInt := % intparse(str)
    StringTrimRight, strInt, strInt, 3
	Return, strInt
}

AlteredStartUpScript(){
dateToBePrinted := getDate()
;RemoveFirstLine()
Source = "
StringMid, newline1, Source, 2, 2
newline2 = %dateToBePrinted%
newline = %newline1% %newline2%
MsgBox, %newline2%

;1Source = \
;StringMid, 1newline1, 1Source, 2, 2
;1newline2 = %stringToBeUsed% "

; 1newline = \%stringToBeUsed%
; f := A_MyDocuments 1newline
; a := FilePrePend(f, newline)



; if !(a)
;    fileappend,, ExitLogger.txt
;else
   ;run, %f%
}

nextDay()
{
; listen mate, it is obvious that such a function does not work in all circumstances:
; https://www.youtube.com/watch?v=-5wpm-gesOY
; solutions include to just do it and ignore edge cases like change in time,
; but there is also the idea to use different language solutions to this problem

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\PythonFastJobsScripts
python nextDay.py
)
runwait, %comspec% /c %commands%
IniRead, OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftware

return OutputVar
}

nextDayStartAndExit()
{
; listen mate, it is obvious that such a function does not work in all circumstances:
; https://www.youtube.com/watch?v=-5wpm-gesOY
; solutions include to just do it and ignore edge cases like change in time,
; but there is also the idea to use different language solutions to this problem

commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\PythonFastJobsScripts
python nextDayStartAndExit.py
)
runwait, %comspec% /c %commands%
IniRead, OutputVar, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, DateForTimeManagementSoftwareStartAndExit

return OutputVar
}

; ;a wrapper function to compute the difference between two dates
DateDiff(Start, End, unit)
{
    Diff := End
    Diff -= Start, %unit%

    MsgBox, % Diff
    return Diff
}

FastCreateTscrips:
Gui, 26:Destroy
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

Gui, 26:Add, Button, w250 h20 %k_Position% gCreateTscrips,CreateTscrips
Gui, 26:Add, Edit, xm w250 h20 x100 vLabelView,
Gui, 26:Add, Edit, w250 h20 %k_Position% vTscriptEditView,
Gui, 26:Add, Edit, xm w60 ReadOnly x20 yp+25, Sound




; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
Gui, 26:Font, s18 cRed Bold, Verdana
Gui, 26:Color, 000000, FFFFFF
Gui, 26:Show, h1000 w550 x65 y65,
; MsgBox, "works"
return


CreateTscrips:





FileLocation = %A_ScriptDir%\StringBank.txt
FileLocation1 = %A_ScriptDir%\Autohotkey.ahk
FileLocation2 = %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TScriptsData.ahk

NameOfFile := "StringBank.txt"
NameOfFile1 := "Autohotkey.ahk"
NameOfFile2 := "TScriptsData.ahk"

SearchString1 := "[...@"
SearchString2 := "@@...]"
SearchString := SearchString1 . SearchString2
SearchString1end := "[...@e"
SearchString2end := "@e@...]"
SearchStringend := SearchString1end . SearchString2end
SearchString1a := "[..@@"
SearchString2a := "@@@..]"
SearchStringa := SearchString1a . SearchString2a
SearchString1aend := "[..@e@e"
SearchString2aend := "@e@e@..]"
SearchStringaend := SearchString1aend . SearchString2aend
SearchString1b := "[.@@@"
SearchString2b := "@@@@.]"
SearchStringb := SearchString1b . SearchString2b
SearchString1bend := "[.@e@e@e"
SearchString2bend := "@e@e@e@.]"
SearchStringbend := SearchString1bend . SearchString2bend

stringVariable := "fsdsdfds"

InsertStringIntoLocation(FileLocation2, NameOfFile2, stringVariable, SearchString)

; MsgBox, %totalTime%
return

InsertStringIntoLocation(NameOfFileVariable, FileLocationVariable, stringVariable, locationVariable){

; FileLocation = %A_ScriptDir%\StringBank.txt
; FileLocation1 = %A_ScriptDir%\Autohotkey.ahk

; NameOfFile := "StringBank.txt"
; NameOfFile1 := "Autohotkey.ahk"

; TF("WriteText.txt") ; read file, create global var t
; MsgBox % T

;section1

Index := % findLocationOfStringInFile(NameOfFileVariable, locationVariable)
IndexToUse1 := Index+1
MsgBox % IndexToUse1
t := TF(FileLocationVariable)
t := TF_InsertLine(t, IndexToUse1,IndexToUse1, stringVariable)

; t := StrReplace(t, ReplaceString, TextToInsert3)
; FileDelete, %FileLocationVariable%
; MsgBox % t

FileDelete, %FileLocationVariable%
FileAppend, %t%, %FileLocationVariable%

return
}

; TESTMsgbox:
; MsgBox, "the testbox value is:" %KODiii4NIY_gtMgro%
; return










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