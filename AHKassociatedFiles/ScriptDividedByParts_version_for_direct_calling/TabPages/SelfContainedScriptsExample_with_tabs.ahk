Gui, Example_with_tabs_:Add, Text, x-110 yp+16 cWhite,
num:=1

; https://github.com/AHK-just-me/Class_ImageButton

Opt1 := [0, 0x80333333, , "White", "0", "Black", "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation

; Gui, Font, s8, Verdana
Gui, Example_with_tabs_:Font, s11, Segoe UI

global duplicate_file_names := []
global duplicates_names := 
global duplicates_names_array := ""
global var_starting_at_0_for_comparison = 0
global number_of_index_elements = 0
global ahk_duplicate_file_names := []
global exe_duplicate_file_names := []
global Shortcut_duplicate_file_names := []

Loop %A_ScriptDir%\AHKSelfContainedScripts\*.*
{
    duplicate_file_names.Push(A_LoopFileName)
}

; Loop, % duplicate_file_names.MaxIndex()
; {
;     number_of_index_elements++
; }

; Msgbox, % duplicate_file_names.MaxIndex()

number_of_index_elements = 1

; Msgbox, %number_of_index_elements%



global number_1_element_integer = 50
global number_2_element_integer = 40
global number_3_element_integer = 20
global number_4_element_integer = 10

; if(number_of_index_elements > number_1_element_integer) {

; }
; if(number_of_index_elements > number_2_element_integer) {

; }
; if(number_of_index_elements > number_3_element_integer) {

; }
; if(number_of_index_elements > number_4_element_integer) {

; }

; if(number_of_index_elements > number_1_element_integer) {
    gui, Example_with_tabs_:add, text, vLineA1 h55 0x11  ;Vertical Line > Etched Gray
; }
; if(number_of_index_elements > number_2_element_integer) {
    gui, Example_with_tabs_:add, text, vLineB1 h55 0x11  ;Vertical Line > Etched Gray
; }
; if(number_of_index_elements > number_3_element_integer) {
    gui, Example_with_tabs_:add, text, vLineC1 h55 0x11  ;Vertical Line > Etched Gray
; }
; if(number_of_index_elements > number_4_element_integer) {
    ; gui, Example_with_tabs_:add, text, vLineD1 h55 0x11  ;Vertical Line > Etched Gray
; }
; if(number_of_index_elements > number_4_element_integer) {
;     gui, Example_with_tabs_:add, text, vLineE1 h55 0x11  ;Vertical Line > Etched Gray
; }

Gui, Example_with_tabs_:Font, s11, Segoe UI

; if(number_of_index_elements > number_1_element_integer) {
    Gui, Example_with_tabs_:Add, Text, cWhite vSelfContainedScriptsSubTabs1 HwndhSelfContainedScriptsSubTabs1 BackgroundTrans 0x200, % "       ahk files"
; }
; if(number_of_index_elements > number_2_element_integer) {
    Gui, Example_with_tabs_:Add, Text, cWhite vSelfContainedScriptsSubTabs2 HwndhSelfContainedScriptsSubTabs2 BackgroundTrans 0x200, % "           exe files"
; }
; if(number_of_index_elements > number_3_element_integer) {
    Gui, Example_with_tabs_:Add, Text, cWhite vSelfContainedScriptsSubTabs3 HwndhSelfContainedScriptsSubTabs3 BackgroundTrans 0x200, % "         Ink files"
; }
; if(number_of_index_elements > number_4_element_integer) {
    ; Gui, Example_with_tabs_:Add, Text, cWhite vSelfContainedScriptsSubTabs4 HwndhSelfContainedScriptsSubTabs4 BackgroundTrans 0x200, % "  Experiments page 4"
; }

; if(number_of_index_elements > number_4_element_integer) {
;     Gui, Example_with_tabs_:Add, Text, cWhite vSelfContainedScriptsSubTabs5 HwndhSelfContainedScriptsSubTabs5 BackgroundTrans 0x200, % "  Removed old code page"
; }

; if(number_of_index_elements > number_1_element_integer) {
    GuiControlGet, SelfContainedScriptsSubTabs1PosInitial , Example_with_tabs_:Pos, SelfContainedScriptsSubTabs1 
; }
; if(number_of_index_elements > number_2_element_integer) {
    GuiControlGet, SelfContainedScriptsSubTabs2PosInitial , Example_with_tabs_:Pos, SelfContainedScriptsSubTabs2
; }
; if(number_of_index_elements > number_3_element_integer) {
    GuiControlGet, SelfContainedScriptsSubTabs3PosInitial , Example_with_tabs_:Pos, SelfContainedScriptsSubTabs3 
; }
; if(number_of_index_elements > number_4_element_integer) {
    ; GuiControlGet, SelfContainedScriptsSubTabs4PosInitial , Example_with_tabs_:Pos, SelfContainedScriptsSubTabs4
; }
; if(number_of_index_elements > number_4_element_integer) {
;     GuiControlGet, SelfContainedScriptsSubTabs5PosInitial , Example_with_tabs_:Pos, SelfContainedScriptsSubTabs5
; }

    GuiControl, Example_with_tabs_:MoveDraw, SelfContainedScriptsSubTabs1, % "x" 1 " y" 56 " w" MenuText1PosInitialW+40 " h" 48
; if(number_of_index_elements > number_1_element_integer) {
    
    GuiControlGet, SelfContainedScriptsSubTabs1Pos, Example_with_tabs_:Pos, SelfContainedScriptsSubTabs1  
    GuiControl, Example_with_tabs_:MoveDraw, SelfContainedScriptsSubTabs2, % "x" SelfContainedScriptsSubTabs1PosX + SelfContainedScriptsSubTabs1PosW " y" 56 " w" SelfContainedScriptsSubTabs2PosInitialW+40 " h" 48
; }
; if(number_of_index_elements > number_2_element_integer) {
    GuiControlGet, SelfContainedScriptsSubTabs2Pos, Example_with_tabs_:Pos, SelfContainedScriptsSubTabs2  
    GuiControl, Example_with_tabs_:MoveDraw, SelfContainedScriptsSubTabs3, % "x" SelfContainedScriptsSubTabs2PosX + SelfContainedScriptsSubTabs2PosW " y" 56 " w" SelfContainedScriptsSubTabs3PosInitialW+40 " h" 48
; }
; if(number_of_index_elements > number_3_element_integer) {
    GuiControlGet, SelfContainedScriptsSubTabs3Pos, Example_with_tabs_:Pos, SelfContainedScriptsSubTabs3  
    GuiControl, Example_with_tabs_:MoveDraw, SelfContainedScriptsSubTabs4, % "x" SelfContainedScriptsSubTabs3PosX + SelfContainedScriptsSubTabs3PosW " y" 56 " w" SelfContainedScriptsSubTabs4PosInitialW+40 " h" 48
; }
; if(number_of_index_elements > number_4_element_integer) {
    ; GuiControlGet, SelfContainedScriptsSubTabs4Pos, Example_with_tabs_:Pos, SelfContainedScriptsSubTabs4
    ; GuiControl, Example_with_tabs_:MoveDraw, SelfContainedScriptsSubTabs5, % "x" SelfContainedScriptsSubTabs4PosX + SelfContainedScriptsSubTabs4PosW " y" 56 " w" SelfContainedScriptsSubTabs5PosInitialW+10 " h" 48
; }

;     GuiControlGet, SelfContainedScriptsSubTabs5Pos, Example_with_tabs_:Pos, SelfContainedScriptsSubTabs5
; }

