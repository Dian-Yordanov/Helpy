;|FunctionsForHelpyAndExperimental||SEARCHINDICATOR|
;   ______                _   _                 ______         _    _      _                                _ ______                      _                      _        _ 
;  |  ____|              | | (_)               |  ____|       | |  | |    | |               /\             | |  ____|                    (_)                    | |      | |
;  | |__ _   _ _ __   ___| |_ _  ___  _ __  ___| |__ ___  _ __| |__| | ___| |_ __  _   _   /  \   _ __   __| | |__  __  ___ __   ___ _ __ _ _ __ ___   ___ _ __ | |_ __ _| |
;  |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|  __/ _ \| '__|  __  |/ _ \ | '_ \| | | | / /\ \ | '_ \ / _` |  __| \ \/ / '_ \ / _ \ '__| | '_ ` _ \ / _ \ '_ \| __/ _` | |
;  | |  | |_| | | | | (__| |_| | (_) | | | \__ \ | | (_) | |  | |  | |  __/ | |_) | |_| |/ ____ \| | | | (_| | |____ >  <| |_) |  __/ |  | | | | | | |  __/ | | | || (_| | |
;  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/_|  \___/|_|  |_|  |_|\___|_| .__/ \__, /_/    \_\_| |_|\__,_|______/_/\_\ .__/ \___|_|  |_|_| |_| |_|\___|_| |_|\__\__,_|_|
;                                                                           | |     __/ |                                | |                                                
;                                                                           |_|    |___/                                 |_|                                                



ClassImageButtonExperiments:
; ----------------------------------------------------------------------------------------------------------------------
Gui, DummyGUI:Destroy
Gui, DummyGUI:Add, Pic, hwndHPIC, PIC1.jpg
SendMessage, 0x0173, 0, 0, , ahk_id %HPIC% ; STM_GETIMAGE
HPIC1 := ErrorLevel
; ----------------------------------------------------------------------------------------------------------------------
; Button states:
; PBS_NORMAL    = 1
; PBS_HOT       = 2
; PBS_PRESSED   = 3
; PBS_DISABLED  = 4
; PBS_DEFAULTED = 5
; PBS_STYLUSHOT = 6 <- used only on tablet computers
; ----------------------------------------------------------------------------------------------------------------------
GuiColor := "Blue"
Gui, Margin, 50, 20
Gui, Font, s10
; Gui, Color, %GuiColor%
; ImageButton.SetGuiColor(GuiColor)
; Common button --------------------------------------------------------------------------------------------------------
; Gui, DummyGUI:Add, Button, w200, Common Button
; Unicolored button rounded by half of its height with different colors for states normal, hot and defaulted -----------

; PBS_NORMAL    = 1
; PBS_HOT       = 2
; PBS_PRESSED   = 3
; PBS_DISABLED  = 4
; PBS_DEFAULTED = 5
; PBS_STYLUSHOT = 6 ; used only on tablet computers

;  Index Value
;  1     Mode        mandatory:
;  				  0  -  unicolored or bitmap
;  				  1  -  vertical bicolored
;  				  2  -  horizontal bicolored
;  				  3  -  vertical gradient
;  				  4  -  horizontal gradient
;  				  5  -  vertical gradient using StartColor at both borders and
;  						TargetColor at the center
;  				  6  -  horizontal gradient using StartColor at both borders and 
;  						TargetColor at the center
;  				  7  -  'raised' style (just try out!)
;  2     StartColor  mandatory for Option[1], higher indices will inherit the value of
;  				  Option[1], if omitted:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  				  -  Path of an image file or HBITMAP handle for Mode 0
;  3     TargetColor mandatory for Option[1] if Mode > 0, ignored if Mode = 0. Higher
;  				  indcices will inherit the color of Option[1], if omitted:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  4     TextColor   optional, if omitted, the default text color will be used for Option[1],
;  				  higher indices will inherit the color of Option[1]:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  					 Default: 0x000000 (black)
;  5     Rounded     optional:
;  				  -  Radius of the rounded corners in pixel; the letters 'H' and 'W' may be
;  				     specified also to use the half of the button's height or width respectively.
;  					 Default: 0 - not rounded
;  6     GuiColor    optional, needed for rounded buttons if you've changed the GUI background color:
;  				  -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;  					 Default: AHK default GUI background color
;  7     BorderColor optional, ignored for modes 0 (bitmap) and 7, color of the border:
;                    -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;  8     BorderWidth optional, ignored for modes 0 (bitmap) and 7, width of the border in pixels:
;                    -  Default: 1




Gui, DummyGUI:Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2
Opt1 := [0, 0x80333333, , "White", "6", , "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)






; If !ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)
;    MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
; Vertical bicolored  button with different 3D-style colors for states normal, hot, and pressed ------------------------
; Gui, DummyGUI:Add, Button, vBT2 w200 h30 hwndHBT2, Button 2
; Opt1 := [1, 0xC0E0E0E0, 0xC0B0E0FF, 0x60000000]             ; normal background & text colors
; Opt2 := {2: 0xE0E0E0, 3: 0xB0E0FF, 4: "Black"}              ; hot background & text colors (object syntax)
; Opt3 := {4: "Red"}                                          ; pressed text color (object syntax)
; If !ImageButton.Create(HBT2, Opt1, Opt2, Opt3)
;    MsgBox, 0, ImageButton Error Btn2, % ImageButton.LastError
; ; Raised button with different 3D-style colors for states normal, hot, and disabled ------------------------------------
; Gui, DummyGUI:Add, Button, vBT3 w200 Disabled hwndHBT3, Button 3
; Opt1 := [6, 0x80404040, 0xC0C0C0, "Yellow"]                 ; normal background & text colors
; Opt2 := [ , 0x80606060, 0xF0F0F0, 0x606000]                 ; hot background & text colors
; Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]                       ; disabled flat background & text colors
; If !ImageButton.Create(HBT3, Opt1, Opt2, "", Opt4)
;    MsgBox, 0, ImageButton Error Btn3, % ImageButton.LastError
; Gui, Font
; Gui, DummyGUI:Add, CheckBox, xp y+0 w200 gCheck vCheckBox, Enable!
; ; Image button without caption with different pictures for states normal and hot ---------------------------------------
; ; Gui, DummyGUI:Add, Button, vBT4 w200 h30 hwndHBT4
; ; Opt1 := [0, HPIC1]                                          ; normal image
; ; Opt2 := {2:"PIC2.jpg"}                                      ; hot image (object syntax)
; ; If !ImageButton.Create(HBT4, Opt1, Opt2)
;    MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
; GuiControl, Focus, BT2
Gui, DummyGUI:Show, , Image Buttons
Return































































































;|functions||SEARCHINDICATOR|
;     __                  _   _
;    / _|                | | (_)
;   | |_ _   _ _ __   ___| |_ _  ___  _ __  ___
;   |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;   | | | |_| | | | | (__| |_| | (_) | | | \__ \
;   |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

; WM_CTLCOLOR(wParam, lParam, hwnd)
; {
;     static hBrush := ""
;     if (hBrush = "")
;         SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor, "UPtr")
;     WinGetClass, Class, ahk_id %lParam%
;     if (Class = "Edit")
;     {
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
;         , DllCall("gdi32.dll\SetBkColor", "Ptr", wParam, "UInt", BkColor)
;         , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 2)
;         return hBrush
;     }
;     if (Class = "Static")
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
; }
; WM_CTLCOLOR2(wParam, lParam, hwnd)
; {
;     static hBrush := ""
;     if (hBrush = "")
;         SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor2, "UPtr")
;     WinGetClass, Class, ahk_id %lParam%
;     if (Class = "Edit")
;     {
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
;         , DllCall("gdi32.dll\SetBkColor2", "Ptr", wParam, "UInt", BkColor2)
;         , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
;         return hBrush
;     }
;     if (Class = "Static")
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
; }
; WM_CTLCOLOR3(wParam, lParam, hwnd)
; {
;     static hBrush := ""
;     if (hBrush = "")
;         SetEnv, hBrush, % DllCall("Gdi32.dll\CreateSolidBrush", "UInt", BkColor3, "UPtr")
;     WinGetClass, Class, ahk_id %lParam%
;     if (Class = "Edit")
;     {
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
;         , DllCall("gdi32.dll\SetBkColor3", "Ptr", wParam, "UInt", BkColor3)
;         , DllCall("gdi32.dll\SetBkMode", "Ptr", wParam, "Int", 3)
;         return hBrush
;     }
;     if (Class = "Static")
;         DllCall("gdi32.dll\SetTextColor", "Ptr", wParam, "UInt", TxColor)
; }

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
Gui_AddPicture_Unified_Functions_And_Labels_Script(Options, Colour) { ; hex RGB with spaces
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
Gui_AddPicture_VariableName_Unified_Functions_And_Labels_Script(Options, Colour, VariableName) { ; hex RGB with spaces
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

; FileLocation = %A_MyDocuments%\AHKHelpy\StringBank.txt
; KxzCWi_RiFqi81eDi = % getStringFromBank("sFgLhE4EiiLUmiCF", FileLocation)
; K2hHnguiQDvyiCWlm = % getStringFromBank("3i1Hb0q8Bkb9Ri8m", FileLocation)
; KA0Su6ickIUkZpjNi = % getStringFromBank("i6EOUbEivkLs9s2e", FileLocation)
; KiviPiiqnRvnivNxi = % getStringFromBank("i5i3tHTfrlqgii_0", FileLocation)
; KvRziCrD_VjPi8ORi = % getStringFromBank("3ai45tJ3S3sy5piw", FileLocation)

; ; MsgBox, %KvRziCrD_VjPi8ORi% %KiviPiiqnRvnivNxi% %KA0Su6ickIUkZpjNi% %K2hHnguiQDvyiCWlm% %KxzCWi_RiFqi81eDi%

; IniRead, OutputVar, %A_MyDocuments%\AHKHelpy\AutohotkeyIniFile.ini, AutohotkeyConfig, BooleanForCheckingMultilingualCheckboxes
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




































































;    __                  _   _                  _____  ____  _      
;   / _|                | | (_)                / ____|/ __ \| |     
;  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___| (___ | |  | | |     
;  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|\___ \| |  | | |     
;  | | | |_| | | | | (__| |_| | (_) | | | \__ \____) | |__| | |____ 
;  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/_____/ \___\_\______|
                                                                  
                                                                  
SQLiteExampleAdjustedToWorkWithHelpy:
; ======================================================================================================================
; Start & GUI
; ======================================================================================================================
CBBSQL := "SELECT * FROM Test"
DBFileName := A_MyDocuments . "\AHKlibs\SQLiteAHKdatabases\test.DB"
Title := "SQL Query/Command ListView Function GUI"
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
Gui, 25:destroy
Gui, +LastFound +OwnDialogs +Disabled
; Gui, Margin, 10, 10
Gui, 25:Add, Text, xm ym w100 cBlack ,Choose a file:
Gui, 25:Add, Edit, %k_Position% w590 vDatabaseChooseFileLockURL,
Gui, 25:Add, Button, %k_Position% w80 gDatabaseChooseFileLock,Choose a file

Gui, 25:Add, Text, xm ym+30 w100 h20 vTX, SQL statement:
; Gui, 25:Add, ComboBox, x+0 ym+30 w590 vSQL Sort, %CBBSQL%
Gui, 25:Add, Edit, x+0 ym+30 w590 vSQL Sort, %CBBSQL%
Gui, 25:Add, Button, %k_Position% ym+30 w80 hp vRun gRunSQL Default, Run

; GuiControlGet, P, Pos, SQL
; GuiControl,25:, Move, TX, h%PH%

Gui, 25:Add, Text, xm h20 w100 0x200, Table name:
Gui, 25:Add, Edit, x+0 yp w150 hp vTable, Test
Gui, 25:Add, Button, Section x+10 yp wp hp gGetTable, Get _Table
; Gui, 25:Add, Button, x+10 yp wp hp gGetRecordSet, Get _RecordSet
Gui, 25:Add, Button, x+10 yp wp hp gCreateDatabase, Create Database

Gui, 25:Add, Text, xm h20 w100 0x200, More functions:
Gui, 25:Add, Button, Section x+0 yp w150 hp gGetTablesName, Get name of tables
Gui, 25:Add, Button, Section x+0 yp w150 hp gAddInfoToTable, Add info to table
Gui, 25:Add, Button, Section x+0 yp w150 hp gShowInfoOfTable, Show info of table
; Gui, 25:Add, Button, x+10 yp wp hp gGetRecordSet, Get _RecordSet
; Gui, 25:Add, Button, x+10 yp wp hp gCreateDatabase, Create Database

Gui, 25:Add, GroupBox, xm w980 h430, Results
Gui, 25:Add, ListView, xp+10 yp+18 w960 h400 HwndResultsLV +LV0x00010000 gSubLV AltSubmit
Gui, 25:Add, StatusBar,
Gui, 25:Show, , %Title%

GoTo, LoadAndReload25

return

; ======================================================================================================================
; Use Class SQLiteDB : Initialize and get lib version
; ======================================================================================================================
LoadAndReload25:
; GuiControl,25:,SQL,%CBBSQL%
GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
SB_SetText("SQLiteDB new")
SetWorkingDir %A_MyDocuments%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB
; SB_SetText("OpenDB")
; If !DB.OpenDB(DBFileName) {
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    ; ExitApp
; }
return

; Sleep, 1000
; SB_SetText("Version")
; Version := DB.Version
; WinSetTitle, %Title% - SQLite3.dll v %Version%
; MsgBox, %Version%

; Sleep, 1000
; ======================================================================================================================
; Use Class SQLiteDB : Open/Create database and table
; ======================================================================================================================
; CreateDatabase:
; SB_SetText("OpenDB")
; If !DB.OpenDB(DBFileName) {
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    ; ExitApp
; }
; Sleep, 1000
; SB_SetText("Exec: CREATE TABLE")
; SQL := "CREATE TABLE Test (Name, Fname, Phone, Room, PRIMARY KEY(Name ASC, FName ASC));"
; If !DB.Exec(SQL)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; Sleep, 1000
; SB_SetText("Exec: INSERT 1000 rows")
; Start := A_TickCount
; DB.Exec("BEGIN TRANSACTION;")
; SQLStr := ""
; _SQL := "INSERT INTO Test VALUES('NÃ¤me#', 'Fname#', 'Phone#', 'Room#');"
; Loop, 1000 {
;    StringReplace, SQL, _SQL, #, %A_Index%, All
;    SQLStr .= SQL
; }
; If !DB.Exec(SQLStr)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; DB.Exec("COMMIT TRANSACTION;")
; SQLStr := ""
; SB_SetText("Exec: INSERT 1000 rows done in " . (A_TickCount - Start) . " ms")
; Sleep, 1000
; return
; ======================================================================================================================
; Use Class SQLiteDB : Using Exec() with callback function
; ======================================================================================================================
; SB_SetText("Exec: Using a callback function")
; SQL := "SELECT COUNT(*) FROM Test;"
; DB.Exec(SQL, "SQLiteExecCallBack")
; ======================================================================================================================
; Use Class SQLiteDB : Get some informations
; ======================================================================================================================
; SB_SetText("LastInsertRowID")
; If !DB.LastInsertRowID(RowID)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; GuiControl,25:, -ReDraw, ResultsLV
; LV_Delete()
; ColCount := LV_GetCount("Column")
; Loop, %ColCount%
;    LV_DeleteCol(1)
; LV_InsertCol(1,"", "LastInsertedRowID")
; LV_Add("", RowID)
; GuiControl,25:, +ReDraw, ResultsLV
; Sleep, 1000
; SQL := "SELECT COUNT(*) FROM Test;"
; SB_SetText("SQLite_GetTable : " . SQL)
; Result := ""
; If !DB.GetTable(SQL, Result)
;    MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; ShowTable(Result)
; Sleep, 1000
; ======================================================================================================================
; Start of query using Query() : Get the column names for table Test
; ======================================================================================================================
; SQL := "SELECT * FROM Test;"
; SB_SetText("Query : " . SQL)
; If !DB.Query(SQL, RecordSet)
;    MsgBox, 16, SQLite Error: Query, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
; GuiControl,25:, -ReDraw, ResultsLV
; LV_Delete()
; ColCount := LV_GetCount("Column")
; Loop, %ColCount%
;    LV_DeleteCol(1)
; LV_InsertCol(1,"", "Column names")
; Loop, % RecordSet.ColumnCount
;    LV_Add("", RecordSet.ColumnNames[A_Index])
; LV_ModifyCol(1, "AutoHdr")
; RecordSet.Free()
; GuiControl,25:, +ReDraw, ResultsLV
; ; ======================================================================================================================
; ; End of query using Query()
; ; ======================================================================================================================
; Gui, -Disabled
; Return
; return

; SELECT * FROM sqlite_master WHERE type='table';

GetTablesName:
SQLgetTablesQuery = SELECT * FROM sqlite_master WHERE type='table';
GuiControl,25:,SQL,%SQLgetTablesQuery%
return

; ======================================================================================================================
; Use Class SQLiteDB : Open/Create database and table
; ======================================================================================================================
CreateDatabase:
DBFileName := DatabaseChooseFileLockURL
; MsgBox, %DBFileName%
If FileExist(DBFileName) {
   SB_SetText("Deleting " . DBFileName)
   FileDelete, %DBFileName%
}
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}
Sleep, 1000
SB_SetText("Exec: CREATE TABLE")
SQL := "CREATE TABLE Test (Name, Fname, Phone, Room, PRIMARY KEY(Name ASC, FName ASC));"
If !DB.Exec(SQL)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
Sleep, 1000
SB_SetText("Exec: INSERT 100 rows")
Start := A_TickCount
DB.Exec("BEGIN TRANSACTION;")
SQLStr := ""
_SQL := "INSERT INTO Test VALUES('Name#', 'Fname#', 'Phone#', 'Room#');"
Loop, 100 {
   StringReplace, SQL, _SQL, #, %A_Index%, All
   SQLStr .= SQL
}
If !DB.Exec(SQLStr)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
DB.Exec("COMMIT TRANSACTION;")
SQLStr := ""
SB_SetText("Exec: INSERT 100 rows done in " . (A_TickCount - Start) . " ms")
Sleep, 1000
DB.CloseDB()
return
; ======================================================================================================================
; Gui Subs
; ======================================================================================================================
; GuiClose:
; GuiEscape:
; If !DB.CloseDB()
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; Gui, Destroy
; ExitApp
; ======================================================================================================================
; Other Subs
; ======================================================================================================================
; "One step" query using GetTable()
; ======================================================================================================================
GetTable:
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, 25:Submit, NoHide
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
}
Result := ""
SQL := "SELECT * FROM " . Table . ";"
SB_SetText("GetTable: " . SQL)
Start := A_TickCount
If !DB.GetTable(SQL, Result)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
SB_SetText("GetTable: " . SQL . " done in " . (A_TickCount - Start) . " ms")
ShowTable(Result)s
DB.CloseDB()
Return
; ======================================================================================================================
; Show results for prepared query using Query()
; ======================================================================================================================
GetRecordSet:
DBFileName := DatabaseChooseFileLockURL
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}
Gui, 25:Submit, NoHide
SQL := "SELECT * FROM " . Table . ";"
SB_SetText("Query: " . SQL)
RecordSet := ""
Start := A_TickCount
If !DB.Query(SQL, RecordSet)
   MsgBox, 16, SQLite Error: Query, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
