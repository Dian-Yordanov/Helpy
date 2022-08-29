; Gui, Font, s8, Verdana
Gui, Font, s11, Segoe UI

; Gui, Add, Text, x1 w1200 0x10  ;Horizontal Line > Etched Gray
; Gui, Add, Groupbox, w1200 h350 xm ,
; Gui, Add, Edit, xm w60 x20 yp+15, Clipy2
; Gui_AddPicture("x20 w170 h30 yp+25", "00 00 00") ; background
; Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v11CommonlyUsedFunctionsText 0x200, Clipy2: 
; ; Gui, Add, Edit, xm w60 ReadOnly x20 yp+15, Clipy2
; ; Gui, Add, Edit, xm w60 ReadOnly x20 yp+25, Clipy2
; Gui, Add, Button, %k_Position% gClipy2 hwndHBT1CommonlyUsedFunctions v0CommonlyUsedFunctions,Clipy2
; Gui, Add, Button, %k_Position% gClipy2DeleteContent hwndHBT2CommonlyUsedFunctions v1CommonlyUsedFunctions,Clipy2DeleteContent
; Gui, Add, Button, %k_Position% gClipy2Initialize hwndHBT3CommonlyUsedFunctions v2CommonlyUsedFunctions,Clipy2Initialize
; Gui, Add, Button, %k_Position% gOpenClipy2Directory hwndHBT4CommonlyUsedFunctions v3CommonlyUsedFunctions,OpenClipy2Directory

; Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
; Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v10CommonlyUsedFunctionsText 0x200, Clipy1: 
; ; Gui, Add, Edit, xm w60 x20 yp+35, Clipy1
; ; Gui, Add, Edit, xm w60 ReadOnly x20 yp+25, Clipy1
; Gui, Add, Button, %k_Position% gSavePaste hwndHBT5CommonlyUsedFunctions v4CommonlyUsedFunctions,SavePaste
; Gui, Add, Button, %k_Position% gOpenClipy hwndHBT6CommonlyUsedFunctions v5CommonlyUsedFunctions,OpenClipy
; Gui, Add, Button, %k_Position% gOpenWebClipy hwndHBT7CommonlyUsedFunctions v6CommonlyUsedFunctions,OpenWebClipy

Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v9CommonlyUsedFunctionsText 0x200, Sound:
; Gui, Add, Edit, xm w60 x20 yp+25, Sound
; Gui, Add, Edit, xm w60 ReadOnly x20 yp+25, Sound
Gui, Add, Button, %k_Position% gNumpadUpHelpy hwndHBT8CommonlyUsedFunctions v7CommonlyUsedFunctions,100-100
Gui, Add, Button, %k_Position% gNumpadPgUpHelpy hwndHBT9CommonlyUsedFunctions v8CommonlyUsedFunctions,100-0
Gui, Add, Button, %k_Position% gMuteHelpy hwndHBT10CommonlyUsedFunctions v9CommonlyUsedFunctions,0-0
; Gui_AddPicture("x20 w120 h20 yp+25", "66 66 33") ; background
; Gui, Add, Text, x20 w120 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, Helpylander
; Gui, Add, Button, %k_Position% g1stButtonOfHelpylander,1stButtonOfHelpylander
; Gui, Add, Button, %k_Position% g4rdButtonOfHelpylander,4rdButtonOfHelpylander
; Gui, Add, Edit, xm w120 ReadOnly x20 yp+25, Helpylander

global 0CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35", "33 33 33", "0CommonlyUsedFunctionsBackground") ; background
Gui, Add, Text, x20 w160 yp hp cFFFFFF BackgroundTrans Center v8CommonlyUsedFunctionsText 0x200, ZlogyV2 - E/D: 
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% glockZlogy hwndHBT11CommonlyUsedFunctions v10CommonlyUsedFunctions,lockZlogy
Gui, Add, Button, %k_Position% gUnlockZlogy hwndHBT12CommonlyUsedFunctions v11CommonlyUsedFunctions,UnlockStringBank
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gFileLock hwndHBT13CommonlyUsedFunctions v12CommonlyUsedFunctions,File locking
Gui, Add, Button, %k_Position% gFileUnlock hwndHBT14CommonlyUsedFunctions v13CommonlyUsedFunctions,File unlocking
; Gui, Add, Text, %k_Position% cWhite,
; Gui, Add, Button, %k_Position% gLaunchBitwarden,Launch Bitwarden