; if(number_of_index_elements > number_1_element_integer) {
    SelfContainedScriptsSubTabs1PosX := SelfContainedScriptsSubTabs1PosX+SelfContainedScriptsSubTabs1PosW-1
    SelfContainedScriptsSubTabs1PosY := SelfContainedScriptsSubTabs1PosY
    GuiControl, Example_with_tabs_:MoveDraw, LineA1, % "x" SelfContainedScriptsSubTabs1PosX " y" SelfContainedScriptsSubTabs1PosY
; }
; if(number_of_index_elements > number_2_element_integer) {
    SelfContainedScriptsSubTabs2PosX := SelfContainedScriptsSubTabs2PosX+SelfContainedScriptsSubTabs2PosW-1
    SelfContainedScriptsSubTabs2PosY := SelfContainedScriptsSubTabs2PosY
    GuiControl, Example_with_tabs_:MoveDraw, LineB1, % "x" SelfContainedScriptsSubTabs2PosX " y" SelfContainedScriptsSubTabs2PosY
; }

; if(number_of_index_elements > number_3_element_integer) {
    SelfContainedScriptsSubTabs3PosX := SelfContainedScriptsSubTabs3PosX+SelfContainedScriptsSubTabs3PosW-1
    SelfContainedScriptsSubTabs3PosY := SelfContainedScriptsSubTabs3PosY
    GuiControl, Example_with_tabs_:MoveDraw, LineC1, % "x" SelfContainedScriptsSubTabs3PosX " y" SelfContainedScriptsSubTabs3PosY
; }

; if(number_of_index_elements > number_4_element_integer) {
    ; SelfContainedScriptsSubTabs4PosX := SelfContainedScriptsSubTabs4PosX+SelfContainedScriptsSubTabs4PosW-1
    ; SelfContainedScriptsSubTabs4PosY := SelfContainedScriptsSubTabs4PosY
    ; GuiControl, Example_with_tabs_:MoveDraw, LineD1, % "x" SelfContainedScriptsSubTabs4PosX " y" SelfContainedScriptsSubTabs4PosY
; }

; if(number_of_index_elements > number_4_element_integer) {
;     SelfContainedScriptsSubTabs5PosX := SelfContainedScriptsSubTabs5PosX+SelfContainedScriptsSubTabs5PosW-1
;     SelfContainedScriptsSubTabs5PosY := SelfContainedScriptsSubTabs5PosY
;     GuiControl, Example_with_tabs_:MoveDraw, LineE1, % "x" SelfContainedScriptsSubTabs5PosX " y" SelfContainedScriptsSubTabs5PosY
; }

Gui, Example_with_tabs_:Add, Text, x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray



global position1 = 0
Gosub, draw_ahk_gui_controls 
global position1 = 1

global position2 = 0
Gosub, draw_exe_gui_controls 
global position2 = 1

global position3 = 0
Gosub, draw_Ink_gui_controls 
global position3 = 1


hide_exe_whiteline_up()
hide_all_exe_duplicate_file_names_gui_controls()

hide_Ink_whiteline_up()
hide_all_Ink_duplicate_file_names_gui_controls()

show_ahk_whiteline_up()
show_all_ahk_duplicate_file_names_gui_controls()


emptry_label_to_stop_auto_execution:
return
        