ShowRecordSet(RecordSet)
RecordSet.Free()
SB_SetText("Query: " . SQL . " done in " . (A_TickCount - Start) . " ms")
DB.CloseDB()
Return
; ======================================================================================================================
; Execute SQL statement using Exec() / GetTable()
; ======================================================================================================================
RunSQL:
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, +OwnDialogs
GuiControlGet, SQL
If SQL Is Space
{
   SB_SetText("No text entered")
   Return
}
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
   GuiControl, , SQL, %SQL%
   CBBSQL .= "`n" . SQL
}
If (SubStr(SQL, 0) <> ";")
   SQL .= ";"
Result := ""
If RegExMatch(SQL, "i)^\s*SELECT\s") {
   SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, Result)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      ShowTable(Result)
   SB_SetText("GetTable: " . SQL . " done!")
} Else {
   SB_SetText("Exec: " . SQL)
   If !DB.Exec(SQL)
      MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      SB_SetText("Exec: " . SQL . " done!")
}
DB.CloseDB()
Return
; ======================================================================================================================
; Exec() callback function sample
; ======================================================================================================================
; SQLiteExecCallBack(DB, ColumnCount, ColumnValues, ColumnNames) {
;    This := Object(DB)
;    MsgBox, 0, %A_ThisFunc%
;       , % "SQLite version: " . This.Version . "`n"
;       . "SQL statement: " . StrGet(A_EventInfo) . "`n"
;       . "Number of columns: " . ColumnCount . "`n"
;       . "Name of first column: " . StrGet(NumGet(ColumnNames + 0, "UInt"), "UTF-8") . "`n"
;       . "Value of first column: " . StrGet(NumGet(ColumnValues + 0, "UInt"), "UTF-8")
;    Return 0
; }
; ======================================================================================================================
; Show results
; ======================================================================================================================
ShowTable(Table) {
   Global
   Local ColCount, RowCount, Row
   GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (Table.HasNames) {
      Loop, % Table.ColumnCount
         LV_InsertCol(A_Index,"", Table.ColumnNames[A_Index])
      If (Table.HasRows) {
         Loop, % Table.RowCount {
            RowCount := LV_Add("", "")
            Table.Next(Row)
            Loop, % Table.ColumnCount
               LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
         }
      }
      Loop, % Table.ColumnCount
         LV_ModifyCol(A_Index, "AutoHdr")
   }
   GuiControl,25:, +ReDraw, ResultsLV
}
ShowTableString(Table) {
   Global
   ; StringForMSGBox :=
   ; StringForMSGBox1 :=
   Local ColCount, RowCount, Row
   ; GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (Table.HasNames) {
      Loop, % Table.ColumnCount

        ; MsgBox, % Table.ColumnNames[A_Index]

        ; MsgBox, % (A_Index,"", Table.ColumnNames[A_Index])
         ; LV_InsertCol(A_Index,"", Table.ColumnNames[A_Index])
      If (Table.HasRows) {
        ; StringForMSGBox :=
        ; StringForMSGBox1 :=
         Loop, % Table.RowCount {
            RowCount := LV_Add("", "")
            Table.Next(Row)
            Loop, % Table.ColumnCount
               ; LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
               ; MsgBox, % (RowCount, "Col" . A_Index, Row[A_Index])
               ; MsgBox, "dsdsfds"
               ; if(A_Index<20)
               ; {
                StringForMSGBox1 := % Row[A_Index]
                ; StringForMSGBox = %StringForMSGBox% %RowCount% "Col" . %A_Index% %StringForMSGBox1% "----------------" ; % Row[A_Index]
                StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
               ; }
         }

         ; works
         ; MsgBox, %StringForMSGBox%

      }
      ; MsgBox, %StringForMSGBox%
      Loop, % Table.ColumnCount
         LV_ModifyCol(A_Index, "AutoHdr")
         ; MsgBox, %A_Index%
   }
   ; MsgBox, %StringForMSGBox%
   ; GuiControl,25:, +ReDraw, ResultsLV
}
; ----------------------------------------------------------------------------------------------------------------------
ShowRecordSet(RecordSet) {
   Global
   Local ColCount, RowCount, Row, RC
   GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (RecordSet.HasNames) {
      Loop, % RecordSet.ColumnCount
         LV_InsertCol(A_Index,"", RecordSet.ColumnNames[A_Index])
   }
   If (RecordSet.HasRows) {
      If (RecordSet.Next(Row) < 1) {
         MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
         Return
      }
      Loop {
         RowCount := LV_Add("", "")
         Loop, % RecordSet.ColumnCount
            LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
            RC := RecordSet.Next(Row)
      } Until (RC < 1)
   }
   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   GuiControl,25:, +ReDraw, ResultsLV
}

DatabaseChooseFileLock:
FileSelectFile, SelectedFile, 3, , Open a file,
if SelectedFile =
    MsgBox, The user didn't select anything.
else
GuiControl,,DatabaseChooseFileLockURL,%SelectedFile%
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
return

; GetMoreDataFromTheData:
; if A_GuiEvent = DoubleClick
; {
;     ; LV_GetText(OutputVar, A_EventInfo [, ColumnNumber])
;     ; LV_GetText(RowText, A_EventInfo [, ColumnNumber])
;     ; LV_GetText(RowText, A_EventInfo, 2)
;     ; MsgBox, %RowText% %A_EventInfo% %ColumnNumber%
;     ; MsgBox, % LV_GetCount("Column")
;
;     ; MsgBox, %
;
;     Loop % LV_GetCount("Column")
;     {
;         ; SendMessage, 4125, A_Index - 1, 0, SysListView321  ; 4125 is LVM_GETCOLUMNWIDTH.
;           ; LV_GetIndex
          ; LV_GetText(RowText, A_EventInfo, A_Index)
          ; MsgBox, %RowText% %A_EventInfo% %A_Index%
;
;         ; MsgBox Column %A_Index%'s width is %ErrorLevel%.
;     }
;
; }
; return

; ----------------------------------------------------------------------------------------------------------------------
SubLV:
   If (A_GuiEvent = "Normal") {
      Row := A_EventInfo
      Column := LV_SubItemHitTest(ResultsLV)

      LV_GetText(RowText, A_EventInfo, Column)
      ; MsgBox, %RowText% %A_EventInfo% %A_Index%

      ; LV_GetText(RowText, A_EventInfo, A_Index)
      ; MsgBox, %RowText% %A_EventInfo% %A_Index%

      ; ToolTip, You clicked on column %Column% in row %Row%! %RowText% %A_EventInfo%
      ToolTip, %RowText%

      BuildSQLquery = SELECT * FROM %RowText%
      GuiControl,25:,SQL,%BuildSQLquery%

      SetTimer, KillToolTip, -1500
   }
Return
; ----------------------------------------------------------------------------------------------------------------------
KillToolTip:
   ToolTip
Return
; ----------------------------------------------------------------------------------------------------------------------
LV_SubitemHitTest(HLV) {
   ; To run this with AHK_Basic change all DllCall types "Ptr" to "UInt", please.
   ; HLV - ListView's HWND
   Static LVM_SUBITEMHITTEST := 0x1039
   VarSetCapacity(POINT, 8, 0)
   ; Get the current cursor position in screen coordinates
   DllCall("User32.dll\GetCursorPos", "Ptr", &POINT)
   ; Convert them to client coordinates related to the ListView
   DllCall("User32.dll\ScreenToClient", "Ptr", HLV, "Ptr", &POINT)
   ; Create a LVHITTESTINFO structure (see below)
   VarSetCapacity(LVHITTESTINFO, 24, 0)
   ; Store the relative mouse coordinates
   NumPut(NumGet(POINT, 0, "Int"), LVHITTESTINFO, 0, "Int")
   NumPut(NumGet(POINT, 4, "Int"), LVHITTESTINFO, 4, "Int")
   ; Send a LVM_SUBITEMHITTEST to the ListView
   SendMessage, LVM_SUBITEMHITTEST, 0, &LVHITTESTINFO, , ahk_id %HLV%
   ; If no item was found on this position, the return value is -1
   If (ErrorLevel = -1)
      Return 0
   ; Get the corresponding subitem (column)
   Subitem := NumGet(LVHITTESTINFO, 16, "Int") + 1
   Return Subitem
}
/*
typedef struct _LVHITTESTINFO {
  POINT pt;
  UINT  flags;
  int   iItem;
  int   iSubItem;
  int   iGroup;
} LVHITTESTINFO, *LPLVHITTESTINFO;
*/

