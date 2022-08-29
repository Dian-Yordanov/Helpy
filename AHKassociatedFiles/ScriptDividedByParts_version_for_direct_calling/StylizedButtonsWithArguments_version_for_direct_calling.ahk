GrayRoundButton(NameOFGui, Options, FunctionName, VariableName, hwndName, StringName) { 
    
    Gui, %NameOFGui%:Add, Button, %Options% g%FunctionName% v%VariableName% hwnd%hwndName%, %StringName%
    Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%hwndName%, Opt1, Opt2, , , Opt5)
}

GrayRoundButtonWithPicture(ButtonNameOFGui, ButtonXCoordinate, ButtonYCoordinate, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) { 
    



    Gui, %ButtonNameOFGui%:Add, Button, %ButtonXCoordinate% %ButtonYCoordinate% g%ButtonFunctionName% v%ButtonVariableName% hwnd%ButtonhwndName%, %ButtonStringName%
    Gui, %ButtonNameOFGui%:Add, Picture, xp-30 yp, %PictureLocationOnDrive%
    


    Opt1 := [0, 0x80333333, , "White", "8", "0x00333333", "White", 1]         ; normal flat background & text color
    Opt2 := [ , "0x80666666"]                                          ; hot flat background color
    Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
    ImageButton.Create(%ButtonhwndName%, Opt1, Opt2, , , Opt5)
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
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
    Gui, 41:Add, Picture, v%VariableName% %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
41Gui_AddPicture_VariableNameExperimental(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 33 | 33 33 22 22 | 33 44 36 44 | AA AA 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 11 11 | BB BB BB BB | AA AA 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, 41:Add, Picture, v%VariableName% %Options%, %FileName%

    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
42Gui_AddPicture_VariableName(Options, Colour, VariableName) { ; hex RGB with spaces
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
    Gui, 42:Add, Picture, v%VariableName% %Options%, %FileName%
    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
42Gui_AddPicture_VariableNameExperimental(Options, Colour, VariableName) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 33 | 33 33 22 22 | 33 44 36 44 | AA AA 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 11 11 | BB BB BB BB | AA AA 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, 42:Add, Picture, v%VariableName% %Options%, %FileName%

    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
TextLabelNoPicture(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName) {  ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

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
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, %ButtonNameOFGui%:Add, Picture, x%ButtonX% y%ButtonY% w%ButtonW% h%ButtonH% v%ButtonVariableName%, %FileName%

    ; ButtonX += 4
    ; ButtonY += 4

    StringLen, LengthVar, ButtonStringName

    ButtonX := ButtonX + (ButtonW / 2) - (LengthVar * 3)
    ButtonY := ButtonY + (ButtonH / 2) - 7

    ; Gui, %ButtonNameOFGui%:Add, Picture, %ButtonXCoordinate% %ButtonYCoordinate% , PictureLocationOnDrive
    Gui, %ButtonNameOFGui%:Add, Text, x%ButtonX% y%ButtonY% cFFFFFF BackgroundTrans Center 0x200,%ButtonStringName%


    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}

;-------------------------------------------------------------------------------
TextLabelWithpicture(Colour, ButtonNameOFGui, ButtonX, ButtonY, ButtonW, ButtonH, ButtonFunctionName, ButtonVariableName, ButtonhwndName, ButtonStringName, PictureLocationOnDrive) {  ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 5, "Int", 0, "Int", 4, "Int", A, "Int", 4)

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
            .  SubStr(Colour, 3, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    
    

    Gui, %ButtonNameOFGui%:Add, Picture, x%ButtonX% y%ButtonY% w%ButtonW% h%ButtonH% v%ButtonVariableName%, %FileName%

    ; ButtonX += 4
    ; ButtonY += 4

    StringLen, LengthVar, ButtonStringName

    ButtonX := ButtonX + (ButtonW / 2) - (LengthVar * 3)
    ButtonY := ButtonY + (ButtonH / 2) - 7

    ; Gui, %ButtonNameOFGui%:Add, Picture, %ButtonXCoordinate% %ButtonYCoordinate% , PictureLocationOnDrive
    Gui, %ButtonNameOFGui%:Add, Text, x%ButtonX% y%ButtonY% cFFFFFF BackgroundTrans Center 0x200,%ButtonStringName%


    ; Gui, 41: +LastFound
    ; WinSet, Region, 0-0 w350 h30 R30-15

    FileDelete, %FileName%
}