draw_ahk_gui_controls:
    if(number_of_index_elements < number_1_element_integer) 
    {
        type = ahk

        if(position1) 
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 yp+100 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }
        else
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 y108 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }

        type = .%type%

        ; Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainAhkText_line HwndWhiteLineNumberMainAhkText_line x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray
        
        Gui, Example_with_tabs_:Add, Text, cWhite x-100 yp+20 w1 h1 , 
        {
            for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            {
                element_to_compare := element
                var_starting_at_0_for_comparison = 0

                element_to_compare := StrReplace(element_to_compare, type,"")
                element_to_compare := StrReplace(element_to_compare, ".png","")
                element_to_compare := StrReplace(element_to_compare, ".jpg","")
                element_to_compare := StrReplace(element_to_compare, ".ico","")

                for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
                {
                    ; word_array := StrSplit(element_to_compare, ".")  ; Omits periods.
                    ; element_to_compare := word_array[1]

                    element := StrReplace(element, type,"")
                    element := StrReplace(element, ".png","")
                    element := StrReplace(element, ".jpg","")
                    element := StrReplace(element, ".ico","")

                    if(element_to_compare == element)
                    {
                                
                        var_starting_at_0_for_comparison += 1
                        ; duplicates_names := element_to_compare

                        if(var_starting_at_0_for_comparison > 1){
                        ; duplicates_names_array%var_starting_at_0_for_comparison% := element_to_compare
                            duplicates_names_array := duplicates_names_array . " " . element_to_compare
                        }
                    }
                }
            }

            for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            {

                global MyEdit := element

                HaystackSelfContainedScriptsAHK := MyEdit
                NeedleSelfContainedScriptsAHK := type

                IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

                if (IfVarScriptsAHK != 0)
                {

                    MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                    if(mod( num, 5) = 1)
                    {
                        StringReplace, type_sanitize, type,.,, All 
                        Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

                        ; Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%
                        
                        word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                        A_LoopFileName_var := element
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                        if HasVal(word_array, A_LoopFileName_var)
                        {
                            ; Msgbox, %MyEdit%
                            Gui, Example_with_tabs_:Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNG v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKSelfContainedScripts\%A_LoopFileName_var%.png
                            ; Msgbox, %element%
                            Gui, Example_with_tabs_:Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10Gui v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-45 yp-15 w110 h10 cWhite,

                            ahk_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }
                        else
                        {
                            ; Msgbox, %MyEdit%
                            Gui, Example_with_tabs_:Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10Gui v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-5 yp-15 w110 h10 cWhite,

                            ahk_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)

                            
                        }
                        Gui, Example_with_tabs_:Add, Text, xp+24 yp w110 h10 cWhite,
                    }
                    else
                    {  
                        StringReplace, type_sanitize, type,.,, All 
                        Gui, Example_with_tabs_:Add, Groupbox, xp+200 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,
                        
                        ; Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%

                        word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                        A_LoopFileName_var := element
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                        if HasVal(word_array, A_LoopFileName_var)
                        {
                            ; Msgbox, %MyEdit%
                            Gui, Example_with_tabs_:Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNG v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKSelfContainedScripts\%A_LoopFileName_var%.png
                            Gui, Example_with_tabs_:Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10Gui v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-45 yp-15 w110 h10 cWhite,

                            ahk_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }
                        else
                        {
                            ; Msgbox, %MyEdit%
                            Gui, Example_with_tabs_:Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10Gui v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-5 yp-15 w110 h10 cWhite,

                            ahk_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }

                        Gui, Example_with_tabs_:Add, Text, xp+24 yp w110 h10 cWhite,
                    }

                    ; ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

                    ; This is for a new line
                    if(mod( num, 5) = 0)
                    {
                        Gui, Example_with_tabs_:Add, Text,x20 yp+80 cWhite,

                    }
                    num +=1
                }

            }

            ; for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            ; {
            ;     ; ahk_duplicate_file_names.push(element)
            ;     ; duplicate_file_names.RemoveAt(index)
            ; }
        }

        ; string_output = 
        ; for index, element in ahk_duplicate_file_names 
        ; {
        ;     string_output = `n %index% %element% %string_output%
        ; }

    }
return

draw_exe_gui_controls:
    if(number_of_index_elements < number_2_element_integer) 
    {
        type = exe

        if(position2) 
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 yp+100 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }
        else
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 y108 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }

        type = .%type%

        Gui, Example_with_tabs_:Add, Text, cWhite x-100 yp+20 w1 h1 , 

        {
            for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            {
                element_to_compare := element
                var_starting_at_0_for_comparison = 0

                element_to_compare := StrReplace(element_to_compare, type,"")
                element_to_compare := StrReplace(element_to_compare, ".png","")
                element_to_compare := StrReplace(element_to_compare, ".jpg","")
                element_to_compare := StrReplace(element_to_compare, ".ico","")

                for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
                {
                    ; word_array := StrSplit(element_to_compare, ".")  ; Omits periods.
                    ; element_to_compare := word_array[1]

                    element := StrReplace(element, type,"")
                    element := StrReplace(element, ".png","")
                    element := StrReplace(element, ".jpg","")
                    element := StrReplace(element, ".ico","")

                    if(element_to_compare == element)
                    {
                                
                        var_starting_at_0_for_comparison += 1
                        ; duplicates_names := element_to_compare

                        if(var_starting_at_0_for_comparison > 1){
                        ; duplicates_names_array%var_starting_at_0_for_comparison% := element_to_compare
                            duplicates_names_array := duplicates_names_array . " " . element_to_compare
                        }
                    }
                }

            }

            for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            {

                global MyEdit := element

                HaystackSelfContainedScriptsAHK := MyEdit
                NeedleSelfContainedScriptsAHK := type

                IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)


                ; MsgBox, A_LoopFileName %A_LoopFileName%

                if (IfVarScriptsAHK != 0)
                {
                    ; If InStr(HaystackSelfContainedScripts, HaystackSelfContainedScripts)
                    ; {

                    MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                    if(mod( num, 5) = 1)
                    {
                        StringReplace, type_sanitize, type,.,, All 
                        Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

                        ; Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%
                        
                        word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                        A_LoopFileName_var := element
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                        if HasVal(word_array, A_LoopFileName_var)
                        {
                            
                            Gui, Example_with_tabs_:Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNGEXE v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKSelfContainedScripts\%A_LoopFileName_var%.png
                            Gui, Example_with_tabs_:Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10GuiEXE v%MyEdit%%type_sanitize%, Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-45 yp-15 w110 h10 cWhite,

                            exe_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }
                        else
                        {
                            ; Msgbox, %MyEdit%
                            Gui, Example_with_tabs_:Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10GuiEXE v%MyEdit%%type_sanitize%, Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-5 yp-15 w110 h10 cWhite,

                            exe_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }
                        Gui, Example_with_tabs_:Add, Text, xp+24 yp w110 h10 cWhite,
                    }
                    else
                    {  
                        StringReplace, type_sanitize, type,.,, All 
                        Gui, Example_with_tabs_:Add, Groupbox, xp+200 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

                        ; Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,
                        
                        ; Gui, Example_with_tabs_:Add, Groupbox, x100 yp w200 h80 v_THIS_IS_GROUPBOX_%MyEdit%

                        word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                        A_LoopFileName_var := element
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                        A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                        if HasVal(word_array, A_LoopFileName_var)
                        {
                            
                            Gui, Example_with_tabs_:Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNGEXE v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKSelfContainedScripts\%A_LoopFileName_var%.png
                            Gui, Example_with_tabs_:Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10GuiEXE v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp-45 yp-15 w110 h10 cWhite,

                            exe_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }
                        else
                        {
                            
                            Gui, Example_with_tabs_:Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10GuiEXE v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%element%

                            ; Ballance hight and wight between row and collumns
                            Gui, Example_with_tabs_:Add, Text, xp yp-15 w110 h10 cWhite,

                            exe_duplicate_file_names.push(element)
                            ; duplicate_file_names.RemoveAt(index)
                        }

                        Gui, Example_with_tabs_:Add, Text, xp+24 yp w110 h10 cWhite,
                    }

                    ; ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

                    ; This is for a new line
                    if(mod( num, 5) = 0)
                    {
                        Gui, Example_with_tabs_:Add, Text,x20 yp+80 cWhite,

                    }
                    num +=1
                }
            }
            ; for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            ; {
            ;     ; ahk_duplicate_file_names.push(element)
            ;     duplicate_file_names.RemoveAt(index)
            ; }
            ; for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            ; {
            ;     ahk_duplicate_file_names.push(element)
            ;     duplicate_file_names.RemoveAt(index)
            ; }

        }

        ; string_output = 
        ; for index, element in exe_duplicate_file_names 
        ; {
        ;     string_output = `n %index% %element% %string_output%
        ; }

    }
