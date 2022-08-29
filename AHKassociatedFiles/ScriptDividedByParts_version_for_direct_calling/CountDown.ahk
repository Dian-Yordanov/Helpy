
;|CountDown||SEARCHINDICATOR|
;    _____                  _   _____                             _     _
;   / ____|                | | |  __ \                           | |   | |
;  | |     ___  _   _ _ __ | |_| |  | | _____      ___ __    __ _| |__ | | __
;  | |    / _ \| | | | '_ \| __| |  | |/ _ \ \ /\ / / '_ \  / _` | '_ \| |/ /
;  | |___| (_) | |_| | | | | |_| |__| | (_) \ V  V /| | | || (_| | | | |   <
;   \_____\___/ \__,_|_| |_|\__|_____/ \___/ \_/\_/ |_| |_(_)__,_|_| |_|_|\_\


CountDown:
; Example: A moving progress bar overlayed on a background image.
Gui, 6:Destroy
; Gui, 6:Color, White
; Gui, 6:Font, s22, Verdana

Opt1 := [0, "Red"]
Opt2 := [0, "Green"]

Gui, 6:Add, Button, xm gEnableTransperency,+Transperency
Gui, 6:Add, Button, %k_Position% gDisableTransperency,-Transperency
Gui, 6:Add, Text,xm w50,hh:
Gui, 6:Add, Text,%k_Position% w50,mm:
Gui, 6:Add, Text,%k_Position% w50,ss
Gui, 6:Add, Edit, xm vhhProgress w50,0
Gui, 6:Add, Edit, %k_Position% vmmProgress w50,0
Gui, 6:Add, Edit, %k_Position% vssProgress w50,0
Gui, 6:Add, Button, xm hwndPlus1ToHHButton w45,+1hh
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% hwndPlus1ToMMButton w45,+1mm
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% hwndPlus1ToSSButton w45,+1ss
Gui, 6:Add, Button, xm hwndMinus1ToHHButton w45,-1hh
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% hwndMinus1ToMMButton w45,-1mm
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% hwndMinus1ToSSButton w45,-1ss
Gui, 6:Add, Button, xm gButtonStartTheBarMoving yp+50 w45, Start
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% gPauseTheBar w45, Pause
Gui, 6:Add, Text, %k_Position% Right,
Gui, 6:Add, Button, %k_Position% gContinueTheBar w45, Resume
Gui, 6:Add, Progress, xm CB008000 vMyProgress1 w150
Gui, 6:Add, Text, vMyText1 w170  ; wp means "use width of previous".

ImageButton.Create(Plus1ToHHButton, Opt2)
Plus1ToHHfuncCall := Func("Plus1ToHH").Bind("arg")
GuiControl, +g, % Plus1ToHHButton, % Plus1ToHHfuncCall
Plus1ToHH(arg){
GuiControlGet, hhProgress
hhProgress:=hhProgress+1
GuiControl,, hhProgress, %hhProgress%
}
ImageButton.Create(Plus1ToMMButton, Opt2)
Plus1ToMMfuncCall := Func("Plus1ToMM").Bind("arg")
GuiControl, +g, % Plus1ToMMButton, % Plus1ToMMfuncCall
Plus1ToMM(arg){
GuiControlGet, mmProgress
mmProgress:=mmProgress+1
GuiControl,, mmProgress, %mmProgress%
}
ImageButton.Create(Plus1ToSSButton, Opt2)
Plus1ToSSfuncCall := Func("Plus1ToSS").Bind("arg")
GuiControl, +g, % Plus1ToSSButton, % Plus1ToSSfuncCall
Plus1ToSS(arg){
GuiControlGet, ssProgress
ssProgress:=ssProgress+1
GuiControl,, ssProgress, %ssProgress%
}
ImageButton.Create(Minus1ToHHButton, Opt1)
Minus1ToHHfuncCall := Func("Minus1ToHH").Bind("arg")
GuiControl, +g, % Minus1ToHHButton, % Minus1ToHHfuncCall
Minus1ToHH(arg){
GuiControlGet, hhProgress
if (hhProgress>1)
{
hhProgress:=hhProgress-1
}
GuiControl,, hhProgress, %hhProgress%
}
ImageButton.Create(Minus1ToMMButton, Opt1)
Minus1ToMMfuncCall := Func("Minus1ToMM").Bind("arg")
GuiControl, +g, % Minus1ToMMButton, % Minus1ToMMfuncCall
Minus1ToMM(arg){
GuiControlGet, mmProgress
if (mmProgress>1)
{
mmProgress:=mmProgress-1
}
GuiControl,, mmProgress, %mmProgress%
}
ImageButton.Create(Minus1ToSSButton, Opt1)
Minus1ToSSfuncCall := Func("Minus1ToSS").Bind("arg")
GuiControl, +g, % Minus1ToSSButton, % Minus1ToSSfuncCall
Minus1ToSS(arg){
GuiControlGet, ssProgress
if (ssProgress>1)
{
ssProgress:=ssProgress-1
}
GuiControl,, ssProgress, %ssProgress%
}


; Gui, 6:Font, s18 cRed Bold, Verdana
Gui, 6:Color, FFFFFF
wdth := A_ScreenWidth - 450, hght := A_ScreenHeight - 450
Gui, 6:Show, X%wdth% Y%hght%, CountDown
; Gui, Color, FFFFFF
; WinSet, TransColor, FFFFFF
; Gui, 1:  -Caption +E0x80000 +LastFound +OwnDialogs +Owner +AlwaysOnTop
; Show the window
WinGet, currentWindow, ID, CountDown
WinSet, ExStyle, TransColor, ahk_id %currentWindow%
; WinSet, ExStyle, FFFFFF, 6:TransColor
; Gui +LastFound +AlwaysOnTop +ToolWindow
WinGet, currentWindow, ID, CountDown
WinSet, AlwaysOnTop, On, ahk_id %currentWindow%
; WinSet, TransColor, FFFFFF, ahk_id %currentWindow%
; WinGet, active_id, ID, Transparent
; WinSet, ExStyle, +0x80020,ahk_id %currentWindow%
; WinSet, TransColor, EEAA99
return

PauseTheBar:
; If (pauseloop = 1)
; {
; pauseloop = 0
; }
If (pauseloop = 0)
{
pauseloop = 1
}
; b=0
; q::
; Loop
; {
; 	If (b = 1)
; 	{
; 		b=0
; 		break
; 	}
; 	; Click, right,
; 	Mousemove, 0, 110, 5, Rel
; 	; click, left
; 	Mousemove,   350, -473, 5, rel
; 	; click, left
; 	Mousemove,  -350,  363, 5, rel
; }
; return

; Esc::b := !b
return

; ContinueTheBar:

; return

ButtonStartTheBarMoving:
;C:\Users\Fallar\Desktop\*.*
; MsgBox, %A_WinDir%
GuiControlGet, hhProgress
GuiControlGet, mmProgress
GuiControlGet, ssProgress
if (hhProgress = "")
hhProgress=0
if (mmProgress = "")
mmProgress=0
if (ssProgress = "")
ssProgress=0
intIndex := (3600*hhProgress) + (60*mmProgress) + (ssProgress)
; MsgBox, %intIndex%
while intIndex>0
{
    If (pauseloop = 1)
	{
		pauseloop=0
        intIndex:=intIndex

        FileDelete,  %FileLocation2%
        FileAppend, %intIndex%, %FileLocation2%
        FileRead, OutputVar,  %FileLocation2%
        ; MsgBox, %OutputVar%

        GuiControl,, MyProgress1, %intIndex%
        GuiControl,, MyText1, Paused ||| %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%

		break
	}
    If (pauseloop = 0)
	{
		; pauseloop=0
        ; intIndex:=intIndex
		; break

        hhMod := Mod(intIndex, 3600)
        varForRoundinghh := % intIndex / 3600
        word_arrayhh := StrSplit(varForRoundinghh, ".")
        Varword_arrayhh := % word_arrayhh[1]
        mmMod := Mod(hhMod, 60)
        varForRoundingmm := % hhMod / 60
        word_arraymm := StrSplit(varForRoundingmm, ".")
        Varword_arraymm := % word_arraymm[1]
        GuiControl,, MyProgress1, %intIndex%
        GuiControl,, MyText1, %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
        Sleep 1000
        intIndex--

        if (intIndex = 0)
        {
        GuiControl,, MyText1, Bar finished.
        }
	}
}
return

ContinueTheBar:
;C:\Users\Fallar\Desktop\*.*
; MsgBox, %A_WinDir%
; GuiControlGet, hhProgress
; GuiControlGet, mmProgress
; GuiControlGet, ssProgress
; if (hhProgress = "")
; hhProgress=0
; if (mmProgress = "")
; mmProgress=0
; if (ssProgress = "")
; ssProgress=0
; intIndex := (3600*hhProgress) + (60*mmProgress) + (ssProgress)
; MsgBox, %intIndex%

FileRead, OutputVar,  %FileLocation2%

intIndex = %OutputVar%
; Msgbox, %intIndex%
while intIndex>0
{
    If (pauseloop = 1)
	{
		pauseloop=0
        intIndex:=intIndex

        FileDelete,  %FileLocation2%
        FileAppend, %intIndex%, %FileLocation2%

        ; MsgBox, %OutputVar%

        GuiControl,, MyProgress1, %intIndex%
        GuiControl,, MyText1, Paused ||| %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
		break
	}
    If (pauseloop = 0)
	{
		; pauseloop=0
        ; intIndex:=intIndex
		; break

        hhMod := Mod(intIndex, 3600)
        varForRoundinghh := % intIndex / 3600
        word_arrayhh := StrSplit(varForRoundinghh, ".")
        Varword_arrayhh := % word_arrayhh[1]
        mmMod := Mod(hhMod, 60)
        varForRoundingmm := % hhMod / 60
        word_arraymm := StrSplit(varForRoundingmm, ".")
        Varword_arraymm := % word_arraymm[1]
        GuiControl,, MyProgress1, %intIndex%
        GuiControl,, MyText1, %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
        Sleep 1000
        intIndex--

        if (intIndex = 0)
        {
        GuiControl,, MyText1, Bar finished.
        }
	}
}
return

EnableTransperency:
WinGet, currentWindow, ID, CountDown
WinSet, TransColor, FFFFFF, ahk_id %currentWindow%
return

DisableTransperency:
WinGet, currentWindow, ID, CountDown
WinSet, TransColor, Off, ahk_id %currentWindow%
return

RunMasterPassword:
Run, %A_ScriptDir%\AHKlibs\Security\masterpassword-gui.jar
return

RunCliMasterPassword:
commands=
(join&
echo off
cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
ConsoleMasterPassword -u "user" -s "masterpasswordapp.com" -t long -c 1 -p "1234"
)
runwait, %comspec% /c %commands%

; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\

FileRead, OutputVar, %FileLocation4%\WriteText.txt
Msgbox, %OutputVar%
FileDelete,  %FileLocation4%\WriteText.txt


; SendInput, "user"

; commands=
; (join&
; echo off
;   user
; pause
; )

; ; if FileExist("StringBank.txt")
; ; {
; runwait, %comspec% /c %commands%
; }

return

FileLock:
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
FileLocation3 = %A_ScriptDir%\AHKassociatedFiles\resources\HashPass.txt
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

FileUnlock:
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
FileLocation3 = %A_ScriptDir%\AHKassociatedFiles\resources\HashPass.txt
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

; lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionCoreFileLock, directoryForFileLock)
; {
; SplitPath, directoryForFileLock, nameOfFileForFileLock
; nameOfFileForFileLockArray := StrSplit(nameOfFileForFileLock, ".")
; nameOfFileForFileLockArrayNoExtension := nameOfFileForFileLockArray[1]

; directoryForFileLockArray := StrSplit(directoryForFileLock, ".")
; directoryForFileLockArrayNoExtension := directoryForFileLockArray[1]

; ; MsgBox, %stringToHashAndUseForEncryptionCoreFileLock%
; ; MsgBox, %directoryForFileLock% - %nameOfFileForFileLock% - %nameOfFileForFileLockArrayNoExtension%

; commands=
;     (join&
;     %A_ScriptDir%\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLock%
;     7z u -mhe=on -p%stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLockArrayNoExtension%.7z %directoryForFileLock%.aes
;     del %directoryForFileLock%.aes
;     del %directoryForFileLock%
;     )

; ; if FileExist("%directoryForFileLock%")
; ; {
;     runwait, %comspec% /c %commands%
; ; }
; Reload
; return
; }

Soundy:
WinActivate ahk_id %previous_ID%
SoundPlay, %A_WinDir%\Media\ding.wav
SoundPlay *-1  ; Simple beep
SoundPlay, %A_ScriptDir%\246520__copyc4t__guitar-slide-up.wav
return
SpreedThatArticle:
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {Lalt down}
sleep, 1
SendInput {b}
sleep, 1
SendInput {Lalt up}
sleep, 1
SendInput {ctrl up}
sleep, 500
SendInput {Lalt down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lalt up}
return

testtest:
WinActivate ahk_id %previous_ID%
;http://www.google.bg/imgres?imgurl=&imgrefurl=http%3A%2F%2Fwww.sanctuarymedia.com%2Fedtechexpert%2Fjust-say-no-to-ipads-for-education-part-5-theres-not-an-app-for-that%2Fbitmap-vs-;vector%2F&h=0&w=0&tbnid=TucfmYUNRuKTkM&zoom=1&tbnh=206&tbnw=244&docid=IXT8sJLZuUD3XM&tbm=isch&ei=l2wXVPK9BoLvaoDWgcAM&ved=0CAoQsCUoAg
ImageSearch, FoundX, FoundY, 0,0, 1000, 1000, C:\Users\%A_UserName%\Documents\AHKHelpy\bitmap-vs-vector.png
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight,  C:\Users\%A_UserName%\Documents\AHKHelpy\bitmap-vs-vector.png
if ErrorLevel = 2
    MsgBox Could not conduct the search.
else if ErrorLevel = 1
    MsgBox Icon could not be found on the screen.
else
    MsgBox The icon was found at %FoundX%x%FoundY%.
return
SaveATicket:
WinActivate ahk_id %previous_ID%
RepeatCountSAT = 21
sleep, 1
Loop %RepeatCountSAT% {
    SendInput {tab}
sleep, 10
}
SendInput {space}
SendInput {NumpadDown}
SendInput {enter}
//SendInput {tab}
//SendInput {tab}
SendInput {tab}
SendInput {enter}
return
#e::
Gosub, SaveToRainlander
return
SaveToRainlanderFromHelpy:
WinActivate ahk_id %previous_ID%
Gosub, SaveToRainlander
sleep, 300
WinClose ahk_class AutoHotkeyGUI
return
SaveToRainlander:
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
SendInput {Lctrl down}
sleep, 1
SendInput {Space}
sleep, 1
SendInput {Lctrl up}
sleep, 100
SendInput {Lctrl down}
sleep, 1
SendInput {a}
sleep, 1
SendInput {Lctrl up}
sleep, 100
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {Space}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {enter}
sleep, 1
SendInput Ynot
sleep, 1
SendInput {enter}
sleep, 1
SendInput Ynot
sleep, 100
SendInput {Lctrl down}
sleep, 1
SendInput {t}
sleep, 1
SendInput {Lctrl up}
sleep, 2000
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {tab}
SendInput {enter}
sleep, 1000
SendInput {Lctrl down}
sleep, 1
SendInput {Space}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {enter}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {enter}
return
SavePicture(tag)
{
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {e}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 1000
SendInput {t}
sleep, 1
SendInput %tag%
sleep, 500
SendInput {enter}
sleep, 50
SendInput {tab}
sleep, 50
SendInput {tab}
sleep, 50
SendInput {tab}
sleep, 50
SendInput {enter}
sleep, 2000
}
AddToXyengine:
WinActivate ahk_id %previous_ID%
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1
appendMethodToFile()
return

ChangeRainlanderSizeStartingAt500:
FileRead, OutputVarRainlander, C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
screenSize2 := A_ScreenHeight - 140
StringReplace,NewText,OutputVarRainlander,Todolist_height=500,Todolist_height=%screenSize2%, All
FileDelete,C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
FileAppend, %NewText%,C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
return
appendMethodToFile()
{
fileread, text_list, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
RegExMatch(text_list, "([^\n\r]*)$", oVar)                       ; stores first line in oVar
;msgbox % oVar
text_list := RegExReplace(text_list, "([^\n\r]*)$", "", "", 1)      ; deletes the first line and stores what's left in the var text_list
filedelete, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
fileappend, %text_list%, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java                         ;recreates the file
fileappend, %Clipboard%`n, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
fileappend, }`n, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
}
; 0LOG:
; return
Date:
WinActivate ahk_id %previous_ID%
MsgBox % getDate()
return
; getDate(){
; FormatTime, TimeString,,H:mm:ss d/M/yyyy
; return TimeString
; }
DateOfScript:
RemoveFirstLine()1
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
Source = ";
StringMid, newline1, Source, 2, 2
newline2 = %CurrentDateTime%
newline = %newline1% %newline2%
f := A_ScriptDir "\AutoHotkey.ahk"
a := FilePrePend(f, newline)
;if !(a)
;   MsgBox, % "Input file : >>" f "<< not accessible!"
;else
;   run, %f%
return
; RemoveFirstLine(){
; textLocation = A_ScriptDir "\AutoHotkey.ahk"
;     TF_RemoveLines(textLocation, 1) ;remove first line
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
SearchForAStringInFiles:
FileSelectFolder,Directory,%A_WorkingDir%,, Select Version Folder
FileAppend, % list_files(Directory), %A_ScriptDir%\AHKassociatedFiles\resources\Directory.txt
list_files(Directory)
{
InputBox, SearchText
    files =
    files2 =
    Loop %Directory%\*.*
    {
        files = %files%`n%A_LoopFileName%
        files1 = %A_LoopFileName%
        ;files2 = %files2%`n%A_LoopFileName%
        files3 := TF_Find(files1, "","", SearchText, 0, 1)
        if files3 != 0
        {
            Msgbox %files1%
            Msgbox %files3%
        }
    }
    return files
}
IfWinActive, ahk_class AutoHotkeyGUI
{WinClose ;
}
IfWinActive, ahk_class AutoHotkeyGUI
{WinClose ;
}
Return
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
EditBoxToShowRandomString:
randomString = % RandomGenerationFunction()
Gui, 4:Add, Edit, v%randomString% h200 w400, %randomString%
Gui, 4:Add, Button,gRefresh,Refresh
GuiControl, 4:Font, MyEdit
Gui, 4:Show, x270 y110 h420 w400, Helpy4
return
Refresh:
Gui, 4:Destroy
;GuiControl, 4:Destroy, %randomString%
Gosub, EditBoxToShowRandomString
return
; StopScrips:
; ; Run "C:\Program Files (x86)\Overwatch\Overwatch Launcher.exe"
; Process, Close, ShutDownLogger.ahk
; Process, Close, StartUpLogger.ahk
; ; Process, Close, %A_ScriptDir%\AHKassociatedFiles\resources\tf.ahk
; Process, Close, AutoHotkey.ahk
; sleep, 10
; Process, Close, AutoHotkey.exe
; Process, Close, AutoHotkey.exe
; Process, Close, AutoHotkey.exe
; Process, Close, AutoHotkey.exe
; Process, Close, AutoHotkey.exe
; Process, Close, AutoHotkey.exe
; return
StartScrips:
#NoEnv
SendMode Input
SetWorkingDir C:\Users\%A_UserName%\Documents
Run C:\Users\%A_UserName%\Documents\AHKHelpy\AutoHotkey.ahk
; Run %A_ScriptDir%\AHKassociatedFiles\resources\ShutDownLogger.ahk
; Run %A_ScriptDir%\AHKassociatedFiles\resources\StartUpLogger.ahk
; Run %A_ScriptDir%\AHKassociatedFiles\resources\tf.ahk
return
RestartScripts:
; Gosub, StopScrips
Gosub, StartScrips
return
; GenerateStartScrips:
; ;MsgBox % GetCommonPath("DESKTOP")
; desktopPath := GetCommonPath("DESKTOP")
; FileDelete, %desktopPath%\startOtherScripts.ahk
; ;MsgBox % desktopPath
; appendLine1 := "#NoEnv`n"
; appendLine2 := "SendMode Input`n"
; appendLine3 := "SetWorkingDir %A_ScriptDir%\AHKassociatedFiles\resources\Documents`n"
; appendLine4 := "Run %A_ScriptDir%\AHKassociatedFiles\resources\AutoHotkey.ahk`n"
; ;appendLine5 := "Run %A_ScriptDir%\AHKassociatedFiles\resources\PersistentProgramLogger.ahk`n"
; appendLine6 := "Run %A_ScriptDir%\AHKassociatedFiles\resources\ShutDownLogger.ahk`n"
; appendLine7 := "Run %A_ScriptDir%\AHKassociatedFiles\resources\StartUpLogger.ahk`n"
; ; appendLine8 := "Run C:\Users\%A_UserName%\Documents\AHKHelpy\tf.ahk`n"
; ;MsgBox %appendLine1%%appendLine2%%appendLine3%%appendLine4%%appendLine5%%appendLine6%%appendLine7%%appendLine8%
; FileAppend, %appendLine1%%appendLine2%%appendLine3%%appendLine4%%appendLine6%%appendLine7%, %desktopPath%\startOtherScripts.ahk
; return
CtrlA:
WinActivate ahk_id %previous_ID%
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {a}
sleep, 1
SendInput {Lctrl up}
sleep, 300
WinClose ahk_class AutoHotkeyGUI
return
CtrlF:
WinActivate ahk_id %previous_ID%
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {f}
sleep, 1
SendInput {Lctrl up}
sleep, 300
WinClose ahk_class AutoHotkeyGUI
return

CtrlW:
; This is not a real solution to the problem and is placed as a temporary solution. 
; WinActivate ahk_class Chrome_WidgetWin_1
; WinWaitActive, ahk_exe chrome.exe, , 2
; WinActivate ahk_id %previous_ID%


Msgbox, %previous_ID%


; Script := "Cyber_Helpy.ahk" ; <<<<<<<<<< Enter script name here to get it's PID (ex.: My_Script.ahk)

; WinGet, PID, PID, % "i)^.+\\" CleanEx_AHKDaemon_Version(Script) " - AutoHotkey v.+$"
; Process, Close, % PID

; WinClose ahk_class AutoHotkeyGUI
; WinWaitActive, ahk_exe chrome.exe, , 2

; Msgbox, "ggg"

; sleep, 1200
; SendInput {Lctrl down}
; sleep, 1
; SendInput {w}
; sleep, 1
; SendInput {Lctrl up}
; sleep, 300
; WinClose ahk_class AutoHotkeyGUI
return


HasVal(haystack, needle) {
    if !(IsObject(haystack)) || (haystack.Length() = 0)
        return 0
    for index, value in haystack
        if (value = needle)
            return index
    return 0
}








