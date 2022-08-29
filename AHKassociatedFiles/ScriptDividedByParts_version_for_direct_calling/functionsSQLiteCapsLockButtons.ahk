
;OnClipboardChange:
;Critical
;resetClipboardTime2()
;return

; resetClipboardTime41()
; {
;     IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
; }

; resetClipboardTime42()
; {
;     IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
; }

; THIS WAS COMMENTED AND IS COMMENTED AGAIN BECAUSE IT BUGS CTRL HOLDING INTEGRATION

; !capslock::

;    ResetClipboardInteger()
;    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    ++keyCounter
;    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger

;    ; MsgBox, % 
;    SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)

; return

; ^capslock::

;    ResetClipboardInteger()
;    IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    --keyCounter
;    IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger

;    ; MsgBox, % 
;    SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)

; return

; WheelUp::
;     if (GetKeyState("RButton", "P"))
;         MsgBox, "sss"
;     else
;         send {WheelUp}
; return

FastClipboardWMouseWheelSpace:
Gui, 41:Destroy

Gui, 41:Add, Text, cWhite , Pressing f8 will keep the mouse clicking ; Static1idea
Gui, 41:Add, Checkbox , xm cWhite vHoldtoclick, Toggle to start and exit clicking with f8. if not checked, you need to hold f8 to click

Gui, 41:Font, s18 cRed Bold, Verdana
Gui, 41:Color, 000000, FFFFFF

Gui, 41:Show, h300 w500 x640 y65, FastClipboardWMouseWheel
return

FastClipboardWMouseWheelCustom:
Gui, 42:Destroy

Gui, 42:Add, Text, cWhite , Pressing f8 will keep the mouse clicking ; Static1idea
Gui, 42:Add, Checkbox , xm cWhite vHoldtoclick, Toggle to start and exit clicking with f8. if not checked, you need to hold f8 to click

Gui, 42:Font, s18 cRed Bold, Verdana
Gui, 42:Color, 000000, FFFFFF

Gui, 42:Show, h300 w500 x640 y65, FastClipboardWMouseWheel
return


; ^!WheelUp::
; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; ++keyCounter
; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger

; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; ^!WheelDown::

; ; WheelDown:: return 

; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; --keyCounter
; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
 
; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return



; ^capslock::

; MsgBox, "ssss"

; return

; ^capslock::
; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; ++keyCounter
; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger

; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; !capslock::
; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; --keyCounter
; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
 
; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; resetClipboardTime()
; {
;     CurrentTimeClipboard = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
;     IniWrite, %CurrentTimeClipboard%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardDateInteger
; }

LastKeyPressedTimingFunction()
{
CurrentTimeClipboard = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
IniRead, DateDiffValueFromClipboardValue, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardDateInteger
; diffClipboard := DateDiff(DateDiffValueFromClipboardValue,CurrentTimeClipboard, "seconds")
EnvSub, DateDiffValueFromClipboardValue,CurrentTimeClipboard, seconds
DateDiffValueFromClipboardValue := % Abs(DateDiffValueFromClipboardValue)
return %DateDiffValueFromClipboardValue%
}

LastKeyPressedTimingFunctionType2()
{
; Msgbox, %A_TimeSincePriorHotkey%
return %A_TimeSincePriorHotkey%
}

ResetClipboardInteger()
{

ifClipboardVariable := % LastKeyPressedTimingFunctionType2()
if(ifClipboardVariable>10000)
{
IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
return
}

; ifClipboardVariable := % LastKeyPressedTimingFunction()
; if(%ifClipboardVariable%>10)
; {
; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
; IniWrite, 0, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
; return
; }

}


SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter){
ReturnedStringThatNeedsToBeSeparated := % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()


ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, "(((|||CustomDelimeter|||)))")
; Loop % ColorArray.MaxIndex()
; {
   MaxValue := % ColorArray.MaxIndex()
   ; MsgBox, %MaxValue%
   DividedValue := keyCounter - MaxValue
   ; MsgBox, %DividedValue%
   AbsValueDividedValue := % Abs(DividedValue)
   ; MsgBox, %AbsValueDividedValue%
   this_color := % ColorArray[AbsValueDividedValue]
   ; MsgBox, Color number %AbsValueDividedValue% is `n%this_color%.
   LengthValueDividedValue := % StrLen(this_color)
   VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

   ; MsgBox, % VariableCombination

   SendInput, % this_color

   TimeClipboardVariable := LengthValueDividedValue * -15
   SplashTextOn,,,%AbsValueDividedValue%,
   ; MsgBox, %TimeClipboardVariable%
   SetTimer, RemoveToolTipClipboard, %TimeClipboardVariable%


   loop, %LengthValueDividedValue%
   {
      SendInput {Shift down}
      SendInput {left}
      SendInput {Shift up}
      Sleep, 5
   }



   ; Clipboard = % VariableCombination

   ; SendInput, % VariableCombination

   ; ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
   ; ; ... here make temporary use of the clipboard, such as for pasting Unicode text via Transform Unicode ...
   ; Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
   ; ClipSaved =   ; Free the memory in case the clipboard was very large.


   ; clipboard = Color number %AbsValueDividedValue% is `n%this_color% `n`n`nSize is %LengthValueDividedValue%
   ;  clipboard = Color number %AbsValueDividedValue% is `n%this_color% `n`n`nSize is %LengthValueDividedValue%
   ; SendInput, Color number %AbsValueDividedValue% is `n%thiVariableCombinations_color% `n`n`nSize is %LengthValueDividedValue%
; }

; MsgBox, % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()
; clipboard = % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()

return VariableCombination
}

AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter){
   ReturnedStringThatNeedsToBeSeparated := clipboard

   ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, " ")
   MaxValue := % ColorArray.MaxIndex()

   if (keyCounter > MaxValue) {
      keyCounter = %MaxValue%
      IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
      IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
   }

   if (keyCounter < 0) {
      keyCounter := 0
      IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
      IniWrite, %keyCounter%, %A_ScriptDir%\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
   }

   AbsValueDividedValue := % keyCounter
   this_color := % ColorArray[AbsValueDividedValue]
   LengthValueDividedValue := % StrLen(this_color)
   VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

   SendInput, % this_color

   TimeClipboardVariable := LengthValueDividedValue * -15
   SplashTextOn,,,%AbsValueDividedValue%,
   SetTimer, RemoveToolTipClipboard, %TimeClipboardVariable%


   loop, %LengthValueDividedValue%
   {
      SendInput {Shift down}
      SendInput {left}
      SendInput {Shift up}
   }

}