global 1CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35", "33 33 33", "1CommonlyUsedFunctionsBackground") ; background
Gui, Add, Text, x20 w160 yp hp cFFFFFF BackgroundTrans Center v7CommonlyUsedFunctionsText 0x200, Zlogy manipulation:
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gMNZnoButton hwndHBT15CommonlyUsedFunctions v14CommonlyUsedFunctions,MNZ no button
Gui, Add, Button, %k_Position% gRemoveSpecificZlogy hwndHBT16CommonlyUsedFunctions v15CommonlyUsedFunctions,Remove specific Zlogy
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
Gui, Add, Button, %k_Position% gMakeNewZlogy hwndHBT17CommonlyUsedFunctions v16CommonlyUsedFunctions,MakeNewZlogy(MNZ)
Gui, Add, Button, %k_Position% gMakeNewZlogyFromUrl hwndHBT18CommonlyUsedFunctions v17CommonlyUsedFunctions,MNZ from Url

global 2CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35", "33 33 33", "2CommonlyUsedFunctionsBackground") ; background
Gui, Add, Text, x20 w160 yp hp cFFFFFF BackgroundTrans Center v6CommonlyUsedFunctionsText 0x200, ZlogyV2 - functions:
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gMakeHashPassSharable hwndHBT19CommonlyUsedFunctions v18CommonlyUsedFunctions,Make HashPass publicly sharable
Gui, Add, Button, %k_Position% gCleanGeneratedContent hwndHBT20CommonlyUsedFunctions v19CommonlyUsedFunctions,CleanGeneratedContent
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogies hwndHBT21CommonlyUsedFunctions v20CommonlyUsedFunctions,Zlogies
Gui, Add, Button, %k_Position% gZlogiesListView hwndHBT22CommonlyUsedFunctions v21CommonlyUsedFunctions,ZlogiesListView
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogiesPoeBlizzard hwndHBT23CommonlyUsedFunctions v22CommonlyUsedFunctions,ZlogiesPoeBlizzard
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gZlogiesMega hwndHBT24CommonlyUsedFunctions v23CommonlyUsedFunctions,ZlogiesMega

global 3CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35", "33 33 33", "3CommonlyUsedFunctionsBackground") ; background
Gui, Add, Text, x20 w160 yp hp cFFFFFF BackgroundTrans Center v5CommonlyUsedFunctionsText 0x200, CryptographicFunctions:
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gcallSHA256 hwndHBT25CommonlyUsedFunctions v47CommonlyUsedFunctions,callSHA256
Gui, Add, Button, %k_Position% gcallhashMD5implementation1 hwndHBT26CommonlyUsedFunctions v24CommonlyUsedFunctions,callhashMD5implementation1
Gui, Add, Button, %k_Position% gcallhashMD5implementation2 hwndHBT27CommonlyUsedFunctions v25CommonlyUsedFunctions,callhashMD5implementation2
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gOneTimePasswordGeneration hwndHBT28CommonlyUsedFunctions v26CommonlyUsedFunctions,OneTimePasswordGeneration

global 4CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35", "33 33 33", "4CommonlyUsedFunctionsBackground") ; background
Gui, Add, Text, x20 w160 yp hp cFFFFFF BackgroundTrans Center v4CommonlyUsedFunctionsText 0x200, CryptoAPI-CNG:
Gui, Add, Text, %k_Position% cWhite,
Gui, Add, Button, %k_Position% gbcrypt.hash hwndHBT29CommonlyUsedFunctions v27CommonlyUsedFunctions,bcrypt.hash
Gui, Add, Button, %k_Position% gbcrypt.hmac hwndHBT30CommonlyUsedFunctions v28CommonlyUsedFunctions,bcrypt.hmac
Gui, Add, Button, %k_Position% gbcrypt.pbkdf2 hwndHBT31CommonlyUsedFunctions v29CommonlyUsedFunctions,bcrypt.pbkdf2

