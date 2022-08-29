
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

    k_Position = x+0 0

    OnMessage(0x0202,"6_WM_LBUTTONDOWN")
    OnMessage(0x0083,"6_WM_NCCALCSIZE")

    Opt1 := [0, "Red"]
    Opt2 := [0, "Green"]

    global pauseloop := 0
    global finished_var := 0
    global interrupt_var := 0
    global beep_active := 0
    global beep_interrupt := 1
    global intIndex := 0

    Gui, 6:Add, Button, xm gEnableTransperency,+Transperency
    Gui, 6:Add, Button, %k_Position% gDisableTransperency,-Transperency
    Gui, 6:Add, Text,xm w60,Hours:
    Gui, 6:Add, Text,%k_Position% w60,Minutes:
    Gui, 6:Add, Text,%k_Position% w60,Seconds:
    Gui, 6:Add, Edit, xm vhhProgress w50,0
    Gui, 6:Add, Edit, xp+58 vmmProgress w50,0
    Gui, 6:Add, Edit, xp+58 vssProgress w50,0
    Gui, 6:Add, Button, xm hwndPlus1ToHHButton w50,+1hh
    Gui, 6:Add, Text, %k_Position% Right,
    Gui, 6:Add, Button, %k_Position% hwndPlus1ToMMButton w50,+1mm
    Gui, 6:Add, Text, %k_Position% Right,
    Gui, 6:Add, Button, %k_Position% hwndPlus1ToSSButton w50,+1ss
    Gui, 6:Add, Button, xm hwndMinus1ToHHButton w50,-1hh
    Gui, 6:Add, Text, %k_Position% Right,
    Gui, 6:Add, Button, %k_Position% hwndMinus1ToMMButton w50,-1mm
    Gui, 6:Add, Text, %k_Position% Right,
    Gui, 6:Add, Button, %k_Position% hwndMinus1ToSSButton w50,-1ss

    Gui, 6:Add, Checkbox, xm vSound_when_finished, Sound on finish ?               
    Gui, 6:Add, Button, xp+115 vSound_Turn_Off gSound_Turn_Off w55 Hidden, Turn off
    
    Gui, 6:Add, Button, xm vButtonStartTheBarMoving_Start gButtonStartTheBarMoving_Start yp+30 w85, Start
    Gui, 6:Add, Button, vButtonStartTheBarMoving_Start_2 gButtonStartTheBarMoving_Start_2 yp w85 Hidden, Start another
    Gui, 6:Add, Button, vButtonStartTheBarMoving_Pause gButtonStartTheBarMoving_Pause Hidden yp w85, Pause
    Gui, 6:Add, Button, vButtonStartTheBarMoving_Continue gButtonStartTheBarMoving_Continue Hidden yp w85, Continue

    Gui, 6:Add, Button, %k_Position% gRestart_CountDown w85, Restart

    ; Gui, 6:Add, Button, vButtonStartTheBarMoving_New gButtonStartTheBarMoving_New Hidden yp w45, New
    ; Gui, 6:Add, Text, %k_Position% Right,
    ; Gui, 6:Add, Button, %k_Position% gPauseTheBar w45, Pause
    ; Gui, 6:Add, Text, %k_Position% Right,
    ; Gui, 6:Add, Button, %k_Position% gContinueTheBar w45, Resume

    Gui, 6:Add, Progress, xm CB008000 vMyProgress1 w170
    Gui, 6:Add, Text, vMyText1 w170  ; wp means "use width of previous".

    ImageButton_CountDownVariant.Create(Plus1ToHHButton, Opt2)
    Plus1ToHHfuncCall := Func("Plus1ToHH").Bind("arg")
    GuiControl, +g, % Plus1ToHHButton, % Plus1ToHHfuncCall

    Plus1ToHH(arg){
        GuiControlGet, hhProgress
        hhProgress:=hhProgress+1
        GuiControl,, hhProgress, %hhProgress%
    }
    ImageButton_CountDownVariant.Create(Plus1ToMMButton, Opt2)
    Plus1ToMMfuncCall := Func("Plus1ToMM").Bind("arg")
    GuiControl, +g, % Plus1ToMMButton, % Plus1ToMMfuncCall

    Plus1ToMM(arg){
        GuiControlGet, mmProgress
        mmProgress:=mmProgress+1
        GuiControl,, mmProgress, %mmProgress%
    }

    ImageButton_CountDownVariant.Create(Plus1ToSSButton, Opt2)
    Plus1ToSSfuncCall := Func("Plus1ToSS").Bind("arg")
    GuiControl, +g, % Plus1ToSSButton, % Plus1ToSSfuncCall

    Plus1ToSS(arg){
        GuiControlGet, ssProgress
        ssProgress:=ssProgress+1
        GuiControl,, ssProgress, %ssProgress%
    }
    
    ImageButton_CountDownVariant.Create(Minus1ToHHButton, Opt1)
    Minus1ToHHfuncCall := Func("Minus1ToHH").Bind("arg")
    GuiControl, +g, % Minus1ToHHButton, % Minus1ToHHfuncCall

    Minus1ToHH(arg){
        GuiControlGet, hhProgress
        if (hhProgress>=1)
        {
            hhProgress:=hhProgress-1
        }
        GuiControl,, hhProgress, %hhProgress%
    }

    ImageButton_CountDownVariant.Create(Minus1ToMMButton, Opt1)
    Minus1ToMMfuncCall := Func("Minus1ToMM").Bind("arg")
    GuiControl, +g, % Minus1ToMMButton, % Minus1ToMMfuncCall

    Minus1ToMM(arg){
        GuiControlGet, mmProgress
        if (mmProgress>=1)
        {
        mmProgress:=mmProgress-1
        }
        GuiControl,, mmProgress, %mmProgress%
    }
    ImageButton_CountDownVariant.Create(Minus1ToSSButton, Opt1)
    Minus1ToSSfuncCall := Func("Minus1ToSS").Bind("arg")
    GuiControl, +g, % Minus1ToSSButton, % Minus1ToSSfuncCall

    Minus1ToSS(arg){
        GuiControlGet, ssProgress
        if (ssProgress>=1)
        {
        ssProgress:=ssProgress-1
        }
        GuiControl,, ssProgress, %ssProgress%
    }   


    Gui, 6:Color, FFFFFF
    wdth := A_ScreenWidth - 450, hght := A_ScreenHeight - 450
    Gui, 6:Show, X%wdth% Y%hght%, CountDown

    WinGet, currentWindow, ID, CountDown
    WinSet, ExStyle, TransColor, ahk_id %currentWindow%
    WinGet, currentWindow, ID, CountDown
    WinSet, AlwaysOnTop, On, ahk_id %currentWindow%
