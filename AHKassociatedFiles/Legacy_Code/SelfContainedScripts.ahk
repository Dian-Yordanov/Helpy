Gui, Add, Text, x-110 yp+16 cWhite,
num:=1

; https://github.com/AHK-just-me/Class_ImageButton

Opt1 := [0, 0x80333333, , "White", "0", "Black", "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation

; Gui, Font, s8, Verdana
Gui, Font, s11, Segoe UI
; Gui, Add, Text, cWhite x-120 y108 w1 h1 , 
Gui, Add, Text, cWhite xp+150 yp-16 w120 h20 , Ahk files
Gui, Add, Text, cWhite x-100 yp+20 w1 h1 , 

global duplicate_file_names := []
global duplicates_names := 
global duplicates_names_array := ""
global var_starting_at_0_for_comparison = 0

Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
{
    duplicate_file_names.Push(A_LoopFileName)
}


; add_launch_buttons_for_type_of_extension(".ahk")





type := ".ahk"
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
            StringReplace, MyEdit, MyEdit, .ahk,, All
            StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
            StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
            StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
            StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
            StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
            StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
            StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
            StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
            StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
            StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
            StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
            StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
            StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
            StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
            StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
            StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
            StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
            StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
            StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
            StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
            StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
            StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
            StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
            StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
            StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
            StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
            StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
            StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
            StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
            StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
            StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
            StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
            StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

            if(mod( num, 5) = 1)
            {
                Gui, Add, Groupbox, x100 yp w200 h80,
                
                word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                A_LoopFileName_var := element
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                if HasVal(word_array, A_LoopFileName_var)
                {
                    Gui, Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNG v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\%A_LoopFileName_var%.png
                    Gui, Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-45 yp-15 w110 h10 cWhite,
                }
                else
                {
                    Gui, Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-5 yp-15 w110 h10 cWhite,
                }
                Gui, Add, Text, xp+24 yp w110 h10 cWhite,
            }
            else
            {  
                Gui, Add, Groupbox, xp+200 yp w200 h80,
                


                word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                A_LoopFileName_var := element
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                if HasVal(word_array, A_LoopFileName_var)
                {
                    Gui, Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNG v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\%A_LoopFileName_var%.png
                    Gui, Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-45 yp-15 w110 h10 cWhite,
                }
                else
                {
                    
                    Gui, Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-5 yp-15 w110 h10 cWhite,
                }

                Gui, Add, Text, xp+24 yp w110 h10 cWhite,
            }

            ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

            ; This is for a new line
            if(mod( num, 5) = 0)
            {
                Gui, Add, Text,x20 yp+80 cWhite,

            }
            num +=1
        }


    }
}







Gui, Add, Text, vWhiteLineNumberMainExe x40 yp+100 w1220 0x10
Gui, Add, Text, vWhiteLineNumberMainExeText cWhite xp yp+6 w120 h20 , Exe files

Gui, Add, Text, cWhite x-100 yp+20 w1 h1 , 






type := ".exe"
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
            StringReplace, MyEdit, MyEdit, .ahk,, All
            StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
            StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
            StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
            StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
            StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
            StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
            StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
            StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
            StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
            StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
            StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
            StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
            StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
            StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
            StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
            StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
            StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
            StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
            StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
            StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
            StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
            StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
            StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
            StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
            StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
            StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
            StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
            StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
            StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
            StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
            StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
            StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
            StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

            if(mod( num, 5) = 1)
            {
                Gui, Add, Groupbox, x100 yp w200 h80,
                
                word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                A_LoopFileName_var := element
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                if HasVal(word_array, A_LoopFileName_var)
                {
                    Gui, Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNGEXE v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\%A_LoopFileName_var%.png
                    Gui, Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10GuiEXE v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-45 yp-15 w110 h10 cWhite,
                }
                else
                {
                    Gui, Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10GuiEXE v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-5 yp-15 w110 h10 cWhite,
                }
                Gui, Add, Text, xp+24 yp w110 h10 cWhite,
            }
            else
            {  
                Gui, Add, Groupbox, xp+200 yp w200 h80,
                


                word_array := trimArray(StrSplit(duplicates_names_array, " "))  ; Omits periods.
                A_LoopFileName_var := element
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, type,"")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".png","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".jpg","")
                A_LoopFileName_var := StrReplace(A_LoopFileName_var, ".ico","")

                if HasVal(word_array, A_LoopFileName_var)
                {
                    Gui, Add, Picture, xp+8 yp+28 w30 h30 gfunctionWindows10GuiPNGEXE v_THIS_IS_PICTURE_VARIABLE_%MyEdit% , %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\%A_LoopFileName_var%.png
                    Gui, Add, Button, xp+37 yp-13 w150 h60 gfunctionWindows10GuiEXE v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp-45 yp-15 w110 h10 cWhite,
                }
                else
                {
                    
                    Gui, Add, Button, xp+5 yp+15 w190 h60 gfunctionWindows10GuiEXE v%MyEdit% Section hwndHBTSCS%MyEdit%,%element%

                    ; Ballance hight and wight between row and collumns
                    Gui, Add, Text, xp yp-15 w110 h10 cWhite,
                }

                Gui, Add, Text, xp+24 yp w110 h10 cWhite,
            }

            ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

            ; This is for a new line
            if(mod( num, 5) = 0)
            {
                Gui, Add, Text,x20 yp+80 cWhite,

            }
            num +=1
        }


    }
}