; Gui, Add, Edit, xm w120 ReadOnly x20 yp+25, CryptographicFunctions
; Gui, Add, Edit, xm w120 ReadOnly x20 yp+25, ScriptRunningControl
; Gui, Add, Button, %k_Position% gStopScrips,StopScrips
; Gui, Add, Button, %k_Position% gGenerteStartScrips,GenerateStartScrips
; Gui, Add, Edit, xm w70 ReadOnly x20 yp+25, PMCtools1
; Gui, Add, Button, %k_Position% gRestartScripts,RestartScripts
; Gui, Add, Button, %k_Position% gRunPMC,RunPMC
; Gui, Add, Button, %k_Position% gCtrlF1, Ctrl+F1(start/stop recording)
; Gui, Add, Button, %k_Position% gCtrlF2, Ctrl+F2(play)
; Gui, Add, Button, %k_Position% gCtrlF3, Ctrl+F3(new)
; Gui, Add, Button, %k_Position% gCtrlF4, Ctrl+F4

Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v3CommonlyUsedFunctionsText 0x200, PMCtools2:
; Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25, PMCtools2
; Gui, Add, Button, %k_Position% gCtrlR, Ctrl+R
Gui, Add, Button, %k_Position% gFocusPMC hwndHBT32CommonlyUsedFunctions v30CommonlyUsedFunctions,FocusPMC
Gui, Add, Button, %k_Position% gOnlyFocusPMC hwndHBT33CommonlyUsedFunctions v31CommonlyUsedFunctions,OnlyFocusPMC

Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v2CommonlyUsedFunctionsText 0x200, PMCtoolsGames:
; Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25 , PMCtoolsGames
Gui, Add, Button, %k_Position% gClosePMC hwndHBT34CommonlyUsedFunctions v32CommonlyUsedFunctions,ClosePMC
Gui, Add, Button, %k_Position% gRunPMC hwndHBT35CommonlyUsedFunctions v33CommonlyUsedFunctions,RunPMC
Gui, Add, Button, %k_Position% gCtrlF1nGames hwndHBT36CommonlyUsedFunctions v34CommonlyUsedFunctions, F1- start/stop
Gui, Add, Button, %k_Position% gCtrlF2nGames hwndHBT37CommonlyUsedFunctions v35CommonlyUsedFunctions, F2 - play
Gui, Add, Button, %k_Position% gCtrlF4nGames hwndHBT38CommonlyUsedFunctions v36CommonlyUsedFunctions, F4 - record new

Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v1CommonlyUsedFunctionsText 0x200, PMCtools3:
; Gui, Add, Edit, xm w120 ReadOnly1 x20 yp+25, PMCtools3
Gui, Add, Button, %k_Position% gClosePMC hwndHBT39CommonlyUsedFunctions v37CommonlyUsedFunctions,ClosePMC
Gui, Add, Button, %k_Position% gRunPMC hwndHBT40CommonlyUsedFunctions v38CommonlyUsedFunctions,RunPMC
Gui, Add, Button, %k_Position% gCtrlF1n hwndHBT41CommonlyUsedFunctions v39CommonlyUsedFunctions, F1- start/stop
Gui, Add, Button, %k_Position% gCtrlF2n hwndHBT42CommonlyUsedFunctions v40CommonlyUsedFunctions, F2 - play
; Gui, Add, Button, %k_Position% gCtrlF3n, F3 - stop
Gui, Add, Button, %k_Position% gCtrlF4n hwndHBT43CommonlyUsedFunctions v41CommonlyUsedFunctions, F4 - record new


Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center v0CommonlyUsedFunctionsText 0x200,Mouserecorder:
; Mouserecorder `r `n  - PMC alternative`nThe hotkeys are set by the user:

; Gui, Add, Edit, xm w170 ReadOnly1 x20 yp+35, Mouserecorder - PMC alternative`nThe hotkeys are set by the user:
; Gui, Add, Edit, xm w200 ReadOnly1 xp+200 yp, 