return

6_WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
; Use default code and do not overwrite

; return (A_Gui ? 0 : "")
}

6_WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
; Use default code and do not overwrite

; return (A_Gui ? 1 : "")
}

6_WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
; Use default code and do not overwrite

; Global X, Y, gX, gY
; WinGetPos, gX, gY, gW, gH
; X := lParam << 48 >> 48, Y := lParam << 32 >> 48
; HL := X < gX + 6, HR := X >= (gX + gW) - 6
; HT := Y < gY + 6, HB := Y >= (gY + gH) - 6
; IfEqual, HT, 1, return "0x" (HL ? "D" : HR ? "E" : "C")
; IfEqual, HB, 1, return "0x" (HL ? "10" : HR ? "11" : "F")
; IfEqual
; , HL, 1, return 0xA
; IfEqual, HR, 1, return 0xB
}

Sound_Turn_Off:
beep_active = 1
return

ButtonStartTheBarMoving_Start_2:
beep_active = 1

GuiControl, Hide, ButtonStartTheBarMoving_Start_2

Gosub, Restart_CountDown
return

PauseTheBar:

    ; FileLocation2 := A_ScriptDir . "\AHKassociatedFiles\resources\CountdownTest.txt"

    ; FileRead, OutputVar,  %FileLocation2%
    ; ; MsgBox, %OutputVar%

    ; intIndex = %OutputVar%


    ; If (pauseloop = 1)
    ; {
    ; pauseloop = 0
    ; }
    if(intIndex != 0){
        If (pauseloop = 0)
        {
        pauseloop = 1
        }
    }

return

; ContinueTheBar:

; return

Restart_CountDown:
    ; FileLocation2 := A_ScriptDir . "\AHKassociatedFiles\resources\CountdownTest.txt"
    finished_var := 0
    beep_active = 1
    
    pauseloop := 0
    beep_interrupt = 1
    interrupt_var = 1

    GuiControl, Hide, Sound_Turn_Off

    GuiControl, Show, ButtonStartTheBarMoving_Start
    GuiControl, Hide, ButtonStartTheBarMoving_Pause
    GuiControl, Hide, ButtonStartTheBarMoving_Continue

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
    ; intIndex := intIndex * 60

    GuiControl,, MyText1, 

    ; GuiControl,+Range0-3, MyProgress1, 
    ; GuiControl,, MyProgress1, -1
    GuiControl,, MyProgress1, 0
    ; GuiControl, +Range0-%intIndex%, MyProgress1
return


ButtonStartTheBarMoving_Start:
    ;C:\Users\Fallar\Desktop\*.*
    ; MsgBox, %A_WinDir%

    ; MsgBox, "fffffffff"

    GuiControlGet, hhProgress
    GuiControlGet, mmProgress
    GuiControlGet, ssProgress

    if (hhProgress = "")
    hhProgress=0
    if (mmProgress = "")
    mmProgress=0
    if (ssProgress = "")
    ssProgress=0

    ; if(beep_active = 1)
    ; {
    ;     beep_active = 1
    ; }
    ; Else
    ; {
    ;     beep_active = 0
    ; }

    ; if(interrupt_var = 1)
    ; {
    ;     interrupt_var = 1
    ; }
    ; Else
    ; {
    ;     interrupt_var = 0
    ; }

    ; if(finished_var = 1)
    ; {
    ;     MsgBox, "fffffffff"
    ;     beep_interrupt = 0
    ;     beep_active=1
    ; }


    if(hhProgress != 0 || mmProgress != 0 || ssProgress != 0)
    {

        GuiControl, Hide, ButtonStartTheBarMoving_Start
        GuiControl, Show, ButtonStartTheBarMoving_Pause
        GuiControl, Hide, ButtonStartTheBarMoving_Continue

        ; finished_var := 0
        beep_active = 1
        
        pauseloop := 0
        beep_interrupt = 0

        ; GuiControl,, MyText1, 

        ; GuiControl,+Range0-3, MyProgress1, 
        ; GuiControl,, MyProgress1, -1
        ; GuiControl,, MyProgress1, 0
        ; GuiControl, +Range0-%intIndex%, MyProgress1

        ; interrupt_var = 1

        GuiControl, Hide, Sound_Turn_Off

        
        interrupt_var = 0
        ButtonStartTheBarMovingFunction()
    }
    
return

ButtonStartTheBarMoving_Continue:
    ;C:\Users\Fallar\Desktop\*.*
    ; MsgBox, %A_WinDir%

    ;  MsgBox, "fffffffff"

    GuiControlGet, hhProgress
    GuiControlGet, mmProgress
    GuiControlGet, ssProgress

    if (hhProgress = "")
    hhProgress=0
    if (mmProgress = "")
    mmProgress=0
    if (ssProgress = "")
    ssProgress=0

    if(beep_active = 1)
    {
        beep_active = 1
    }
    Else
    {
        beep_active = 0
    }

    if(hhProgress != 0 || mmProgress != 0 || ssProgress != 0)
    {

        GuiControl, Hide, ButtonStartTheBarMoving_Start
        GuiControl, Hide, ButtonStartTheBarMoving_Continue
        GuiControl, Show, ButtonStartTheBarMoving_Pause

        beep_interrupt = 0

        pauseloop = 0

        interrupt_var = 0
        Gosub, ContinueTheBar
    }
     
return