AddInfoToTable:
BuildSQLquery = INSERT INTO Test VALUES('Name#', 'Fname#', 'Phone#', 'Room#');
GuiControl,25:,SQL,%BuildSQLquery%
return

ShowInfoOfTable:
BuildSQLquery = SELECT * FROM Test
GuiControl,25:,SQL,%BuildSQLquery%
return

SQLiteINSERTINTOxVALUES:
; "INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',300,35.14)"
GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
SB_SetText("SQLiteDB new")
SetWorkingDir %A_MyDocuments%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB


GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, +OwnDialogs
GuiControlGet, SQL
If SQL Is Space
{
   SB_SetText("No text entered")
   Return
}
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
   GuiControl, , SQL, %SQL%
   CBBSQL .= "`n" . SQL
}
If (SubStr(SQL, 0) <> ";")
   SQL .= ";"
Result := ""
If RegExMatch(SQL, "i)^\s*SELECT\s") {
   SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, Result)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      ShowTable(Result)
   SB_SetText("GetTable: " . SQL . " done!")
} Else {
   SB_SetText("Exec: " . SQL)
   If !DB.Exec(SQL)
      MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      SB_SetText("Exec: " . SQL . " done!")
}
DB.CloseDB()
return






















































;OnClipboardChange:
;Critical
;resetClipboardTime2()
;return

; resetClipboardTime41()
; {
;     IniWrite, 0, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger41
; }

; resetClipboardTime42()
; {
;     IniWrite, 0, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger42
; }

; THIS WAS COMMENTED AND IS COMMENTED AGAIN BECAUSE IT BUGS CTRL HOLDING INTEGRATION

; !capslock::

;    ResetClipboardInteger()
;    IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    ++keyCounter
;    IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger

;    ; MsgBox, % 
;    SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)

; return

; ^capslock::

;    ResetClipboardInteger()
;    IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    --keyCounter
;    IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
;    IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger

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

; IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; ++keyCounter
; IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger

; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; ^!WheelDown::

; ; WheelDown:: return 

; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; --keyCounter
; IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
 
; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return



; ^capslock::

; MsgBox, "ssss"

; return

; ^capslock::
; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; ++keyCounter
; IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger

; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; !capslock::
; capsToggle := 0
; SetCapsLockState, Off

; IniRead, keyCounter, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; --keyCounter
; IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
; IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
 
; AlternativeSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunctionWithVar(keyCounter)
; return

; resetClipboardTime()
; {
;     CurrentTimeClipboard = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
;     IniWrite, %CurrentTimeClipboard%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardDateInteger
; }

LastKeyPressedTimingFunction()
{
CurrentTimeClipboard = %A_YYYY%%A_MM%%A_DD%%A_Hour%%A_Min%%A_Sec%
IniRead, DateDiffValueFromClipboardValue, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardDateInteger
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
IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
IniWrite, 0, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
return
}

; ifClipboardVariable := % LastKeyPressedTimingFunction()
; if(%ifClipboardVariable%>10)
; {
; IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
; IniWrite, 0, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile.ini, ClipboardConfig, ClipboardInteger
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
   SetTimer, RemoveToolTipClipboard_Unified_Functions_And_Labels_Script, %TimeClipboardVariable%


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
      IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
      IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
   }

   if (keyCounter < 0) {
      keyCounter := 0
      IniDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
      IniWrite, %keyCounter%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardIniFile2.ini, ClipboardConfig, ClipboardInteger
   }

   AbsValueDividedValue := % keyCounter
   this_color := % ColorArray[AbsValueDividedValue]
   LengthValueDividedValue := % StrLen(this_color)
   VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue

   SendInput, % this_color

   TimeClipboardVariable := LengthValueDividedValue * -15
   SplashTextOn,,,%AbsValueDividedValue%,
   SetTimer, RemoveToolTipClipboard_Unified_Functions_And_Labels_Script, %TimeClipboardVariable%


   loop, %LengthValueDividedValue%
   {
      SendInput {Shift down}
      SendInput {left}
      SendInput {Shift up}
   }

}





































































ShowRecordSetStringGetSpecificColumnAndUseInClipboard(RecordSet) {
   Global
   Local ColCount, RowCount, Row, RC
   ; GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")

    
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (RecordSet.HasNames) {
      Loop, % RecordSet.ColumnCount
         LV_InsertCol(A_Index,"", RecordSet.ColumnNames[A_Index])
   }
   If (RecordSet.HasRows) {

     Aindex := 0
     If (RecordSet.Next(Row) < 1) {
        MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
        Return
     }
     Loop, % RecordSet.ColumnCount  {

       StringForMSGBox :=
       StringForMSGBox1 :=
       Aindex := Aindex + 1
       Loop {
            RowCount := LV_Add("", "")

            ; MsgBox, %Aindex%
            Loop, % Aindex {
              CustomDelimeter := "(((|||CustomDelimeter|||)))"
              StringForMSGBox1 := % Row[A_Index]
              StringForMSGBox = %StringForMSGBox% %StringForMSGBox1% %CustomDelimeter%
              RC := RecordSet.Next(Row)
            }
            ; MsgBox, %StringForMSGBox%
            ; Loop, % A_Index {
            ;   StringForMSGBox1 := % Row[A_Index]
            ;   StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
            ;   RC := RecordSet.Next(Row)
            ; }

            } Until (RC < 1)

; MsgBox, %StringForMSGBox%
; MsgBox, %StringForMSGBox%

      }
      ; MsgBox, %StringForMSGBox%
	  
	  ;TODO SOME WORK WITH THIS CODE LATTER
	  
      ;FileAppend, %StringForMSGBox%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\log.txt
      ; MsgBox, %StringForMSGBox%
  }

   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   ; GuiControl,25:, +ReDraw, ResultsLV

return StringForMSGBox
}

callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction(){
; "SELECT * FROM stocks"
; C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\SQLiteAHKdatabases\test.DB

; MyDB.GetTable(SQL, Table, ...)
; Should be called for SELECT statements whenever you want to get the complete
; result of the query as a "Table" object for direct access via the row index.
; All field values will be returned "in their zero-terminated string representation"
; (and accordingly an empty string for NULL values).
; MyDB.Query(SQL, RecordSet, ...)
; Should be called for SELECT statements whenever you want to get the result
; of the query as a "RecordSet" object. You'll have to call the built-in method
; RecordSet.Next() to access the records sequentially. Only DB-Query() does handle
; BLOBs properly. All other field types will be returned as strings (see DB.GetTable()).
; If you don't need the RecordSet anymore, call RecordSet.Free() to release the resources.


; CBBSQL := "SELECT * FROM albums"
; SQL := "SELECT * FROM albums"
; DBFileName := A_MyDocuments . "\AHKlibs\SQLiteAHKdatabases\chinook.db"
CBBSQL := "SELECT * FROM test"
; SQL := "SELECT * FROM test"
SQL := "select mText from Main"
DBFileName := "C:\Users\" . A_UserName . "\AppData\Roaming\Ditto\Ditto_1.db"
; Title := "SQL Query/Command ListView Function GUI"
; GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
; SB_SetText("SQLiteDB new")
; SetWorkingDir %A_MyDocuments%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB
; Table := "Test"
; MsgBox, %DBFileName%
; GuiControlGet, DatabaseChooseFileLockURL
; DBFileName := DatabaseChooseFileLockURL
; GuiControlGet, Table
; Gui, +OwnDialogs
; GuiControlGet, SQL
; If SQL Is Space
; {
;    SB_SetText("No text entered")
;    Return
; }
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
; SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

; DB.GetTable(SQL, Table)

; If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
;    GuiControl, , SQL, %SQL%
;    CBBSQL .= "`n" . SQL
; }
; If (SubStr(SQL, 0) <> ";")
;    SQL .= ";"
; Result := ""
; If RegExMatch(SQL, "i)^\s*SELECT\s") {
;    SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, GetTableResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

   If !DB.Query(SQL, QueryResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

      ; ShowTableString(GetTableResult)
    ;   MsgBox, % QueryResult
      FunctionReturn := % ShowRecordSetStringGetSpecificColumnAndUseInClipboard(QueryResult)
    ;   MsgBox, %FunctionReturn%
;    SB_SetText("GetTable: " . SQL . " done!")
; } Else {
;    SB_SetText("Exec: " . SQL)
;    If !DB.Exec(SQL)
;       MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    Else
;       SB_SetText("Exec: " . SQL . " done!")
; }


; MsgBox, % GetTableResult
; MsgBox, % QueryResult.Next()
DB.CloseDB()
return FunctionReturn
}

callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboard()
{
SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()
return
}

SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard:
SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()
return


SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction(){
ReturnedStringThatNeedsToBeSeparated := % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()

; MsgBox, %ReturnedStringThatNeedsToBeSeparated%





; StringSplit, word_array, ReturnedStringThatNeedsToBeSeparated, "(((|||CustomDelimeter|||)))",  ; Omits periods.
; MsgBox, The 4th word is %word_array2%.

; Colors = red,green,blue

ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, "(((|||CustomDelimeter|||)))")
; Loop % ColorArray.MaxIndex()
; {
   MaxValue := % ColorArray.MaxIndex()
   ; MsgBox, %MaxValue%
   DividedValue := A_Index - MaxValue
   ; MsgBox, %DividedValue%
   AbsValueDividedValue := % Abs(DividedValue)
   ; MsgBox, %AbsValueDividedValue%
   this_color := % ColorArray[AbsValueDividedValue]
   ; MsgBox, Color number %AbsValueDividedValue% is `n%this_color%.
   LengthValueDividedValue := % StrLen(this_color)
   VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue
   MsgBox, % VariableCombination
   ; Clipboard = % VariableCombination

   ; SendInput, % VariableCombination

   ; ClipSaved := ClipboardAll   ; Save the entire clipboard to a variable of your choice.
   ; ; ... here make temporary use of the clipboard, such as for pasting Unicode text via Transform Unicode ...
   ; Clipboard := ClipSaved   ; Restore the original clipboard. Note the use of Clipboard (not ClipboardAll).
   ; ClipSaved =   ; Free the memory in case the clipboard was very large.


   ; clipboard = Color number %AbsValueDividedValue% is `n%this_color% `n`n`nSize is %LengthValueDividedValue%
   ;  clipboard = Color number %AbsValueDividedValue% is `n%this_color% `n`n`nSize is %LengthValueDividedValue%
   ; SendInput, Color number %AbsValueDividedValue% is `n%this_color% `n`n`nSize is %LengthValueDividedValue%
; }

; MsgBox, % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()
; clipboard = % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()

return
}


RemoveToolTipClipboard_Unified_Functions_And_Labels_Script()
{
SplashTextOff
}













































































ShowRecordSetString(RecordSet) {
   Global
   Local ColCount, RowCount, Row, RC
   ; GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")

    
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (RecordSet.HasNames) {
      Loop, % RecordSet.ColumnCount
         LV_InsertCol(A_Index,"", RecordSet.ColumnNames[A_Index])
   }
   If (RecordSet.HasRows) {

     Aindex := 0
     If (RecordSet.Next(Row) < 1) {
        MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
        Return
     }
     Loop, % RecordSet.ColumnCount  {

       StringForMSGBox :=
       StringForMSGBox1 :=
       Aindex := Aindex + 1
       Loop {
            RowCount := LV_Add("", "")

            ; MsgBox, %Aindex%
            Loop, % Aindex {
              StringForMSGBox1 := % Row[A_Index]
              StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
              RC := RecordSet.Next(Row)
            }
            ; MsgBox, %StringForMSGBox%
            ; Loop, % A_Index {
            ;   StringForMSGBox1 := % Row[A_Index]
            ;   StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
            ;   RC := RecordSet.Next(Row)
            ; }

            } Until (RC < 1)

; MsgBox, %StringForMSGBox%
; MsgBox, %StringForMSGBox%

      }
      ; MsgBox, %StringForMSGBox%
	  
	  ;TODO SOME WORK WITH THIS CODE LATTER
	  
      ;FileAppend, %StringForMSGBox%, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\log.txt
      ; MsgBox, %StringForMSGBox%
  }

   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   ; GuiControl,25:, +ReDraw, ResultsLV
}

SQLiteSELECT*FROM:
; "SELECT * FROM stocks"
; C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\SQLiteAHKdatabases\test.DB

; MyDB.GetTable(SQL, Table, ...)
; Should be called for SELECT statements whenever you want to get the complete
; result of the query as a "Table" object for direct access via the row index.
; All field values will be returned "in their zero-terminated string representation"
; (and accordingly an empty string for NULL values).
; MyDB.Query(SQL, RecordSet, ...)
; Should be called for SELECT statements whenever you want to get the result
; of the query as a "RecordSet" object. You'll have to call the built-in method
; RecordSet.Next() to access the records sequentially. Only DB-Query() does handle
; BLOBs properly. All other field types will be returned as strings (see DB.GetTable()).
; If you don't need the RecordSet anymore, call RecordSet.Free() to release the resources.


; CBBSQL := "SELECT * FROM albums"
; SQL := "SELECT * FROM albums"
; DBFileName := A_MyDocuments . "\AHKlibs\SQLiteAHKdatabases\chinook.db"
CBBSQL := "SELECT * FROM test"
SQL := "SELECT * FROM test"
; SQL := "select Fname from test"
DBFileName := A_MyDocuments . "\AHKHelpy\AHKlibs\SQLiteAHKdatabases\test.db"
; Title := "SQL Query/Command ListView Function GUI"
; GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
; SB_SetText("SQLiteDB new")
; SetWorkingDir %A_MyDocuments%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB
Table := "Test"

; GuiControlGet, DatabaseChooseFileLockURL
; DBFileName := DatabaseChooseFileLockURL
; GuiControlGet, Table
; Gui, +OwnDialogs
; GuiControlGet, SQL
; If SQL Is Space
; {
;    SB_SetText("No text entered")
;    Return
; }
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
; SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

; DB.GetTable(SQL, Table)

; If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
;    GuiControl, , SQL, %SQL%
;    CBBSQL .= "`n" . SQL
; }
; If (SubStr(SQL, 0) <> ";")
;    SQL .= ";"
; Result := ""
; If RegExMatch(SQL, "i)^\s*SELECT\s") {
;    SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, GetTableResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

   If !DB.Query(SQL, QueryResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

      ; ShowTableString(GetTableResult)
    ;   MsgBox, % QueryResult
      ShowRecordSetString(QueryResult)

;    SB_SetText("GetTable: " . SQL . " done!")
; } Else {
;    SB_SetText("Exec: " . SQL)
;    If !DB.Exec(SQL)
;       MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    Else
;       SB_SetText("Exec: " . SQL . " done!")
; }


; MsgBox, % GetTableResult
; MsgBox, % QueryResult.Next()
DB.CloseDB()
return














































































































;|helpySupportFunctions||SEARCHINDICATOR|
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
; #Include %A_MyDocuments%\AHKHelpy\AHKlibs\Security\AHK_CNG\src\hash\win10\bcrypt_sha512.ahk
; #Include %A_MyDocuments%\AHKHelpy\AHKlibs\Security\AHK_CNG\src\hash\win10\bcrypt_sha512_hmac.ahk
; #Include %A_MyDocuments%\AHKHelpy\AHKlibs\Security\AHK_CNG\src\hash\win10\class_bcrypt.ahk
; #Include %A_MyDocuments%\AHKHelpy\AHKlibs\Security\AHK_CNG\src\hash\win10
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
FileDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, False`n, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
FileAppend, test, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; :*:kkkkkh::
; FileReadLine, line, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt, 1
; MsgBox, %line%
; if ( False = %line% ){
; FileDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, True`n, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
; FileDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; FileAppend,, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\KeystrokeForSearch.txt
; ;GoTo, Keyloggerino
; }
; else if ( True = %line% ){
; FileDelete, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
; FileAppend, False`n, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\BooleanFile.txt
; FileReadLine, line2, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\KeystrokeForSearch.txt, 1
; StringTrimLeft, line2, line2, 1
; MsgBox, %line2%
; }
; return
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


; ActivateClipboard:
; WinActivate ahk_id %previous_ID%
; if clipboardOld =
; {
; clipboardOld = %Clipboard%
; }
; loop{
; if clipboardOld != %Clipboard%
; {
; fileappend, %Clipboard%`n, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ClipboardDatabase.txt
; clipboardOld = %Clipboard%
; }
; sleep,1000
; }
; return