Gui, Add, Button, %k_Position% gMouserecorderGetMouserecorder hwndHBT44CommonlyUsedFunctions v42CommonlyUsedFunctions, Get mouserecorder
Gui, Add, Button, %k_Position% gMouserecorderCtrlStart hwndHBT45CommonlyUsedFunctions v43CommonlyUsedFunctions, 1 - START
Gui, Add, Button, %k_Position% gMouserecorderCtrlStop hwndHBT46CommonlyUsedFunctions v44CommonlyUsedFunctions, escape - STOP
Gui, Add, Button, %k_Position% gMouserecorderCtrlPlay hwndHBT47CommonlyUsedFunctions v45CommonlyUsedFunctions, 2 - PLAY
Gui, Add, Button, %k_Position% gMouserecorderCtrlStartNew hwndHBT48CommonlyUsedFunctions v46CommonlyUsedFunctions, 4 - START NEW

; Gui, Add, Button, %k_Position% gTestRunTest,TestRunTest
; Gui, Add, CheckBox, %k_Position% gCheck vVar1, One ;gLabels are launched when you change the control
; Gui, Add, CheckBox, %k_Position% gCheck vVar2, Two

Gui_AddPicture("x20 w170 h30 yp+35", "00 00 00") ; background
Gui, Add, Text, x20 w170 yp hp cFFFFFF BackgroundTrans Center 0x200,ToggleScripts:

Gui, Add, Button, %k_Position% gActivateMouseClicker hwndHBT49CommonlyUsedFunctions v48CommonlyUsedFunctions, ActivateMouseClicker
Gui, Add, Button, %k_Position% gFastClipboardWMouseWheelSpace_41 hwndHBT50CommonlyUsedFunctions v49CommonlyUsedFunctions, FastClipboardWMouseWheelSpace
Gui, Add, Button, %k_Position% gFastClipboardWMouseWheelCustom_42 hwndHBT51CommonlyUsedFunctions v50CommonlyUsedFunctions, FastClipboardWMouseWheelCustom
Gui, Add, Button, %k_Position% gFastClipboardWMouseWheelRibbonInterface_43 hwndHBT52CommonlyUsedFunctions v51CommonlyUsedFunctions, FastClipboardWMouseWheelRibbonInterface