return

draw_Ink_gui_controls:
    
    if(number_of_index_elements < number_3_element_integer) 
    {
        
        type = lnk

        if(position3) 
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 yp+100 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }
        else
        {
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_line_%type% x40 y108 w1220 0x10
            Gui, Example_with_tabs_:Add, Text, vWhiteLineNumberMainText_text_%type% cWhite xp-5 yp+16 w120 h20 , %type% files
        }

        Gui, Example_with_tabs_:Add, Text, cWhite x-100 yp-20 w1 h1 , 

        type_sanitize := type

        type := "." . type

        num = 1
        Loop %A_ScriptDir%\AHKSelfContainedScripts\*.*
        {
            MyEdit = %A_LoopFileName%

            HaystackSelfContainedScriptsShortcut := "" + A_LoopFileName
            NeedleSelfContainedScriptsShortcut := type
            last_4_characters := % SubStr(HaystackSelfContainedScriptsShortcut, StrLen(HaystackSelfContainedScriptsShortcut) - 3,  StrLen(HaystackSelfContainedScriptsShortcut))

            if (type = last_4_characters)
            {

                MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                if(mod( num, 5) = 1)
                {
                    ; MsgBox, %MyEdit%
                    ; Gui, Example_with_tabs_:Add, Text,xp-1120 yp+40 cWhite,
                    ; num_int := num * 140
                    ; MsgBox, %num_int%
                    Gui,Example_with_tabs_:Add,Button, x100 yp+50 w140 h44 gfunctionWindows10GuiInk v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
                }
                else
                {  ; Gui, Example_with_tabs_:Add, Text,xp-1120 yp+40 cWhite,
                ; MsgBox, "ggg"
                    Gui,Example_with_tabs_:Add,Button, xs+150 ys w140 h44 gfunctionWindows10GuiInk v%MyEdit%%type_sanitize% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
                }

                ; Gui,Example_with_tabs_:Add,Button, xp+140 yp w140 h34 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
                

                ; ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

                ; MsgBox, %MyEdit%

                ; Gui,Example_with_tabs_:Add,Button, xp+140 yp+10 w140 h24 gfunctionWindows10Gui1 v%MyEdit% Section,%A_LoopFileName%
                if(mod( num, 8) = 0)
                {
                    Gui, Example_with_tabs_:Add, Text,xp-1120 yp+50 cWhite,
                }
                num +=1

                Shortcut_duplicate_file_names.push(A_LoopFileName)
                ; duplicate_file_names.RemoveAt(A_Index)

            }
            ; for index, element in duplicate_file_names ; Enumeration is the recommended approach in most cases.
            ; {
                ; duplicate_file_names.RemoveAt(index)
            ; }
        }

        ; string_output = 
        ; for index, element in Shortcut_duplicate_file_names 
        ; {
        ;     string_output = `n %index% %element% %string_output%
        ; }

    }
return

; Msgbox, %string_output%


; Msgbox, % duplicate_file_names.MaxIndex()



functionWindows10Gui(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; if(){

    ;     MsgBox, %controlName%
    ; }
    

    StringReplace, controlName, controlName,1ReplaceForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplaceForDash1,-, All
    StringReplace, controlName, controlName,1ReplaceForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplaceForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplaceForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplaceForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplaceForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplaceForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplaceForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplaceForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplaceForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplaceForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplaceForPlus1,+, All
    StringReplace, controlName, controlName,1ReplaceForComma1,`,, All
    StringReplace, controlName, controlName,1ReplaceForFullStop1,., All
    StringReplace, controlName, controlName,1ReplaceForSlash1,/, All
    StringReplace, controlName, controlName,1ReplaceForColon1,:, All
    StringReplace, controlName, controlName,1ReplaceForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplaceForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplaceForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplaceForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplaceForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplaceForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplaceForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplaceForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplaceForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplaceForCaret1,^, All
    StringReplace, controlName, controlName,1ReplaceForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplaceForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplaceForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplaceForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplaceForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplaceForTilde1,~, All
    ahkFileExtension = .ahk
    ; ahkFileExtension = .png
    StrLen_Minus3 := % StrLen(String) - 3
    controlName := % SubStr(controlName, 1, StrLen_Minus3)  ; Returns "The Quick Brown Fox"
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKSelfContainedScripts
}