; SavePaste:
;     WinActivate ahk_id %previous_ID%
;     SendInput {Lctrl down}
;     sleep, 1
;     SendInput {c}
;     sleep, 1
;     SendInput {Lctrl up}
;     sleep, 1
;     fileappend, %Clipboard%`n, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\Clipy.txt
; return

; OpenClipy:
;     WinActivate ahk_id %previous_ID%
;     Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\Clipy.txt
; return

; OpenWebClipy:
;     WinActivate ahk_id %previous_ID%
;     SendInput {Lalt down}
;     sleep, 1
;     SendInput {Lctrl down}
;     sleep, 1
;     SendInput {n}
;     sleep, 1
;     SendInput {Lctrl up}
;     sleep, 1
;     SendInput {Lalt up}
;     sleep, 1000
;     SendInput https://www.evernote.com/shard/s236/nl/30918519/01ffeb0b-c1ad-47c5-872a-9a2b1881c61b
;     sleep, 1
;     SendInput {enter}
; return

; MNZnoButton:
; CoordMode, Mouse, Screen
; Gui, 16:Destroy
; Gui, 16:Add, Groupbox, w550 h350,

; ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
; ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]
; ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
; ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

; Gui, 16:Add, Button, xm w100 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 16:Add, Edit, %k_Position% w250 vMNZnoButton,
; Gui, 16:Add, Text, xm x150 yp+25  cWhite ,
; Gui, 16:Add, Edit, xm w350 h20 x100 yp+25 vGeneratedPassZlogy,
; Gui, 16:Add, Button, xm w350 x100 yp+25 gGenerateMNZnoButton,MNZnoButton
; Gui, 16:Font, s18 cRed Bold, Verdana
; GuiControl, 16:Font, MyEdit
; Gui, 16:Color, 000000, FFFFFF
; Gui, 16:Show, x65 y65, Zlogy2
; MouseMove, 65, 340
; WinSet, Redraw,, Zlogy2
; return

; GenerateMNZnoButton:
; NameOfFile := "StringBank.txt"
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

; Index := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchString)
; GuiControlGet, MNZnoButton
; ; GuiControlGet, UsernameZlogy
; ; GuiControlGet, PassZlogy
; randomString = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; randomString1 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; randomString2 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; Msgbox, %URLZlogy% %UsernameZlogy% %PassZlogy% %randomString%  %randomString1%
; TF(NameOfFile)
; IndexToUse1 := Index+1
; TextToInsert1 := randomString . "=" . MNZnoButton
; ; TextToInsert2 := randomString1 . "=" . UsernameZlogy
; ; TextToInsert3 := randomString2 . "=" . PassZlogy
; ; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert3)
; ; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)
; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%
; ; sleep, 100
; Line := False
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

; ;section2

; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchString)
; ; Msgbox, %Index1%
; randomStringK = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; randomString1E = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; randomString2P = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; TF(NameOfFile1)
; IndexToUse1 := Index1+1

; ; unclock with hash

; TextToInsert1 := "K" . randomStringK . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
; ; TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
; ; TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

; ;lock with hash

; ; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert3)
; ; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; Line := False

; ;section3


; ; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; ; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; ; ; Msgbox, %Index1%
; ; TF(NameOfFile1)
; ; randomStringButton = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; IndexToUse1 := Index1+1
; ; TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"
; ; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsertButton)
; ; FileDelete, %NameOfFile1%
; ; FileAppend, %t%, %NameOfFile1%
; ; sleep, 100
; ; Line := False
; ; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringb)
; ; ; Msgbox, %Index1%
; ; IndexToUse2 := Index1+1
; ; TextToInsert1b := randomStringButton . ":" . "`r`n" . "WinActivate ahk_id %previous_ID%"
; ; ; TextToInsert2b :=
; ; TextToInsert3b := "SendInput %" . "E" . randomString1E . "%{tab}%" . "P" . randomString2P . "%{tab}{enter}"
; ; TextToInsert4b := "return"
; ; TF(NameOfFile1)
; ; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert4b)
; ; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert3b)
; ; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert1b)
; ; FileDelete, %NameOfFile1%
; ; FileAppend, %t%, %NameOfFile1%

; outputRandomStringK := "K" . randomStringK
; Clipboard := outputRandomStringK
; GuiControl, 16:, GeneratedPassZlogy, %outputRandomStringK%
; ; %CounterZlogy12%

; FileGetAttrib,attribs,%A_ScriptFullPath%
; FileSetAttrib,-A,%A_ScriptFullPath%
; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; closeHelpyAfterExecutingCommands()
; return

; RemoveSpecificZlogy:
; CoordMode, Mouse, Screen
; Gui, 17:Destroy
; Gui, 17:Add, Groupbox, h1000 w1650,
; Gui, 17:Add, ListView, xm r20 w1450 h800 x100 yp+25 gRemoveSpecificZlogyListView, Key|1st random string|2nd random string
; Gui, 17:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 17:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
; Gui, 17:Font, s18 cRed Bold, Verdana
; GuiControl, 17:Font, MyEdit
; Gui, 17:Color, 000000, FFFFFF
; Gui, 17:Show, h1000 w1650 x65 y65, Zlogy2

; Gui, 17:Default
; Gosub, AutoStartLabel17

; ; RemoveSpecificZlogyFunc()

; return

; RemoveSpecificZlogyFunc:
; NameOfFile := "StringBank.txt"
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; GuiControlGet, RemoveSpecificZlogy
; FileLocation = %A_MyDocuments%\AHKHelpy\StringBank.txt

; ArrayFromString := StrSplit(RemoveSpecificZlogy, " ","")

; ; UStringBank 424 EStringBank 425 PStringBank 426 |||
; ; UValueMaped 3222 EValueMaped 3223 PValueMaped 3224  |||
; ; GuiFunctionValueMaped 3464 |||
; ; LabelValueMapedLine1 4155 LabelValueMapedLine2 4156 LabelValueMapedLine3 4157 LabelValueMapedLine4 4158

; Uvalue := ArrayFromString[2]
; Evalue := ArrayFromString[4]
; Pvalue := ArrayFromString[6]

; UvalueMapped := ArrayFromString[9]
; EvalueMapped := ArrayFromString[11]
; PvalueMapped := ArrayFromString[13]

; GuiMapped := ArrayFromString[17]

; LabelMapped1 := ArrayFromString[20]
; LabelMapped2 := ArrayFromString[22]
; LabelMapped3 := ArrayFromString[24]
; LabelMapped4 := ArrayFromString[26]

; TF(NameOfFile)
; t := TF_RemoveLines(t, Uvalue, Uvalue)
; t := TF_RemoveLines(t, Uvalue, Uvalue)
; t := TF_RemoveLines(t, Uvalue, Uvalue)
; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%

; TF(NameOfFile1)
; t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)
; t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)
; t := TF_RemoveLines(t, UvalueMapped, UvalueMapped)

; GuiMappedWithReductionOft := GuiMapped - 3

; t := TF_RemoveLines(t, GuiMappedWithReductionOft, GuiMappedWithReductionOft)

; LabelMapped1WithReductionOft := LabelMapped1 - 4

; t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
; t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
; t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
; t := TF_RemoveLines(t, LabelMapped1WithReductionOft, LabelMapped1WithReductionOft)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%

; FileGetAttrib,attribs,%A_ScriptFullPath%
; FileSetAttrib,-A,%A_ScriptFullPath%
; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; closeHelpyAfterExecutingCommands()

; ; TF(NameOfFile)
; ; t := TF_RemoveLines(t, StartIndex, EndIndex)
; ; FileDelete, %NameOfFile%
; ; FileAppend, %t%, %NameOfFile%
; ;
; ; FileGetAttrib,attribs,%A_ScriptFullPath%
; ; FileSetAttrib,-A,%A_ScriptFullPath%
; ; SplashTextOn,,,Updated script,
; ; Sleep,500
; ; Reload
; ; closeHelpyAfterExecutingCommands()


; ; MsgBox, %Uvalue% %Evalue% %Pvalue% %UvalueMapped% %EvalueMapped% %PvalueMapped% %GuiMapped% %LabelMapped1% %LabelMapped2% %LabelMapped3% %LabelMapped4%
; return

; AutoStartLabel17:
; NameOfFile := "StringBank.txt"
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; GuiControlGet, RemoveSpecificZlogy
; FileLocation = %A_MyDocuments%\AHKHelpy\StringBank.txt

; WholeLineArray1 := []
; WholeLineArray2 := []
; WholeLineArray3 := []

; LineNumberForWholeLineArray1 := []
; LineNumberForWholeLineArray2 := []
; LineNumberForWholeLineArray3 := []
; LineNumberForWholeLineArray4 := []
; LineNumberForWholeLineArray5 := []
; LineNumberForWholeLineArray6 := []
; LineNumberForWholeLineArray7 := []

; Line := False

; ; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; ; StartIndex := StartIndex + 1
; ; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringaend)
; ; if(EndIndex <> StartIndex)
; ; {
; ; EndIndex := EndIndex - 1
; ; TF(NameOfFile1)
; ; t := TF_ReadLines(t, StartIndex, EndIndex)
; ;
; ; Loop, Parse, t, `n, `r

; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchString)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchStringend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; ; FileReadLine, variableT, %NameOfFile%, StartIndex
; TF(NameOfFile)
; t := TF_ReadLines(t, StartIndex, EndIndex)
; variableT := t
; ; MsgBox, % variableT
; ArrayOfFile := StrSplit(variableT, "`n","")
; ; MsgBox, % ArrayOfFile[5]
; ; Loop, Parse, t, `n, `r
; ; Loop, Read, %FileLocation%
; ; Loop, Parse, variableT, `n, `r
; ; Loop, %ArrayOfFile%
; for index, element in ArrayOfFile
; {

;   ; MsgBox, % A_LoopReadLine
;   ; MsgBox, % element

;   WholeLineString1 := StrSplit(element, "=")[1]
;   WholeLineString2 := StrSplit(element, "=")[2]

;   WholeLineArray1[Index] := WholeLineString1
;   WholeLineArray2[Index] := WholeLineString2

;   LineNumberForWholeLineArray1[Index] := element

; }



