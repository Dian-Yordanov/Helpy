;|helpyGUI||SEARCHINDICATOR|
;    _          _              _____ _    _ _____
;   | |        | |            / ____| |  | |_   _|
;   | |__   ___| |_ __  _   _| |  __| |  | | | |
;   | '_ \ / _ \ | '_ \| | | | | |_ | |  | | | |
;   | | | |  __/ | |_) | |_| | |__| | |__| |_| |_
;   |_| |_|\___|_| .__/ \__, |\_____|\____/|_____|
;                | |     __/ |
;                |_|    |___/
helpy:
Gui Destroy
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
previous_ID := 0
k_Position = x+0 0
WinGet, current_ID, ID, A
; BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; BkColor3   := 0x801111   ; Background Color | BGR (BLUE - GREEN - RED)
; TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
global BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global BkColor   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
global TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
OnMessage(0x201, "WM_LBUTTONDOWN")
; OnMessage(0x84, "WM_NCHITTEST")
; OnMessage(0x83, "WM_NCCALCSIZE")
Gui, +Resize
; Gui, Add, Groupbox, w1200 h50 ,
; ; Gui, Add, Button, xm w100 gExperiments x20 yp+15 ,Experiments
; Gui, Add, Button, w100 hwndHBT1 gExperiments x20 yp+15 ,Experiments
; Gui, Add, Button, %k_Position% w100 hwndHBT2 gTscrips,Tscrips
; Gui, Add, Button, %k_Position% w100 hwndHBT3 gMultilingualScripts,MultilingualScripts
; Gui, Add, Groupbox, w1200 h50 x10,
; Gui, Add, Button, xm w100 gExperiments x20 yp+15 ,Experiments
Gui, Add, Button, w100 hwndHBT1 gExperiments x20 yp+15 ,Experiments
Gui, Add, Button, %k_Position% w100 hwndHBT2 gTscrips,Tscrips
Gui, Add, Button, %k_Position% w100 hwndHBT3 gMultilingualScripts,MultilingualScripts

Opt1 := [0, 0x00CF0000, , "White", ,  "White", 4]         ; normal flat background & text color
Opt2 := [ , "Red"]
Opt3 := {4: "Red"}                                      ; hot flat background color
Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation

Opt11 := [0, 0x002ECC71, , "White", , "White", 4]         ; normal flat background & text color
Opt21 := [ , "Green"]
Opt31 := {4: "Green"}                                      ; hot flat background color
Opt51 := [ , , ,"Gray"]                                      ; defaulted text color -> animation

Opt12 := [0, 0x00FFFF88, , "Black", , "Black", 4]         ; normal flat background & text color
Opt22 := [ , "Yellow"]
Opt32 := {4: "Yellow"}                                      ; hot flat background color
Opt52 := [ , , ,"Gray"]                                      ; defaulted text color -> animation

If !ImageButton.Create(HBT3, Opt12, Opt22, Opt32,Opt32)
   MsgBox, 0, ImageButton Error Btn2, % ImageButton.LastError
If !ImageButton.Create(HBT2, Opt11, Opt21, Opt31,Opt31)
   MsgBox, 0, ImageButton Error Btn2, % ImageButton.LastError
If !ImageButton.Create(HBT1, Opt1, Opt2, Opt3, Opt3)
   MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
