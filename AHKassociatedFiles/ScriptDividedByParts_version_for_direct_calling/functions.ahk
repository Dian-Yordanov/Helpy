
;|functions||SEARCHINDICATOR|
;     __                  _   _
;    / _|                | | (_)
;   | |_ _   _ _ __   ___| |_ _  ___  _ __  ___
;   |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;   | | | |_| | | | | (__| |_| | (_) | | | \__ \
;   |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

WM_CTLCOLOR(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor", "Ptr", wParam, "UInt", BkColor)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 2)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}
WM_CTLCOLOR2(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor2, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor2", "Ptr", wParam, "UInt", BkColor2)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}
WM_CTLCOLOR3(wParam, lParam, hwnd)
{
    static hBrush := ""
    if (hBrush = "")
        SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor3, "UPtr")
    WinGetClass, Class, ahk_id %lParam%
    if (Class = "Edit")
    {
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
        , DllCall("gdi32.dll\SetBkColor3", "Ptr", wParam, "UInt", BkColor3)
        , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
        return hBrush
    }
    if (Class = "Static")
        DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
}

removeNameOfUsedEmail1(UsedEmail){
    StringReplace, NewStr, UsedEmail, @gmail.com, , All
    return NewStr
}
removeNameOfUsedEmail2(UsedEmail){
    StringReplace, NewStr, UsedEmail, @protonmail.com, , All
    return NewStr
}
removeNameOfUsedEmail3(UsedEmail){
    StringReplace, NewStr, UsedEmail, @unseen.is, , All
    return NewStr
}
addNameOfUsedEmail1(UsedEmail){
    UsedEmail = %UsedEmail%@gmail.com
    return UsedEmail
}
addNameOfUsedEmail2(UsedEmail){
    UsedEmail = %UsedEmail%@protonmail.com
    return UsedEmail
}
addNameOfUsedEmail3(UsedEmail){
    UsedEmail = %UsedEmail%@unseen.is
    return UsedEmail
}
closeHelpyAfterExecutingCommands(){
    WinClose ahk_class AutoHotkeyGUI
    sleep, 100
    WinClose ahk_class AutoHotkeyGUI
    sleep, 100
    WinClose ahk_class AutoHotkeyGUI
    return
}
resetMousePositionAtMiddle(){
    CoordMode, Mouse, Screen
    x3 := (A_ScreenWidth // 2)
    y3 := (A_ScreenHeight // 2)
    mousemove, x3, y3
}


;-------------------------------------------------------------------------------
Gui_22AddPicture(Options, Colour) { ; hex RGB with spaces
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
    Gui, 22:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}


;-------------------------------------------------------------------------------
Gui_15AddPicture(Options, Colour) { ; hex RGB with spaces
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
    Gui, 15:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
Gui_27AddPicture(Options, Colour) { ; hex RGB with spaces
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
    Gui, 27:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
Gui_28AddPicture(Options, Colour) { ; hex RGB with spaces
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
    Gui, 28:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
Gui_2AddPicture(Options, Colour) { ; hex RGB with spaces
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
    Gui, 2:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
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

; str := "Rosetta code"
; MsgBox, % SHA256("qwerty")

callSHA256:
; InputBox, password, Enter Password, (your input will be hidden), hide

InputBox, UserInput, StringHasher, Please enter a string to hash., ,
; MsgBox, %UserInput%
; MsgBox, % hashSHA256(UserInput)

WinActivate ahk_id %previous_ID%
SendInput % hashSHA256(UserInput)
closeHelpyAfterExecutingCommands()
return

callhashMD5implementation1:

InputBox, UserInput, StringHasher, Please enter a string to hash., ,

; MsgBox, %UserInput%
; MsgBox, % hashMD5implementation1(UserInput, 0)

WinActivate ahk_id %previous_ID%
SendInput % hashMD5implementation1(UserInput, 0)
closeHelpyAfterExecutingCommands()
return

callhashMD5implementation2:

InputBox, UserInput, StringHasher, Please enter a string to hash., ,
; MsgBox, %UserInput%
hash := Crypt.Hash.StrHash(UserInput,1)
; MsgBox, % hash

WinActivate ahk_id %previous_ID%
SendInput % hash
closeHelpyAfterExecutingCommands()
return

; SHA256 ============================================================================
hashSHA256(string, encoding = "utf-8")
{
    return CalcStringHash(string, 0x800c, encoding)
}

; CalcAddrHash ======================================================================
CalcAddrHash(addr, length, algid, byref hash = 0, byref hashlength = 0)
{
    static hVar := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C", "D", "E", "F"]
    static bVar := hVar.minIndex()
    o := ""
    if (DllCall("advapi32\CryptAcquireContext", "Ptr*", hProv, "Ptr", 0, "Ptr", 0, "UInt", 24, "UInt", 0xF0000000))
    {
        if (DllCall("advapi32\CryptCreateHash", "Ptr", hProv, "UInt", algid, "UInt", 0, "UInt", 0, "Ptr*", hHash))
        {
            if (DllCall("advapi32\CryptHashData", "Ptr", hHash, "Ptr", addr, "UInt", length, "UInt", 0))
            {
                if (DllCall("advapi32\CryptGetHashParam", "Ptr", hHash, "UInt", 2, "Ptr", 0, "UInt*", hashlength, "UInt", 0))
                {
                    VarSetCapacity(hash, hashlength, 0)
                    if (DllCall("advapi32\CryptGetHashParam", "Ptr", hHash, "UInt", 2, "Ptr", &hash, "UInt*", hashlength, "UInt", 0))
                    {
                        loop, % hashlength
                        {
                            v := NumGet(hash, A_Index - 1, "UChar")
                            o .= hVar[(v >> 4) + bVar] hVar[(v & 0xf) + bVar]
                        }
                    }
                }
            }
            DllCall("advapi32\CryptDestroyHash", "Ptr", hHash)
        }
        DllCall("advapi32\CryPtreleaseContext", "Ptr", hProv, "UInt", 0)
    }
    return o
}

; CalcStringHash ====================================================================
CalcStringHash(string, algid, encoding = "utf-8", byref hash = 0, byref hashlength = 0)
{
    chrlength := (encoding = "cp1200" || encoding = "utf-16") ? 2 : 1
    length := (StrPut(string, encoding) - 1) * chrlength
    VarSetCapacity(data, length, 0)
    StrPut(string, &data, floor(length / chrlength), encoding)
    return CalcAddrHash(&data, length, algid, hash, hashlength)
}


hashMD5implementation1(ByRef sData, nLen, SID = 3) { ; SID = 3: MD5, 4: SHA1
   DllCall("advapi32\CryptAcquireContextA", UIntP,hProv, UInt,0, UInt,0, UInt,1, UInt,0xF0000000)
   DllCall("advapi32\CryptCreateHash", UInt,hProv, UInt,0x8000|0|SID, UInt,0, UInt,0, UIntP, hHash)

   DllCall("advapi32\CryptHashData", UInt,hHash, UInt,&sData, UInt,nLen, UInt,0)

   DllCall("advapi32\CryptGetHashParam", UInt,hHash, UInt,2, UInt,0, UIntP,nSize, UInt,0)
   VarSetCapacity(HashVal, nSize, 0)
   DllCall("advapi32\CryptGetHashParam", UInt,hHash, UInt,2, UInt,&HashVal, UIntP,nSize, UInt,0)

   DllCall("advapi32\CryptDestroyHash", UInt,hHash)
   DllCall("advapi32\CryptReleaseContext", UInt,hProv, UInt,0)

   IFormat := A_FormatInteger
   SetFormat Integer, H
   Loop %nSize%
      sHash .= SubStr(*(&HashVal+A_Index-1)+0x100,-1)
   SetFormat Integer, %IFormat%
   Return sHash
}

; AutoStarterFunction()
; {

; FileLocation = %A_ScriptDir%\StringBank.txt
; KxzCWi_RiFqi81eDi = % getStringFromBank("sFgLhE4EiiLUmiCF", FileLocation)
; K2hHnguiQDvyiCWlm = % getStringFromBank("3i1Hb0q8Bkb9Ri8m", FileLocation)
; KA0Su6ickIUkZpjNi = % getStringFromBank("i6EOUbEivkLs9s2e", FileLocation)
; KiviPiiqnRvnivNxi = % getStringFromBank("i5i3tHTfrlqgii_0", FileLocation)
; KvRziCrD_VjPi8ORi = % getStringFromBank("3ai45tJ3S3sy5piw", FileLocation)

; ; MsgBox, %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%

; IniRead, OutputVar, %A_ScriptDir%\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
; If (OutputVar == 0)
;   {

;   ; commands=
;   ; (join&
;   ; echo off
;   ; cd `%userprofile`%\Documents\AHKHelpy\AHKassociatedFiles\BilingualScrips\PythonBot
;   ; python .\bot.py %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%
;   ; )
;   ; runwait, %comspec% /c %commands%

;   ; MsgBox, "works"%OutputVar%
;   }
; If (OutputVar == 1)
;   {
;     commands=
;     (join&
;     echo off
;     cd `%userprofile`%\Documents\AHKHelpy\AHKassociatedFiles\BilingualScrips\PythonBot
;     python .\bot.py %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%
;     )
;     runwait, %comspec% /c %commands%
;   ; MsgBox, "works"%OutputVar% "works"

;   }
; }

RunAutoGUI:
Run C:\Users\%A_UserName%\Documents\AHKHelpy\AHKlibs\AutoGUI\AutoGUI.ahk
return

RunCodeQuickTester:
Run C:\Users\%A_UserName%\Documents\AHKHelpy\AHKlibs\CodeQuickTester_v2.6.ahk
return

RunLiveXGraph:
Gui, 23:Add, Text, w300 h105 hwndErrorLevel            ; Create a Text control
pGraph := XGraph( ErrorLevel )                      ; Attach XGraph
Gui, 23:Show,, XGraph : Plotting Random values
SetTimer, RandomPlot
return

RandomPlot:
 Random, MY2, 0, 100
 XGraph_Plot( pGraph, MY2 )                         ; Plot values
Return

CallRunBarChartExample1:
; RunBarChartExample1()
return

RunBarChartExample1:
;===Auto-execute========================================================================
ChartData =
(
Mike	24
Jenny	22
Steve	27
Marry	23
)

Global BarChartPic

; Gui, 24:Add, Picture, x5 y5 w250 h120 BackgroundTrans 0xE vBarChartPic	; create picture control which must have 0xE option
; pToken := Gdip_Startup()												; start up GDI+
; pBitmap := BarChart(ChartData, 250, 120)								; create bitmap
; SetBitmap2Pic(pBitmap,"BarChartPic")									; set bitmap to picture control
; Gdip_DisposeImage(pBitmap)												; dispose of bitmap
; Gdip_Shutdown(pToken)													; shut down GDI+
; Gui 24:Show, w260 h130													; show Gui
; return
Gui, 24:Destroy
Gui, 24:Add, Picture, x5 y5 w250 h120 BackgroundTrans 0xE vBarChartPic	; create picture control which must have 0xE option
BarChart(ChartData, "BarChartPic")										; create and set BarChart to picture control

	/*; Extra feature for AHK_L users - you can use handle of the control
	Gui, 1:Add, Picture, x5 y5 w250 h120 BackgroundTrans 0xE hwndhPic
	BarChart(ChartData, "hwnd" hPic)
	*/

Gui 24:Show, w960 h900													; show Gui

return
; return

SetBitmap2Pic(pBitmap,ControlID,GuiNum=1) {	; sets pBitmap to picture control (which must have 0xE option and should have BackgroundTrans option). By Learning one.
	GuiControlGet, hControl, %GuiNum%:hwnd, %ControlID%
	hBitmap := Gdip_CreateHBITMAPFromBitmap(pBitmap), SetImage(hControl, hBitmap), DeleteObject(hBitmap)
	GuiControl, %GuiNum%:MoveDraw, %ControlID%	; repaints the region of the GUI window occupied by the control
}