; Loop, Read, %FileLocation1%
; {
; WholeLine3 := % findWholeLineOfStringInFile(FileLocation1, WholeLineArray1[A_Index])
; WholeLineString3 := StrSplit(WholeLine3, "=")[1]
; WholeLineArray3[A_Index] := WholeLineString3
; LineNumberForWholeLineArray2 := A_Index
; }

; Loop, Read, %FileLocation%
; {
; LV_Add("",WholeLineArray2[A_Index], WholeLineArray1[A_Index], WholeLineArray3[A_Index])
; ; LV_Add("", WholeLineArray2[A_Index], WholeLineArray1[A_Index])
; LV_ModifyCol()
; }
; }
; return

; RemoveSpecificZlogyListView:
; if A_GuiEvent = DoubleClick
; {
;     isUrl = 0
;     getWholeLineOfGuiAdder =
;     LV_GetText(RowText, A_EventInfo)
;     removedStartofStringLineNumberForWholeLineArray4 =

;     ; LineNumber1 := % LineNumberForWholeLineArray1[A_EventInfo]
;     ; LineNumber2 := % LineNumberForWholeLineArray2[A_EventInfo]

;     LineNumberForWholeLineArray3[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, WholeLineArray3[A_EventInfo])

;     removedStartofString := % SubStr(LineNumberForWholeLineArray3[A_EventInfo], 3)

;     getLastNumberArray := StrSplit(removedStartofString, " ","")
;     getLastNumberArrayMaxIndex := getLastNumberArray.MaxIndex() - 1

;     ; MsgBox, % removedStartofString

;     getLocationOfLabel := getLastNumberArray[getLastNumberArrayMaxIndex] - 2

;     ; MsgBox, % getLastNumberArrayMaxIndex
;     ; MsgBox, % getLastNumberArray[1]

;     ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]

;     ;need to make the returns uniform and not have 2 kind of returns: urls and others
;     ; MsgBox, % getLocationOfLabel

;     FileReadLine, LocationOfLabel, %NameOfFile1%, getLocationOfLabel
;     StringTrimRight, LocationOfLabelNoColomn, LocationOfLabel, 1

;      ; MsgBox, % LocationOfLabelNoColomn
;     ; LocationOfLabelNoColomn is the name of the label; the path for urls and for nonurls shoould be different
;     LengthLocationOfLabelNoColomn := StrLen(LocationOfLabelNoColomn)

;     if(LengthLocationOfLabelNoColomn == 16)
;     {
;       LineNumberForWholeLineArray4[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, LocationOfLabelNoColomn)
;       removedStartofStringLineNumberForWholeLineArray4 := % SubStr(LineNumberForWholeLineArray4[A_EventInfo], 3)

;       isUrl := 0
;     }
;     else
;     {
;       getLastNumberArray := StrSplit(removedStartofString, " ","")
;       getSecondIndexFromArray := getLastNumberArray[2]
;       ; This is the GuiFunctionValueMaped
;       ; MsgBox, % getSecondIndexFromArray
;       isUrl := 1
;       ; MsgBox,%LocationOfLabelNoColomn%
;     }

;     getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

;     ; gives us the location of the gui call
;     ; MsgBox, % getFirstNumberArray4[1]

;     if(isUrl == 0)
;     {
;       FileReadLine, getWholeLineOfGuiAdder, %NameOfFile1%, getFirstNumberArray4[1]
;     }
;     if(isUrl == 1)
;     {
;       FileReadLine, getWholeLineOfGuiAdder, %NameOfFile1%, getSecondIndexFromArray
;     }

;     ; MsgBox, % getWholeLineOfGuiAdder

;     StringTrimRight, getWholeLineOfGuiAdderStrimmed, getWholeLineOfGuiAdder, 1
;     ; MsgBox, % getWholeLineOfGuiAdder

;     ; gives us the whole line from the location of the gui call
;     ; MsgBox, % getWholeLineOfGuiAdder

;     getTheUrlFromTheStringArray := StrSplit(getWholeLineOfGuiAdderStrimmed, ",%","")

;     ; MsgBox, % getTheUrlFromTheStringArray[2]
;     ; MsgBox, %isUrl%

;     if(isUrl == 0)
;     {
;     LineNumberForWholeLineArray5[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, getTheUrlFromTheStringArray[2])
;     removedStartofStringLineNumberForWholeLineArray5 := % SubStr(LineNumberForWholeLineArray5[A_EventInfo], 3)

;     ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]
;     FileReadLine, WholeLocationOfWholeLineWithTwoValues, %NameOfFile1%, getLastNumberArray[getLastNumberArrayMaxIndex]

;     ; MsgBox, % WholeLocationOfWholeLineWithTwoValues
;     LocationOfWholeLineWithTwoValuesNoStart := StrReplace(WholeLocationOfWholeLineWithTwoValues, "SendInput %","")
;     LocationOfWholeLineWithTwoValuesNoEnd := StrReplace(LocationOfWholeLineWithTwoValuesNoStart, "%{tab}{enter}","")

;     twoValuesArray := StrSplit(LocationOfWholeLineWithTwoValuesNoEnd, "%{tab}%","")
;     value1FromArray := twoValuesArray[1]
;     value2FromArray := twoValuesArray[2]

;     ; MsgBox, value1 %value1FromArray% value2 %value2FromArray%

;     LineNumberForWholeLineArray6[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, value1FromArray)
;     removedStartofStringLineNumberForWholeLineArray6 := % SubStr(LineNumberForWholeLineArray6[A_EventInfo], 3)

;     LineNumberForWholeLineArray7[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, value2FromArray)
;     removedStartofStringLineNumberForWholeLineArray7 := % SubStr(LineNumberForWholeLineArray7[A_EventInfo], 3)

;     ; The Above makes the numbers. The bellow, maps the numbers

;     ; LineNumber1 426 labelLocation 3464 4155  urlLocations 3222 3464  values1 3223 4157  values2 3224 4157

;     ; labelLocation 3464 4155
;     ; urlLocations 3222 3464
;     ; values1 3223 4157
;     ; values2 3224 4157
;     ; getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

;     UValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray5, " ","")
;     UValueMaped := UValueMapedArray[1]

;     EValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray6, " ","")
;     EValueMaped := EValueMapedArray[1]

;     PValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray7, " ","")
;     PValueMaped := PValueMapedArray[1]

;     LabelValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")
;     LabelValueMapedLine1 := LabelValueMapedArray[2]
;     LabelValueMapedLine2 := LabelValueMapedLine1 + 1
;     LabelValueMapedLine3 := LabelValueMapedLine2 + 1
;     LabelValueMapedLine4 := LabelValueMapedLine3 + 1

;     GuiFunctionValueMaped := UValueMapedArray[2]

;     UValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, UValueMaped)
;     EValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, EValueMaped)
;     PValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, PValueMaped)

;     GuiControl, 17:, RemoveSpecificZlogy, UStringBank %UValueMapedLocationInStringBank% EStringBank %EValueMapedLocationInStringBank% PStringBank %PValueMapedLocationInStringBank% ||| UValueMaped %UValueMaped% EValueMaped %EValueMaped% PValueMaped %PValueMaped%  ||| GuiFunctionValueMaped %GuiFunctionValueMaped% ||| LabelValueMapedLine1 %LabelValueMapedLine1% LabelValueMapedLine2 %LabelValueMapedLine2% LabelValueMapedLine3 %LabelValueMapedLine3% LabelValueMapedLine4 %LabelValueMapedLine4%
;     }
;     if(isUrl == 1)
;     {
;       LineNumberForWholeLineArray5[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, getTheUrlFromTheStringArray[2])
;       removedStartofStringLineNumberForWholeLineArray5 := % SubStr(LineNumberForWholeLineArray5[A_EventInfo], 3)


;       ; MsgBox, % getLastNumberArray[getLastNumberArrayMaxIndex]
;       FileReadLine, WholeLocationOfWholeLineWithTwoValues, %NameOfFile1%, getLastNumberArray[getLastNumberArrayMaxIndex]

;       ; MsgBox, % WholeLocationOfWholeLineWithTwoValues
;       LocationOfWholeLineWithTwoValuesNoStart := StrReplace(WholeLocationOfWholeLineWithTwoValues, "SendInput %","")
;       LocationOfWholeLineWithTwoValuesNoEnd := StrReplace(LocationOfWholeLineWithTwoValuesNoStart, "%{tab}{enter}","")

;       twoValuesArray := StrSplit(LocationOfWholeLineWithTwoValuesNoEnd, "%{tab}%","")
;       value1FromArray := twoValuesArray[1]
;       value2FromArray := twoValuesArray[2]

;       ; MsgBox, value1 %value1FromArray% value2 %value2FromArray%

;       LineNumberForWholeLineArray6[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, value1FromArray)
;       removedStartofStringLineNumberForWholeLineArray6 := % SubStr(LineNumberForWholeLineArray6[A_EventInfo], 3)

;       LineNumberForWholeLineArray7[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, value2FromArray)
;       removedStartofStringLineNumberForWholeLineArray7 := % SubStr(LineNumberForWholeLineArray7[A_EventInfo], 3)

;       ; The Above makes the numbers. The bellow, maps the numbers

;       ; LineNumber1 426 labelLocation 3464 4155  urlLocations 3222 3464  values1 3223 4157  values2 3224 4157

;       ; labelLocation 3464 4155
;       ; urlLocations 3222 3464
;       ; values1 3223 4157
;       ; values2 3224 4157
;       ; getFirstNumberArray4 := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")

;       UValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray5, " ","")

;       FileReadLine, getWholeLineOfGUIForTheLabel, %NameOfFile1%, UValueMapedArray[2]
;       ; MsgBox, % getWholeLineOfGUIForTheLabel

;       ; StrReplace(A_LoopFieldString, "%", "")
;       getWholeLineOfGUIForTheLabel := StrReplace(getWholeLineOfGUIForTheLabel, "Gui, 15:Add, Button, %k_Position% g", "")
;       getWholeLineOfGUIForTheLabel := StrReplace(getWholeLineOfGUIForTheLabel, "%", "")

;       ; MsgBox, % getWholeLineOfGUIForTheLabel
;       getWholeLineOfGUIForTheLabelArray := StrSplit(getWholeLineOfGUIForTheLabel, ",", "")
;       getWholeLineOfGUIForTheLabelLabelLocation := getWholeLineOfGUIForTheLabelArray[1]
;       ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation
;       getWholeLineOfGUIForTheLabelLabelLocation := % findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, getWholeLineOfGUIForTheLabelLabelLocation)
;       ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation
;       removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation := % SubStr(getWholeLineOfGUIForTheLabelLabelLocation, 3)
;       ; MsgBox, % removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation
;       removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray := StrSplit(removedStartOfgetWholeLineOfGUIForTheLabelLabelLocation, " ","")
;       ; getWholeLineOfGUIForTheLabelLabelLocation := removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray[2]

;       ; MsgBox, % getWholeLineOfGUIForTheLabelLabelLocation

;       UValueMaped := UValueMapedArray[1]

;       ; EValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray6, " ","")
;       EValueMaped := UValueMaped + 1 ;EValueMapedArray[1]

;       ; PValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray7, " ","")
;       PValueMaped := EValueMaped + 1 ;PValueMapedArray[1]

;       ; LabelValueMapedArray := StrSplit(removedStartofStringLineNumberForWholeLineArray4, " ","")
;       LabelValueMapedLine1 := removedStartOfgetWholeLineOfGUIForTheLabelLabelLocationArray[2]
;       LabelValueMapedLine2 := LabelValueMapedLine1 + 1
;       LabelValueMapedLine3 := LabelValueMapedLine2 + 1
;       LabelValueMapedLine4 := LabelValueMapedLine3 + 1

;       GuiFunctionValueMaped := UValueMapedArray[2]

;       UValueMapedLocationInStringBank := getStringUsedForBank(NameOfFile1, FileLocation, UValueMaped)
;       EValueMapedLocationInStringBank := UValueMapedLocationInStringBank + 1 ;getStringUsedForBank(NameOfFile1, FileLocation, EValueMaped)
;       PValueMapedLocationInStringBank := EValueMapedLocationInStringBank + 1 ;getStringUsedForBank(NameOfFile1, FileLocation, PValueMaped)

;       GuiControl, 17:, RemoveSpecificZlogy, UStringBank %UValueMapedLocationInStringBank% EStringBank %EValueMapedLocationInStringBank% PStringBank %PValueMapedLocationInStringBank% ||| UValueMaped %UValueMaped% EValueMaped %EValueMaped% PValueMaped %PValueMaped%  ||| GuiFunctionValueMaped %GuiFunctionValueMaped% ||| LabelValueMapedLine1 %LabelValueMapedLine1% LabelValueMapedLine2 %LabelValueMapedLine2% LabelValueMapedLine3 %LabelValueMapedLine3% LabelValueMapedLine4 %LabelValueMapedLine4%

;     ; GuiControl, 17:, RemoveSpecificZlogy, "hhhhhh"
;     }
; }
; return

; ZlogiesListView:
; CoordMode, Mouse, Screen
; Gui, 18:Destroy
; Gui, 18:Add, Groupbox, h1000 w1650,
; Gui, 18:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; ; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; ; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
; Gui, 18:Font, s18 cRed Bold, Verdana
; GuiControl, 18:Font, MyEdit
; Gui, 18:Color, 000000, FFFFFF
; Gui, 18:Show, h1000 w1650 x65 y65, Zlogy2

; Gui, 18:Default
; Gosub, AutoStartLabel18
; return

