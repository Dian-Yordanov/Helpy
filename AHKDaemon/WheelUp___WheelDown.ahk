#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome (1.0.3)
WheelUp::
    if WinExist("FastClipboardWMouseWheelSpace_41")
        {
            ; SetTimer, Off
            GuiControlGet, Holdtoclick2, 41:
            if(Holdtoclick2==1)
            {
                ClipboardWScrollSpacePlus()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else if WinExist("FastClipboardWMouseWheelCustom_42")
        {
            ; SetTimer, Off
            GuiControlGet, Holdtoclick2_42, 42:
            if(Holdtoclick2_42==1)
            {
                ClipboardWScrollCustomPlus()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else if WinExist("FastClipboardWMouseWheelCustom_43")
    {
        ; SetTimer , Off
        GuiControlGet, Holdtoclick2_43, 43:
        if(Holdtoclick2_43==1)
        {
            ; ClipboardWScrollCustomPlus_43()
        }
        else
        {
            ChromeTabsMouseWheelScrolling()
        }
    }
    else
        {
            ChromeTabsMouseWheelScrolling()
        }
    ; }
    ; Control, uncheck,, Holdtoclick1
    GuiControl,41:, Holdtoclick1 , 0
    GuiControl,42:, Holdtoclick1_42 , 0
    GuiControl,43:, Holdtoclick1_43 , 0
Return

WheelDown::
    if WinExist("FastClipboardWMouseWheelSpace_41")
        {
            ; SetTimer , Off
            GuiControlGet, Holdtoclick2, 41:
            if(Holdtoclick2==1)
            {
                ClipboardWScrollSpaceMinus()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else if WinExist("FastClipboardWMouseWheelCustom_42")
        {
            ; SetTimer , Off
            GuiControlGet, Holdtoclick2_42, 42:
            if(Holdtoclick2_42==1)
            {
                ClipboardWScrollCustomMinus()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else if WinExist("FastClipboardWMouseWheelCustom_43")
        {
            ; SetTimer, Off
            GuiControlGet, Holdtoclick2_43, 43:
            if(Holdtoclick2_43==1)
            {
                ; ClipboardWScrollCustomMinus_43()
            }
            else
            {
                ChromeTabsMouseWheelScrolling()
            }
        }
    else
        {
            ChromeTabsMouseWheelScrolling()
        }
    
    GuiControl,41:, Holdtoclick1 , 0
    GuiControl,42:, Holdtoclick1_42 , 0
    GuiControl,43:, Holdtoclick1_43 , 0
Return

; ClipboardWScrollCustomPlus_43(){
;     capsToggle := 0
;     SetCapsLockState, Off

;     IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
;     ++keyCounter
;     IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
;     IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43

    
;     GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%

;     ReturnedStringThatNeedsToBeSeparated := Clipboard
;     AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated)
;     Clipboard := ReturnedStringThatNeedsToBeSeparated
; }

; ClipboardWScrollCustomMinus_43(){
;     capsToggle := 0
;     SetCapsLockState, Off

;     IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
;     --keyCounter
;     IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
;     IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43

;     GuiControl,%GuiName43%:, StringListPosition43_43, %keyCounter%

;     ReturnedStringThatNeedsToBeSeparated := Clipboard
;     AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom_43(keyCounter, ReturnedStringThatNeedsToBeSeparated)
;     Clipboard := ReturnedStringThatNeedsToBeSeparated
; }

; resetClipboardTime43()
; {
;     IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger43
; }









ClipboardWScrollSpacePlus(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, 41
    ++keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41

    GuiControl,41:, StringListPosition41, %keyCounter%
    

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := % ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollSpaceMinus(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    --keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41

    GuiControl,41:, StringListPosition41, %keyCounter%
    

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ChromeTabsMouseWheelScrolling(){
    MouseGetPos,, ypos, id
    WinGetClass, class, ahk_id %id%
    If (ypos < 45 and InStr(class,"Chrome_WidgetWin"))
    {
        IfWinNotActive ahk_id %id%
            WinActivate ahk_id %id%
        If A_ThisHotkey = WheelUp
            Send ^{PgUp}
        Else
            Send ^{PgDn}
    }
    Else
    {
        If A_ThisHotkey = WheelUp
            Send {WheelUp}
        Else
            Send {WheelDown}
    }
}

ClipboardWScrollCustomPlus(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    ++keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42

    
    GuiControl,42:, StringListPosition42_42, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}

ClipboardWScrollCustomMinus(){
    capsToggle := 0
    SetCapsLockState, Off

    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    --keyCounter
    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42

    GuiControl,42:, StringListPosition42_42, %keyCounter%

    ReturnedStringThatNeedsToBeSeparated := Clipboard
    AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom(keyCounter, ReturnedStringThatNeedsToBeSeparated)
    Clipboard := ReturnedStringThatNeedsToBeSeparated
}



AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarSpace(keyCounter, ReturnedStringThatNeedsToBeSeparated){
;    ReturnedStringThatNeedsToBeSeparated := Clipboard

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, " ")
    MaxValue := % ColorArray.MaxIndex()

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
        GuiControl,41:, StringListPosition41, %keyCounter%
        
    }

    if (keyCounter < 0) {
        keyCounter := 0
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
        
        GuiControl,41:, StringListPosition41, %keyCounter%
       
    }

    AbsValueDividedValue := % keyCounter
    this_color := % ColorArray[AbsValueDividedValue]
    LengthValueDividedValue := % StrLen(this_color)
    VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

    SetKeyDelay -1
    SetBatchLines -1

    StringReplace, this_color, this_color, `n,`r`n, All
    Clipboard := % this_color
    SendInput ^v

    ; 41StringListPositionFunction()
    ; GoSub, 41StringListPositionLabel

    TimeClipboardVariable := LengthValueDividedValue * -15
    SplashTextOn,,,%AbsValueDividedValue%,
    SetTimer, %TimeClipboardVariable%

    SendInput {Shift down}
    SendInput {Left %LengthValueDividedValue%}
    SendInput {Shift up}

}


AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVarCustom(keyCounter, ReturnedStringThatNeedsToBeSeparated){
;    ReturnedStringThatNeedsToBeSeparated := Clipboard

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, EditFieldForClipboardMain_42

; StringReplace, ReturnedStringThatNeedsToBeSeparated, ReturnedStringThatNeedsToBeSeparated, `n,`r`n, All

    ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, Edit1, FastClipboardWMouseWheelCustom_42


    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, 42:, EditFieldForClipboardMain_42

    ; OutputVar_For_EditFieldForClipboardMain_42 := ControlGetText("EditFieldForClipboardMain_42", "FastClipboardWMouseWheelCustom_42")

    ; GuiControlGet
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42, 42:EditFieldForClipboardMain_42

    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42,, 42:EditFieldForClipboardMain_42

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, EditFieldForClipboardMain_42,FastClipboardWMouseWheelCustom_42
    ; GuiControlGet, OutputVar_For_EditFieldForClipboardMain_42, 41:, EditFieldForClipboardMain_42

    ; ControlGetText, OutputVar_For_EditFieldForClipboardMain_42, , % 42EditField_42

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_42,Text,, 42:EditFieldForClipboardMain_42,

    ; ControlGet, OutputVar_For_EditFieldForClipboardMain_42,, 42:EditFieldForClipboardMain_42
    ; ControlGet, 42, OutputVar_For_EditFieldForClipboardMain_42,EditFieldForClipboardMain_42

    ; MsgBox % OutputVar_For_EditFieldForClipboardMain_42

    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, OutputVar_For_EditFieldForClipboardMain_42)
    MaxValue := % ColorArray.MaxIndex()

    ; MsgBox, %MaxValue%

    if (keyCounter > MaxValue) {
        keyCounter = %MaxValue%
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        
        GuiControl,42:, StringListPosition42_42, %keyCounter%
    }

    if (keyCounter < 0) {
        keyCounter := 0
        IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
        
        
        GuiControl,42:, StringListPosition42_42, %keyCounter%
    }

    AbsValueDividedValue := % keyCounter
    this_color := % ColorArray[AbsValueDividedValue]
    ; LengthValueDividedValue := % StrLen(this_color)

    ; MsgBox, %LengthValueDividedValue%

    ; LengthValueDividedValue = % LengthValueDividedValue - 1

    ; MsgBox, %LengthValueDividedValue%

    SetKeyDelay -1
    SetBatchLines -1

    StringReplace, this_color, this_color, `n,`r`n, All
    StringReplace, this_color,this_color, `r,, All
    StringReplace, this_color,this_color, `n,, All

    ; StringReplace, this_color, this_color,"",`r`n, All
    Clipboard := % this_color

    LengthValueDividedValue1 := % StrLen(Clipboard)
; MsgBox, %LengthValueDividedValue1%


    SendInput ^v

    ; 41StringListPositionFunction()
    ; GoSub, 41StringListPositionLabel

    TimeClipboardVariable := LengthValueDividedValue1 * -5
    SplashTextOn,,,%AbsValueDividedValue%,
    SetTimer, %TimeClipboardVariable%

    ; SendInput {Shift down}
    ; SendInput {Left %LengthValueDividedValue%}
    ; SendInput {Shift up}



;    SendInput, % this_color

;    TimeClipboardVariable := LengthValueDividedValue * -15
;    SplashTextOn,,,%AbsValueDividedValue%,
;    SetTimer_WheelUp___WheelDown, RemoveToolTipClipboard, %TimeClipboardVariable%

;    loop, %LengthValueDividedValue%
;    {
;       SendInput {Shift down}
;       SendInput {left}
;       SendInput {Shift up}
;    }

    SendInput {Shift down}
    SendInput {Left %LengthValueDividedValue1%}
    SendInput {Shift up}

    ; StringReplace, this_color, this_color, `n,`r`n, All
    ; ClipSaved := Clipboard
    ; Clipboard := this_color
    ; Send ^v
    ; Clipboard := ClipSaved

    ; SendInput {Shift down}
    ; SendInput {Left %LengthValueDividedValue%}
    ; SendInput {Shift up}

}

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

RemoveToolTipClipboard()
{
SplashTextOff
}


SetTimer_WheelUp___WheelDown(target_time_value)
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
  SetTimer, % target * -1000 ; negative means run *once*
}