ButtonStartTheBarMoving_Pause:
    ;C:\Users\Fallar\Desktop\*.*
    ; MsgBox, %A_WinDir%

    ;  MsgBox, "fffffffff"

    GuiControlGet, hhProgress
    GuiControlGet, mmProgress
    GuiControlGet, ssProgress

    if (hhProgress = "")
    hhProgress=0
    if (mmProgress = "")
    mmProgress=0
    if (ssProgress = "")
    ssProgress=0

    if(beep_active = 1)
    {
        beep_active = 1
    }
    Else
    {
        beep_active = 0
    }
    

    if(hhProgress != 0 || mmProgress != 0 || ssProgress != 0)
    {

        GuiControl, Hide, ButtonStartTheBarMoving_Start
        GuiControl, Hide, ButtonStartTheBarMoving_Pause
        GuiControl, Show, ButtonStartTheBarMoving_Continue

        beep_interrupt = 1

        interrupt_var = 1

        pauseloop = 1

        ; Msgbox, "cff"
    }
        
return


ButtonStartTheBarMovingFunction(){

    GuiControlGet, hhProgress
    GuiControlGet, mmProgress
    GuiControlGet, ssProgress

    if (hhProgress = "")
    hhProgress=0
    if (mmProgress = "")
    mmProgress=0
    if (ssProgress = "")
    ssProgress=0

    if(hhProgress != 0 || mmProgress != 0 || ssProgress != 0)
    {

        ; FileLocation2 := A_ScriptDir . "\AHKassociatedFiles\resources\CountdownTest.txt"
        finished_var := 0
        beep_active = 0

        GuiControl, Hide, Sound_Turn_Off

        intIndex := (3600*hhProgress) + (60*mmProgress) + (ssProgress)
        intIndex := intIndex * 60

        ; GuiControl,+Range0-3, MyProgress1, 
        GuiControl,, MyProgress1, -1
        GuiControl,, MyProgress1, 0
        GuiControl, +Range0-%intIndex%, MyProgress1

        

        ; beep_interrupt := 1
        ; Range-10--5

        while intIndex>0 and interrupt_var = 0
        {
            If (pauseloop = 1)
            {
                ; pauseloop=0
                ; intIndex:=intIndex

                ; FileDelete,  %FileLocation2%
                ; FileAppend, %intIndex%, %FileLocation2%
                ; FileRead, OutputVar,  %FileLocation2%
                ; MsgBox, %OutputVar%

                ; GuiControl,, MyProgress1, intIndex
                GuiControl,, MyProgress1, %intIndex%
                ; GuiControl,, MyProgress1, +1
                ; Progress, %A_Index%,,
                GuiControl,, MyText1, Paused ||| %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
                ; intIndex--
                ; break
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

                ; MsgBox, %OutputVar%

                ; GuiControl,, MyProgress1, %intIndex%
                GuiControl,, MyProgress1, +1
                ; Progress, %A_Index%,,
                GuiControl,, MyText1, %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
                Sleep_var := 1000 / 60
                Sleep %Sleep_var% 
                intIndex--

                ; if (intIndex = 0)
                ; {
                ;     GuiControl,, MyText1, Finished.
                ;     finished_var := 1
                ;     GuiControl,, MyProgress1, -1
                ;     GuiControl,, MyProgress1, 0

                ;     GuiControl, Hide, ButtonStartTheBarMoving_Continue
                ;     GuiControl, Show, ButtonStartTheBarMoving_Start
                ;     GuiControl, Hide, ButtonStartTheBarMoving_Stop

                ;     beep_interrupt = 0

                ;     GuiControlGet, Sound_when_finished, 6:
                ;     if(Sound_when_finished == 1){

                ;         GuiControl, Show, Sound_Turn_Off
                ;         while beep_active=0 and beep_interrupt = 0
                ;         {
                ;             SoundBeep
                ;         }
                ;     }
                ; }
            }
        }
        if (intIndex = 0)
        {
            GuiControl,, MyText1, Finished.
            finished_var := 1
            GuiControl,, MyProgress1, -1
            GuiControl,, MyProgress1, 0

            GuiControl, Hide, ButtonStartTheBarMoving_Continue
            GuiControl, Show, ButtonStartTheBarMoving_Start_2
            GuiControl, Hide, ButtonStartTheBarMoving_Start
            GuiControl, Hide, ButtonStartTheBarMoving_Stop

            beep_active = 0

            GuiControlGet, Sound_when_finished, 6:
            if(Sound_when_finished == 1){

                GuiControl, Show, Sound_Turn_Off
                while beep_active=0 and beep_interrupt = 0
                {
                    SoundBeep
                }
            }
        }
    }
}