; AutoStartLabel18:
; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringaend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile1)
; t := TF_ReadLines(t, StartIndex, EndIndex)


; Loop, Parse, t, `n, `r
; {

;   Haystack := A_LoopField
;   Needle := "Edit, xm w60 ReadOnly x20 yp+25"

;   A_LoopFieldString := StrReplace(A_LoopField, "Gui, 15:Add, Button, %k_Position% g", "")
;   A_LoopFieldStringPercentDel := StrReplace(A_LoopFieldString, "%", "")

;   A_LoopFieldArrayFromString := StrSplit(A_LoopFieldStringPercentDel, ",","")
;   ; A_LoopField := StrReplace(t, ReplaceString, TextToInsert4b)

;   ; MsgBox, %Needle%
;   If InStr(Haystack, Needle)
;   {
;     ; MsgBox, The string was found.
;   }
;   Else
;   {

;     LineFromStringBank := findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, A_LoopFieldArrayFromString[2])
;     FileReadLine, getWholeLine, %NameOfFile1%, LineFromStringBank

;     getWholeLine := StrReplace(getWholeLine, ", FileLocation)", "")
;     getWholeLine := StrSplit(getWholeLine, " = % getStringFromBank(","")
;     getWholeLine := getWholeLine[2]
;     StringTrimRight, getWholeLine, getWholeLine, 1
;     StringTrimLeft, getWholeLine, getWholeLine, 1
;     ; MsgBox, %getWholeLine%
;     getLineFromBank := findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, getWholeLine)
;     FileReadLine, getWholeLineFromBank, %NameOfFile%, getLineFromBank
;     getWholeLine := StrSplit(getWholeLineFromBank, "=","")
;     getWholeLineTwo := getWholeLine[2]

;     LV_Add("",getWholeLineTwo, A_LoopFieldArrayFromString[1])
;     LV_ModifyCol()
;   }
; }

; }

; return

; ZlogiesListViewLabel:

; NameOfFile := "StringBank.txt"
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; FileLocation = %A_MyDocuments%\AHKHelpy\StringBank.txt
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk

; ; LineNumberForWholeLineArray3[A_EventInfo] := findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, WholeLineArray3[A_EventInfo])


; if A_GuiEvent = DoubleClick
; {
;   LV_GetText(RowText, A_EventInfo,1)
;   LV_GetText(RowText2, A_EventInfo,2)

;   Gosub, Zlogies
;   Gosub, %RowText2%
;   ; FileGetAttrib,attribs,%A_ScriptFullPath%
;   ; FileSetAttrib,-A,%A_ScriptFullPath%
;   ; SplashTextOn,,,Updated script,
;   ; Sleep,500
;   ; Reload
;   closeHelpyAfterExecutingCommands()

; }
; return

; getStringUsedForBank(NameOfFile1, File, StringLocation){
; FileReadLine, WholeLineString, %NameOfFile1%, StringLocation
; ; MsgBox, %WholeLineString%
; WholeLineStringRemovedEnd := StrSplit(WholeLineString, ", FileLocation)","")
; firstIndex := WholeLineStringRemovedEnd[1]
; StringTrimRight, firstIndex, firstIndex, 1

; WholeLineStringRemovedStart := StrSplit(firstIndex, "getStringFromBank(","")
; SecondIndex := WholeLineStringRemovedStart[2]
; StringTrimLeft, SecondIndex, SecondIndex, 1

; ; MsgBox, %SecondIndex%
; ; StringToReturn
; StringToReturn := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(File, SecondIndex)
; return StringToReturn
; }

; RemoveToolTip_Unified_Functions_And_Labels_Script:
; SetTimer, RemoveToolTip_Unified_Functions_And_Labels_Script, Off
; ToolTip
; return

; WriteInfoRemoveSpecificZlogy:
; GuiControl, 17:, RemoveSpecificZlogy, Xelnect@unseen.is
; return

; MakeNewZlogy:
; CoordMode, Mouse, Screen
; Gui, 5:Destroy
; Gui, 5:Add, Groupbox, w550 h450,

; global BkColor   := 0x8000000   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0x8000000    ; Text Color       | BGR (BLUE - GREEN - RED)
; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT

; ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
; ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]
; ExOrb5 := [0, 0x00f91111, , "black", , , "black", 1]

; Gui, 5:Add, Button, xm w350 h20 x100 yp+25 gTestInfoAdd5 cFF5733,Test Info
; Gui, 5:Add, Text, xm x150 yp+25  cWhite ,
; Gui, 5:Add, Button, xm w100 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 5:Add, Edit, %k_Position% w250 vURLZlogy,
; Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cFF5733,Email/Username
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 5:Add, Edit, %k_Position% w250 vUsernameZlogy,
; Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cFF5733,Pass
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 5:Add, Edit, %k_Position% w250 vPassZlogy,
; Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cf99619,Type
; ImageButton.Create(ExOrb, ExOrb2)
; Gui, 5:Add, Edit, %k_Position% w250 vTypeZlogy,
; Gui, 5:Add, Button, xm w100 h20 x100 yp+25  hwndExOrb cf99619,Counter
; ImageButton.Create(ExOrb, ExOrb2)
; Gui, 5:Add, Edit, %k_Position% w250 vCounterZlogy,
; ; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,

; ; Gui, 5:Add, Text, %k_Position% x100 yp+25  cWhite ,
; Gui, 5:Add, Text, xm x100 yp+25 cWhite ,
; Gui, 5:Add, Text, xm x100 yp+25 cWhite ,

; Gui, 5:Add, Button, %k_Position% w100 h20 hwndExOrb cf91111,Special Characters
; ImageButton.Create(ExOrb, ExOrb5)
; Gui, 5:Add, Checkbox , %k_Position% gSpecialCharacters vSpecialCharacters, Special Characters

; Gui, 5:Add, Button, %k_Position% w100 h20   hwndExOrb cf91111,Show password
; ImageButton.Create(ExOrb, ExOrb5)
; Gui, 5:Add, Checkbox , %k_Position% vShowPassword gShowPassword, Show password

; ; Gui, 5:add, edit, xm x100 yp+25 vPassword w180 Password, Password

; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,
; ; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,
; ; Gui, 5:Add, Text, xm x100 yp+25  cWhite ,

; ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
; ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

; Gui, 5:Add, Button, w100 h20 x100 yp+25 hwndExOrb cf91111,Master Password
; ImageButton.Create(ExOrb, ExOrb5)
; Gui, 5:Add, Edit, %k_Position% w250 vGeneratedPassZlogy Password,


; ; GuiControl, 5:hide, GeneratedPassZlogy


; Gui, 5:Add, Button, xm w350 x100 yp+25 gGenerateAPassword vGenerateAPassword,Generate A Password
; Gui, 5:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy,Generate New Zlogy

; ; GuiControl, 5:Hide, GenerateAPassword

; ; Gui, 5:Add, Text, xm w100 ReadOnly ,ReadWrite
; ; Gui, 5:Add, Text, xm w100,          ReadWrite
; ; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; ; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; ; global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
; ; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; ; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; Gui, 5:Font, s18 cRed Bold, Verdana
; GuiControl, 5:Font, MyEdit
; Gui, 5:Color, 000000, FFFFFF
; Gui, 5:Show, x65 y65, Zlogy2
; MouseMove, 65, 340
; WinSet, Redraw,, Zlogy2
; return

; ShowPassword:
; GuiControlGet, Checked,,ShowPassword
; If (Checked == 1)
; {
;     ; Msgbox, "dddd1"
;     GuiControl, 5:-Password, GeneratedPassZlogy
;     ; OutputVar := % RegExReplace(OutputVar,"[^\w]","")
; }
; If (Checked == 0)
; {
;     ; Msgbox, "saaaa0"
    
;     GuiControl, 5:+Password, GeneratedPassZlogy
;     ; OutputVar := OutputVar
; }   
; return

; SpecialCharacters:
; return

; ;|GenerateNewZlogy||SEARCHINDICATOR|
; GenerateNewZlogy:
; NameOfFile := "StringBank.txt"
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

; Index := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchString)
; GuiControlGet, URLZlogy
; GuiControlGet, UsernameZlogy
; GuiControlGet, PassZlogy
; randomString = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString1 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString2 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; ; Msgbox, %URLZlogy% %UsernameZlogy% %PassZlogy% %randomString%  %randomString1%
; TF(NameOfFile)
; IndexToUse1 := Index+1
; TextToInsert1 := randomString . "=" . URLZlogy
; TextToInsert2 := randomString1 . "=" . UsernameZlogy
; TextToInsert3 := randomString2 . "=" . PassZlogy
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)
; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%
; ; sleep, 100
; Line := False
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

; ;section2

; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchString)
; ; Msgbox, %Index1%
; randomStringU = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString1E = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString2P = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; TF(NameOfFile1)
; IndexToUse1 := Index1+1

; ; unclock with hash

; TextToInsert1 := "U" . randomStringU . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
; TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
; TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

; ;lock with hash

; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; Line := False

; ;section3


; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; ; Msgbox, %Index1%
; TF(NameOfFile1)
; randomStringButton = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; IndexToUse1 := Index1+1
; TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsertButton)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; sleep, 100
; Line := False
; ; Loop, Read, %FileLocation1%
; ; {

; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringb)
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
; ; FileDelete, %NameOfFile1%
; ; FileAppend, %t%, %NameOfFile1%
; ; sleep, 100
; ; TF(NameOfFile1)
; ; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; ; t := StrReplace(t, ReplaceString, TextToInsert2b)
; t := TF_InsertLine(t, IndexToUse2,IndexToUse2, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1b)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; FileGetAttrib,attribs,%A_ScriptFullPath%
; ; IfInString,attribs,A
; ; {
; FileSetAttrib,-A,%A_ScriptFullPath%
; ; sleep, 5000
; ; Run %A_ScriptFullPath%
; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; ; }
; closeHelpyAfterExecutingCommands()
; return

; CleanGeneratedContent:

; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchString)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchStringend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile)
; t := TF_RemoveLines(t, StartIndex, EndIndex)
; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%
; }
; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchString)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile1)
; t := TF_RemoveLines(t, StartIndex, EndIndex)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; }
; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringaend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile1)
; t := TF_RemoveLines(t, StartIndex, EndIndex)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; }
; StartIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringb)
; StartIndex := StartIndex + 1
; EndIndex := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringbend)
; if(EndIndex <> StartIndex)
; {
; EndIndex := EndIndex - 1
; TF(NameOfFile1)
; t := TF_RemoveLines(t, StartIndex, EndIndex)
; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; }
; FileGetAttrib,attribs,%A_ScriptFullPath%
; ; IfInString,attribs,A
; ; {
; FileSetAttrib,-A,%A_ScriptFullPath%
; ; sleep, 5000
; ; Run %A_ScriptFullPath%
; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; ; }
; closeHelpyAfterExecutingCommands()
; return

; TestInfoAdd5:
; GuiControl, 5:, URLZlogy, masterpasswordapp.com
; GuiControl, 5:, UsernameZlogy, user
; GuiControl, 5:, PassZlogy, 1234
; GuiControl, 5:, TypeZlogy, long
; GuiControl, 5:, CounterZlogy, 1
; return

; GenerateAPassword(){
; ; Run, %A_MyDocuments%\AHKHelpy\AHKlibs\Security\masterpassword-gui.jar
; FileLocation4= %A_MyDocuments%\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release

; ; GenerateAPassword
; ; GenerateNewZlogy

; GuiControlGet, URLZlogy
; GuiControlGet, UsernameZlogy
; GuiControlGet, GeneratedPassZlogy

; commands=
; (join&
; echo off
; cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
; ConsoleMasterPassword -u "%UsernameZlogy%" -s "%URLZlogy%" -t long -c 1 -p "%GeneratedPassZlogy%"
; )
; runwait, %comspec% /c %commands%

; FileRead, OutputVar, %FileLocation4%\WriteText.txt

; GuiControlGet, Checked,,SpecialCharacters
; If (Checked == 1)
; {
;     ; Msgbox, "dddd1"
;     OutputVar := % RegExReplace(OutputVar,"[^\w]","")
; }
; If (Checked == 0)
; {
;     ; Msgbox, "saaaa0"
;     OutputVar := OutputVar
; }       


; ; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\


; ; Msgbox, %OutputVar%
; GuiControl, 5:, PassZlogy, %OutputVar%
; FileDelete,  %FileLocation4%\WriteText.txt

; return
; }


; MakeNewZlogyFromUrl:
; CoordMode, Mouse, Screen
; Gui, 12:Destroy
; Gui, 12:Add, Groupbox, w550 h350,

; ; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0xFFF000    ; Text Color       | BGR (BLUE - GREEN - RED)
; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; ; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; ; OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

; ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]
; ExOrb2 := [0, 0x00f99619, , "black", , , "black", 1]

; Gui, 12:Add, Text, xm w350 h20 x110 yp+25 cRed ,Less secure than needed and also cannot be used with logged Zloggy
; Gui, 12:Add, Text, xm h1 x110 yp+25  cRed ,_______________________________________________________
; Gui, 12:Add, Text, xm h20 x100 yp+25  cWhite ,