; Vertical bicolored  button with different 3D-style colors for states normal, hot, and pressed ------------------------
; Gui, Add, Button, w100 h30 hwndHBT2 %k_Position%, Button 2
; Opt1 := [1, 0xC0E0E0E0, 0xC0B0E0FF, 0x60000000]             ; normal background & text colors
; Opt2 := {2: 0xE0E0E0, 3: 0xB0E0FF, 4: "Black"}              ; hot background & text colors (object syntax)
; Opt3 := {4: "Red"}                                          ; pressed text color (object syntax)
; If !ImageButton.Create(HBT2, Opt1, Opt2, Opt3)
;    MsgBox, 0, ImageButton Error Btn2, % ImageButton.LastError
;Gui, Add, Edit, %k_Position% w120 ReadOnly, % RandomGenerationFunction()
;Gui, Add, Groupbox, w100 h100,IP Address:
;Gui, Add, Button, gWinR w100,Win+R
;Gui, Add, Text, vIPList x20 yp+15 r4 w85
;Gui, Add, Text, vTEXT1, This is a control
; Gui, Add, Text, x10 y15 h100 0x11  ;Vertical Line > Etched Gray
Gui, Add, Text, x1 w1200 0x10  ;Horizontal Line > Etched Gray
; Gui, Add, Groupbox, w1200 h50 x10,
Gui, Add, Button, gWinR x20 yp+15 , Win+R
Gui, Add, Button, gCtrlA %k_Position% , Ctrl+A
Gui, Add, Button, gCtrlF %k_Position% , Ctrl+F
Gui, Add, Button, gCtrlW %k_Position% , Ctrl+W
Gui, Add, Button, gStartLinuxHelpy %k_Position% ,StartLinuxHelpy
Gui, Add, Button, gNavigation %k_Position% ,Navigation
Gui, Add, Button, gCountDown %k_Position% ,CountDown
Gui, Add, Button, %k_Position% gTimeManager,TimeManager

Gui, Add, Text, %k_Position% cWhite,


Gui, Add, Button, %k_Position% gClipboardMaster hwndHBTN,ClipboardMaster
CCButton.Attach(HBTN, 0x008000)
;Gui, Add, Button, %k_Position% gLaunchBitwarden hwndHBTN,Bitwarden
;CCButton.Attach(HBTN, 0x0000FF)
Gui, Add, Button, %k_Position% gLaunchEasyGitJS hwndHBTN,EasyGitJS
CCButton.Attach(HBTN, 0x0000FF)
Gui, Add, Text, %k_Position% cWhite,


	

; Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, x1 w1200 0x10  ;Horizontal Line > Etched Gray
; Gui, Add, Groupbox, w1200 h50 xm ,
; Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, x-40 yp+15 cWhite,
num:=1
; Gui,+Border

files =
Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
{

    MyEdit = %A_LoopFileName%
    StringReplace, MyEdit, MyEdit, .ahk,, All
    Gui,Add,Button, xp+60 yp w60 h24 gfunction v%MyEdit% Section,Column%num%

    num +=1
}

function(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%
    ahkFileExtension = .ahk
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName% has been clicked!
    Run, %controlName%, %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
}

Gui, Add, Text, x1 w1200 0x10  ;Horizontal Line > Etched Gray
Gui, Add, Edit, xm w60 x20 yp+15, Clipy2
Gui, Add, Button, %k_Position% gClipy2,Clipy2
Gui, Add, Button, %k_Position% gClipy2DeleteContent,Clipy2DeleteContent
Gui, Add, Button, %k_Position% gClipy2Initialize,Clipy2Initialize
Gui, Add, Button, %k_Position% gOpenClipy2Directory,OpenClipy2Directory
Gui, Add, Edit, xm w60 x20 yp+25, Clipy1
Gui, Add, Button, %k_Position% gSavePaste,SavePaste
Gui, Add, Button, %k_Position% gOpenClipy,OpenClipy
Gui, Add, Button, %k_Position% gOpenWebClipy,OpenWebClipy
Gui, Add, Edit, xm w60 x20 yp+25, Sound
Gui, Add, Button, %k_Position% gNumpadUpHelpy,100-100
Gui, Add, Button, %k_Position% gNumpadPgUpHelpy,100-0
Gui, Add, Button, %k_Position% gMuteHelpy,0-0