Gui, Add, Text, vWhiteLineNumberMainShortcut x40  yp+100 w1220 0x10
Gui, Add, Text, vWhiteLineNumberMainShortcutText cWhite xp yp+6 w120 h20 , Shortcut
Gui, Add, Text, cWhite x-100 yp+30 w1 h1 , 

num = 0
Loop %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts\*.*
{
    MyEdit = %A_LoopFileName%

    HaystackSelfContainedScriptsShortcut := MyEdit
    NeedleSelfContainedScriptsShortcut := ".lnk"
    ; MsgBox, %NeedleSelfContainedScriptsShortcut%

    ; StringReplace, MyEdit, MyEdit, .,2FullStop2, All

    ; MsgBox, %HaystackSelfContainedScriptsShortcut%

    IfVarScriptsShortcut := % InStr(HaystackSelfContainedScriptsShortcut, NeedleSelfContainedScriptsShortcut)
    ; if (IfVarScriptsShortcut != 0)
    ; {
    ;     ; MsgBox, "1"
    ; }

    if (IfVarScriptsShortcut != 0)
    {
        ; MsgBox, "ggg"
    StringReplace, MyEdit, MyEdit, .lnk,, All
    StringReplace, MyEdit, MyEdit,%A_Space%,1ReplacementForSpace1, All
    StringReplace, MyEdit, MyEdit,-,1ReplacementForDash1, All
    StringReplace, MyEdit, MyEdit,(,1ReplacementForLeftParenthesis1, All
    StringReplace, MyEdit, MyEdit,),1ReplacementForRightParenthesis1, All
    StringReplace, MyEdit, MyEdit,!,1ReplacementForExclamation1, All
    StringReplace, MyEdit, MyEdit,`",1ReplacementForDoubleQuote1, All
    StringReplace, MyEdit, MyEdit,#,1ReplacementForNumberSign1, All	
    StringReplace, MyEdit, MyEdit,$,1ReplacementForDollarSign1, All	
    StringReplace, MyEdit, MyEdit,`%,1ReplacementForPercent1, All	
    StringReplace, MyEdit, MyEdit,&,1ReplacementForAmpersand1, All
    StringReplace, MyEdit, MyEdit,',1ReplacementForSingleQuote1, All
    StringReplace, MyEdit, MyEdit,*,1ReplacementForAsterisk1, All
    StringReplace, MyEdit, MyEdit,+,1ReplacementForPlus1, All
    StringReplace, MyEdit, MyEdit,`,,1ReplacementForComma1, All
    StringReplace, MyEdit, MyEdit,.,1ReplacementForFullStop1, All
    StringReplace, MyEdit, MyEdit,/,1ReplacementForSlash1, All
    StringReplace, MyEdit, MyEdit,:,1ReplacementForColon1, All
    StringReplace, MyEdit, MyEdit,;,1ReplacementForSemicolon1, All
    StringReplace, MyEdit, MyEdit,<,1ReplacementForLessThan1, All
	StringReplace, MyEdit, MyEdit,=,1ReplacementForEqualSign1, All
    StringReplace, MyEdit, MyEdit,>,1ReplacementForGreaterThan1, All
    StringReplace, MyEdit, MyEdit,?,1ReplacementForQuestionMark1, All
    StringReplace, MyEdit, MyEdit,@,1ReplacementForAtSign1, All
    StringReplace, MyEdit, MyEdit,[,1ReplacementForLeftBracket1, All
    StringReplace, MyEdit, MyEdit,\,1ReplacementForBackslash1, All
    StringReplace, MyEdit, MyEdit,],1ReplacementForRightBracket1, All
    StringReplace, MyEdit, MyEdit,^,1ReplacementForCaret1, All
    StringReplace, MyEdit, MyEdit,_,1ReplacementForUnderscore1, All
    StringReplace, MyEdit, MyEdit,``,1ReplacementForGraveAccent1, All
    StringReplace, MyEdit, MyEdit,{,1ReplacementForLeftBrace1, All
    StringReplace, MyEdit, MyEdit,|,1ReplacementForVerticalBar1, All
    StringReplace, MyEdit, MyEdit,},1ReplacementForRightBrace1, All
    StringReplace, MyEdit, MyEdit,~,1ReplacementForTilde1, All

    ; MyEdit1 = %A_LoopFileName%
    ; StringReplace, MyEdit1, MyEdit1, .ahk,, All
    
    ; MsgBox, %MyEdit%

    if(num == 0)
    {
        ; MsgBox, %MyEdit%
        ; Gui, Add, Text,xp-1120 yp+40 cWhite,
        Gui,Add,Button, x100 yp w140 h44 gfunctionWindows10GuiInk v%MyEdit% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
    }
    else
    {  ; Gui, Add, Text,xp-1120 yp+40 cWhite,
        Gui,Add,Button, xp+140 yp w140 h44 gfunctionWindows10GuiInk v%MyEdit% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
    }

    ; Gui,Add,Button, xp+140 yp w140 h34 gfunctionWindows10Gui v%MyEdit% Section hwndHBTSCS%MyEdit%,%A_LoopFileName%
    

    ImageButton.Create(HBTSCS%MyEdit%, Opt1, Opt2, , , Opt5)

    ; MsgBox, %MyEdit%

    ; Gui,Add,Button, xp+140 yp+10 w140 h24 gfunctionWindows10Gui1 v%MyEdit% Section,%A_LoopFileName%
    if(mod( num, 8) = 0)
    {
        Gui, Add, Text,xp-1120 yp+50 cWhite,
    }
    num +=1

    ; MsgBox, %MyEdit%
    ; GuiControl, Hide, %MyEdit%
    ; GuiControl, Hide, WhiteLineNumberMainExe
    ; GuiControl, Hide, WhiteLineNumberMainExeText
    ; GuiControl, Hide, WhiteLineNumberMainShortcut
    ; GuiControl, Hide, WhiteLineNumberMainShortcutText
    }
}


functionWindows10Gui(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; if(){

    ;     MsgBox, %controlName%
    ; }
    

    StringReplace, controlName, controlName,1ReplacementForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplacementForDash1,-, All
    StringReplace, controlName, controlName,1ReplacementForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplacementForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplacementForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplacementForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplacementForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplacementForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplacementForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplacementForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplacementForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplacementForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplacementForPlus1,+, All
    StringReplace, controlName, controlName,1ReplacementForComma1,`,, All
    StringReplace, controlName, controlName,1ReplacementForFullStop1,., All
    StringReplace, controlName, controlName,1ReplacementForSlash1,/, All
    StringReplace, controlName, controlName,1ReplacementForColon1,:, All
    StringReplace, controlName, controlName,1ReplacementForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplacementForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplacementForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplacementForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplacementForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplacementForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplacementForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplacementForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplacementForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplacementForCaret1,^, All
    StringReplace, controlName, controlName,1ReplacementForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplacementForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplacementForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplacementForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplacementForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplacementForTilde1,~, All
    ahkFileExtension = .ahk
    ; ahkFileExtension = .png
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
}

functionWindows10GuiInk(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%
    ; MsgBox, %controlName%
    StringReplace, controlName, controlName,1ReplacementForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplacementForDash1,-, All
    StringReplace, controlName, controlName,1ReplacementForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplacementForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplacementForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplacementForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplacementForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplacementForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplacementForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplacementForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplacementForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplacementForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplacementForPlus1,+, All
    StringReplace, controlName, controlName,1ReplacementForComma1,`,, All
    StringReplace, controlName, controlName,1ReplacementForFullStop1,., All
    StringReplace, controlName, controlName,1ReplacementForSlash1,/, All
    StringReplace, controlName, controlName,1ReplacementForColon1,:, All
    StringReplace, controlName, controlName,1ReplacementForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplacementForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplacementForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplacementForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplacementForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplacementForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplacementForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplacementForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplacementForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplacementForCaret1,^, All
    StringReplace, controlName, controlName,1ReplacementForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplacementForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplacementForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplacementForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplacementForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplacementForTilde1,~, All
    ahkFileExtension = .lnk
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
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
    StringReplace, controlName, controlName,1ReplacementForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplacementForDash1,-, All
    StringReplace, controlName, controlName,1ReplacementForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplacementForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplacementForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplacementForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplacementForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplacementForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplacementForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplacementForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplacementForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplacementForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplacementForPlus1,+, All
    StringReplace, controlName, controlName,1ReplacementForComma1,`,, All
    StringReplace, controlName, controlName,1ReplacementForFullStop1,., All
    StringReplace, controlName, controlName,1ReplacementForSlash1,/, All
    StringReplace, controlName, controlName,1ReplacementForColon1,:, All
    StringReplace, controlName, controlName,1ReplacementForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplacementForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplacementForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplacementForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplacementForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplacementForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplacementForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplacementForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplacementForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplacementForCaret1,^, All
    StringReplace, controlName, controlName,1ReplacementForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplacementForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplacementForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplacementForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplacementForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplacementForTilde1,~, All
    ahkFileExtension = .ahk
    controlName = %controlName%%ahkFileExtension%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
}

functionWindows10GuiEXE(CtrlHwnd:=0, GuiEvent:="", EventInfo:="", ErrLvl:="") {
    GuiControlGet, controlName, Name, %CtrlHwnd%

    ; if(){

    ;     MsgBox, %controlName%
    ; }
    

    StringReplace, controlName, controlName,1ReplacementForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplacementForDash1,-, All
    StringReplace, controlName, controlName,1ReplacementForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplacementForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplacementForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplacementForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplacementForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplacementForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplacementForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplacementForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplacementForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplacementForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplacementForPlus1,+, All
    StringReplace, controlName, controlName,1ReplacementForComma1,`,, All
    StringReplace, controlName, controlName,1ReplacementForFullStop1,., All
    StringReplace, controlName, controlName,1ReplacementForSlash1,/, All
    StringReplace, controlName, controlName,1ReplacementForColon1,:, All
    StringReplace, controlName, controlName,1ReplacementForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplacementForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplacementForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplacementForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplacementForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplacementForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplacementForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplacementForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplacementForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplacementForCaret1,^, All
    StringReplace, controlName, controlName,1ReplacementForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplacementForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplacementForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplacementForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplacementForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplacementForTilde1,~, All
    ; ahkFileExtension = .exe
    ; ahkFileExtension = .png
    controlName = %controlName%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
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
    StringReplace, controlName, controlName,1ReplacementForSpace1,%A_Space%, All
    StringReplace, controlName, controlName,1ReplacementForDash1,-, All
    StringReplace, controlName, controlName,1ReplacementForLeftParenthesis1,(, All
    StringReplace, controlName, controlName,1ReplacementForRightParenthesis1,), All
    StringReplace, controlName, controlName,1ReplacementForExclamation1,!, All
    StringReplace, controlName, controlName,1ReplacementForDoubleQuote1,`", All
    StringReplace, controlName, controlName,1ReplacementForNumberSign1,#, All	
    StringReplace, controlName, controlName,1ReplacementForDollarSign1,$, All	
    StringReplace, controlName, controlName,1ReplacementForPercent1,`%, All	
    StringReplace, controlName, controlName,1ReplacementForAmpersand1,&, All
    StringReplace, controlName, controlName,1ReplacementForSingleQuote1,', All
    StringReplace, controlName, controlName,1ReplacementForAsterisk1,*, All
    StringReplace, controlName, controlName,1ReplacementForPlus1,+, All
    StringReplace, controlName, controlName,1ReplacementForComma1,`,, All
    StringReplace, controlName, controlName,1ReplacementForFullStop1,., All
    StringReplace, controlName, controlName,1ReplacementForSlash1,/, All
    StringReplace, controlName, controlName,1ReplacementForColon1,:, All
    StringReplace, controlName, controlName,1ReplacementForSemicolon1,;, All
    StringReplace, controlName, controlName,1ReplacementForLessThan1,<, All
	StringReplace, controlName, controlName,1ReplacementForEqualSign1,=, All
    StringReplace, controlName, controlName,1ReplacementForGreaterThan1,>, All
    StringReplace, controlName, controlName,1ReplacementForQuestionMark1,?, All
    StringReplace, controlName, controlName,1ReplacementForAtSign1,@, All
    StringReplace, controlName, controlName,1ReplacementForLeftBracket1,[, All
    StringReplace, controlName, controlName,1ReplacementForBackslash1,\, All
    StringReplace, controlName, controlName,1ReplacementForRightBracket1,], All
    StringReplace, controlName, controlName,1ReplacementForCaret1,^, All
    StringReplace, controlName, controlName,1ReplacementForUnderscore1,_, All
    StringReplace, controlName, controlName,1ReplacementForGraveAccent1,``, All
    StringReplace, controlName, controlName,1ReplacementForLeftBrace1,{, All
    StringReplace, controlName, controlName,1ReplacementForVerticalBar1,|, All
    StringReplace, controlName, controlName,1ReplacementForRightBrace1,}, All
    StringReplace, controlName, controlName,1ReplacementForTilde1,~, All
    ; ahkFileExtension = .exe
    controlName = %controlName%
    ; MsgBox, %controlName%
    Run, "%controlName%", %A_ScriptDir%\AHKassociatedFiles\SelfContainedScripts
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