; ; Gui, 12:Add, Button, xm w350 h20 x100 yp+25 gTestInfoAdd5 cFF5733,Test Info
; ; Gui, 12:Add, Text, xm x150 yp+25  cWhite ,
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Master Password
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 12:Add, Edit, %k_Position% w200 vPassZlogy12 password,
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25 hwndExOrb cFF5733,URL/NameOfZlogy
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 12:Add, Edit, %k_Position% w200 vURLZlogy12,
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Email/Username
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 12:Add, Edit, %k_Position% w200 vUsernameZlogy12,
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cFF5733,Generated password on start
; ImageButton.Create(ExOrb, ExOrb1)
; Gui, 12:Add, Edit, %k_Position% w200 vPassZlogy12onStart,
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cf99619,Type
; ImageButton.Create(ExOrb, ExOrb2)
; Gui, 12:Add, Edit, %k_Position% w200 vTypeZlogy12,long
; Gui, 12:Add, Button, xm w150 h20 x100 yp+25  hwndExOrb cf99619,Counter
; ImageButton.Create(ExOrb, ExOrb2)
; Gui, 12:Add, Edit, %k_Position% w200 vCounterZlogy12,1
; Gui, 12:Add, Text, xm x100 yp+25  cWhite ,

; ExOrb3 := [0, 0x003333ff, , "white", , , "black", 1]
; ExOrb4 := [0, 0x00ff0000, , "white", , , "white", 1]

; Gui, 12:Add, Button, xm w150 x100 yp+25 gGenerateAPassword12,Generate A New Password
; Gui, 12:Add, Edit, %k_Position% w200 vGeneratedPassZlogy12,
; Gui, 12:Add, Button, xm w350 x100 yp+25 gGenerateNewZlogy12,Generate New Zlogy

; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; Gui, 12:Font, s18 cRed Bold, Verdana
; GuiControl, 12:Font, MyEdit
; Gui, 12:Color, 000000, FFFFFF
; Gui, 12:Show, x65 y65, Zlogy2
; MouseMove, 65, 340
; WinSet, Redraw,, Zlogy2
; WinGet, currentWindow_ID, ID, A

; WinActivate ahk_id %previous_ID%
; SendInput {f6}
; sleep, 1
; SendInput {Lctrl down}
; sleep, 1
; SendInput {c}
; sleep, 1
; SendInput {Lctrl up}
; ClipWait

; ; Msgbox, %PeIkwKsSDzKiLYt07%

; ; addressNeeded:= "https://.*.com"
; ; addressName:= Clipboard
; ; ; FoundPos := RegExMatch(addressName, (addressNeeded), SubPat)

; ; url = http://autohotkey.com/forum/posting.php?mode=newtopic&f=1

; RegexMatch(Clipboard, InStr(Clipboard, "//www") ? "\.(.+?)\/" : "\/\/(.+?)\/" , domain)

; ; msgbox % domain1
; addressName := % domain1

; GuiControl, 12:, URLZlogy12, %addressName%
; ; GuiControl, 12:, URLZlogy12, % domain1
; GuiControl, 12:, PassZlogy12, %PeIkwKsSDzKiLYt07%
; GuiControl, 12:, UsernameZlogy12, %ErpOKDpZi6ii2bqgg%

; GuiControlGet, TypeZlogy12, 12:
; GuiControlGet, CounterZlogy12, 12:

; WinActivate ahk_id %currentWindow_ID%

; commands=
; (join&
; echo off
; cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
; ConsoleMasterPassword -u "%ErpOKDpZi6ii2bqgg%" -s "%addressName%" -t %TypeZlogy12% -c %CounterZlogy12% -p "%PeIkwKsSDzKiLYt07%"
; )
; runwait, %comspec% /c %commands%

; FileRead, OutputVar, %FileLocation4%\WriteText.txt
; GuiControl, 12:, PassZlogy12onStart, %OutputVar%
; FileDelete,  %FileLocation4%\WriteText.txt

; return

; GenerateAPassword12(){
; ; Run, %A_MyDocuments%\AHKHelpy\AHKlibs\Security\masterpassword-gui.jar
; FileLocation4= %A_MyDocuments%\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release

; ; GenerateAPassword
; ; GenerateNewZlogy



; GuiControlGet, URLZlogy12, 12:
; GuiControlGet, UsernameZlogy12, 12:
; GuiControlGet, PassZlogy12, 12:
; GuiControlGet, TypeZlogy12, 12:
; GuiControlGet, CounterZlogy12, 12:

; CounterZlogy12 := CounterZlogy12+1

; GuiControl, 12:, CounterZlogy12, %CounterZlogy12%

; commands=
; (join&
; echo off
; cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
; ConsoleMasterPassword -u "%UsernameZlogy12%" -s "%URLZlogy12%" -t %TypeZlogy12% -c %CounterZlogy12% -p "%PassZlogy12%"
; )
; runwait, %comspec% /c %commands%

; ; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\

; FileRead, OutputVar, %FileLocation4%\WriteText.txt
; ; Msgbox, %OutputVar%
; GuiControl, 12:, GeneratedPassZlogy12, %OutputVar%
; FileDelete,  %FileLocation4%\WriteText.txt

; return
; }

; findLocationOfStringInFile_Unified_Functions_And_Labels_Script(File, String){
;     ; unclock with hash
; Line := False
; Loop, Read, %File%
; {

;     If InStr(A_LoopReadLine, String){

;         If !Line
;         {
;             Line := A_LoopReadLine
;             lineLocation = %A_Index%
;             Continue
;         }
;         Else
;         {
;             Line .= "`r`n" . A_LoopReadLine
;             IndexToUse := %lineLocation% + 1
;             Break
;         }
;     }
; }
;     ;lock with hash
; return lineLocation
; }

; findAllLocationOfStringInFile_Unified_Functions_And_Labels_Script(File, String){
; Line := False
; lineLocation := []
; returnStringFromArray = ""
; indexOfArray = -1
; ; MsgBox, %String%
; ; Loop, Parse, File, `r`n ;Read through "Contents" variable
; Loop, Read, %File%, `r`n
; {

; NewStr := StrReplace(A_LoopReadLine, "`%"," ")

;     If InStr(NewStr, String){
;       ; MsgBox, %NewStr% ||| %A_LoopReadLine% ||| %String% ;%A_Index%
;         ; If !Line
;         ; {
;             ; Line := A_LoopReadLine
;             indexOfArray := indexOfArray + 1
;             lineLocation[indexOfArray] := A_Index
;             stringToPrint := % lineLocation[indexOfArray]
;     }
; }

; ; for key, value in lineLocation
; ; {
; ;     MsgBox, %value%
; ; }

; for key, value in lineLocation
; {
;     ; MsgBox, %value%
;     returnStringFromArray .= value . " "
;     ; LineNumber3 := LineNumberForWholeLineArray3[A_EventInfo]
; }

; return returnStringFromArray
; }

; findWholeLineOfStringInFile(File, String){
;     ; unclock with hash
; Line := False
; Loop, Read, %File%
; {

;     If InStr(A_LoopReadLine, String){

;         If !Line
;         {
;             Line := A_LoopReadLine
;             lineLocation = %A_Index%
;             Continue
;         }
;         Else
;         {
;             Line .= "`r`n" . A_LoopReadLine
;             IndexToUse := %lineLocation% + 1
;             Break
;         }
;     }
; }

; FileReadLine, OutputVar, %File%, %lineLocation%
; return OutputVar
; }



; GenerateNewZlogy12:
; FileLocation = %A_MyDocuments%\AHKHelpy\StringBank.txt
; FileLocation1 = %A_MyDocuments%\AHKHelpy\WILLBEREWRITTENBegginZlogies.ahk

; NameOfFile := "StringBank.txt"
; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"

; SearchString1 := "[...&"
; SearchString2 := "&&...]"
; SearchString := SearchString1 . SearchString2
; SearchString1end := "[...&e"
; SearchString2end := "&e&...]"
; SearchStringend := SearchString1end . SearchString2end
; SearchString1a := "[..&&"
; SearchString2a := "&&&..]"
; SearchStringa := SearchString1a . SearchString2a
; SearchString1aend := "[..&e&e"
; SearchString2aend := "&e&e&..]"
; SearchStringaend := SearchString1aend . SearchString2aend
; SearchString1b := "[.&&&"
; SearchString2b := "&&&&.]"
; SearchStringb := SearchString1b . SearchString2b
; SearchString1bend := "[.&e&e&e"
; SearchString2bend := "&e&e&e&.]"
; SearchStringbend := SearchString1bend . SearchString2bend
; ReplaceString1 := "wP2HmBpInN7Riytio52yDB"
; ReplaceString2 := "nidO4JeiAj"
; ReplaceString := ReplaceString1 . ReplaceString2
; Index := 0
; Index1 := 0
; IndexEnd := 0
; Index1End := 0

; stringToHashAndUseForDecryption :=
; stringToHashAndUseForEncryption :=

; TF("WriteText.txt") ; read file, create global var t
; ; MsgBox % T

; ;section1

; Index := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation, SearchString)

; GuiControlGet, URLZlogy12, 12:
; GuiControlGet, UsernameZlogy12, 12:
; GuiControlGet, PassZlogy12onStart, 12:

; randomString = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString1 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString2 = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()

; IndexToUse1 := Index+1
; TextToInsert1 := randomString . "=" . URLZlogy12
; TextToInsert2 := randomString1 . "=" . UsernameZlogy12
; TextToInsert3 := randomString2 . "=" . PassZlogy12onStart
; TF("StringBank.txt") ; read file, create global var t
; t:=TF_ReadLines(t,5) ; pass on global var t created by TF(), read lines 5 to end of file, assign result to t

; TF(NameOfFile)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)

; ; Msgbox,%t%
; ; Msgbox,t

; FileDelete, %NameOfFile%
; FileAppend, %t%, %NameOfFile%

; Line := False

; ;section2

; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchString)
; ; Msgbox, %Index1%
; randomStringU = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString1E = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; randomString2P = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
; TF(NameOfFile1)
; IndexToUse1 := Index1+1

; ; unclock with hash

; TextToInsert1 := "U" . randomStringU . A_Space . "= % getStringFromBank(" .  """" . randomString .  """" . ", FileLocation)"
; TextToInsert2 := "E" . randomString1E . A_Space . "= % getStringFromBank(" .  """" . randomString1 .  """" . ", FileLocation)"
; TextToInsert3 := "P" . randomString2P . A_Space . "= % getStringFromBank(" .  """" . randomString2 .  """" . ", FileLocation)"

; ;lock with hash

; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert3)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert2)
; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsert1)

; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; Line := False

; ;section3

; NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringa)
; TF(NameOfFile1)
; randomStringButton = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()

; IndexToUse1 := Index1+1
; TextToInsertButton := "Gui, 15:Add, Button, %k_Position% g" . randomStringButton . ",%" . "U" . randomStringU . "%"

; t := TF_InsertLine(t, IndexToUse1,IndexToUse1, ReplaceString)
; t := StrReplace(t, ReplaceString, TextToInsertButton)

; FileDelete, %NameOfFile1%
; FileAppend, %t%, %NameOfFile1%
; sleep, 100
; Line := False

; ;section4

; Index1 := % findLocationOfStringInFile_Unified_Functions_And_Labels_Script(FileLocation1, SearchStringb)
; IndexToUse2 := Index1+1

; TextToInsert1b := randomStringButton . ":" . "`r`n" . "WinActivate ahk_id %previous_ID%"
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
; FileGetAttrib,attribs,%A_ScriptFullPath%
; FileSetAttrib,-A,%A_ScriptFullPath%

; SplashTextOn,,,Updated script,
; Sleep,500
; Reload
; ; }
; closeHelpyAfterExecutingCommands()
; return




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
; Run, %A_MyDocuments%\AHKHelpy\AHKlibs\Security\masterpassword-gui.jar
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



; UnlockZlogy:
; CoordMode, Mouse, Screen
; Gui, 7:Destroy
; Gui, 7:Add, Groupbox, w550 h700 ,
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Enter your password or use a cashed one
; Gui, 7:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForDecryption,
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
; Gui, 7:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltStringUnlock,
; Gui, 7:Add, Button, %k_Position% w100 gimportSalt,Import Salt
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 7:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
; Gui, 7:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsStringUnlock,8192
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
; Gui, 7:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyStringUnlock,32
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 7:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForUnclocking,Save hash for uncloking
; Gui, 7:Add, Button, %k_Position% w150 gDoNotSaveStringToHash,Unlock with data
; Gui, 7:Add, Button, xm w150 x125 yp+25 gSaveStringToHashUnlock,Save a hash for unlocking
; Gui, 7:Add, Button, %k_Position% w150 gUseAhashUnlock,Unlock with saved data
; Gui, 7:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 7:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
; Gui, 7:Font, s18 cRed Bold, Verdana
; GuiControl, 7:Font, MyEdit
; Gui, 7:Color, 000000, FFFFFF
; Gui, 7:Show, x65 y65, Zlogy2
; WinSet, Redraw,, Zlogy2
; return

; importSalt:
; FileRead, OutputVarImport,  %FileLocation3%
; arraySaltImport := StrSplit(OutputVarImport, A_Space)
; stringToUseForUnlocking := arraySaltImport[2]
; GuiControl,,bcrypthpbkdf2SaltStringUnlock,%stringToUseForUnlocking%
; return

; DoNotSaveStringToHash:
; GuiControlGet, stringToHashAndUseForDecryption
; GuiControlGet, bcrypthpbkdf2SaltStringUnlock
; GuiControlGet, bcrypthpbkdf2IterationsStringUnlock
; GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlock
; stringToHashAndUseForUnlocking := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)

; GuiControlGet, CheckboxVarForUnclocking
; if(CheckboxVarForUnclocking==1)
; {
; SaveStringToHashUnlockFunc(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
; }

; unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToHashAndUseForUnlocking)
; return

; UseAhashUnlock:
; FileRead, OutputVar,  %FileLocation3%
; arrayStringToUseForUnlocking := StrSplit(OutputVar, A_Space)
; stringToUseForUnlocking := arrayStringToUseForUnlocking[1]
; unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToUseForUnlocking)
; return