Gui_AddPicture("x20 w120 h20 yp+25", "FF 57 33") ; background
Gui, Add, Text, x20 w120 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, ZlogyV2 - E/D
Gui, Add, Button, %k_Position% glockZlogy,lockZlogy
Gui, Add, Button, %k_Position% gUnlockZlogy,UnlockStringBank
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gFileLock,File locking
Gui, Add, Button, %k_Position% gFileUnlock,File unlocking
; Gui, Add, Text, %k_Position% cWhite,
; Gui, Add, Button, %k_Position% gLaunchBitwarden,Launch Bitwarden
Gui_AddPicture("x20 w120 h20 yp+25", "FF 57 33") ; background
Gui, Add, Text, x20 w120 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, Zlogy manipulation
Gui, Add, Button, %k_Position% gMNZnoButton,MNZ no button
Gui, Add, Button, %k_Position% gRemoveSpecificZlogy,Remove specific Zlogy
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gMakeNewZlogy,MakeNewZlogy(MNZ)
Gui, Add, Button, %k_Position% gMakeNewZlogyFromUrl,MNZ from Url
Gui_AddPicture("x20 w120 h20 yp+25", "FF 57 33") ; background
Gui, Add, Text, x20 w120 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, ZlogyV2 - functions
Gui, Add, Button, %k_Position% gMakeHashPassSharable,Make HashPass publicly sharable
Gui, Add, Button, %k_Position% gCleanGeneratedContent,CleanGeneratedContent
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogies,Zlogies
Gui, Add, Button, %k_Position% gZlogiesListView,ZlogiesListView
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogiesPoeBlizzard,ZlogiesPoeBlizzard
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogiesMega,ZlogiesMega

Gui_AddPicture("xm w120 h20 x20 yp+25", "FF 57 33") ; background
Gui, Add, Text, xm w120 x20 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, CryptographicFunctions
Gui, Add, Button, %k_Position% gcallSHA256,callSHA256
Gui, Add, Button, %k_Position% gcallhashMD5implementation1,callhashMD5implementation1
Gui, Add, Button, %k_Position% gcallhashMD5implementation2,callhashMD5implementation2
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gOneTimePasswordGeneration,OneTimePasswordGeneration
Gui_AddPicture("x20 w120 h20 yp+25", "FF 57 33") ; background
Gui, Add, Text, x20 w120 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, CryptoAPI-CNG
Gui, Add, Button, %k_Position% gbcrypt.hash,bcrypt.hash
Gui, Add, Button, %k_Position% gbcrypt.hmac,bcrypt.hmac
Gui, Add, Button, %k_Position% gbcrypt.pbkdf2,bcrypt.pbkdf2

Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25, PMCtools2
Gui, Add, Button, %k_Position% gFocusPMC,FocusPMC
Gui, Add, Button, %k_Position% gOnlyFocusPMC,OnlyFocusPMC
Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25, PMCtoolsGames
Gui, Add, Button, %k_Position% gClosePMC,ClosePMC
Gui, Add, Button, %k_Position% gRunPMC,RunPMC
Gui, Add, Button, %k_Position% gCtrlF1nGames, F1- start/stop
Gui, Add, Button, %k_Position% gCtrlF2nGames, F2 - play
Gui, Add, Button, %k_Position% gCtrlF4nGames, F4 - record new
Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25, PMCtools3
Gui, Add, Button, %k_Position% gClosePMC,ClosePMC
Gui, Add, Button, %k_Position% gRunPMC,RunPMC
Gui, Add, Button, %k_Position% gCtrlF1n, F1- start/stop
Gui, Add, Button, %k_Position% gCtrlF2n, F2 - play
Gui, Add, Button, %k_Position% gCtrlF4n, F4 - record new