functionWindows10GuiInk(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%
    ; MsgBox, %controlName%
    StringReplace, controlName, controlName,1ReplaceForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplaceForDash1,-, All
    StringReplace, controlName, controlName,1ReplaceForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplaceForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplaceForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplaceForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplaceForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplaceForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplaceForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplaceForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplaceForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplaceForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplaceForPlus1,+, All
    StringReplace, controlName, controlName,1ReplaceForComma1,`,, All
    StringReplace, controlName, controlName,1ReplaceForFullStop1,., All
    StringReplace, controlName, controlName,1ReplaceForSlash1,/, All
    StringReplace, controlName, controlName,1ReplaceForColon1,:, All
    StringReplace, controlName, controlName,1ReplaceForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplaceForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplaceForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplaceForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplaceForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplaceForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplaceForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplaceForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplaceForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplaceForCaret1,^, All
    StringReplace, controlName, controlName,1ReplaceForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplaceForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplaceForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplaceForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplaceForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplaceForTilde1,~, All
    ahkFileExtension = .lnk
    StrLen_Minus3 := % StrLen(String) - 3
    controlName := % SubStr(controlName, 1, StrLen_Minus3)  ; Returns "The Quick Brown Fox"
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKSelfContainedScripts
}

functionWindows10GuiPNG(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; MsgBox, %controlName%

    IfInString, controlName, _THIS_IS_PICTURE_VARIABLE_
    {
        controlName := StrReplace(controlName, "_THIS_IS_PICTURE_VARIABLE_","")
        ; MsgBox, The string was found.
        ; return
    }

    ; MsgBox, %controlName%

    ; IfInString, controlName, "_THIS_IS_PICTURE_VARIABLE_"
    ; {MsgBox, The string was found.}

    ; MsgBox, %controlName%
    StringReplace, controlName, controlName,1ReplaceForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplaceForDash1,-, All
    StringReplace, controlName, controlName,1ReplaceForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplaceForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplaceForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplaceForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplaceForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplaceForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplaceForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplaceForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplaceForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplaceForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplaceForPlus1,+, All
    StringReplace, controlName, controlName,1ReplaceForComma1,`,, All
    StringReplace, controlName, controlName,1ReplaceForFullStop1,., All
    StringReplace, controlName, controlName,1ReplaceForSlash1,/, All
    StringReplace, controlName, controlName,1ReplaceForColon1,:, All
    StringReplace, controlName, controlName,1ReplaceForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplaceForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplaceForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplaceForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplaceForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplaceForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplaceForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplaceForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplaceForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplaceForCaret1,^, All
    StringReplace, controlName, controlName,1ReplaceForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplaceForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplaceForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplaceForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplaceForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplaceForTilde1,~, All
    ahkFileExtension = .ahk
    StrLen_Minus3 := % StrLen(String) - 3
    controlName := % SubStr(controlName, 1, StrLen_Minus3)  ; Returns "The Quick Brown Fox"
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKSelfContainedScripts
}