; UseAhashUnlockFunc()
; {
; FileRead, OutputVarUseAhashUnlockFunc,  %FileLocation3%
; arrayStringToUseForUnlocking := StrSplit(OutputVarUseAhashUnlockFunc, A_Space)
; stringToUseForUnlocking := arrayStringToUseForUnlocking[1]
; unlockingFunctionCoreWithScriptDirectoryLocationForCMD(stringToUseForUnlocking)
; return
; }

; SaveStringToHashUnlock:
; GuiControlGet, stringToHashAndUseForDecryption
; GuiControlGet, bcrypthpbkdf2SaltStringUnlock
; GuiControlGet, bcrypthpbkdf2IterationsStringUnlock
; GuiControlGet, bcryptpbkdf2LengthOfKeyStringUnlock
; stringToHashAndUseForUnlocking := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)

; SringToAppend = %stringToHashAndUseForUnlocking% %bcrypthpbkdf2SaltStringUnlock% %bcrypthpbkdf2IterationsStringUnlock% %bcryptpbkdf2LengthOfKeyStringUnlock%

; FileDelete, %FileLocation3%
; FileAppend, %SringToAppend% , %FileLocation3%
; return

; SaveStringToHashUnlockFunc(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
; {
; FileLocation3 = %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\HashPass.txt
; UseStringToHashAndUseForEncryption := % bcrypt.pbkdf2(stringToHashAndUseForDecryption, bcrypthpbkdf2SaltStringUnlock, "Sha256", bcrypthpbkdf2IterationsStringUnlock, bcryptpbkdf2LengthOfKeyStringUnlock)
; SringToAppendFunc = %UseStringToHashAndUseForEncryption% %bcrypthpbkdf2SaltStringUnlock% %bcrypthpbkdf2IterationsStringUnlock% %bcryptpbkdf2LengthOfKeyStringUnlock%
; ; Msgbox, %SringToAppendFunc%
; ; Msgbox, %FileLocation3%
; FileDelete, %FileLocation3%
; FileAppend, %SringToAppendFunc% , %FileLocation3%
; return
; }

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
%A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCore% %A_MyDocuments%\AHKHelpy\StringBank.txt.aes
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


; lockZlogy:
; CoordMode, Mouse, Screen
; Gui, 8:Destroy
; Gui, 8:Add, Groupbox, w550 h700 ,
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Enter a password to lock
; Gui, 8:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForEncryption,
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
; Gui, 8:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltString,
; Gui, 8:Add, Button, %k_Position% w100 ggenerateSalt1,Generate Salt
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 8:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
; Gui, 8:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsString,8192
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
; Gui, 8:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyString,32
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 8:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForLocking,Save hash for locking
; Gui, 8:Add, Button, %k_Position% w150 glockingFunction,Lock with data
; Gui, 8:Add, Button, xm w150 x125 yp+25 gSaveStringToHashLock,Save a hash
; Gui, 8:Add, Button, %k_Position% w150 gUseAhashLock,Lock with saved hash
; Gui, 8:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 8:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
; Gui, 8:Font, s18 cRed Bold, Verdana
; GuiControl, 8:Font, MyEdit
; Gui, 8:Color, 000000, FFFFFF
; Gui, 8:Show, x65 y65, Zlogy2
; WinSet, Redraw,, Zlogy2
; return

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
FileLocation3 = %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\HashPass.txt
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
    %A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCore% %A_MyDocuments%\AHKHelpy\StringBank.txt
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


























































































; RunMasterPassword:
; Run, %A_MyDocuments%\AHKHelpy\AHKlibs\Security\masterpassword-gui.jar
; return

; RunCliMasterPassword:
; commands=
; (join&
; echo off
; cd `%userprofile`%\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
; ConsoleMasterPassword -u "user" -s "masterpasswordapp.com" -t long -c 1 -p "1234"
; )
; runwait, %comspec% /c %commands%

; ; cd C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release\

; FileRead, OutputVar, %FileLocation4%\WriteText.txt
; Msgbox, %OutputVar%
; FileDelete,  %FileLocation4%\WriteText.txt


; ; SendInput, "user"

; ; commands=
; ; (join&
; ; echo off
; ;   user
; ; pause
; ; )

; ; ; if FileExist("StringBank.txt")
; ; ; {
; ; runwait, %comspec% /c %commands%
; ; }

; return

; FileLock:
; CoordMode, Mouse, Screen
; Gui, 13:Destroy
; Gui, 13:Add, Groupbox, w550 h700 ,
; Gui, 13:Add, Text, xm x125 yp+25 w100 cWhite ,Choose a file:
; Gui, 13:Add, Button, %k_Position% w200 gFileChooseFileLock,Choose a file
; Gui, 13:Add, Edit, xm w300 x125 yp+25 vFileLockDirectoryURL,
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Enter a password to lock
; Gui, 13:Add, Edit, xm w300 x125 yp+25 Password vstringToHashAndUseForEncryptionFileLock,
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter salt.
; Gui, 13:Add, Edit, xm w200 x125 yp+25 vbcrypthpbkdf2SaltStringFileLock,
; Gui, 13:Add, Button, %k_Position% w100 ggenerateSalt1FileLock,Generate Salt
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 13:Add, Text, xm x125 yp+25 cRed , Not changing iterations and lengh of key would result in security loss
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter number of iterations.
; Gui, 13:Add, Edit, xm w300 x125 yp+25 vbcrypthpbkdf2IterationsStringFileLock,8192
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,Please enter length of the derived key.
; Gui, 13:Add, Edit, xm w300 x125 yp+25 vbcryptpbkdf2LengthOfKeyStringFileLock,32
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 13:Add, CheckBox, xm w150 x125 yp+25 cYellow vCheckboxVarForLockingFileLock,Save hash for locking
; Gui, 13:Add, Button, %k_Position% w150 glockingFunctionFileLock,Lock with data
; Gui, 13:Add, Button, xm w150 x125 yp+25 gSaveStringToHashLockFileLock,Save a hash
; Gui, 13:Add, Button, %k_Position% w150 gUseAhashLockFileLock,Lock with saved hash
; Gui, 13:Add, Text, xm x125 yp+25 cWhite ,
; Gui, 13:Add, Button, xm w300 x125 yp+25 gCancel,Cancel
; Gui, 13:Font, s18 cRed Bold, Verdana
; GuiControl, 13:Font, MyEdit
; Gui, 13:Color, 000000, FFFFFF
; Gui, 13:Show, x65 y65, Zlogy2
; WinSet, Redraw,, Zlogy2
; return

; FileChooseFileLock:
; FileSelectFile, SelectedFile, 3, , Open a file,
; if SelectedFile =
;     MsgBox, The user didn't select anything.
; else
; GuiControl,,FileLockDirectoryURL,%SelectedFile%
; return

; lockingFunctionFileLock:
; GuiControlGet, stringToHashAndUseForEncryptionFileLock
; GuiControlGet, bcrypthpbkdf2SaltStringFileLock
; GuiControlGet, bcrypthpbkdf2IterationsStringFileLock
; GuiControlGet, bcryptpbkdf2LengthOfKeyStringFileLock
; GuiControlGet, FileLockDirectoryURL
; stringToHashAndUseForEncryptionLockFileLock := % bcrypt.pbkdf2(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, "Sha256", bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
; GuiControlGet, CheckboxVarForLockingFileLock
; if(CheckboxVarForLockingFileLock==1)
; {
; SaveStringToHashLockFunc(stringToHashAndUseForEncryptionFileLock, bcrypthpbkdf2SaltStringFileLock, bcrypthpbkdf2IterationsStringFileLock, bcryptpbkdf2LengthOfKeyStringFileLock)
; }
; lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionLockFileLock, FileLockDirectoryURL)
; return

; UseAhashLockFileLock:
; GuiControlGet, FileLockDirectoryURL
; FileRead, OutputVarhashLock,  %FileLocation3%
; arrayStringToHashAndUseForEncryptionFileLock := StrSplit(OutputVarhashLock, A_Space)
; stringToHashAndUseForEncryptionForCoreFileLock := arrayStringToHashAndUseForEncryptionFileLock[1]
; lockingFunctionCoreWithScriptDirectoryLocationForCMDFileLock(stringToHashAndUseForEncryptionForCoreFileLock, FileLockDirectoryURL)
; return

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
FileLocation3 = %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\HashPass.txt
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
    %A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLock%
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
FileLocation3 = %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\HashPass.txt
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
%A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCoreFileUnlock% %directoryForFileUnlockArrayAnyExtension%.aes
del %directoryForFileUnlockArrayAnyExtension%.aes
)

; echo cd
; cd
; echo `%cd`%
; %A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -d -p %stringToHashAndUseForDecryptionCoreFileUnlock% %directoryForFileUnlockArrayAnyExtension%.aes
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
;     %A_MyDocuments%\AHKHelpy\AHKlibs\Security\aescrypt -e -p %stringToHashAndUseForEncryptionCoreFileLock% %directoryForFileLock%
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

; Soundy:
;     WinActivate ahk_id %previous_ID%
;     SoundPlay, %A_WinDir%\Media\ding.wav
;     SoundPlay *-1  ; Simple beep
;     SoundPlay, %A_MyDocuments%\AHKHelpy\246520__copyc4t__guitar-slide-up.wav
; return

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
; SaveATicket:
;     WinActivate ahk_id %previous_ID%
;     RepeatCountSAT = 21
;     sleep, 1
;     Loop %RepeatCountSAT% {
;         SendInput {tab}
;     sleep, 10
;     }
;     SendInput {space}
;     SendInput {NumpadDown}
;     SendInput {enter}
;     //SendInput {tab}
;     //SendInput {tab}
;     SendInput {tab}
;     SendInput {enter}
; return
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
; AddToXyengine:
; WinActivate ahk_id %previous_ID%
; SendInput {Lctrl down}
; sleep, 1
; SendInput {c}
; sleep, 1
; SendInput {Lctrl up}
; sleep, 1
; appendMethodToFile()
; return

ChangeRainlanderSizeStartingAt500:
FileRead, OutputVarRainlander, C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
screenSize2 := A_ScreenHeight - 140
StringReplace,NewText,OutputVarRainlander,Todolist_height=500,Todolist_height=%screenSize2%, All
FileDelete,C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
FileAppend, %NewText%,C:\Users\%A_UserName%\.rainlendar2\rainlendar2.ini
return
; appendMethodToFile()
; {
; fileread, text_list, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
; RegExMatch(text_list, "([^\n\r]*)$", oVar)                       ; stores first line in oVar
; ;msgbox % oVar
; text_list := RegExReplace(text_list, "([^\n\r]*)$", "", "", 1)      ; deletes the first line and stores what's left in the var text_list
; filedelete, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
; fileappend, %text_list%, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java                         ;recreates the file
; fileappend, %Clipboard%`n, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
; fileappend, }`n, C:\Users\%A_UserName%\Documents\AHKHelpy\Xyengine\src\xyengine.java
; }
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
f := A_MyDocuments "\AutoHotkey.ahk"
a := FilePrePend(f, newline)
;if !(a)
;   MsgBox, % "Input file : >>" f "<< not accessible!"
;else
;   run, %f%
return
; RemoveFirstLine(){
; textLocation = A_MyDocuments "\AutoHotkey.ahk"
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
FileAppend, % list_files(Directory), %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\Directory.txt
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
RandomGenerationFunction_Unified_Functions_And_Labels_Script(){
;MsgBox, % RandomStr_Unified_Functions_And_Labels_Script()
;MsgBox, % RegExReplace(RandomStr_Unified_Functions_And_Labels_Script(), "\W", "i") ; only alphanum.
ReturnString = % RegExReplace(RandomStr_Unified_Functions_And_Labels_Script(), "\W", "i")
;IfWinActive, ahk_class AutoHotkeyGUI
;{WinClose ;
;}
;IfWinActive, ahk_class AutoHotkeyGUI
;{WinClose ;
;}
;gEditBox
return ReturnString
}
RandomStr_Unified_Functions_And_Labels_Script(l = 16, i = 48, x = 122) { ; length, lowest and highest Asc value
    Loop, %l% {
        Random, r, i, x
        s .= Chr(r)
    }
    Return, s
}

EditBoxToShowRandomString:
randomString = % RandomGenerationFunction_Unified_Functions_And_Labels_Script()
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
; ; Process, Close, %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\tf.ahk
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
; Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ShutDownLogger.ahk
; Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\StartUpLogger.ahk
; Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\tf.ahk
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
; appendLine3 := "SetWorkingDir %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\Documents`n"
; appendLine4 := "Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\AutoHotkey.ahk`n"
; ;appendLine5 := "Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\PersistentProgramLogger.ahk`n"
; appendLine6 := "Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\ShutDownLogger.ahk`n"
; appendLine7 := "Run %A_MyDocuments%\AHKHelpy\AHKassociatedFiles\resources\StartUpLogger.ahk`n"
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
    WinActivate ahk_id %previous_ID%
    sleep, 1
    SendInput {Lctrl down}
    sleep, 1
    SendInput {w}
    sleep, 1
    SendInput {Lctrl up}
    sleep, 300
    WinClose ahk_class AutoHotkeyGUI

return


HasVal(haystack, needle) {
    if !(IsObject(haystack)) || (haystack.Length() = 0)
        return 0
    for index, value in haystack
        if (value = needle)
            return index
    return 0
}


TESTMsgbox:
    KODiii4NIY_gtMgro = % getStringFromBank("4Aq9ixzhR1HgsiRr", FileLocation)
    MsgBox, "the testbox value is:" %KODiii4NIY_gtMgro%
return