Gui, Add, Groupbox, w550 h270 xm ,
Gui, Add, Text, xm cWhite gideaX  x20 yp+15 ,ideaX   |
Gui, Add, Text, %k_Position% cWhite gideaXpic,|   ideaXpic   |
Gui, Add, Text, %k_Position% cWhite gnewsZ,|   newsZ
Gui, Add, Text, xm cWhite gdesignX  x20 yp+15 ,designX   |
Gui, Add, Text, %k_Position% cWhite gdesignXnoPic,|   designXnoPic   |
Gui, Add, Text, %k_Position% cWhite gidXdeX,|   idXdeX
Gui, Add, Text, xm cWhite ggaX  x20 yp+15 ,gaX   |
Gui, Add, Text, %k_Position% cWhite ggaXPic,|   gaXPic
Gui, Add, Text, xm cWhite ggladiatorX  x20 yp+15,gladiatorX   |
Gui, Add, Text, %k_Position% cWhite gdeglX,|   designX gladiatorX
Gui, Add, Text, xm cRed gpfrombY x20 yp+15,pfrombY   |
Gui, Add, Text, %k_Position% cRed gpfrombYvideo,|   pfrombYvideo
Gui, Add, Text, xm cWhite gYhs x20 yp+15 ,Yhs
Gui, Add, Text, xm cWhite gXyidA x20 yp+15 ,XyidA   |
Gui, Add, Text, %k_Position% cWhite gappZ,|   appZ
Gui, Add, Text, xm cWhite gXymo x20 yp+15 ,Xymo   |
Gui, Add, Text, %k_Position% cWhite gmovies,|   movies
Gui, Add, Text, xm cWhite goldmX x20 yp+15,oldmX
Gui, Add, Text, xm cGreen grss x20 yp+15,rss
Gui, Add, Text, xm cGreen gnameX x20 yp+15,nameX   |
Gui, Add, Text, %k_Position% cGreen grngX,|   rngX
Gui, Add, Text, xm cGreen gpythonbot x20 yp+15,pythonbot

Gui, Add, Groupbox, w640 h270 yp-180 xp+550,
Gui, Font, s10, Verdana
Gui, Add, Text, xm cBlue xp+10 yp+15,Logitech g402 configuration:
Gui, Font, s8, Tahoma
Gui, Add, Picture, xp yp+20  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button12.png
Gui, Add, Picture, xp+140 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button52.png
Gui, Add, Picture, xp+115 yp-5  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button42.png
Gui, Add, Picture, xp+120 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button32.png
Gui, Add, Picture, xp+120 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button221.png
Gui, Add, Text, cWhite xp-480 yp+45 ,
Gui, Add, Text, cWhite xp yp h80 w140 ,Numpad1 - Helpy
Gui, Add, Text, cWhite xp+120 yp h80 w140,Numpad3::Backspace`r{If in edge whole line is deleted}
Gui, Add, Text, cWhite xp+120 yp ,Numpad6::Enter
Gui, Add, Text, cWhite xp+120 yp ,Numpad5::Win+D
Gui, Add, Text, cWhite xp+120 yp ,Numpad8::Alt-Tab
Gui, Add, Text, cWhite xp-495 yp+45 ,
Gui, Font, s10, Verdana
Gui, Add, Text, xm cBlue xp yp,Hotkey combinations:                        || # - Win || ! - Alt || ^ - Control || + - Shift ||
Gui, Add, Text, cWhite xp yp+18 ,
Gui, Font, s6, Verdana
Gui, Add, Text, cWhite xp yp h80 w180 ,Numpad6 && WheelUp     ::^ && C
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Numpad6 && WheelDown ::^ && V
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && Numpad3    ::+ && Enter
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && Numpad6    ::NULL
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && WheelUp    ::UpdateScript
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && WheelDown::Open Helpy
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,! && capslock  ::Ditto Clipboard manager -
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,^ && capslock ::Ditto Clipboard manager +
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Hold Numpad3 to reset triggers
Gui, Add, Text, cWhite xp yp+12 h20 w180 ,Hold Numpad6 to press Ctrl+W

OnMessage(0x200, "Help")
Gui, Color, 000000, FFFFFF
xpos := xpos
ypos := ypos
Gui, Show, x35 y35 w1280 h700, Helpy
MouseMove, 35, 340
WinWaitNotActive, ahk_id %current_ID%
previous_ID := current_ID
GroupAdd, MyGui, % "ahk_id " . WinExist()
OnMessage(0x114, "OnScroll") ; WM_HSCROLL
Gui, +LastFound
WinSet, Redraw ; 0x800000 is WS_BORDER.
return

StartLinuxHelpy:
MsgBox, "ggg"
return