;   _                       _    __             ____        _   _                  
;  | |                     | |  / _|           |  _ \      | | | |                 
;  | |____      ___ __   __| | | |_ ___  _ __  | |_) |_   _| |_| |_ ___  _ __  ___ 
;  | '_ \ \ /\ / / '_ \ / _` | |  _/ _ \| '__| |  _ <| | | | __| __/ _ \| '_ \/ __|
;  | | | \ V  V /| | | | (_| | | || (_) | |    | |_) | |_| | |_| || (_) | | | \__ \
;  |_| |_|\_/\_/ |_| |_|\__,_| |_| \___/|_|    |____/ \__,_|\__|\__\___/|_| |_|___/
                                                                                 
Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
ImageButton.Create(HBT1CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT2CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT3CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT4CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT5CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT6CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT7CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT8CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT9CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT10CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT11CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT12CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT13CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT14CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT15CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT16CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT17CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT18CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT19CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT20CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT21CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT22CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT23CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT24CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT25CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT26CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT27CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT28CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT29CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT30CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT31CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT32CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT33CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT34CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT35CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT36CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT37CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT38CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT39CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT40CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT41CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT42CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT43CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT44CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT45CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT46CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT47CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT48CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT49CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT50CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT51CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)
ImageButton.Create(HBT52CommonlyUsedFunctions, Opt1, Opt2, , , Opt5)

; HideButtonsForOptimisation()



HideButtonsForOptimisation(){
GuiControl, Hide, 0CommonlyUsedFunctions
GuiControl, Hide, 1CommonlyUsedFunctions
GuiControl, Hide, 2CommonlyUsedFunctions
GuiControl, Hide, 3CommonlyUsedFunctions
GuiControl, Hide, 4CommonlyUsedFunctions

GuiControl, Hide, 6CommonlyUsedFunctions
GuiControl, Hide, 7CommonlyUsedFunctions
GuiControl, Hide, 8CommonlyUsedFunctions
GuiControl, Hide, 9CommonlyUsedFunctions
GuiControl, Hide, 10CommonlyUsedFunctions

GuiControl, Hide, 12CommonlyUsedFunctions
GuiControl, Hide, 13CommonlyUsedFunctions
GuiControl, Hide, 14CommonlyUsedFunctions
GuiControl, Hide, 15CommonlyUsedFunctions
GuiControl, Hide, 16CommonlyUsedFunctions

GuiControl, Hide, 18CommonlyUsedFunctions
GuiControl, Hide, 19CommonlyUsedFunctions
GuiControl, Hide, 20CommonlyUsedFunctions
GuiControl, Hide, 21CommonlyUsedFunctions
GuiControl, Hide, 22CommonlyUsedFunctions

GuiControl, Hide, 24CommonlyUsedFunctions
GuiControl, Hide, 25CommonlyUsedFunctions
GuiControl, Hide, 26CommonlyUsedFunctions
GuiControl, Hide, 27CommonlyUsedFunctions
GuiControl, Hide, 28CommonlyUsedFunctions

GuiControl, Hide, 30CommonlyUsedFunctions
GuiControl, Hide, 31CommonlyUsedFunctions
GuiControl, Hide, 32CommonlyUsedFunctions
GuiControl, Hide, 33CommonlyUsedFunctions
GuiControl, Hide, 34CommonlyUsedFunctions

GuiControl, Hide, 36CommonlyUsedFunctions
GuiControl, Hide, 37CommonlyUsedFunctions
GuiControl, Hide, 38CommonlyUsedFunctions
GuiControl, Hide, 39CommonlyUsedFunctions
GuiControl, Hide, 40CommonlyUsedFunctions

GuiControl, Hide, 45CommonlyUsedFunctions
GuiControl, Hide, 41CommonlyUsedFunctions
GuiControl, Hide, 42CommonlyUsedFunctions
GuiControl, Hide, 43CommonlyUsedFunctions
GuiControl, Hide, 44CommonlyUsedFunctions

GuiControl, Hide, 46CommonlyUsedFunctions
GuiControl, Hide, 47CommonlyUsedFunctions
GuiControl, Hide, 11CommonlyUsedFunctions
GuiControl, Hide, 5CommonlyUsedFunctions
GuiControl, Hide, 17CommonlyUsedFunctions

GuiControl, Hide, 23CommonlyUsedFunctions
GuiControl, Hide, 29CommonlyUsedFunctions
GuiControl, Hide, 35CommonlyUsedFunctions

GuiControl, Hide, 0CommonlyUsedFunctionsText
GuiControl, Hide, 1CommonlyUsedFunctionsText
GuiControl, Hide, 2CommonlyUsedFunctionsText
GuiControl, Hide, 3CommonlyUsedFunctionsText
GuiControl, Hide, 4CommonlyUsedFunctionsText
GuiControl, Hide, 5CommonlyUsedFunctionsText
GuiControl, Hide, 6CommonlyUsedFunctionsText
GuiControl, Hide, 7CommonlyUsedFunctionsText
GuiControl, Hide, 8CommonlyUsedFunctionsText
GuiControl, Hide, 9CommonlyUsedFunctionsText
GuiControl, Hide, 10CommonlyUsedFunctionsText

GuiControl, Hide, 0CommonlyUsedFunctionsBackground
GuiControl, Hide, 1CommonlyUsedFunctionsBackground
GuiControl, Hide, 2CommonlyUsedFunctionsBackground
GuiControl, Hide, 3CommonlyUsedFunctionsBackground
GuiControl, Hide, 4CommonlyUsedFunctionsBackground
}

ShowButtonsForOptimisation(){
GuiControl, Show, 0CommonlyUsedFunctions
GuiControl, Show, 1CommonlyUsedFunctions
GuiControl, Show, 2CommonlyUsedFunctions
GuiControl, Show, 3CommonlyUsedFunctions
GuiControl, Show, 4CommonlyUsedFunctions

GuiControl, Show, 6CommonlyUsedFunctions
GuiControl, Show, 7CommonlyUsedFunctions
GuiControl, Show, 8CommonlyUsedFunctions
GuiControl, Show, 9CommonlyUsedFunctions
GuiControl, Show, 10CommonlyUsedFunctions

GuiControl, Show, 12CommonlyUsedFunctions
GuiControl, Show, 13CommonlyUsedFunctions
GuiControl, Show, 14CommonlyUsedFunctions
GuiControl, Show, 15CommonlyUsedFunctions
GuiControl, Show, 16CommonlyUsedFunctions

GuiControl, Show, 18CommonlyUsedFunctions
GuiControl, Show, 19CommonlyUsedFunctions
GuiControl, Show, 20CommonlyUsedFunctions
GuiControl, Show, 21CommonlyUsedFunctions
GuiControl, Show, 22CommonlyUsedFunctions

GuiControl, Show, 24CommonlyUsedFunctions
GuiControl, Show, 25CommonlyUsedFunctions
GuiControl, Show, 26CommonlyUsedFunctions
GuiControl, Show, 27CommonlyUsedFunctions
GuiControl, Show, 28CommonlyUsedFunctions

GuiControl, Show, 30CommonlyUsedFunctions
GuiControl, Show, 31CommonlyUsedFunctions
GuiControl, Show, 32CommonlyUsedFunctions
GuiControl, Show, 33CommonlyUsedFunctions
GuiControl, Show, 34CommonlyUsedFunctions

GuiControl, Show, 36CommonlyUsedFunctions
GuiControl, Show, 37CommonlyUsedFunctions
GuiControl, Show, 38CommonlyUsedFunctions
GuiControl, Show, 39CommonlyUsedFunctions
GuiControl, Show, 40CommonlyUsedFunctions

GuiControl, Show, 45CommonlyUsedFunctions
GuiControl, Show, 41CommonlyUsedFunctions
GuiControl, Show, 42CommonlyUsedFunctions
GuiControl, Show, 43CommonlyUsedFunctions
GuiControl, Show, 44CommonlyUsedFunctions

GuiControl, Show, 46CommonlyUsedFunctions
GuiControl, Show, 47CommonlyUsedFunctions
GuiControl, Show, 48CommonlyUsedFunctions
GuiControl, Show, 11CommonlyUsedFunctions
GuiControl, Show, 5CommonlyUsedFunctions
GuiControl, Show, 17CommonlyUsedFunctions

GuiControl, Show, 23CommonlyUsedFunctions
GuiControl, Show, 29CommonlyUsedFunctions
GuiControl, Show, 35CommonlyUsedFunctions

GuiControl, Show, 0CommonlyUsedFunctionsText
GuiControl, Show, 1CommonlyUsedFunctionsText
GuiControl, Show, 2CommonlyUsedFunctionsText
GuiControl, Show, 3CommonlyUsedFunctionsText
GuiControl, Show, 4CommonlyUsedFunctionsText
GuiControl, Show, 5CommonlyUsedFunctionsText
GuiControl, Show, 6CommonlyUsedFunctionsText
GuiControl, Show, 7CommonlyUsedFunctionsText
GuiControl, Show, 8CommonlyUsedFunctionsText
GuiControl, Show, 9CommonlyUsedFunctionsText
GuiControl, Show, 10CommonlyUsedFunctionsText

GuiControl, Show, 0CommonlyUsedFunctionsBackground
GuiControl, Show, 1CommonlyUsedFunctionsBackground
GuiControl, Show, 2CommonlyUsedFunctionsBackground
GuiControl, Show, 3CommonlyUsedFunctionsBackground
GuiControl, Show, 4CommonlyUsedFunctionsBackground
}


;-------------------------------------------------------------------------------
Gui_AddPicture(Options, Colour) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, Add, Picture, v%VariableName% %Options%, %FileName%
    FileDelete, %FileName%
}