functionWindows10GuiEXE(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; if(){

    ;     MsgBox, %controlName%
    ; }
    

    StringReplace, controlName, controlName,1ReplaceForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplaceForDash1,-, All
    StringReplace, controlName, controlName,1ReplaceForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplaceForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplaceForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplaceForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplaceForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplaceForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplaceForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplaceForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplaceForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplaceForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplaceForPlus1,+, All
    StringReplace, controlName, controlName,1ReplaceForComma1,`,, All
    StringReplace, controlName, controlName,1ReplaceForFullStop1,., All
    StringReplace, controlName, controlName,1ReplaceForSlash1,/, All
    StringReplace, controlName, controlName,1ReplaceForColon1,:, All
    StringReplace, controlName, controlName,1ReplaceForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplaceForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplaceForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplaceForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplaceForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplaceForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplaceForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplaceForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplaceForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplaceForCaret1,^, All
    StringReplace, controlName, controlName,1ReplaceForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplaceForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplaceForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplaceForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplaceForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplaceForTilde1,~, All
    ahkFileExtension = .exe
    ; ahkFileExtension = .png
    StrLen_Minus3 := % StrLen(String) - 3
    controlName := % SubStr(controlName, 1, StrLen_Minus3)  ; Returns "The Quick Brown Fox"
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKSelfContainedScripts
}

functionWindows10GuiPNGEXE(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; MsgBox, %controlName%

    IfInString, controlName, _THIS_IS_PICTURE_VARIABLE_
    {
        controlName := StrReplace(controlName, "_THIS_IS_PICTURE_VARIABLE_","")
        ; MsgBox, The string was found.
        ; return
    }

    ; MsgBox, %controlName%

    ; IfInString, controlName, "_THIS_IS_PICTURE_VARIABLE_"
    ; {MsgBox, The string was found.}

    ; MsgBox, %controlName%
    StringReplace, controlName, controlName,1ReplaceForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplaceForDash1,-, All
    StringReplace, controlName, controlName,1ReplaceForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplaceForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplaceForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplaceForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplaceForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplaceForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplaceForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplaceForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplaceForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplaceForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplaceForPlus1,+, All
    StringReplace, controlName, controlName,1ReplaceForComma1,`,, All
    StringReplace, controlName, controlName,1ReplaceForFullStop1,., All
    StringReplace, controlName, controlName,1ReplaceForSlash1,/, All
    StringReplace, controlName, controlName,1ReplaceForColon1,:, All
    StringReplace, controlName, controlName,1ReplaceForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplaceForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplaceForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplaceForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplaceForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplaceForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplaceForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplaceForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplaceForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplaceForCaret1,^, All
    StringReplace, controlName, controlName,1ReplaceForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplaceForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplaceForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplaceForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplaceForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplaceForTilde1,~, All
    ; ahkFileExtension = .exe
    StrLen_Minus3 := % StrLen(String) - 3
    controlName := % SubStr(controlName, 1, StrLen_Minus3)  ; Returns "The Quick Brown Fox"
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKSelfContainedScripts


}

; ;   _                       _    __             ____        _   _                  
; ;  | |                     | |  / _|           |  _ \      | | | |                 
; ;  | |____      ___ __   __| | | |_ ___  _ __  | |_) |_   _| |_| |_ ___  _ __  ___ 
; ;  | '_ \ \ /\ / / '_ \ / _` | |  _/ _ \| '__| |  _ <| | | | __| __/ _ \| '_ \/ __|
; ;  | | | \ V  V /| | | | (_| | | || (_) | |    | |_) | |_| | |_| || (_) | | | \__ \
; ;  |_| |_|\_/\_/ |_| |_|\__,_| |_| \___/|_|    |____/ \__,_|\__|\__\___/|_| |_|___/
                                                                                 
; Opt1 := [0, 0x80333333, , "White", "8", "Black", "White", 1]         ; normal flat background & text color
; Opt2 := [ , "0x80666666"]                                          ; hot flat background color
; Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
; ImageButton.Create(HBT%MyEdit%, Opt1, Opt2, , , Opt5)


; CountList( _list, delimeter ) {
;     l := StrSplit(_list,delimeter), out:=delimeter
;     for i, a in l {
;         c:=0
;         for j, b in l
;             c := (a = b) ? c + 1 : c                
;         if !(InStr(out, delimeter a "`t"))
;             out .= a (c > 1 ? "`t x " c delimeter : delimeter)
;     }
;     return Trim(out, delimeter)
; }

trimArray(arr) { ; Hash O(n) 

    hash := {}, newArr := []

    for e, v in arr
        if (!hash.Haskey(v))
            hash[(v)] := 1, newArr.push(v)

    return newArr
}

hide_all_ahk_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type = .ahk

    for index, element in ahk_duplicate_file_names 
    {
        global MyEdit := element

        HaystackSelfContainedScriptsAHK := MyEdit
        NeedleSelfContainedScriptsAHK := type

        IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

        if (IfVarScriptsAHK != 0)
        {
            MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

            StringReplace, type_sanitize, type,.,, All 

            GuiControl, Example_with_tabs_:Hide, %MyEdit%%type_sanitize%,
            GuiControl, Example_with_tabs_:Hide, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
            GuiControl, Example_with_tabs_:Hide,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

        }
    }
}

hide_all_exe_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type = .exe

    for index, element in exe_duplicate_file_names 
    {
        global MyEdit := element

        HaystackSelfContainedScriptsAHK := MyEdit
        NeedleSelfContainedScriptsAHK := type

        IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

        if (IfVarScriptsAHK != 0)
        {
            MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

            StringReplace, type_sanitize, type,.,, All 

            GuiControl, Example_with_tabs_:Hide, %MyEdit%%type_sanitize%,
            GuiControl, Example_with_tabs_:Hide, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
            GuiControl, Example_with_tabs_:Hide,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

        }
    }
}