ContinueTheBar:
    GuiControlGet, hhProgress
    GuiControlGet, mmProgress
    GuiControlGet, ssProgress

    if (hhProgress = "")
    hhProgress=0
    if (mmProgress = "")
    mmProgress=0
    if (ssProgress = "")
    ssProgress=0

    if(hhProgress != 0 || mmProgress != 0 || ssProgress != 0)
    {

        ; FileLocation2 := A_ScriptDir . "\AHKassociatedFiles\resources\CountdownTest.txt"
        finished_var := 0
        beep_active = 0

        GuiControl, Hide, Sound_Turn_Off

        ; intIndex := (3600*hhProgress) + (60*mmProgress) + (ssProgress)
        ; intIndex := intIndex * 60

        ; ; GuiControl,+Range0-3, MyProgress1, 
        ; GuiControl,, MyProgress1, -1
        ; GuiControl,, MyProgress1, 0
        ; GuiControl, +Range0-%intIndex%, MyProgress1

        

        ; beep_interrupt := 1
        ; Range-10--5

        while intIndex>0 and interrupt_var = 0
        {
            If (pauseloop = 1)
            {
                ; pauseloop=0
                ; intIndex:=intIndex

                ; FileDelete,  %FileLocation2%
                ; FileAppend, %intIndex%, %FileLocation2%
                ; FileRead, OutputVar,  %FileLocation2%
                ; MsgBox, %OutputVar%

                ; GuiControl,, MyProgress1, intIndex
                GuiControl,, MyProgress1, %intIndex%
                ; GuiControl,, MyProgress1, +1
                ; Progress, %A_Index%,,
                GuiControl,, MyText1, Paused ||| %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%

                beep_interrupt = 0
                intIndex--
                ; break
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

                ; MsgBox, %OutputVar%

                ; GuiControl,, MyProgress1, %intIndex%
                GuiControl,, MyProgress1, +1
                ; Progress, %A_Index%,,
                GuiControl,, MyText1, %Varword_arrayhh% : %Varword_arraymm% : %mmMod% ||| Total : %intIndex%
                Sleep_var := 1000 / 60
                Sleep %Sleep_var% 
                intIndex--

            }
        }
        if (intIndex = 0)
        {
            ; MsgBox, "ggg"
            GuiControl,, MyText1, Finished.
            finished_var := 1
            GuiControl,, MyProgress1, -1
            GuiControl,, MyProgress1, 0

            GuiControl, Hide, ButtonStartTheBarMoving_Continue
            GuiControl, Show, ButtonStartTheBarMoving_Start_2
            GuiControl, Hide, ButtonStartTheBarMoving_Start
            GuiControl, Hide, ButtonStartTheBarMoving_Stop

            beep_active = 0

            GuiControlGet, Sound_when_finished, 6:
            if(Sound_when_finished == 1){
                ;  MsgBox, % beep_active beep_interrupt

                GuiControl, Show, Sound_Turn_Off
                while beep_active=0 and beep_interrupt = 0
                {
                    SoundBeep
                }
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
































































;|ClassImageButton_CountDownVariant.ahk||SEARCHINDICATOR|
;
;   _____ _                 _____                            ____        _   _                     _     _
;  / ____| |               |_   _|                          |  _ \      | | | |                   | |   | |
; | |    | | __ _ ___ ___    | |  _ __ ___   __ _  __ _  ___| |_) |_   _| |_| |_ ___  _ __    __ _| |__ | | __
; | |    | |/ _` / __/ __|   | | | '_ ` _ \ / _` |/ _` |/ _ \  _ <| | | | __| __/ _ \| '_ \  / _` | '_ \| |/ /
; | |____| | (_| \__ \__ \  _| |_| | | | | | (_| | (_| |  __/ |_) | |_| | |_| || (_) | | | || (_| | | | |   <
;  \_____|_|\__,_|___/___/ |_____|_| |_| |_|\__,_|\__, |\___|____/ \__,_|\__|\__\___/|_| |_(_)__,_|_| |_|_|\_\
;                      ______                      __/ |
;                     |______|                    |___/
;
; ======================================================================================================================
; Namespace:         ImageButton_CountDownVariant
; Function:          Create images and assign them to pushbuttons.
; Tested with:       AHK 1.1.14.03 (A32/U32/U64)
; Tested on:         Win 7 (x64)
; Change history:    1.4.00.00/2014-06-07/just me - fixed bug for button caption = "0", "000", etc.
;                    1.3.00.00/2014-02-28/just me - added support for ARGB colors
;                    1.2.00.00/2014-02-23/just me - added borders
;                    1.1.00.00/2013-12-26/just me - added rounded and bicolored buttons
;                    1.0.00.00/2013-12-21/just me - initial release
; How to use:
;     1. Create a push button (e.g. "Gui, Add, Button, vMyButton hwndHwndButton, Caption") using the 'Hwnd' option
;        to get its HWND.
;     2. Call ImageButton_CountDownVariant.Create() passing two parameters:
;        HWND        -  Button's HWND.
;        Options*    -  variadic array containing up to 6 option arrays (see below).
;        ---------------------------------------------------------------------------------------------------------------
;        The index of each option object determines the corresponding button state on which the bitmap will be shown.
;        MSDN defines 6 states (http://msdn.microsoft.com/en-us/windows/bb775975):
;           PBS_NORMAL    = 1
;             PBS_HOT       = 2
;             PBS_PRESSED   = 3
;             PBS_DISABLED  = 4
;             PBS_DEFAULTED = 5
;             PBS_STYLUSHOT = 6 <- used only on tablet computers (that's false for Windows Vista and 7, see below)
;        If you don't want the button to be 'animated' on themed GUIs, just pass one option object with index 1.
;        On Windows Vista and 7 themed bottons are 'animated' using the images of states 5 and 6 after clicked.
;        ---------------------------------------------------------------------------------------------------------------
;        Each option array may contain the following values:
;           Index Value
;           1     Mode        mandatory:
;                             0  -  unicolored or bitmap
;                             1  -  vertical bicolored
;                             2  -  horizontal bicolored
;                             3  -  vertical gradient
;                             4  -  horizontal gradient
;                             5  -  vertical gradient using StartColor at both borders and TargetColor at the center
;                             6  -  horizontal gradient using StartColor at both borders and TargetColor at the center
;                             7  -  'raised' style
;           2     StartColor  mandatory for Option[1], higher indices will inherit the value of Option[1], if omitted:
;                             -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;                             -  Path of an image file or HBITMAP handle for mode 0.
;           3     TargetColor mandatory for Option[1] if Mode > 0, ignored if Mode = 0. Higher indcices will inherit
;                             the color of Option[1], if omitted:
;                             -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;           4     TextColor   optional, if omitted, the default text color will be used for Option[1], higher indices
;                             will inherit the color of Option[1]:
;                             -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;                                Default: 0xFF000000 (black)
;           5     Rounded     optional:
;                             -  Radius of the rounded corners in pixel; the letters 'H' and 'W' may be specified
;                                also to use the half of the button's height or width respectively.
;                                Default: 0 - not rounded
;           6     GuiColor    optional, needed for rounded buttons if you've changed the GUI background color:
;                             -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;                                Default: AHK default GUI background color
;           7     BorderColor optional, ignored for modes 0 (bitmap) and 7, color of the border:
;                             -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;           8     BorderWidth optional, ignored for modes 0 (bitmap) and 7, width of the border in pixels:
;                             -  Default: 1
;        ---------------------------------------------------------------------------------------------------------------
;        If the the button has a caption it will be drawn above the bitmap.
; Credits:           THX tic     for GDIP.AHK     : http://www.autohotkey.com/forum/post-198949.html
;                    THX tkoi    for ILBUTTON.AHK : http://www.autohotkey.com/forum/topic40468.html
; ======================================================================================================================
; This software is provided 'as-is', without any express or implied warranty.
; In no event will the authors be held liable for any damages arising from the use of this software.
; ======================================================================================================================
; ======================================================================================================================
; CLASS ImageButton_CountDownVariant()
; ======================================================================================================================
Class ImageButton_CountDownVariant {
   ; ===================================================================================================================
   ; PUBLIC PROPERTIES =================================================================================================
   ; ===================================================================================================================
   Static DefGuiColor  := ""        ; default GUI color                             (read/write)
   Static DefTxtColor := "Black"    ; default caption color                         (read/write)
   Static LastError := ""           ; will contain the last error message, if any   (readonly)
   ; ===================================================================================================================
   ; PRIVATE PROPERTIES ================================================================================================
   ; ===================================================================================================================
   Static BitMaps := []
   Static GDIPDll := 0
   Static GDIPToken := 0
   Static MaxOptions := 8
   ; HTML colors
   Static HTML := {BLACK: 0x000000, GRAY: 0x808080, SILVER: 0xC0C0C0, WHITE: 0xFFFFFF, MAROON: 0x800000
                 , PURPLE: 0x800080, FUCHSIA: 0xFF00FF, RED: 0xFF0000, GREEN: 0x008000, OLIVE: 0x808000
                 , YELLOW: 0xFFFF00, LIME: 0x00FF00, NAVY: 0x000080, TEAL: 0x008080, AQUA: 0x00FFFF, BLUE: 0x0000FF}
   ; Initialize
   Static ClassInit := ImageButton_CountDownVariant.InitClass()
   ; ===================================================================================================================
   ; PRIVATE METHODS ===================================================================================================
   ; ===================================================================================================================
   __New(P*) {
      Return False
   }
   ; ===================================================================================================================
   InitClass() {
      ; ----------------------------------------------------------------------------------------------------------------
      ; Get AHK's default GUI background color
      GuiColor := DllCall("User32.dll\GetSysColor", "Int", 15, "UInt") ; COLOR_3DFACE is used by AHK as default
      This.DefGuiColor := ((GuiColor >> 16) & 0xFF) | (GuiColor & 0x00FF00) | ((GuiColor & 0xFF) << 16)
      Return True
   }
   ; ===================================================================================================================
   GdiplusStartup() {
      This.GDIPDll := This.GDIPToken := 0
      If (This.GDIPDll := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll", "Ptr")) {
         VarSetCapacity(SI, 24, 0)
         Numput(1, SI, 0, "Int")
         If !DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", GDIPToken, "Ptr", &SI, "Ptr", 0)
            This.GDIPToken := GDIPToken
         Else
            This.GdiplusShutdown()
      }
      Return This.GDIPToken
   }
   ; ===================================================================================================================
   GdiplusShutdown() {
      If This.GDIPToken
         DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", This.GDIPToken)
      If This.GDIPDll
         DllCall("Kernel32.dll\FreeLibrary", "Ptr", This.GDIPDll)
      This.GDIPDll := This.GDIPToken := 0
   }
   ; ===================================================================================================================
   FreeBitmaps() {
      For I, HBITMAP In This.BitMaps
         DllCall("Gdi32.dll\DeleteObject", "Ptr", HBITMAP)
      This.BitMaps := []
   }
   ; ===================================================================================================================
   GetARGB(RGB) {
      ARGB := This.HTML.HasKey(RGB) ? This.HTML[RGB] : RGB
      Return (ARGB & 0xFF000000) = 0 ? 0xFF000000 | ARGB : ARGB
   }
   ; ===================================================================================================================
   PathAddRectangle(Path, X, Y, W, H) {
      Return DllCall("Gdiplus.dll\GdipAddPathRectangle", "Ptr", Path, "Float", X, "Float", Y, "Float", W, "Float", H)
   }
   ; ===================================================================================================================
   PathAddRoundedRect(Path, X1, Y1, X2, Y2, R) {
      D := (R * 2), X2 -= D, Y2 -= D
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y1, "Float", D, "Float", D, "Float", 180, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y1, "Float", D, "Float", D, "Float", 270, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X2, "Float", Y2, "Float", D, "Float", D, "Float", 0, "Float", 90)
      DllCall("Gdiplus.dll\GdipAddPathArc"
            , "Ptr", Path, "Float", X1, "Float", Y2, "Float", D, "Float", D, "Float", 90, "Float", 90)
      Return DllCall("Gdiplus.dll\GdipClosePathFigure", "Ptr", Path)
   }
   ; ===================================================================================================================
   SetRect(ByRef Rect, X1, Y1, X2, Y2) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X1, Rect, 0, "Int"), NumPut(Y1, Rect, 4, "Int")
      NumPut(X2, Rect, 8, "Int"), NumPut(Y2, Rect, 12, "Int")
      Return True
   }
   ; ===================================================================================================================
   SetRectF(ByRef Rect, X, Y, W, H) {
      VarSetCapacity(Rect, 16, 0)
      NumPut(X, Rect, 0, "Float"), NumPut(Y, Rect, 4, "Float")
      NumPut(W, Rect, 8, "Float"), NumPut(H, Rect, 12, "Float")
      Return True
   }
   ; ===================================================================================================================
   SetError(Msg) {
      This.FreeBitmaps()
      This.GdiplusShutdown()
      This.LastError := Msg
      Return False
   }
   ; ===================================================================================================================
   ; PUBLIC METHODS ====================================================================================================
   ; ===================================================================================================================
   Create(HWND, Options*) {
      ; Windows constants
      Static BCM_SETIMAGELIST := 0x1602
           , BS_CHECKBOX := 0x02, BS_RADIOBUTTON := 0x04, BS_GROUPBOX := 0x07, BS_AUTORADIOBUTTON := 0x09
           , BS_LEFT := 0x0100, BS_RIGHT := 0x0200, BS_CENTER := 0x0300, BS_TOP := 0x0400, BS_BOTTOM := 0x0800
           , BS_VCENTER := 0x0C00, BS_BITMAP := 0x0080
           , BUTTON_IMAGELIST_ALIGN_LEFT := 0, BUTTON_IMAGELIST_ALIGN_RIGHT := 1, BUTTON_IMAGELIST_ALIGN_CENTER := 4
           , ILC_COLOR32 := 0x20
           , OBJ_BITMAP := 7
           , RCBUTTONS := BS_CHECKBOX | BS_RADIOBUTTON | BS_AUTORADIOBUTTON
           , SA_LEFT := 0x00, SA_CENTER := 0x01, SA_RIGHT := 0x02
           , WM_GETFONT := 0x31
      ; ----------------------------------------------------------------------------------------------------------------
      This.LastError := ""
      ; ----------------------------------------------------------------------------------------------------------------
      ; Check HWND
      If !DllCall("User32.dll\IsWindow", "Ptr", HWND)
         Return This.SetError("Invalid parameter HWND!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Check Options
      If !(IsObject(Options)) || (Options.MinIndex() <> 1) || (Options.MaxIndex() > This.MaxOptions)
         Return This.SetError("Invalid parameter Options!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Get and check control's class and styles
      WinGetClass, BtnClass, ahk_id %HWND%
      ControlGet, BtnStyle, Style, , , ahk_id %HWND%
      If (BtnClass != "Button") || ((BtnStyle & 0xF ^ BS_GROUPBOX) = 0) || ((BtnStyle & RCBUTTONS) > 1)
         Return This.SetError("The control must be a pushbutton!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Load GdiPlus
      If !This.GdiplusStartup()
         Return This.SetError("GDIPlus could not be started!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Get the button's font
      GDIPFont := 0
      HFONT := DllCall("User32.dll\SendMessage", "Ptr", HWND, "UInt", WM_GETFONT, "Ptr", 0, "Ptr", 0, "Ptr")
      DC := DllCall("User32.dll\GetDC", "Ptr", HWND, "Ptr")
      DllCall("Gdi32.dll\SelectObject", "Ptr", DC, "Ptr", HFONT)
      DllCall("Gdiplus.dll\GdipCreateFontFromDC", "Ptr", DC, "PtrP", PFONT)
      DllCall("User32.dll\ReleaseDC", "Ptr", HWND, "Ptr", DC)
      If !(PFONT)
         Return This.SetError("Couldn't get button's font!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Get the button's rectangle
      VarSetCapacity(RECT, 16, 0)
      If !DllCall("User32.dll\GetWindowRect", "Ptr", HWND, "Ptr", &RECT)
         Return This.SetError("Couldn't get button's rectangle!")
      BtnW := NumGet(RECT,  8, "Int") - NumGet(RECT, 0, "Int")
      BtnH := NumGet(RECT, 12, "Int") - NumGet(RECT, 4, "Int")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Get the button's caption
      ControlGetText, BtnCaption, , ahk_id %HWND%
      If (ErrorLevel)
         Return This.SetError("Couldn't get button's caption!")
      ; ----------------------------------------------------------------------------------------------------------------
      ; Create the bitmap(s)
      This.BitMaps := []
      For Index, Option In Options {
         If !IsObject(Option)
            Continue
         BkgColor1 := BkgColor2 := TxtColor := Mode := Rounded := GuiColor := Image := ""
         ; Replace omitted options with the values of Options.1
         Loop, % This.MaxOptions {
            If (Option[A_Index] = "")
               Option[A_Index] := Options.1[A_Index]
         }
         ; -------------------------------------------------------------------------------------------------------------
         ; Check option values
         ; Mode
         Mode := SubStr(Option.1, 1 ,1)
         If !InStr("0123456789", Mode)
            Return This.SetError("Invalid value for Mode in Options[" . Index . "]!")
         ; StartColor & TargetColor
         If (Mode = 0)
         && (FileExist(Option.2) || (DllCall("Gdi32.dll\GetObjectType", "Ptr", Option.2, "UInt") = OBJ_BITMAP))
            Image := Option.2
         Else {
            If !(Option.2 + 0) && !This.HTML.HasKey(Option.2)
               Return This.SetError("Invalid value for StartColor in Options[" . Index . "]!")
            BkgColor1 := This.GetARGB(Option.2)
            If (Option.3 = "")
               Option.3 := Option.2
            If !(Option.3 + 0) && !This.HTML.HasKey(Option.3)
               Return This.SetError("Invalid value for TargetColor in Options[" . Index . "]!")
            BkgColor2 := This.GetARGB(Option.3)
         }
         ; TextColor
         If (Option.4 = "")
            Option.4 := This.DefTxtColor
         If !(Option.4 + 0) && !This.HTML.HasKey(Option.4)
            Return This.SetError("Invalid value for TxtColor in Options[" . Index . "]!")
         TxtColor := This.GetARGB(Option.4)
         ; Rounded
         Rounded := Option.5
         If (Rounded = "H")
            Rounded := BtnH * 0.5
         If (Rounded = "W")
            Rounded := BtnW * 0.5
         If !(Rounded + 0)
            Rounded := 0
         ; GuiColor
         If (Option.6 = "")
            Option.6 := This.DefGuiColor
         If !(Option.6 + 0) && !This.HTML.HasKey(Option.6)
            Return This.SetError("Invalid value for GuiColor in Options[" . Index . "]!")
         GuiColor := This.GetARGB(Option.6)
         ; BorderColor
         BorderColor := ""
         If (Option.7 <> "") {
            If !(Option.7 + 0) && !This.HTML.HasKey(Option.7)
               Return This.SetError("Invalid value for BorderColor in Options[" . Index . "]!")
            BorderColor := 0xFF000000 | This.GetARGB(Option.7) ; BorderColor must be always opaque
         }
         ; BorderWidth
         BorderWidth := Option.8 ? Option.8 : 1
         ; -------------------------------------------------------------------------------------------------------------
         ; Create a GDI+ bitmap
         DllCall("Gdiplus.dll\GdipCreateBitmapFromScan0", "Int", BtnW, "Int", BtnH, "Int", 0
               , "UInt", 0x26200A, "Ptr", 0, "PtrP", PBITMAP)
         ; Get the pointer to its graphics
         DllCall("Gdiplus.dll\GdipGetImageGraphicsContext", "Ptr", PBITMAP, "PtrP", PGRAPHICS)
         ; Quality settings
         DllCall("Gdiplus.dll\GdipSetSmoothingMode", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetInterpolationMode", "Ptr", PGRAPHICS, "Int", 7)
         DllCall("Gdiplus.dll\GdipSetCompositingQuality", "Ptr", PGRAPHICS, "UInt", 4)
         DllCall("Gdiplus.dll\GdipSetRenderingOrigin", "Ptr", PGRAPHICS, "Int", 0, "Int", 0)
         DllCall("Gdiplus.dll\GdipSetPixelOffsetMode", "Ptr", PGRAPHICS, "UInt", 4)
         ; Clear the background
         DllCall("Gdiplus.dll\GdipGraphicsClear", "Ptr", PGRAPHICS, "UInt", GuiColor)
         ; Create the image
         If (Image = "") { ; Create a BitMap based on the specified colors
            PathX := PathY := 0, PathW := BtnW, PathH := BtnH
            ; Create a GraphicsPath
            DllCall("Gdiplus.dll\GdipCreatePath", "UInt", 0, "PtrP", PPATH)
            If (Rounded < 1) ; the path is a rectangular rectangle
               This.PathAddRectangle(PPATH, PathX, PathY, PathW, PathH)
            Else ; the path is a rounded rectangle
               This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
            ; If BorderColor and BorderWidth are specified, 'draw' the border (not for Mode 7)
            If (BorderColor <> "") && (BorderWidth > 0) && (Mode <> 7) {
               ; Create a SolidBrush
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BorderColor, "PtrP", PBRUSH)
               ; Fill the path
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
               ; Free the brush
               DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
               ; Reset the path
               DllCall("Gdiplus.dll\GdipResetPath", "Ptr", PPATH)
               ; Add a new 'inner' path
               PathX := PathY := BorderWidth, PathW -= BorderWidth, PathH -= BorderWidth, Rounded -= BorderWidth
               If (Rounded < 1) ; the path is a rectangular rectangle
                  This.PathAddRectangle(PPATH, PathX, PathY, PathW - PathX, PathH - PathY)
               Else ; the path is a rounded rectangle
                  This.PathAddRoundedRect(PPATH, PathX, PathY, PathW, PathH, Rounded)
               ; If a BorderColor has been drawn, BkgColors must be opaque
               BkgColor1 := 0xFF000000 | BkgColor1
               BkgColor2 := 0xFF000000 | BkgColor2
            }
            PathW -= PathX
            PathH -= PathY
            If (Mode = 0) { ; the background is unicolored
               ; Create a SolidBrush
               DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", BkgColor1, "PtrP", PBRUSH)
               ; Fill the path
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode = 1) || (Mode = 2) { ; the background is bicolored
               ; Create a LineGradientBrush
               This.SetRectF(RECTF, PathX, PathY, PathW, PathH)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               ; Set up colors and positions
               This.SetRect(COLORS, BkgColor1, BkgColor1, BkgColor2, BkgColor2) ; sorry for function misuse
               This.SetRectF(POSITIONS, 0, 0.5, 0.5, 1) ; sorry for function misuse
               DllCall("Gdiplus.dll\GdipSetLinePresetBlend", "Ptr", PBRUSH
                     , "Ptr", &COLORS, "Ptr", &POSITIONS, "Int", 4)
               ; Fill the path
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else If (Mode >= 3) && (Mode <= 6) { ; the background is a gradient
               ; Determine the brush's width/height
               W := Mode = 6 ? PathW / 2 : PathW  ; horizontal
               H := Mode = 5 ? PathH / 2 : PathH  ; vertical
               ; Create a LineGradientBrush
               This.SetRectF(RECTF, PathX, PathY, W, H)
               DllCall("Gdiplus.dll\GdipCreateLineBrushFromRect", "Ptr", &RECTF
                     , "UInt", BkgColor1, "UInt", BkgColor2, "Int", Mode & 1, "Int", 3, "PtrP", PBRUSH)
               DllCall("Gdiplus.dll\GdipSetLineGammaCorrection", "Ptr", PBRUSH, "Int", 1)
               ; Fill the path
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            Else { ; raised mode
               DllCall("Gdiplus.dll\GdipCreatePathGradientFromPath", "Ptr", PPATH, "PtrP", PBRUSH)
               ; Set Gamma Correction
               DllCall("Gdiplus.dll\GdipSetPathGradientGammaCorrection", "Ptr", PBRUSH, "UInt", 1)
               ; Set surround and center colors
               VarSetCapacity(ColorArray, 4, 0)
               NumPut(BkgColor1, ColorArray, 0, "UInt")
               DllCall("Gdiplus.dll\GdipSetPathGradientSurroundColorsWithCount", "Ptr", PBRUSH, "Ptr", &ColorArray
                   , "IntP", 1)
               DllCall("Gdiplus.dll\GdipSetPathGradientCenterColor", "Ptr", PBRUSH, "UInt", BkgColor2)
               ; Set the FocusScales
               FS := (BtnH < BtnW ? BtnH : BtnW) / 3
               XScale := (BtnW - FS) / BtnW
               YScale := (BtnH - FS) / BtnH
               DllCall("Gdiplus.dll\GdipSetPathGradientFocusScales", "Ptr", PBRUSH, "Float", XScale, "Float", YScale)
               ; Fill the path
               DllCall("Gdiplus.dll\GdipFillPath", "Ptr", PGRAPHICS, "Ptr", PBRUSH, "Ptr", PPATH)
            }
            ; Free resources
            DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
            DllCall("Gdiplus.dll\GdipDeletePath", "Ptr", PPATH)
         } Else { ; Create a bitmap from HBITMAP or file
            If (Image + 0)
               DllCall("Gdiplus.dll\GdipCreateBitmapFromHBITMAP", "Ptr", Image, "Ptr", 0, "PtrP", PBM)
            Else
               DllCall("Gdiplus.dll\GdipCreateBitmapFromFile", "WStr", Image, "PtrP", PBM)
            ; Draw the bitmap
            DllCall("Gdiplus.dll\GdipDrawImageRectI", "Ptr", PGRAPHICS, "Ptr", PBM, "Int", 0, "Int", 0
                  , "Int", BtnW, "Int", BtnH)
            ; Free the bitmap
            DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBM)
         }
         ; -------------------------------------------------------------------------------------------------------------
         ; Draw the caption
         If (BtnCaption <> "") {
            ; Create a StringFormat object
            DllCall("Gdiplus.dll\GdipStringFormatGetGenericTypographic", "PtrP", HFORMAT)
            ; Text color
            DllCall("Gdiplus.dll\GdipCreateSolidFill", "UInt", TxtColor, "PtrP", PBRUSH)
            ; Horizontal alignment
            HALIGN := (BtnStyle & BS_CENTER) = BS_CENTER ? SA_CENTER
                    : (BtnStyle & BS_CENTER) = BS_RIGHT  ? SA_RIGHT
                    : (BtnStyle & BS_CENTER) = BS_Left   ? SA_LEFT
                    : SA_CENTER
            DllCall("Gdiplus.dll\GdipSetStringFormatAlign", "Ptr", HFORMAT, "Int", HALIGN)
            ; Vertical alignment
            VALIGN := (BtnStyle & BS_VCENTER) = BS_TOP ? 0
                    : (BtnStyle & BS_VCENTER) = BS_BOTTOM ? 2
                    : 1
            DllCall("Gdiplus.dll\GdipSetStringFormatLineAlign", "Ptr", HFORMAT, "Int", VALIGN)
            ; Set render quality to system default
            DllCall("Gdiplus.dll\GdipSetTextRenderingHint", "Ptr", PGRAPHICS, "Int", 0)
            ; Set the text's rectangle
            VarSetCapacity(RECT, 16, 0)
            NumPut(BtnW, RECT,  8, "Float")
            NumPut(BtnH, RECT, 12, "Float")
            ; Draw the text
            DllCall("Gdiplus.dll\GdipDrawString", "Ptr", PGRAPHICS, "WStr", BtnCaption, "Int", -1
                  , "Ptr", PFONT, "Ptr", &RECT, "Ptr", HFORMAT, "Ptr", PBRUSH)
         }
         ; -------------------------------------------------------------------------------------------------------------
         ; Create a HBITMAP handle from the bitmap and add it to the array
         DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "Ptr", PBITMAP, "PtrP", HBITMAP, "UInt", 0X00FFFFFF)
         This.BitMaps[Index] := HBITMAP
         ; Free resources
         DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", PBITMAP)
         DllCall("Gdiplus.dll\GdipDeleteBrush", "Ptr", PBRUSH)
         DllCall("Gdiplus.dll\GdipDeleteStringFormat", "Ptr", HFORMAT)
         DllCall("Gdiplus.dll\GdipDeleteGraphics", "Ptr", PGRAPHICS)
         ; Add the bitmap to the array
      }
      ; Now free the font object
      DllCall("Gdiplus.dll\GdipDeleteFont", "Ptr", PFONT)
      ; ----------------------------------------------------------------------------------------------------------------
      ; Create the ImageList
      HIL := DllCall("Comctl32.dll\ImageList_Create"
                   , "UInt", BtnW, "UInt", BtnH, "UInt", ILC_COLOR32, "Int", 6, "Int", 0, "Ptr")
      Loop, % (This.BitMaps.MaxIndex() > 1 ? 6 : 1) {
         HBITMAP := This.BitMaps.HasKey(A_Index) ? This.BitMaps[A_Index] : This.BitMaps.1
         DllCall("Comctl32.dll\ImageList_Add", "Ptr", HIL, "Ptr", HBITMAP, "Ptr", 0)
      }
      ; Create a BUTTON_IMAGELIST structure
      VarSetCapacity(BIL, 20 + A_PtrSize, 0)
      NumPut(HIL, BIL, 0, "Ptr")
      Numput(BUTTON_IMAGELIST_ALIGN_CENTER, BIL, A_PtrSize + 16, "UInt")
      ; Hide buttons's caption
      ControlSetText, , , ahk_id %HWND%
      Control, Style, +%BS_BITMAP%, , ahk_id %HWND%
      ; Assign the ImageList to the button
      SendMessage, %BCM_SETIMAGELIST%, 0, 0, , ahk_id %HWND%
      SendMessage, %BCM_SETIMAGELIST%, 0, % &BIL, , ahk_id %HWND%
      ; Free the bitmaps
      This.FreeBitmaps()
      ; ----------------------------------------------------------------------------------------------------------------
      ; All done successfully
      This.GdiplusShutdown()
      Return True
   }
   ; ===================================================================================================================
   ; Set the default GUI color
   SetGuiColor(GuiColor) {
      ; GuiColor     -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
      If !(GuiColor + 0) && !This.HTML.HasKey(GuiColor)
         Return False
      This.DefGuiColor := (This.HTML.HasKey(GuiColor) ? This.HTML[GuiColor] : GuiColor) & 0xFFFFFF
      Return True
   }
   ; ===================================================================================================================
   ; Set the default text color
   SetTxtColor(TxtColor) {
      ; TxtColor     -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
      If !(TxtColor + 0) && !This.HTML.HasKey(TxtColor)
         Return False
      This.DefTxtColor := (This.HTML.HasKey(TxtColor) ? This.HTML[TxtColor] : TxtColor) & 0xFFFFFF
      Return True
   }
}

; Gui, :+LastFound
; GroupAdd, MyGui, % "ahk_id " . WinExist()
; OnMessage(0x114, "OnScroll") ; WM_HSCROLL
; return