; hide_all_Ink_duplicate_file_names_gui_controls()
; {
;     ; GuiControl, Example_with_tabs_:Show

;     type := ".lnk"

;     for index, element in Shortcut_duplicate_file_names 
;     {
;         global MyEdit := element

;         HaystackSelfContainedScriptsAHK := MyEdit
;         NeedleSelfContainedScriptsAHK := type

;         ; IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

;         ; if (IfVarScriptsAHK != 0)
;         ; {
;             MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

;             StringReplace, type_sanitize, type,.,, All 

;             GuiControl, Example_with_tabs_:Hide, %MyEdit%%type_sanitize%,
;             GuiControl, Example_with_tabs_:Hide, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
;             GuiControl, Example_with_tabs_:Hide,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

;         ; }
;     }
; }

hide_all_Ink_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type := ".lnk"

    ; if(number_of_index_elements < number_1_element_integer) 
    ; {
        for index, element in Shortcut_duplicate_file_names 
        {
            global MyEdit := element

            ; Msgbox, % element

            HaystackSelfContainedScriptsAHK := MyEdit
            NeedleSelfContainedScriptsAHK := type

            ; IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

            ; if (IfVarScriptsAHK != 0)
            ; {
                MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                ; StringReplace, type_sanitize, type,.,, All 

                type_sanitize := "lnk"

                GuiControl, Example_with_tabs_:Hide, %MyEdit%%type_sanitize%,
                GuiControl, Example_with_tabs_:Hide, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
                GuiControl, Example_with_tabs_:Hide,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

            ; }
        }
    ; }
}



show_all_ahk_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type = .ahk

    ; if(number_of_index_elements < number_1_element_integer) 
    ; {
        for index, element in ahk_duplicate_file_names 
        {
            global MyEdit := element

            HaystackSelfContainedScriptsAHK := MyEdit
            NeedleSelfContainedScriptsAHK := type

            IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

            if (IfVarScriptsAHK != 0)
            {
                MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                StringReplace, type_sanitize, type,.,, All 

                GuiControl, Example_with_tabs_:show, %MyEdit%%type_sanitize%,
                GuiControl, Example_with_tabs_:show, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
                GuiControl, Example_with_tabs_:show,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

            }
        }
    ; }
}

show_all_exe_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type = .exe

    ; if(number_of_index_elements < number_1_element_integer) 
    ; {
        for index, element in exe_duplicate_file_names 
        {
            global MyEdit := element

            HaystackSelfContainedScriptsAHK := MyEdit
            NeedleSelfContainedScriptsAHK := type

            IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

            if (IfVarScriptsAHK != 0)
            {
                MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                StringReplace, type_sanitize, type,.,, All 

                GuiControl, Example_with_tabs_:show, %MyEdit%%type_sanitize%,
                GuiControl, Example_with_tabs_:show, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
                GuiControl, Example_with_tabs_:show,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

            }
        }
    ; }
}

show_all_Ink_duplicate_file_names_gui_controls()
{
    ; GuiControl, Example_with_tabs_:Show

    type := ".lnk"

    ; if(number_of_index_elements < number_1_element_integer) 
    ; {
        for index, element in Shortcut_duplicate_file_names 
        {
            global MyEdit := element

            ; Msgbox, % element

            HaystackSelfContainedScriptsAHK := MyEdit
            NeedleSelfContainedScriptsAHK := type

            ; IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

            ; if (IfVarScriptsAHK != 0)
            ; {
                MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

                ; StringReplace, type_sanitize, type,.,, All 

                type_sanitize := "lnk"

                GuiControl, Example_with_tabs_:show, %MyEdit%%type_sanitize%,
                GuiControl, Example_with_tabs_:show, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
                GuiControl, Example_with_tabs_:show,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

            ; }
        }
    ; }
}

; move_ahk_whiteline_up()
; {
;     type = "ahk"
;     GuiControl, Move, WhiteLineNumberMainText_text_%type%, x40 y108 
;     GuiControl, Move, WhiteLineNumberMainText_line_%type%, x40 y108 
; }

; move_Ink_whiteline_up()
; {
;     type = "Ink"
;     GuiControl, Move, WhiteLineNumberMainText_text_%type%, x40 y108 
;     GuiControl, Move, WhiteLineNumberMainText_line_%type%, x40 y108 
; }

; hide_ahk_whiteline_up_text_only()
; {
;     type = "ahk"
;     GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_text_%type%
; }

hide_ahk_whiteline_up()
{
    type = ahk
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_line_%type%
}

show_ahk_whiteline_up()
{
    type = ahk
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_line_%type%
}

hide_exe_whiteline_up()
{
    type = exe
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_line_%type%
}

show_exe_whiteline_up()
{
    type = exe
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_line_%type%
}

hide_Ink_whiteline_up()
{
    type := "lnk"
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainText_line_%type%
}

show_Ink_whiteline_up()
{
    type := "lnk"
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_text_%type%
    GuiControl, Example_with_tabs_:show, WhiteLineNumberMainText_line_%type%
}

; move_exe_whiteline_up()
; {
;     GuiControl, Move, WhiteLineNumberMainExeText_text, x40 y124
;     GuiControl, Example_with_tabs_:hide, WhiteLineNumberMainExeText_line

;     GuiControlGet, MyEdit, Example_with_tabs_:Pos, WhiteLineNumberMainAhkText_line
;     MsgBox The X coordinate is %MyEditX%. The Y coordinate is %MyEditY%. The width is %MyEditW%. The height is %MyEditH%.

;     ; GuiControlGet, Pos, , WhiteLineNumberMainAhkText_text
;     ; GuiControlGet, hwnd, , WhiteLineNumberMainAhkText_text
;     ; GuiControlGet, ddd, Example_with_tabs_:Pos, WhiteLineNumberMainExeText_line

;     ; MsgBox The X coordinate is %Pos%. The Y coordinate is %WhiteLineNumberMainAhkText_textY%

;     type := ".exe"
;     for index, element in exe_duplicate_file_names 
;     {
;         global MyEdit := element

;         HaystackSelfContainedScriptsAHK := MyEdit
;         NeedleSelfContainedScriptsAHK := type

;         IfVarScriptsAHK := % InStr(HaystackSelfContainedScriptsAHK, NeedleSelfContainedScriptsAHK)

;         if (IfVarScriptsAHK != 0)
;         {
;             MyEdit := % repeated_function_for_string_sanitization(MyEdit, type)

;             StringReplace, type_sanitize, type,.,, All 

;             GuiControl, Move, %MyEdit%%type_sanitize%, x40 y134
;             GuiControl, Move, _THIS_IS_PICTURE_VARIABLE_%MyEdit%, x40 y134
;             GuiControl, Move,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%, x40 y134

;             ; GuiControl, Example_with_tabs_:show, %MyEdit%%type_sanitize%,
;             ; GuiControl, Example_with_tabs_:show, _THIS_IS_PICTURE_VARIABLE_%MyEdit%
;             ; GuiControl, Example_with_tabs_:show,_THIS_IS_GROUPBOX_%MyEdit%%type_sanitize%,

;         }
;     }
;     ; GuiControl, Move, WhiteLineNumberMainExeText_line, x40 y128 
; }


; Show_tab_1_gui_elements(){
;    GuiControl, Example_with_tabs_:Show, TEST                 
;    GuiControl, Example_with_tabs_:Show, TESTMsgbox           
;    GuiControl, Example_with_tabs_:Show, IFTTTsimpleFunction  
;    GuiControl, Example_with_tabs_:Show, Search           
;    GuiControl, Example_with_tabs_:Show, SpreedThat           
;    GuiControl, Example_with_tabs_:Show, DoubleSearch         
;    GuiControl, Example_with_tabs_:Show, SaveInfo             
;    GuiControl, Example_with_tabs_:Show, BooleanLaunch        
;    GuiControl, Example_with_tabs_:Show, MPLaunchTL           
;    GuiControl, Example_with_tabs_:Show, MPLaunchTR           
;    GuiControl, Example_with_tabs_:Show, MPLaunchBL           
;    GuiControl, Example_with_tabs_:Show, MPLaunchBR           
;    GuiControl, Example_with_tabs_:Show, SwitchWindow         
;    GuiControl, Example_with_tabs_:Show, SpreedThatArticle    
;    GuiControl, Example_with_tabs_:Show, testtest             
;    ; GuiControl, Example_with_tabs_:Show, RunMasterPassword    
;    ; GuiControl, Example_with_tabs_:Show, RunCliMasterPassword 
; }

repeated_function_for_string_sanitization(string, type)
{
    ; Msgbox, % string
    StringReplace, string, string,%type%,, All
    ; Msgbox, % string
    StringReplace, string, string,%A_Space%,1ReplaceForSpace1, All
    StringReplace, string, string,-,1ReplaceForDash1, All
    StringReplace, string, string,(,1ReplaceForLeftParenthesis1, All
    StringReplace, string, string,),1ReplaceForRightParenthesis1, All
    StringReplace, string, string,!,1ReplaceForExclamation1, All
    StringReplace, string, string,`",1ReplaceForDoubleQuote1, All
    StringReplace, string, string,#,1ReplaceForNumberSign1, All	
    StringReplace, string, string,$,1ReplaceForDollarSign1, All	
    StringReplace, string, string,`%,1ReplaceForPercent1, All	
    StringReplace, string, string,&,1ReplaceForAmpersand1, All
    StringReplace, string, string,',1ReplaceForSingleQuote1, All
    StringReplace, string, string,*,1ReplaceForAsterisk1, All
    StringReplace, string, string,+,1ReplaceForPlus1, All
    StringReplace, string, string,`,,1ReplaceForComma1, All
    StringReplace, string, string,.,1ReplaceForFullStop1, All
    StringReplace, string, string,/,1ReplaceForSlash1, All
    StringReplace, string, string,:,1ReplaceForColon1, All
    StringReplace, string, string,;,1ReplaceForSemicolon1, All
    StringReplace, string, string,<,1ReplaceForLessThan1, All
    StringReplace, string, string,=,1ReplaceForEqualSign1, All
    StringReplace, string, string,>,1ReplaceForGreaterThan1, All
    StringReplace, string, string,?,1ReplaceForQuestionMark1, All
    StringReplace, string, string,@,1ReplaceForAtSign1, All
    StringReplace, string, string,[,1ReplaceForLeftBracket1, All
    StringReplace, string, string,\,1ReplaceForBackslash1, All
    StringReplace, string, string,],1ReplaceForRightBracket1, All
    StringReplace, string, string,^,1ReplaceForCaret1, All
    StringReplace, string, string,_,1ReplaceForUnderscore1, All
    StringReplace, string, string,``,1ReplaceForGraveAccent1, All
    StringReplace, string, string,{,1ReplaceForLeftBrace1, All
    StringReplace, string, string,|,1ReplaceForVerticalBar1, All
    StringReplace, string, string,},1ReplaceForRightBrace1, All
    StringReplace, string, string,~,1ReplaceForTilde1, All
    return string
}