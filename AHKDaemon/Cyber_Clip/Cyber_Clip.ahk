#SingleInstance force


; MsgBox, "gfff"

; Variables that will be changes by the settings window and used by the code:

IniRead, context_copy_directory_location_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_copy_directory_location
IniRead, context_saved_text_directory_location_var , %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_saved_text_directory_location

; MsgBox, %A_ScriptDir%

if(context_copy_directory_location_var == "default_copy_directory_location"){
    global context_copy_root_dir := A_ScriptDir . "\AhkClipboardLib"
}
else{
    global context_copy_root_dir := context_copy_directory_location_var
}

global DBFileName1_context_copy := context_copy_root_dir . "\clipyText1.txt"
global DBFileName2_context_copy := context_copy_root_dir . "\clipyText2.txt"
global DBFileName3_context_copy := context_copy_root_dir . "\clipyText3.txt"
global DBFileName4_context_copy := context_copy_root_dir . "\clipyText4.txt"
global DBFileName5_context_copy := context_copy_root_dir . "\clipyText5.txt"

if(context_saved_text_directory_location_var == "default_saved_text_directory_location"){
    global saved_text_root_dir := A_ScriptDir . "\AhkSavedTextLib"
}
else{
    global saved_text_root_dir := context_saved_text_directory_location_var
}

global DBFileName1_saved_text := saved_text_root_dir . "\SavedText1.txt"
global DBFileName2_saved_text := saved_text_root_dir . "\SavedText2.txt"
global DBFileName3_saved_text := saved_text_root_dir . "\SavedText3.txt"
global DBFileName4_saved_text := saved_text_root_dir . "\SavedText4.txt" 
global DBFileName5_saved_text := saved_text_root_dir . "\SavedText5.txt"

default_number_of_saved_text_fields := 5
default_number_of_saved_clipboard_fields := 5

IniRead, number_of_saved_text_fields_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_text
IniRead, number_of_saved_clipboard_fields_var , %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard

if(number_of_saved_text_fields_var == "default_number_of_saved_text_fields"){
    global number_of_saved_text_fields := 5
}
else{
    global number_of_saved_text_fields := 5
}

if(number_of_saved_clipboard_fields_var == "default_number_of_saved_clipboard_fields"){
    global number_of_saved_clipboard_fields := 5
}
else{
    global number_of_saved_clipboard_fields := 5
}

GroupAdd, SetOfNotActiveApps, ahk_exe ONENOTE.EXE ; Unused on Vista and later
GroupAdd, SetOfNotActiveApps, ahk_class UnityWndClass
GroupAdd, SetOfNotActiveApps, ahk_exe AnyDesk.exe
GroupAdd, SetOfNotActiveApps, ahk_exe MousewithoutBordersHelper.exe
GroupAdd, SetOfNotActiveApps, ahk_exe explorer.exe
#IfWinNotActive ahk_group SetOfNotActiveApps

; GroupAdd, SetOfActiveApps, ahk_class Chrome_WidgetWin_1

; #IfWinActive ahk_group SetOfActiveApps

;        _ _       _                         _                                                               _   
;       | (_)     | |                       | |                                                             | |  
;    ___| |_ _ __ | |__   ___   __ _ _ __ __| |  _ __ ___   __ _ _ __   __ _  __ _  ___ _ __ ___   ___ _ __ | |_ 
;   / __| | | '_ \| '_ \ / _ \ / _` | '__/ _` | | '_ ` _ \ / _` | '_ \ / _` |/ _` |/ _ \ '_ ` _ \ / _ \ '_ \| __|
;  | (__| | | |_) | |_) | (_) | (_| | | | (_| | | | | | | | (_| | | | | (_| | (_| |  __/ | | | | |  __/ | | | |_ 
;   \___|_|_| .__/|_.__/ \___/ \__,_|_|  \__,_| |_| |_| |_|\__,_|_| |_|\__,_|\__, |\___|_| |_| |_|\___|_| |_|\__|
;           | |                             ______                            __/ |                              
;           |_|                            |______|                          |___/                               

#Persistent
OnClipboardChange("ClipChanged2")

ClipChanged2() {
    Critical

    function_to_call()

    Critical Off
}

function_to_call(){
    ; number_of_saved_clipboard := 5
    ;   if (MC_OwnChange)
    ;     return
    if (ErrorLevel <> 1)
        return
        ; MsgBox, "ggggg"
        OutputVarForDynamicBulding := Object()
        Loop, %number_of_saved_clipboard_fields%
        {
        FileRead, OutputVarForDynamicBulding%a_index%, %context_copy_root_dir%\clipyText%a_index%.txt
        }
        FileRemoveDir, %context_copy_root_dir%, 1
        FileCreateDir, %context_copy_root_dir%
        containsClipboard = 0
        Loop, %number_of_saved_clipboard_fields%
        {
        if (OutputVarForDynamicBulding%a_index% = clipboard)
            {
                containsClipboard = 1
            }
        }
        Loop, %number_of_saved_clipboard_fields%
        {
                if (containsClipboard = 0)
                {
                    if (a_index = 1)
                        {
                            clipboardAppendNumber%a_index% := clipboard
                            clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                            FileAppend, %clipboardAppendvariableDynamic%, %context_copy_root_dir%\clipyText%a_index%.txt
                        }
                    if (a_index <> 1)
                        {
                            indexMinus := a_index-1
                            clipboardAppendNumber%a_index% := OutputVarForDynamicBulding%indexMinus%
                            clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                            FileAppend, %clipboardAppendvariableDynamic%, %context_copy_root_dir%\clipyText%a_index%.txt
                        }
                }
                if (containsClipboard = 1)
                {
                    clipboardAppendNumber%a_index% := OutputVarForDynamicBulding%a_index%
                    clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                    FileAppend, %clipboardAppendvariableDynamic%, %context_copy_root_dir%\clipyText%a_index%.txt
                }
        }
    return
}

saved_text_management_functions(){
    selected_text := % get_selected_text()
    ; number_of_saved_texts := 5
    OutputVarForDynamicBulding := Object()
    Loop, %number_of_saved_clipboard_fields%
    {
    FileRead, OutputVarForDynamicBulding%a_index%, %saved_text_root_dir%\SavedText%a_index%.txt
    }
    FileRemoveDir, %saved_text_root_dir%, 1
    FileCreateDir, %saved_text_root_dir%
    containsSavedText = 0
    Loop, %number_of_saved_clipboard_fields%
    {
    if (OutputVarForDynamicBulding%a_index% = selected_text)
            {
            containsSavedText = 1
        }
    }
    Loop, %number_of_saved_clipboard_fields%
    {
            if (containsSavedText = 0)
            {
                if (a_index = 1)
                    {
                        clipboardAppendNumber%a_index% := % selected_text
                        clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                        FileAppend, %clipboardAppendvariableDynamic%, %saved_text_root_dir%\SavedText%a_index%.txt
                    }
                if (a_index <> 1)
                    {
                        indexMinus := a_index-1
                        clipboardAppendNumber%a_index% := OutputVarForDynamicBulding%indexMinus%
                        clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                        FileAppend, %clipboardAppendvariableDynamic%, %saved_text_root_dir%\SavedText%a_index%.txt
                    }
            }
            if (containsSavedText = 1)
            {
                clipboardAppendNumber%a_index% := OutputVarForDynamicBulding%a_index%
                clipboardAppendvariableDynamic := clipboardAppendNumber%a_Index%
                FileAppend, %clipboardAppendvariableDynamic%, %saved_text_root_dir%\SavedText%a_index%.txt
            }
    }
}

get_selected_text(){
    oCB := ClipboardAll  ; save clipboard contents
    Send, ^c
    ClipWait,1

    selected_text := % Clipboard
    ; MsgBox, % Clipboard
    ; < do whatever you originally wanted with selected text in "clipboard" variable >

    ClipBoard := oCB         ; return original Clipboard contents
    return selected_text
}

;                                    _           _   _                  
;                                   | |         | | | |                 
;   _ __ ___   ___  _   _ ___  ___  | |__  _   _| |_| |_ ___  _ __  ___ 
;  | '_ ` _ \ / _ \| | | / __|/ _ \ | '_ \| | | | __| __/ _ \| '_ \/ __|
;  | | | | | | (_) | |_| \__ \  __/ | |_) | |_| | |_| || (_) | | | \__ \
;  |_| |_| |_|\___/ \__,_|___/\___| |_.__/ \__,_|\__|\__\___/|_| |_|___/
;                               ______                                  
;                              |______|                                 

IniRead, OutputVar, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

If (OutputVar == 1)
    {

    *LButton::
        GetKeyState, state_Ctrl, Ctrl
        if (state_Ctrl = "D"){
            Send {LControl Down}
        }
        GetKeyState, state_Alt, Alt
        if (state_Alt = "D"){
            Send {LAlt Down}
        }
        GetKeyState, state_Shift, Shift
        if (state_Shift = "D"){
            Send {LShift Down}
        }
            ; MsgBox At least one Shift key is down.
        ; else
        ;     MsgBox Neither Shift key is down.
        ; Send {LControl Up}

        Send {LButton down}
    return

    *LButton Up::
        GetKeyState, state_Ctrl, Ctrl
        if (state_Ctrl = "U"){
            Send {LControl Up}
        }
        GetKeyState, state_Alt, Alt
        if (state_Alt = "U"){
            Send {LAlt Up}
        }
        GetKeyState, state_Shift, Shift
        if (state_Shift = "U"){
            Send {LShift Up}
        }
        ; Send {LControl Up}

        Send {LButton up}
        WatchCursor()
    return
    }
    Else 
    {
        
}

RButton::

    IniRead, OutputVar, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

    SysGet, Mon2, Monitor, 1
    CoordMode, mouse, Screen ; Coordinates are relative to the desktop (entire screen).
    MouseGetPos, Cyber_Clipxpos_0, Cyber_Clipypos_0
    Global Cyber_Clipxpos_0, Cyber_Clipypos_0

    ; MsgBox,  %A_ScriptDir% %A_WorkingDir%
        ; MsgBox, "ggg"
    If (OutputVar == 1){
        
        if(Cyber_Clipypos_0 > 50){
            goSub, LaunchGuiCyber_Clip
        }
        else{
            
            Gui, Cyber_Clip:Destroy
            Gui, Cyber_Clip1:Destroy
            
        }
        SendInput {RButton}

    }
    Else {
            SendInput {RButton}
    }
    
Return

;   _                            _      _____       _ _           __ _   __  __                       _____ _ _      _    
;  | |                          | |    / ____|     (_) |         / _| | |  \/  |                     / ____| (_)    | |   
;  | |     __ _ _   _ _ __   ___| |__ | |  __ _   _ _| |     ___| |_| |_| \  / | ___  _   _ ___  ___| |    | |_  ___| | __
;  | |    / _` | | | | '_ \ / __| '_ \| | |_ | | | | | |    / _ \  _| __| |\/| |/ _ \| | | / __|/ _ \ |    | | |/ __| |/ /
;  | |___| (_| | |_| | | | | (__| | | | |__| | |_| | | |___|  __/ | | |_| |  | | (_) | |_| \__ \  __/ |____| | | (__|   < 
;  |______\__,_|\__,_|_| |_|\___|_| |_|\_____|\__,_|_|______\___|_|  \__|_|  |_|\___/ \__,_|___/\___|\_____|_|_|\___|_|\_\
                                                                                                                        
                                                                                                                        
LaunchGuiCyber_Clip:
    global number_Of_Buttons1 = 0
    global number_Of_Lines1 = 0

    global array_of_all_button_names_used_for_line_breaks = []
    global sum_of_all_gui_elements_heights = 0

    Gui, Cyber_Clip:Destroy
    Gui, Cyber_Clip1:Destroy
    Gui, Cyber_Clip2:Destroy

    Gui, Cyber_Clip: +AlwaysOnTop +HwndGameListhwnd +ToolWindow

    ; sleep, 100
    Gui, Cyber_Clip:Color, 2E2E2E
    Gui, Cyber_Clip:Font, s12
    OnMessage(0x0202,"2WM_LBUTTONDOWN")
    OnMessage(0x0083,"2WM_NCCALCSIZE")
    OnMessage(0x200,"WM_MOUSEMOVE")

    global width := 330
    global widthGUIshow := width
    width_minus_10 := width - 10

    SaveTextString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\selectAll.png
    copyString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\copy.png
    cutString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\cut.png
    downloadString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\download.png
    pasteString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\paste.png
    exitString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\exit.png
    settingsString = %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\IconsForContextMenu\\settings.png
    
    Gui, Cyber_Clip:Add, Picture, x16 y2 h38 w100 hwndCheckboxSwitchingButton1 gCheckboxSwitchingButtonFunction1Local Hidden1 vCheckboxSwitchingButton1 +BackgroundTrans , %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\ImageFilesForAHK\off3NT.png
    Gui, Cyber_Clip:Add, Picture, xp yp h38 w100 hwndCheckboxSwitchingButton2 gCheckboxSwitchingButtonFunction2Local vCheckboxSwitchingButton2 +BackgroundTrans , %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\ImageFilesForAHK\on3NT.png

    Gui, Cyber_Clip:Add, Picture, vMenuHover HwndhMenuHover Hidden, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
    CtlShowHide("Hide", "MenuHover"), Hover := 0
    Gui, Cyber_Clip:Add, Picture, vMenuHover2 HwndhMenuHover2 Hidden +BackgroundTrans, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
    CtlShowHide("Hide", "MenuHover2"), Hover := 0
    Gui, Cyber_Clip:Add, Picture, vMenuHoverExit HwndhMenuHoverExit Hidden +BackgroundTrans, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
    CtlShowHide("Hide", "MenuHoverExit"), Hover := 0
    Gui, Cyber_Clip:Add, Picture, vMenuHoverSettings HwndhMenuHoverSettings Hidden +BackgroundTrans, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
    CtlShowHide("Hide", "MenuHoverSettings"), Hover := 0

    Gui, Cyber_Clip:Add, Picture, hwndBorderTop    vBorderTop, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndBorderBottom vBorderBottom, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndorderLeft    vBorderLeft, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndBorderRight  vBorderRight, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png

    CreateMidTopExit_WithPicture("Cyber_Clip", "Settings", "Settings", "FFFFFF", 110, 10, width, 24, "Settings", settingsString)
    CreateTopExit_WithPicture("Cyber_Clip", "Exit", "Exit", "FFFFFF", 215, 10, width, 24, "   Exit", exitString)

    IniRead, OutputVar, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

    If (OutputVar == 1)
    {
        CheckboxSwitchingButtoni := 2
        GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
        GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    }
    Else 
    {
        CheckboxSwitchingButtoni := 1
        GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
        GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
        GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    }

    ; CreateSimple_GuiButtonWith_RightAlignedText_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_text_Right, element_picture, special_y_modifier, special_x_modifier)
    ; example arguments to give to function: 
    ; guiName - Cyber_Clip
    ; element_hwnd - SaveText
    ; element_gLabel - SaveText
    ; element_cColour - FFFFFF
    ; element_x - 0
    ; element_y - 4
    ; element_w - width
    ; element_h - heightInitial2
    ; element_text - "        Save text  "
    ; element_text_Right - "   Ctrl+a              "
    ; element_picture - SaveTextString
    ; special_y_modifier - 0
    ; special_x_modifier - 0

    CreateSimple_GuiButtonWith_RightAlignedText_WithPicture("Cyber_Clip", "SaveText", "SaveText",    "FFFFFF",  0, 4, width,  24, "        Save selected text  ",   "                 ", SaveTextString, 0, 0)
    ; CreateSimple_GuiButtonWith_RightAlignedText_WithPicture("Cyber_Clip", "SaveFile",   "SaveFile",     "FFFFFF", margin_left, 4, width,  heightInitial2,  "        Save file",    "   Ctrl+s             ", downloadString, 0, 0)
    ; CreateSimple_GuiButtonWith_RightAlignedText_WithPicture("Cyber_Clip", "Cut",        "Cut",          "FFFFFF", margin_left, 4, width, heightInitial2, "        Cut",          "   Ctrl+x              ", cutString, 0, 0)
    ; CreateSimple_GuiButtonWith_RightAlignedText_WithPicture("Cyber_Clip", "Copy",       "Copy",         "FFFFFF", margin_left, 4, width, heightInitial2, "        Copy",         "   Ctrl+c              ", copyString, 0, 0)
    ; CreateSimple_GuiButtonWith_RightAlignedText_WithPicture("Cyber_Clip", "Paste",      "Paste",        "FFFFFF", margin_left, 4, width, heightInitial2, "        Paste",        "   Ctrl+v              ", pasteString, 0, 0)
    ; CreateSimple_Line("Cyber_Clip", "Line1", margin_left_plus_8, width_minus_10,sum_of_all_gui_elements_heights, 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option1",   "Duplicate",           "FFFFFF", margin_left, 2, width, heightInitial2, "    Duplicate", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option2",   "PinUnpin",            "FFFFFF", margin_left, 16, width, heightInitial2, "    Pin \ Unpin", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option3",   "CloseOthers",         "FFFFFF", margin_left, 16, width, heightInitial2, "    Close others", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option4",   "Reload",              "FFFFFF", margin_left, 16, width, heightInitial2, "    Reload", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option5",   "SaveAs",              "FFFFFF", margin_left, 16, width, heightInitial2, "    Save as", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option6",   "CopyImage",           "FFFFFF", margin_left, 16, width, heightInitial2, "    Copy image", 0, 0)
    ; CreateSimple_GuiButtonNormal("Cyber_Clip",  "Option7",   "CopyImageAddress",    "FFFFFF", margin_left, 16, width, heightInitial2, "    Copy image address", 0, 0)
    ; CreateSimple_Line("Cyber_Clip", "Line2", margin_left_plus_8, width_minus_10,sum_of_all_gui_elements_heights, -25, 0)

    CreateSimple_Line("Cyber_Clip", "Line2", margin_left_plus_8, width_minus_10,sum_of_all_gui_elements_heights, 16, 0)

    Global MoreOptionsPic
    CreateSimple_GuiButtonWithButton("Cyber_Clip","MoreOptionsPic", "MoreOptionsPicHwnd", "MoreOptions", "Savedsnippets", "FFFFFF", 0, 0, width, 24, "     Saved snippets", 1, 0)
    Global MoreOptionsPic1
    CreateSimple_GuiButtonWithButton("Cyber_Clip","MoreOptionsPic1", "MoreOptionsPic1Hwnd","MoreOptions1", "ContextCopyMenu2", "FFFFFF", 0, 0, width, 24, "     Clipboard manager", 0, 0)


    SysGet, Mon2, Monitor, 1
    CoordMode, mouse, Screen ; Coordinates are relative to the desktop (entire screen).
    MouseGetPos, Cyber_Clipxpos, Cyber_Clipypos 
    Global Cyber_Clipxpos, Cyber_Clipypos

    Cyber_Clipypos -= sum_of_all_gui_elements_heights
    Cyber_Clipypos -= (number_Of_Buttons1 * 4)
    sum_of_all_gui_elements_heights -= (number_Of_Buttons1 * 4)
    
    reduced_sum_of_all_gui_elements_heights_for_height_position := sum_of_all_gui_elements_heights - 120

    VarToCheckIfInCorner_Height := Mon2Bottom - height2
    VarToCheckIfInCorner_Width := Mon2Right - width
    VarToCheckIfInCorner_Width += 10

    height2 := height2-2*height+12

    IniRead, minimal_distance_to_the_top_old_var, %A_ScriptDir%/Cyber_Clip_config_ini_file.ini, LocationConfig, top__distance_location
    IniRead, minimal_distance_to_the_bottom_old_var, %A_ScriptDir%/Cyber_Clip_config_ini_file.ini, LocationConfig, bottom__distance_location
    IniRead, minimal_distance_to_the_left_old_var, %A_ScriptDir%/Cyber_Clip_config_ini_file.ini, LocationConfig, left__distance_location
    IniRead, minimal_distance_to_the_right_old_var, %A_ScriptDir%/Cyber_Clip_config_ini_file.ini, LocationConfig, right__distance_location


    bottom_var1 := Mon2Bottom - minimal_distance_to_the_bottom_old_var
    right_var1 := Mon2Right - minimal_distance_to_the_right_old_var

    minimal_distance_to_the_top_old_var := minimal_distance_to_the_top_old_var - 120
    bottom_var1 := bottom_var1 - 120

    alternative_location_y := Mon2Bottom - 600

    ; MsgBox, %minimal_distance_to_the_top_old_var%

    if(Cyber_Clipypos > minimal_distance_to_the_top_old_var && Cyber_Clipypos < bottom_var1 && Cyber_Clipxpos > minimal_distance_to_the_left_old_var && Cyber_Clipxpos < right_var1)
    {

        if(Cyber_Clipypos > reduced_sum_of_all_gui_elements_heights_for_height_position && Cyber_Clipxpos < VarToCheckIfInCorner_Width && Cyber_Clipypos <= alternative_location_y){
            Gui Cyber_Clip:Show, NoActivate X%Cyber_Clipxpos% Y%Cyber_Clipypos% W%width% H%sum_of_all_gui_elements_heights% , Cyber_ClipContextButton
        }
        ; if(Cyber_Clipxpos > VarToCheckIfInCorner_Width){
        ;     x_location := Mon2Right - width
        ;     Gui Cyber_Clip:Show, NoActivate X%x_location% Y%Cyber_Clipypos% W%width% H%sum_of_all_gui_elements_heights% , Cyber_ClipContextButton
        ; }
        if(Cyber_Clipypos > alternative_location_y && Cyber_Clipxpos > width){
            Cyber_Clipxpos_2 := Cyber_Clipxpos - width - 10
            Cyber_Clipypos_2 := Cyber_Clipypos + 3
            Gui Cyber_Clip:Show, NoActivate X%Cyber_Clipxpos_2% Y%Cyber_Clipypos_2% W%width% H%sum_of_all_gui_elements_heights% , Cyber_ClipContextButton
        }

    }
    


Return

label_for_delaying_gui_run___hovers:
    Gui, Cyber_Clip:Add, Picture, hwndBorderTop    vBorderTop, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndBorderBottom vBorderBottom, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndorderLeft    vBorderLeft, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
    Gui, Cyber_Clip:Add, Picture, hwndBorderRight  vBorderRight, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
return

WatchCursor(){
MouseGetPos, , , id, control
WinGetTitle, title, ahk_id %id%
WinGetClass, class, ahk_id %id%
; ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%

if(title != "Cyber_ClipContextButton"){
    ; SoundBeep
    Gui, Cyber_Clip:Destroy
    Gui, Cyber_Clip2:Destroy
}

return
}

;                  _   _               _        __                              _   _                              _       _                           _       
;                 | | | |             | |      / _|                            | | (_)                            (_)     | |                         | |      
;   _ __ ___   ___| |_| |__   ___   __| |___  | |_ ___  _ __ ___ _ __ ___  __ _| |_ _ _ __   __ _       __ _ _   _ _   ___| | ___ _ __ ___   ___ _ __ | |_ ___ 
;  | '_ ` _ \ / _ \ __| '_ \ / _ \ / _` / __| |  _/ _ \| '__/ __| '__/ _ \/ _` | __| | '_ \ / _` |     / _` | | | | | / _ \ |/ _ \ '_ ` _ \ / _ \ '_ \| __/ __|
;  | | | | | |  __/ |_| | | | (_) | (_| \__ \ | || (_) | | | (__| | |  __/ (_| | |_| | | | | (_| |    | (_| | |_| | ||  __/ |  __/ | | | | |  __/ | | | |_\__ \
;  |_| |_| |_|\___|\__|_| |_|\___/ \__,_|___/ |_| \___/|_|  \___|_|  \___|\__,_|\__|_|_| |_|\__, |     \__, |\__,_|_| \___|_|\___|_| |_| |_|\___|_| |_|\__|___/
;                                         ______       ______                                __/ |_____ __/ |     ______                                       
;                                        |______|     |______|                              |___/______|___/     |______|                                      

CreateSimple_GuiButtonInitial(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text){
    element_y += number_Of_Lines1 * 6
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    
    element_h_minus_2 := element_h - 5
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)
    
    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui, %guiName%:Font, s10
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% y%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    Gui, %guiName%:Font, s12
}

CreateSimple_GuiButtonInitialWith_RightAlignedText(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_text_Right){
    element_y += number_Of_Lines1 * 6
    number_Of_Buttons1 := number_Of_Buttons1 + 1

    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% y%element_y% W%element_w% H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%1 g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h% +BackgroundTrans Right, %element_text_Right%
}

CreateSimple_GuiButtonInitialWith_RightAlignedText_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_text_Right, element_picture){
    element_y += number_Of_Lines1 * 6
    element_x_plus_20 := element_x +20
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 5
    element_h_minus_3 := element_h - 2
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    ; hwnd_var = hwnd%element_hwnd%
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h + 4
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui, %guiName%:Font, s10
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x0 y%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans, 
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x0 yp+%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans, 
    Gui  %guiName%:Add, Picture, hwnd%element_hwnd%pic1 g%element_gLabel% x%element_x_plus_20% yp W18 H18 +BackgroundTrans, %element_picture%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y% W%element_w% H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%1 g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h_minus_2% +BackgroundTrans Right, %element_text_Right%
    Gui, %guiName%:Font, s12
}

CreateSimple_GuiButtonNormal(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, special_y_modifier, special_x_modifier){
    element_y += number_Of_Lines1 * 6
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 3
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui, %guiName%:Font, s10
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y_minus_2% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    Gui, %guiName%:Font, s12
}

CreateSimple_GuiButtonNormal_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_picture){
    element_y += number_Of_Lines1 * 6
    element_x_plus_20 := element_x +20
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 2
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x0 yp+%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans, 
    Gui  %guiName%:Add, Picture, hwnd%element_hwnd%pic1 g%element_gLabel% x%element_x_plus_20% yp W18 H18 +BackgroundTrans, %element_picture%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%

    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y% W%element_w% H%element_h% +BackgroundTrans, %element_text%
}

CreateMidTopExit_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_picture){
    element_y += number_Of_Lines1 * 6
    ; element_x_plus_20 := element_x +20
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 5
    ; number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    ; sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x%element_x% y%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans,
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% xp+20 yp H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Picture, hwnd%element_hwnd%pic1 g%element_gLabel% xp+65 yp+2 W18 H18 +BackgroundTrans, %element_picture%
    ; Gui, %guiName%:Margin, 111, 1000
}

CreateTopExit_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_picture){
    element_y += number_Of_Lines1 * 6
    ; element_x_plus_20 := element_x +20
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 5
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x%element_x% y%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans,
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% xp+20 yp H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Picture, hwnd%element_hwnd%pic1 g%element_gLabel% xp+50 yp+2 W18 H18 +BackgroundTrans, %element_picture%
    ; Gui, %guiName%:Margin, 111, 1000
}

CreateSimple_GuiButtonWith_RightAlignedText(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_text_Right){
    element_y += number_Of_Lines1 * 6
    ; ElementW_minus100 := element_w -100
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h
    ; MsgBox, %sum_of_all_gui_elements_heights%

    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y% W%element_w% H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%1 g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h% +BackgroundTrans Right, %element_text_Right%
}

CreateSimple_GuiButtonWith_RightAlignedText_WithPicture(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, element_text_Right, element_picture, special_y_modifier, special_x_modifier){
    element_y += number_Of_Lines1 * 6
    element_x_plus_20 := element_x +20
    element_y_minus_2 := element_y - 3
    element_h_minus_2 := element_h - 6
    element_h_minus_3 := element_h - 2
    number_Of_Buttons1 := number_Of_Buttons1 + 1
    ; hwnd_var = hwnd%element_hwnd%
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h - 1
    ; MsgBox, %sum_of_all_gui_elements_heights%

    independent_height := number_Of_Buttons1 * 20
    independent_height := independent_height + element_y_minus_2

    Gui, %guiName%:Font, s10
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%EmptyText1 g%element_gLabel% c%element_cColour% x0 y%independent_height% W%element_w% H%element_h_minus_2% +BackgroundTrans, 
    Gui  %guiName%:Add, Picture, hwnd%element_hwnd%pic1 g%element_gLabel% x%element_x_plus_20% yp W18 H18 +BackgroundTrans, %element_picture%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y% W%element_w% H%element_h% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%1 g%element_gLabel% c%element_cColour% xp yp W%element_w% H%element_h_minus_2% +BackgroundTrans Right, %element_text_Right%
    Gui, %guiName%:Font, s12
}

CreateSimple_GuiButtonWithButton(guiName, element_id, pic_hwnd, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, special_y_modifier, special_x_modifier){
    element_y += number_Of_Lines1 * 6
    element_y_minus_2 := element_y + element_h
    element_h_minus_2 := element_h - 5
    element_h_minus_for_sum := element_h - 3
    

    ; hwnd_var := hwnd%element_hwnd%
    ; array_of_all_button_names_used_for_line_breaks.Push(hwnd_var)
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h_minus_for_sum
    sum_of_all_gui_elements_heights += 2
    element_h_minus_for_sum := element_h_minus_for_sum + number_Of_Lines1*8

    ; MsgBox, %sum_of_all_gui_elements_heights%


    ; independent_height += 40
    ; independent_height += 40
    ; independent_height += 40
    ; independent_height += 40
    ; independent_height += 33
    

    

    ; independent_height := number_Of_Buttons1*8

    ; independent_height := number_Of_Buttons1 * 20
    ; ; independent_height := independent_height - number_Of_Lines1*2

    ; independent_height := independent_height + element_y_minus_2

    ; independent_height := independent_height + number_Of_Lines1*4


    independent_height := number_Of_Buttons1 * 20
    independent_height += element_h
    independent_height := independent_height + number_Of_Lines1*2


    number_Of_Buttons1 := number_Of_Buttons1 + 1
    

    ; independent_height += number_Of_Buttons1*12
    
    ; independent_height += 11

    ; MsgBox, % number_Of_Buttons1
    ; MsgBox, % independent_height

    

    ; y%element_y%

    independent_height += special_y_modifier
    element_x += special_x_modifier

    Gui, %guiName%:Font, s10
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% y%element_y% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% y%independent_height% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y_minus_2% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    ; Gui  %guiName%:Add, Text, hwnd%element_hwnd% g%element_gLabel% c%element_cColour% x%element_x% yp+%element_y_minus_2% W%element_w% H%element_h_minus_2% +BackgroundTrans, %element_text%
    Gui, %guiName%:Add, Picture, yp+5 xp+300 w10 h10 v%element_id% Hwnd%pic_hwnd% +BackgroundTrans, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\Arrow4.png
    Gui, %guiName%:Font, s12
}

CreateSimple_Line(guiName, element_hwnd, element_x, element_w,yvar, special_y_modifier, special_x_modifier){
    
    independent_height := number_Of_Buttons1 * 24
    independent_height := independent_height - number_Of_Lines1*2

    ; independent_height := independent_height + element_y_minus_2

    ; MsgBox, %yvar%

    ; yvar -= number_Of_Lines1 * 5

    number_Of_Lines1 := number_Of_Lines1 + 1

    sum_of_all_gui_elements_heights += 4
    ; MsgBox, %sum_of_all_gui_elements_heights%

    last_index_first_set_of_buttons := % array_of_all_button_names_used_for_line_breaks[array_of_all_button_names_used_for_line_breaks.MaxIndex()]
    ; var_pos1 := array_of_all_button_names_used_for_line_breaks.MaxIndex() * numberOfButtons * lenght_multiplier

    yvar := independent_height

    yvar += special_y_modifier
    element_x += special_x_modifier

    Gui  %guiName%:Add, Text, hwnd%element_hwnd% x%element_x% y%yvar% W%element_w% h1 0x7
}

CreateSimple_GuiButtonInitial_for_context_menu(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, start_string_used_to_show_position){
    numberOfButtons_Cyber_Clip2 += 1
    
    element_y_minus_6 := element_y - 5

    element_h_minus_3 := element_h + 50
    element_h_minus_6 := element_y - 6

    string_used_to_get_textHeight := StrSplit(element_text, "`n")

    number_of_lines = 0
    string_output_var_to_display := ""

    Loop % string_used_to_get_textHeight.MaxIndex()
    {
        number_of_lines := A_Index

        if (A_Index <4){

            string_output_var_to_display := string_output_var_to_display "`n" string_used_to_get_textHeight[A_Index]

        }

    }

    line_height_var := 12 * number_of_lines

    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h - 2.5

    Gui, %guiName%:Font, s8

    start_y_position := 0

    Gui  %guiName%:Add, Text, hwnd%element_hwnd%horizontal_line x%element_x% y%start_y_position% w700 H1 0x7
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%starting_string g%element_gLabel% c%element_cColour% xp+8 yp+20 W%element_w% section +BackgroundTrans, %start_string_used_to_show_position%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%vertical_line xp+20 yp-14 w1 H45 0x7
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%pasteText g%element_gLabel% c%element_cColour% xp+20 ys-23 W%element_w% r4 +BackgroundTrans, %string_output_var_to_display%

    Gui, %guiName%:Font, s12
}

CreateSimple_GuiButtonNormal_for_context_menu(guiName, element_hwnd, element_gLabel, element_cColour, element_x, element_y, element_w, element_h, element_text, start_string_used_to_show_position){
    numberOfButtons_Cyber_Clip2 += 1
    
    element_y_minus_6 := element_y - 5

    element_h_minus_3 := element_h + 50
    element_h_minus_6 := element_y - 6

    string_used_to_get_textHeight := StrSplit(element_text, "`n")

    number_of_lines = 0
    string_output_var_to_display := ""

    Loop % string_used_to_get_textHeight.MaxIndex()
    {
        number_of_lines := A_Index

        if (A_Index <4){

            string_output_var_to_display := string_output_var_to_display "`n" string_used_to_get_textHeight[A_Index]

        }
    }

    line_height_var := 12 * number_of_lines

    number_Of_Buttons1 := number_Of_Buttons1 + 1
    array_of_all_button_names_used_for_line_breaks.Push(element_gLabel)

    sum_of_all_gui_elements_heights += element_h - 2.5

    Gui, %guiName%:Font, s8

    start_string_used_to_show_position -= 1
    start_y_position := start_string_used_to_show_position * 58
    start_string_used_to_show_position += 1


    Gui  %guiName%:Add, Text, hwnd%element_hwnd%horizontal_line x%element_x% y%start_y_position% w700 H1 0x7
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%starting_string g%element_gLabel% c%element_cColour% xp+8 yp+20 W%element_w% section +BackgroundTrans, %start_string_used_to_show_position%
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%vertical_line xp+20 yp-14 w1 H45 0x7
    Gui  %guiName%:Add, Text, hwnd%element_hwnd%pasteText g%element_gLabel% c%element_cColour% xp+20 ys-23 W%element_w% r4 +BackgroundTrans, %string_output_var_to_display%
    

    Gui, %guiName%:Font, s12
}

CreateContextMenu(hGui, width, height2, numberOfButtons){
    Gui, %hGui%:Font, s12
    width2 := width+5
    heightInitial   := height2/numberOfButtons/2
    heightInitial15 := 1.5*heightInitial
    heightInitial152:= 1.7*heightInitial
    heightInitial05 := 0.3*heightInitial
    heightInitial2  := 2*heightInitial
    height21 := height2+1

    Gui %hGui%:Add, Text, hwndSaveText gSaveText cFFFFFF r1 +0x4000 x10  y%heightInitial05% W%width%H%heightInitial2%, Select all   
    Gui %hGui%:Add, Text, hwndCopy gCopy cFFFFFF  x10  yp+%heightInitial2%W%width%H%heightInitial2%, Copy
    Gui %hGui%:Add, Text, hwndCut gCut cFFFFFF x10 yp+%heightInitial2%W%width%H%heightInitial2%, Cut
    Gui %hGui%:Add, Text, hwndPaste gPaste  x10  yp+%heightInitial2%W%width%H%heightInitial2%, Paste   
    Gui %hGui%:Add, Text, hwndExit  gExit   x10  yp+%heightInitial2%W%width%H%heightInitial2%, Exit
    Gui %hGui%:Add, Text, x0y0  W%width2%h1 0x7   
    Gui %hGui%:Add, Text, x0y1  w1  H%height21% 0x7 
    Gui %hGui%:Add, Text, x0y%height2%  W%width2%h1 0x7  
    Gui %hGui%:Add, Text, x%width2% y0  w1  H%height21% 0x7 

}

;                    __ _                            _    __                  _   _                    __           _           __ _   __  __                       _____ _ _      _    
;                   / _(_)                          | |  / _|                | | (_)                  / _|         | |         / _| | |  \/  |                     / ____| (_)    | |   
;    ___ ___  _ __ | |_ _  __ _ ___   __ _ _ __   __| | | |_ _   _ _ __   ___| |_ _  ___  _ __  ___  | |_ ___  _ __| |     ___| |_| |_| \  / | ___  _   _ ___  ___| |    | |_  ___| | __
;   / __/ _ \| '_ \|  _| |/ _` / __| / _` | '_ \ / _` | |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __| |  _/ _ \| '__| |    / _ \  _| __| |\/| |/ _ \| | | / __|/ _ \ |    | | |/ __| |/ /
;  | (_| (_) | | | | | | | (_| \__ \| (_| | | | | (_| | | | | |_| | | | | (__| |_| | (_) | | | \__ \ | || (_) | |  | |___|  __/ | | |_| |  | | (_) | |_| \__ \  __/ |____| | | (__|   < 
;   \___\___/|_| |_|_| |_|\__, |___/ \__,_|_| |_|\__,_| |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/ |_| \___/|_|  |______\___|_|  \__|_|  |_|\___/ \__,_|___/\___|\_____|_|_|\___|_|\_\
;                          __/ | ______             ______                                       ______       ______                                                                    
;                         |___/ |______|           |______|                                     |______|     |______|                                                                   

2WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
return (A_Gui ? 0 : "")
}

2WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
return (A_Gui ? 1 : "")
}

2WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
Global X, Y, gX, gY
WinGetPos, gX, gY, gW, gH
X := lParam << 48 >> 48, Y := lParam << 32 >> 48
HL := X < gX + 6, HR := X >= (gX + gW) - 6
HT := Y < gY + 6, HB := Y >= (gY + gH) - 6
IfEqual, HT, 1, return "0x" (HL ? "D" : HR ? "E" : "C")
IfEqual, HB, 1, return "0x" (HL ? "10" : HR ? "11" : "F")
IfEqual
, HL, 1, return 0xA
IfEqual, HR, 1, return 0xB
}


SaveText:
Gui , Cyber_Clip:Destroy
; SendInput {LControl Down}c{LControl Up}

saved_text_management_functions()
Return

SaveFile:
Gui , Cyber_Clip:Destroy
SendInput {LControl Down}s{LControl Up}
Return

Cut:
Gui , Cyber_Clip:Destroy
SendInput {LControl Down}x{LControl Up}
Return

Copy:
Gui , Cyber_Clip:Destroy
; SendInput {LControl Down}c{LControl Up}
Send, ^c
ClipWait
clipboard = %clipboard%
Return

Paste:
Gui , Cyber_Clip:Destroy
SendInput {LControl Down}v{LControl Up}
Return

Exit:
Gui , Cyber_Clip:Destroy
Return

Settings:
Gui , Cyber_Clip:Destroy
Gui , SettingsMenu:Destroy
; Todo menu with active/inactive windowses  list, clipboard and save text directories, save text if option, 

Gui, SettingsMenu:Color, 2E2E2E
OnMessage(0x0202,"SettingsMenu_WM_LBUTTONDOWN")
OnMessage(0x0083,"SettingsMenu_WM_NCCALCSIZE")

SysGet, Mon2, Monitor, 1

SettingsMenu_W := 800
SettingsMenu_H := 800

ScreenMidX := (Mon2Right / 2) - (SettingsMenu_W / 2)
ScreenMidY := (Mon2Bottom / 2) - (SettingsMenu_H / 2)


; MsgBox, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini


Gui, SettingsMenu:Font, s11
Gui, SettingsMenu:Add, Text, x50 y20 cFFFFFF h20 w500, Location where to save clipboard snippeds:
global SaveNewClipboardSnipppedsLocationCheck := "false"

IniRead, context_copy_directory_location_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_copy_directory_location
global default_copy_directory_location := context_copy_directory_location_var

Gui, SettingsMenu:Add, Edit, vSavedClipboardLocation gSavedClipboardLocationIsChanged h20 w700, %default_copy_directory_location%
Gui, SettingsMenu:Font, s7
CopyDefaultClipboardLocationVar := "default directory is : " . default_copy_directory_location . "\AhkClipboardLib"
Gui, SettingsMenu:Add, Text, x50 cFFFFFF h20 w700 ReadOnly Right gCopyDefaultClipboardLocation, %CopyDefaultClipboardLocationVar%

; --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Gui, SettingsMenu:Font, s11
Gui, SettingsMenu:Add, Text, x50 y120 cFFFFFF h20 w500, Location where to save text snippeds:
global SaveNewSnipppedsLocationCheck := "false"

IniRead, context_saved_text_directory_location_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_saved_text_directory_location
global default_saved_text_directory := context_saved_text_directory_location_var

Gui, SettingsMenu:Add, Edit, vSavedSnipppedsLocation gSavedSnipppedsLocationIsChanged h20 w700, %default_saved_text_directory%
Gui, SettingsMenu:Font, s7
CopyDefaultSavedTextLocationVar := "default directory is : " . default_saved_text_directory . "\AhkSavedTextLib"
Gui, SettingsMenu:Add, Text, x50 cFFFFFF h20 w700 ReadOnly Right gCopyDefaultSavedTextLocation, %CopyDefaultSavedTextLocationVar%

; --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Gui, SettingsMenu:Font, s11
Gui, SettingsMenu:Add, Text, x50 y220 cFFFFFF h20 w500, Number of saved clipboard snippeds:
global NumberOfCliboardSnippedsCheck := "false"

; IniRead, number_of_saved_clipboard_fields_var , %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard
IniRead, number_of_clipboards_snippeds_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard
global default_number_of_clipboards_snippeds := number_of_clipboards_snippeds_var

Gui, SettingsMenu:Add, Edit, vSavedSnipppedsNumber gSavedSnipppedsNumberIsChanged h20 w700, %default_number_of_clipboards_snippeds%
Gui, SettingsMenu:Font, s7
CopyDefaultClipbaordSnippedsNumberVar := "default number is : " . default_number_of_clipboards_snippeds
Gui, SettingsMenu:Add, CheckBox, x50 cFFFFFF h20 w300 gUnlimitedsize_number_of_clipboards_snippeds vUnlimitedsize_number_of_clipboards_snippeds, Unlimited size
Gui, SettingsMenu:Add, Text, xp+400 yp cFFFFFF h20 w300 ReadOnly Right gCopyDefaultClipbaordSnippedsNumber, %CopyDefaultClipbaordSnippedsNumberVar%

; --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Gui, SettingsMenu:Font, s11
Gui, SettingsMenu:Add, Text, x50 y320 cFFFFFF h20 w500, Number of saved text snippeds:
global NumberOfSavedSnippedsTextCheck := "false"

; IniRead, number_of_saved_clipboard_fields_var , %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard
IniRead, number_of_saved_text_snippeds_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_text
global default_number_of_saved_text_snippeds := number_of_saved_text_snippeds_var

Gui, SettingsMenu:Add, Edit, vSavedTextsNumber gSavedTextsNumberIsChanged h20 w700, %default_number_of_saved_text_snippeds%
Gui, SettingsMenu:Font, s7
CopyDefaultSavedTextsSnippedsNumberVar := "default number is : " . default_number_of_saved_text_snippeds
Gui, SettingsMenu:Add, CheckBox, x50 cFFFFFF h20 w300 gUnlimitedsize_number_of_saved_text_snippeds vUnlimitedsize_number_of_saved_text_snippeds, Unlimited size
Gui, SettingsMenu:Add, Text, xp+400 yp cFFFFFF h20 w300 ReadOnly Right gCopyDefaultSavedTextsSnippedsNumber, %CopyDefaultSavedTextsSnippedsNumberVar%




IniRead, minimal_distance_to_the_left_old_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, left__distance_location
Gui, SettingsMenu:Add, Text, x50 yp+50 cFFFFFF h20 w400 ReadOnly , Choose minimal distance to the left corner
Gui, SettingsMenu:Add, Edit, vminimal_distance_to_the_left xp+260 yp-2 h20 w220, %minimal_distance_to_the_left_old_var%
Gui, SettingsMenu:Add, Button, xp+240 cFFFFFF h20 w200 gShow_left_field, Show field on the left of the screen

IniRead, minimal_distance_to_the_top_old_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, top__distance_location
Gui, SettingsMenu:Add, Text, x50 yp+50 cFFFFFF h20 w400 ReadOnly , Choose minimal distance to the top corner
Gui, SettingsMenu:Add, Edit, vminimal_distance_to_the_top xp+260 yp-2 h20 w220, %minimal_distance_to_the_top_old_var%
Gui, SettingsMenu:Add, Button, xp+240 cFFFFFF h20 w200 gShow_Top_Field, Show field on the top of the screen

IniRead, minimal_distance_to_the_right_old_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, right__distance_location
Gui, SettingsMenu:Add, Text, x50 yp+50 cFFFFFF h20 w400 ReadOnly , Choose minimal distance to the right corner
Gui, SettingsMenu:Add, Edit, vminimal_distance_to_the_right xp+260 yp-2 h20 w220, %minimal_distance_to_the_right_old_var%
Gui, SettingsMenu:Add, Button, xp+240 cFFFFFF h20 w200 gShow_Right_Field, Show field on right of the screen

IniRead, minimal_distance_to_the_bottom_old_var, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, bottom__distance_location
Gui, SettingsMenu:Add, Text, x50 yp+50 cFFFFFF h20 w400 ReadOnly , Choose minimal distance to the bottom corner
Gui, SettingsMenu:Add, Edit, vminimal_distance_to_the_bottom xp+260 yp-2 h20 w220, %minimal_distance_to_the_bottom_old_var%
Gui, SettingsMenu:Add, Button, xp+240 cFFFFFF h20 w200 gShow_Bottom_Field, Show field on bottom of the the screen














Last_layout_line := 722
Last_layout_line_minus_2 := Last_layout_line - 2

Gui, SettingsMenu:Font, s11
Gui, SettingsMenu:Add, Text, x50 y%Last_layout_line% cFFFFFF h20 w500, App version: 1.00
Gui, SettingsMenu:Font, s7

; Gui, SettingsMenu:Add, Text, x450 y422 cFFFFFF, Automatically save changes on exit
Gui, SettingsMenu:Add, CheckBox, x450 y%Last_layout_line% cFFFFFF vAutomaticExecution, Automatically save changes on exit
guicontrol,SettingsMenu: , AutomaticExecution, 1
Gui, SettingsMenu:Add, Button, x650 y%Last_layout_line_minus_2% cFFFFFF h20 w100 gMakeChanges, Make the changes


Gui SettingsMenu:Show, X%ScreenMidX% Y%ScreenMidY% W%SettingsMenu_W% H%SettingsMenu_H% , Settings menu
Return

MakeChanges:
    Gui, Submit, NoHide

    if(SaveNewClipboardSnipppedsLocationCheck == "true" && SavedClipboardLocation != default_copy_directory_location){
        gosub SaveNewClipboardsLocation
    }

    if(SaveNewSnipppedsLocationCheck == "true" && SavedSnipppedsLocation != default_saved_text_directory){
        gosub SaveNewSnipppedsLocation
    }

    if(NumberOfCliboardSnippedsCheck == "true" && SavedSnipppedsNumber != default_number_of_clipboards_snippeds){
        gosub SaveNewNumberOfCliboardSnippeds
    }

    if(NumberOfSavedSnippedsTextCheck == "true" && SavedTextsNumber != default_number_of_saved_text_snippeds){
        gosub SaveNewNumberOfSavedTextsSnippeds
    }

    SysGet, Mon2, Monitor, 1
    CoordMode, mouse, Screen ; Coordinates are relative to the desktop (entire screen).

    if(minimal_distance_to_the_left >= 0 && minimal_distance_to_the_left <= Mon2Right)
    {
        IniDelete, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, left__distance_location
        IniWrite, %minimal_distance_to_the_left%, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, left__distance_location
    }
    else if(minimal_distance_to_the_left < 0 || minimal_distance_to_the_left > Mon2Right){
        MsgBox, "The number should be above or equal to 0 and fix screen width"
    }

    if(minimal_distance_to_the_top >= 0 && minimal_distance_to_the_top <= Mon2Bottom)
    {
        IniDelete, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, top__distance_location
        IniWrite, %minimal_distance_to_the_top%, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, top__distance_location
    }
    else if(minimal_distance_to_the_top < 0 || minimal_distance_to_the_top > Mon2Bottom){
        MsgBox, "The number should be above or equal to 0 and fix screen height"
    }

    if(minimal_distance_to_the_right >= 0 && minimal_distance_to_the_right <= Mon2Right)
    {
        IniDelete, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, right__distance_location
        IniWrite, %minimal_distance_to_the_right%, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, right__distance_location
    }
    else if(minimal_distance_to_the_right < 0 || minimal_distance_to_the_right > Mon2Right){
        MsgBox, "The number should be above or equal to 0 and fix screen width"
    }

    if(minimal_distance_to_the_bottom >= 0 && minimal_distance_to_the_bottom <= Mon2Bottom)
    {
        IniDelete, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, bottom__distance_location
        IniWrite, %minimal_distance_to_the_bottom%, %A_ScriptDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, bottom__distance_location
    }
    else if(minimal_distance_to_the_bottom < 0 || minimal_distance_to_the_bottom > Mon2Right){
        MsgBox, "The number should be above or equal to 0 and fix screen height"
    }
return

SettingsMenuGuiClose:
    Gui SettingsMenu:Cancel

    GuiControlGet, AutomaticExecution, SettingsMenu:

    if(AutomaticExecution == 1){
        gosub MakeChanges
    }

Return

SaveNewClipboardsLocation:
    ; MsgBox, %SavedSnipppedsLocation%
    IniDelete, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_copy_directory_location
    IniWrite, %SavedClipboardLocation%, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_copy_directory_location
return

SaveNewSnipppedsLocation:
    ; MsgBox, %SavedSnipppedsLocation%
    IniDelete, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_saved_text_directory_location
    IniWrite, %SavedSnipppedsLocation%, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, LocationConfig, context_saved_text_directory_location
return

SaveNewNumberOfCliboardSnippeds:
    ; MsgBox, %SavedSnipppedsLocation%
    IniDelete, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_text
    IniWrite, %SavedSnipppedsNumber%, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_text
return

SaveNewNumberOfSavedTextsSnippeds:
    ; MsgBox, %SavedSnipppedsLocation%
    IniDelete, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard
    IniWrite, %SavedTextsNumber%, %A_WorkingDir%\Cyber_Clip_config_ini_file.ini, NumberOfFields, number_of_saved_clipboard
return

SavedClipboardLocationIsChanged:
    SaveNewClipboardSnipppedsLocationCheck := "true"
return

SavedSnipppedsLocationIsChanged:
    SaveNewSnipppedsLocationCheck := "true"
return

SavedSnipppedsNumberIsChanged:
    NumberOfCliboardSnippedsCheck := "true"
return

SavedTextsNumberIsChanged:
    NumberOfSavedSnippedsTextCheck := "true"
return

Unlimitedsize_number_of_clipboards_snippeds:
    GuiControlGet, Unlimitedsize_number_of_clipboards_snippeds ; Retrieves 1 if it is checked, 0 if it is unchecked.
    ; MsgBox, %Unlimitedsize_number_of_clipboards_snippeds%
    If (Unlimitedsize_number_of_clipboards_snippeds = 0)
    {
        ; goto FunctionFlatten1
        ; return
        GuiControl Enable, SavedSnipppedsNumber 
    }
    else
    {
        ; goto FunctionFlatten2
        ; return
        GuiControl Disable, SavedSnipppedsNumber 
    }
return

Unlimitedsize_number_of_saved_text_snippeds:
    GuiControlGet, Unlimitedsize_number_of_saved_text_snippeds ; Retrieves 1 if it is checked, 0 if it is unchecked.
    If (Unlimitedsize_number_of_saved_text_snippeds = 0)
    {
        ; goto FunctionFlatten1
        ; return
        GuiControl Enable, SavedTextsNumber 
    }
    else
    {
        ; goto FunctionFlatten2
        ; return
        GuiControl Disable, SavedTextsNumber 
    }
    ; MsgBox, %Unlimitedsize_number_of_saved_text_snippeds%
return

CopyDefaultClipboardLocation:
    Gui, Submit, NoHide

    CopyDefaultClipboardLocationVar_string := StrReplace(CopyDefaultClipboardLocationVar, "default directory is : ")
    Clipboard := CopyDefaultClipboardLocationVar_string
    SplashTextOn,800,,Copied default - %CopyDefaultClipboardLocationVar_string% . to clipboard,
    SetTimer, RemoveToolTip, -2000

    ; MsgBox, %CopyDefaultClipboardLocationVar%
return

CopyDefaultSavedTextLocation:
    Gui, Submit, NoHide

    CopyDefaultSavedTextLocationVar_string := StrReplace(CopyDefaultSavedTextLocationVar, "default directory is : ")
    Clipboard := CopyDefaultSavedTextLocationVar_string
    SplashTextOn,800,,Copied default - %CopyDefaultSavedTextLocationVar_string% . to clipboard,
    SetTimer, RemoveToolTip, -2000


    ; MsgBox, %CopyDefaultSavedTextLocationVar%
return

CopyDefaultClipbaordSnippedsNumber:
    Gui, Submit, NoHide

    CopyDefaultClipbaordSnippedsNumberVar_string := StrReplace(CopyDefaultClipbaordSnippedsNumberVar, "default number is : ")
    Clipboard := CopyDefaultClipbaordSnippedsNumberVar_string
    SplashTextOn,800,,Copied default - %CopyDefaultClipbaordSnippedsNumberVar_string% . to clipboard,
    SetTimer, RemoveToolTip, -2000


    ; MsgBox, %CopyDefaultClipbaordSnippedsNumberVar%
return

CopyDefaultSavedTextsSnippedsNumber:
    Gui, Submit, NoHide

    CopyDefaultSavedTextsSnippedsNumberVar_string := StrReplace(CopyDefaultSavedTextsSnippedsNumberVar, "default number is : ")
    Clipboard := CopyDefaultSavedTextsSnippedsNumberVar_string
    SplashTextOn,800,,Copied default - %CopyDefaultSavedTextsSnippedsNumberVar_string% . to clipboard,
    SetTimer, RemoveToolTip, -2000


    ; MsgBox, %CopyDefaultSavedTextsSnippedsNumberVar%
return

RemoveToolTip:
SplashTextOff
return


;    _____      _   _   _                 __  __                                 _            _   _               
;   / ____|    | | | | (_)               |  \/  |                               (_)          | | | |              
;  | (___   ___| |_| |_ _ _ __   __ _ ___| \  / | ___ _ __  _   _     __ _ _   _ _   ___  ___| |_| |_ _   _ _ __  
;   \___ \ / _ \ __| __| | '_ \ / _` / __| |\/| |/ _ \ '_ \| | | |   / _` | | | | | / __|/ _ \ __| __| | | | '_ \ 
;   ____) |  __/ |_| |_| | | | | (_| \__ \ |  | |  __/ | | | |_| |  | (_| | |_| | | \__ \  __/ |_| |_| |_| | |_) |
;  |_____/ \___|\__|\__|_|_| |_|\__, |___/_|  |_|\___|_| |_|\__,_|   \__, |\__,_|_| |___/\___|\__|\__|\__,_| .__/ 
;                                __/ |                         ______ __/ |     ______                     | |    
;                               |___/                         |______|___/     |______|                    |_|    

SettingsMenu_WM_NCCALCSIZE(wParam, lParam, Msg, Hwnd) {
; Use default code and do not overwrite

; return (A_Gui ? 0 : "")
}

SettingsMenu_WM_NCACTIVATE(wParam, lParam, Msg, Hwnd) {
; Use default code and do not overwrite

; return (A_Gui ? 1 : "")
}

SettingsMenu_WM_NCHITTEST(wParam, lParam, Msg, Hwnd) {
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

;    _____            _            _    _____                  __  __                 __ 
;   / ____|          | |          | |  / ____|                |  \/  |               /_ |
;  | |     ___  _ __ | |_ _____  _| |_| |     ___  _ __  _   _| \  / | ___ _ __  _   _| |
;  | |    / _ \| '_ \| __/ _ \ \/ / __| |    / _ \| '_ \| | | | |\/| |/ _ \ '_ \| | | | |
;  | |___| (_) | | | | ||  __/>  <| |_| |___| (_) | |_) | |_| | |  | |  __/ | | | |_| | |
;   \_____\___/|_| |_|\__\___/_/\_\\__|\_____\___/| .__/ \__, |_|  |_|\___|_| |_|\__,_|_|
;                                                 | |     __/ |                          
;                                                 |_|    |___/                           

ContextCopyMenu1:
    IfWinExist , Cyber_ClipContextButton1
    {
        ; Gui, Cyber_Clip:Destroy
        Gui, Cyber_Clip1:Destroy
        ; Gui, Cyber_Clip2:Destroy
    }
    Else
    {
        Gui, Cyber_Clip2:Destroy
        Gui, Cyber_Clip1:Color, 2E2E2E
        Gui,  Cyber_Clip1:Font, s12

        height1 = 12
        number_Of_Buttons1 = 7

        height2:= 2*number_Of_Buttons1*height1

        height1Button:= 2*height1

        heightGui:= (number_Of_Buttons1-1)*(height1Button) -3

        hGui := 2
        width := 220
        widthGUIshow := width
        
        width2 := width+5

        heightInitial   := height2/numberOfButtons/2
        heightInitial2  := 2*heightInitial

        modVar := Mod(number_Of_Buttons1, 8)
        height22:= height2 + 2*height2*number_Of_Buttons1/100 - 2*number_Of_Buttons1
        height21 := height2+1

        Gui, Cyber_Clip1:Add, Picture, vBorderTopContextCopyMenu1, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal-GrayVersion2.png
        Gui, Cyber_Clip1:Add, Picture, vBorderBottomContextCopyMenu1, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip1:Add, Picture, vBorderLeftContextCopyMenu1, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip1:Add, Picture, vBorderRightContextCopyMenu1, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png

        Gui, Cyber_Clip1:Add, Picture, vMenuHoverCyber_Clip1 HwndhMenuHoverCyber_Clip1 Hidden, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Hover := 0

        ; CreateSimpleGuiButtonInitial("Cyber_Clip1", "Option1",   "Duplicate",           "FFFFFF", 1, 1, width, height1Button,             "    Duplicate")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option2",   "PinUnpin",            "FFFFFF", 1, height1Button, width, height1Button, "    Pin \ Unpin")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option3",   "CloseOthers",         "FFFFFF", 1, height1Button, width, height1Button, "    Close others")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option4",   "Reload",              "FFFFFF", 1, height1Button, width, height1Button, "    Reload")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option5",   "SaveAs",              "FFFFFF", 1, height1Button, width, height1Button, "    Save as")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option6",   "CopyImage",           "FFFFFF", 1, height1Button, width, height1Button, "    Copy image")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option7",   "CopyImageAddress",    "FFFFFF", 1, height1Button, width, height1Button, "    Copy image address")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option8",   "Exit2",  "FFFFFF", 1, height1Button, width, height1Button,  "    Option 8")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option9",   "Exit2",  "FFFFFF", 1, height1Button, width, height1Button,  "    Option 9")
        ; CreateSimpleGuiButtonNormal("Cyber_Clip1",  "Option10",   "Exit2",  "FFFFFF", 1, height1Button, width, height1Button, "    Option 10")

            
        ; Cyber_Clipxpos -= Cyber_Clipxpos 
        ; Cyber_Clipypos -= Cyber_Clipypos 

        GuiControlGet, MoreOptionsPic, Pos, MoreOptionsPic 

        ; GuiControlGet, Cyber_Clipxpos, Pos, Cyber_Clipxpos  
        ; GuiControlGet, Cyber_Clipypos, Pos, Cyber_Clipypos  

        temp_var_for_Cyber_Clipxpos := Cyber_Clipxpos
        temp_var_for_Cyber_Clipypos := Cyber_Clipypos

        Cyber_Clipxpos += MoreOptionsPicX + 26
        Cyber_Clipypos += MoreOptionsPicY - 5

        Gui Cyber_Clip1:Show, X%Cyber_Clipxpos% Y%Cyber_Clipypos% W%width% H%heightGui%, Cyber_ClipContextButton1

        Cyber_Clipxpos := temp_var_for_Cyber_Clipxpos
        Cyber_Clipypos := temp_var_for_Cyber_Clipypos

    }
Return

;    _____                     _             _                  _       
;   / ____|                   | |           (_)                | |      
;  | (___   __ ___   _____  __| |  ___ _ __  _ _ __  _ __   ___| |_ ___ 
;   \___ \ / _` \ \ / / _ \/ _` | / __| '_ \| | '_ \| '_ \ / _ \ __/ __|
;   ____) | (_| |\ V /  __/ (_| | \__ \ | | | | |_) | |_) |  __/ |_\__ \
;  |_____/ \__,_| \_/ \___|\__,_| |___/_| |_|_| .__/| .__/ \___|\__|___/
;                             ______          | |   | |                 
;                            |______|         |_|   |_|                 

Savedsnippets:
    global numberOfButtons_Cyber_Clip2 = 0
    IfWinExist , Cyber_ClipContextButton2
    {
        ; Gui, Cyber_Clip:Destroy
        ; Gui, Cyber_Clip1:Destroy
        Gui, Cyber_Clip2:Destroy
    }
    Else
    {
        ; Gui, Cyber_Clip2:Destroy
        Gui, Cyber_Clip1:Destroy
        Gui, Cyber_Clip2:Color, 2E2E2E
        Gui, Cyber_Clip2:Font, s12

        height1 = 12
        number_Of_Buttons1 = 5

        height2:= 2*number_Of_Buttons1*height1

        height1Button:= 2*height1
        height1Button := 2*height1Button

        heightGui:= (number_Of_Buttons1)*(height1Button) -3

        hGui := 2
        width := 220 + 400
        widthGUIshow := width 
        
        width2 := width+5

        heightInitial   := height2/numberOfButtons/2
        heightInitial2  := 2*heightInitial

        modVar := Mod(number_Of_Buttons1, 8)
        height22:= height2 + 2*height2*number_Of_Buttons1/100 - 2*number_Of_Buttons1
        height21 := height2+1

        Gui, Cyber_Clip2:Add, Picture, vBorderTopCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderBottomCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderLeftCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderRightCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png

        Gui, Cyber_Clip2:Add, Picture, vMenuHoverCyber_Clip2 HwndhMenuHoverCyber_Clip2 Hidden, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 0

        #Include %A_ScriptDir%\Class_SQLiteDB.ahk

        FileRead, OutputVar1, %DBFileName1_saved_text%
        FileRead, OutputVar2, %DBFileName2_saved_text%
        FileRead, OutputVar3, %DBFileName3_saved_text%
        FileRead, OutputVar4, %DBFileName4_saved_text%
        FileRead, OutputVar5, %DBFileName5_saved_text%

        ; MsgBox, % OutputVar1

        string_from_ditto_Sql_database_1 := OutputVar1
        string_from_ditto_Sql_database_2 := OutputVar2
        string_from_ditto_Sql_database_3 := OutputVar3
        string_from_ditto_Sql_database_4 := OutputVar4
        string_from_ditto_Sql_database_5 := OutputVar5

        CreateSimple_GuiButtonInitial_for_context_menu("Cyber_Clip2", "ContextMenu_Cyber_Clip2_1",   "ContextMenu_Cyber_Clip2_1_function",  "FFFFFF", 1, 1, width, height1Button,              "" string_from_ditto_Sql_database_1, 1)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_2",   "ContextMenu_Cyber_Clip2_2_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_2, 2)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_3",   "ContextMenu_Cyber_Clip2_3_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_3, 3)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_4",   "ContextMenu_Cyber_Clip2_4_function",  "FFFFFF", 1, height1Button, width, height1Button,       "" string_from_ditto_Sql_database_4, 4)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_5",   "ContextMenu_Cyber_Clip2_5_function",  "FFFFFF", 1, height1Button, width, height1Button,       "" string_from_ditto_Sql_database_5, 5)

        GuiControlGet, MoreOptionsPic1, Pos, MoreOptionsPic1  

        temp_var_for_Cyber_Clipxpos := Cyber_Clipxpos
        temp_var_for_Cyber_Clipypos := Cyber_Clipypos

        Cyber_Clipxpos += MoreOptionsPic1X + 36
        Cyber_Clipypos += MoreOptionsPic1Y - 24

        Height := 52 * numberOfButtons_Cyber_Clip2
        Height += 2

        Gui Cyber_Clip2:Show, X%Cyber_Clipxpos% Y%Cyber_Clipypos% W%width% H%Height%, Cyber_ClipContextButton2

        Cyber_Clipxpos := temp_var_for_Cyber_Clipxpos
        Cyber_Clipypos := temp_var_for_Cyber_Clipypos
    }
Return

;    _____            _            _    _____                  __  __                  ___  
;   / ____|          | |          | |  / ____|                |  \/  |                |__ \ 
;  | |     ___  _ __ | |_ _____  _| |_| |     ___  _ __  _   _| \  / | ___ _ __  _   _   ) |
;  | |    / _ \| '_ \| __/ _ \ \/ / __| |    / _ \| '_ \| | | | |\/| |/ _ \ '_ \| | | | / / 
;  | |___| (_) | | | | ||  __/>  <| |_| |___| (_) | |_) | |_| | |  | |  __/ | | | |_| |/ /_ 
;   \_____\___/|_| |_|\__\___/_/\_\\__|\_____\___/| .__/ \__, |_|  |_|\___|_| |_|\__,_|____|
;                                                 | |     __/ |                             
                                                ; |_|    |___/                              

ContextCopyMenu2:
    global numberOfButtons_Cyber_Clip2 = 0
    IfWinExist , Cyber_ClipContextButton2
    {
        Gui, Cyber_Clip2:Destroy
    }
    Else
    {
        Gui, Cyber_Clip1:Destroy
        Gui, Cyber_Clip2:Color, 2E2E2E
        Gui, Cyber_Clip2:Font, s12

        height1 = 12
        number_Of_Buttons1 = 5

        height2:= 2*number_Of_Buttons1*height1

        height1Button:= 2*height1
        height1Button := 2*height1Button

        heightGui:= (number_Of_Buttons1)*(height1Button) -3

        hGui := 2
        width := 220 + 400
        widthGUIshow := width 
        
        width2 := width+5

        heightInitial   := height2/numberOfButtons/2
        heightInitial2  := 2*heightInitial

        modVar := Mod(number_Of_Buttons1, 8)
        height22:= height2 + 2*height2*number_Of_Buttons1/100 - 2*number_Of_Buttons1
        height21 := height2+1

        Gui, Cyber_Clip2:Add, Picture, vBorderTopCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\border-top-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderBottomCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderLeftCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png
        Gui, Cyber_Clip2:Add, Picture, vBorderRightCyber_Clip2, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\border-outer-normal-GrayVersion2.png

        Gui, Cyber_Clip2:Add, Picture, vMenuHoverCyber_Clip2 HwndhMenuHoverCyber_Clip2 Hidden, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\images\\button-menu-hover-1.png
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 0


        #Include %A_ScriptDir%\Class_SQLiteDB.ahk

        FileRead, OutputVar1, %DBFileName1_context_copy%
        FileRead, OutputVar2, %DBFileName2_context_copy%
        FileRead, OutputVar3, %DBFileName3_context_copy%
        FileRead, OutputVar4, %DBFileName4_context_copy%
        FileRead, OutputVar5, %DBFileName5_context_copy%

        string_from_ditto_Sql_database_1 := OutputVar1
        string_from_ditto_Sql_database_2 := OutputVar2
        string_from_ditto_Sql_database_3 := OutputVar3
        string_from_ditto_Sql_database_4 := OutputVar4
        string_from_ditto_Sql_database_5 := OutputVar5

        CreateSimple_GuiButtonInitial_for_context_menu("Cyber_Clip2", "ContextMenu_Cyber_Clip2_1",   "ContextMenu_Cyber_Clip2_1_function",  "FFFFFF", 1, 1, width, height1Button,              "" string_from_ditto_Sql_database_1, 1)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_2",   "ContextMenu_Cyber_Clip2_2_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_2, 2)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_3",   "ContextMenu_Cyber_Clip2_3_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_3, 3)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_4",   "ContextMenu_Cyber_Clip2_4_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_4, 4)
        CreateSimple_GuiButtonNormal_for_context_menu("Cyber_Clip2",  "ContextMenu_Cyber_Clip2_5",   "ContextMenu_Cyber_Clip2_5_function",  "FFFFFF", 1, height1Button, width, height1Button,  "" string_from_ditto_Sql_database_5, 5)

        GuiControlGet, MoreOptionsPic1, Pos, MoreOptionsPic1  

        temp_var_for_Cyber_Clipxpos := Cyber_Clipxpos
        temp_var_for_Cyber_Clipypos := Cyber_Clipypos

        Cyber_Clipxpos += MoreOptionsPic1X + 36
        Cyber_Clipypos += MoreOptionsPic1Y - 5

        Height := 52 * numberOfButtons_Cyber_Clip2
        Height += 2

        Gui Cyber_Clip2:Show, X%Cyber_Clipxpos% Y%Cyber_Clipypos% W%width% H%Height%, Cyber_ClipContextButton2

        Cyber_Clipxpos := temp_var_for_Cyber_Clipxpos
        Cyber_Clipypos := temp_var_for_Cyber_Clipypos
    }
Return

;               _   _                   _                                 __ _                       _   _                 
;              (_) | |                 | |                               / _(_)                     | | (_)                
;    __ _ _   _ _  | |__   ___  _ __ __| | ___ _ __ ___   ___ ___  _ __ | |_ _  __ _ _   _ _ __ __ _| |_ _  ___  _ __  ___ 
;   / _` | | | | | | '_ \ / _ \| '__/ _` |/ _ \ '__/ __| / __/ _ \| '_ \|  _| |/ _` | | | | '__/ _` | __| |/ _ \| '_ \/ __|
;  | (_| | |_| | | | |_) | (_) | | | (_| |  __/ |  \__ \| (_| (_) | | | | | | | (_| | |_| | | | (_| | |_| | (_) | | | \__ \
;   \__, |\__,_|_| |_.__/ \___/|_|  \__,_|\___|_|  |___/ \___\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\__|_|\___/|_| |_|___/
;    __/ |     ______                                ______                     __/ |                                      
;   |___/     |______|                              |______|                   |___/                                       

Cyber_ClipGuiSize(GuiHwnd, EventInfo, Width, Height) {

    

    GuiControl, MoveDraw, BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height
}

Cyber_Clip1GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, BorderTop, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderBottom, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderLeft, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BorderRight, % "x" Width - 1 " y" 0 " w" 1 " h" Height

    GuiControl, MoveDraw, BorderTopContextCopyMenu1, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderBottomContextCopyMenu1, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderLeftContextCopyMenu1, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BorderRightContextCopyMenu1, % "x" Width - 1 " y" 0 " w" 1 " h" Height

}

Cyber_Clip2GuiSize(GuiHwnd, EventInfo, Width, Height) {

    GuiControl, MoveDraw, BorderTopCyber_Clip2, % "x" 1 " y" 0 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderBottomCyber_Clip2, % "x" 1 " y" Height - 1 " w" Width - 2 " h" 1
    GuiControl, MoveDraw, BorderLeftCyber_Clip2, % "x" 0 " y" 0 " w" 1 " h" Height
    GuiControl, MoveDraw, BorderRightCyber_Clip2, % "x" Width - 1 " y" 0 " w" 1 " h" Height

}

;                  _   _               _        __        __          ____  __   __  __  ____  _    _  _____ ______ __  __  ______      ________ 
;                 | | | |             | |      / _|       \ \        / /  \/  | |  \/  |/ __ \| |  | |/ ____|  ____|  \/  |/ __ \ \    / /  ____|
;   _ __ ___   ___| |_| |__   ___   __| |___  | |_ ___  _ _\ \  /\  / /| \  / | | \  / | |  | | |  | | (___ | |__  | \  / | |  | \ \  / /| |__   
;  | '_ ` _ \ / _ \ __| '_ \ / _ \ / _` / __| |  _/ _ \| '__\ \/  \/ / | |\/| | | |\/| | |  | | |  | |\___ \|  __| | |\/| | |  | |\ \/ / |  __|  
;  | | | | | |  __/ |_| | | | (_) | (_| \__ \ | || (_) | |   \  /\  /  | |  | | | |  | | |__| | |__| |____) | |____| |  | | |__| | \  /  | |____ 
;  |_| |_| |_|\___|\__|_| |_|\___/ \__,_|___/ |_| \___/|_|    \/  \/   |_|  |_| |_|  |_|\____/ \____/|_____/|______|_|  |_|\____/   \/   |______|
;                                         ______       ______               ______                                                               
;                                        |______|     |______|             |______|                                                              

WM_MOUSEMOVE(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0200, "WM_MOUSEMOVE")
    Static Hover := 0 
    Static Hover2 := 0
    Static HoverExit := 0
    Static HoverSettings := 0
    Static Curr := ""
    
    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
    MouseGetPos, MouseX, MouseY,, MouseCtrl, 2
    GuiControlGet, MenuPos, Pos, % MouseCtrl

    MenuPosX_Minus_margin_left:=MenuPosX
    MenuPosX_Minus_margin_left_minus20 := MenuPosX_Minus_margin_left - 20

    If (MouseCtrl is not MoreOptionsPicHwnd "|" MoreOptionsPic1Hwnd ) {
        CtlShowHide("Hide", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
        CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Hide", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1

        return
    }

    If (MouseCtrl ~= CheckboxSwitchingButton1 "|" CheckboxSwitchingButton2 ) {
        CtlShowHide("Hide", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
        CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Hide", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1

        return
    }

    ; If (MouseCtrl ~= Line1 "|" Line2 ) {
    ;     CtlShowHide("Hide", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 0

    ;     return
    ; }

    If (MouseCtrl ~= Exit "|" Exitpic1)
    {
        CtlShowHide("Hide", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
        CtlShowHide("Show", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Hide", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 0

        MenuPosW1  := 100

        IfEqual, HoverExit, 0, IfEqual, Curr, % MouseCtrl, return

     If (MouseCtrl ~= Exit)
        {

            ; MenuPosW1  := 2*MenuPosW + 200
            MenuPosY_minus_2 := MenuPosY - 2
            MenuPosH_plus_2 := MenuPosH + 3
            MenuPosX_Minus_margin_left_minus10 := MenuPosX_Minus_margin_left - 10

            GuiControl, MoveDraw, MenuHoverExit, % "x" MenuPosX_Minus_margin_left_minus10 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2


        } 

        Hover := 0, Curr := MouseCtrl
        Hover2 := 0, Curr := MouseCtrl
    }

    
    If (MouseCtrl ~= Settings "|" Settingspic1)
    {
        ; MsgBox, "ff"
        CtlShowHide("Hide", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
        CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Show", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 0

        MenuPosW1  := 100

        IfEqual, HoverSettings, 0, IfEqual, Curr, % MouseCtrl, return

     If (MouseCtrl ~= Settings)
        {

            ; MenuPosW1  := 2*MenuPosW + 200
            MenuPosY_minus_2 := MenuPosY - 2
            MenuPosH_plus_2 := MenuPosH + 3
            MenuPosX_Minus_margin_left_minus10 := MenuPosX_Minus_margin_left - 10

            GuiControl, MoveDraw, MenuHoverSettings, % "x" MenuPosX_Minus_margin_left_minus10 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2


        } 

        Hover := 0, Curr := MouseCtrl
        Hover2 := 0, Curr := MouseCtrl
    }


    If (MouseCtrl ~= MoreOptions "|" MoreOptions1 "|" MoreOptionsPicHwnd "|" MoreOptionsPic1Hwnd) {
        CtlShowHide("Show", "MenuHover2"), Hover2 := 0
        CtlShowHide("Hide", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Hide", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1

        ; GuiControl, Hide, Cyber_Clip1:enuHoverCyber_Clip1

        IfEqual, Hover2, 1, IfEqual, Curr, % MouseCtrl, return
        IfEqual, Hover, 0, IfEqual, Curr, % MouseCtrl, return

        MenuPosW1  := 2*MenuPosW
        GuiControl, MoveDraw, MenuHover2, % "x" MenuPosX_Minus_margin_left " y" MenuPosY " w" MenuPosW1 " h" MenuPosH
        ; GuiControl, MoveDraw, MenuHover2, +BackgroundTrans

        If (MouseCtrl ~= MoreOptionsPicHwnd "|" MoreOptionsPic1Hwnd)
        {

            ; MenuPosW1  := 2*MenuPosW + 200
            MenuPosW1  := 2*MenuPosW + 400
            MenuPosY_minus_2 := MenuPosY - 5
            MenuPosH_plus_2 := MenuPosH + 9

            GuiControl, MoveDraw, MenuHover2, % "x" 0 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2 
        } 

        Hover2 := 1, Curr := MouseCtrl
        Hover := 0, Curr := MouseCtrl

    }
    Else{
        GuiControl, Cyber_Clip:Hide, MenuHover2
    }

    ; If (MouseCtrl ~= Option1 "|" Option2 "|" Option3 "|" Option4 "|" Option5 "|" Option6 "|" Option7)
    ; {

    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1

    ;     IfEqual, Hover, 0, IfEqual, Curr, % MouseCtrl, return

    ;     MenuPosW1  := MenuPosW + 20
    ;     MenuPosY := MenuPosY - 2

    ;     GuiControl, MoveDraw, MenuHover, % "x" MenuPosX " y" MenuPosY " w" MenuPosW1 " h" MenuPosH
    ;     ; GuiControl, MoveDraw, MenuHoverCyber_Clip1, +BackgroundTrans

    ;     Hover := 0, Curr := MouseCtrl

    ;     ; GuiControl, MoveDraw, MenuHoverCyber_Clip1, % "x" MenuPosX " y" MenuPosY " w" MenuPosW1 " h" MenuPosH

    ; }
    ; Else{
    ;     GuiControl, Cyber_Clip:Hide, MenuHover
    ; }



    ; If (MouseCtrl ~= SelectAll "|" SelectAll1 "|" SelectAllpic1 "|" SelectAllEmptyText1  "|"  SaveFile "|" SaveFile1 "|" SaveFilepic1 "|" SaveFileEmptyText1 "|" Cut "|" Cut1 "|" Cutpic1 "|" CutEmptyText1 "|" Copy "|" Copy1 "|" Copypic1 "|" CopyEmptyText1 "|" Paste "|" Paste1 "|" Pastepic1 "|" PasteEmptyText1 )
    ; {
    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1

    ;     ; GuiControl, % ShowHide, % Split[A_Index]
        
    ;     MenuPosW1  := 2*MenuPosW + 200



    ;     IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
    ;     IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

    ;         ; MenuPosY_minus_2 := MenuPosY - 2
    ;         ; MenuPosH_plus_2 := MenuPosH + 2

    ;     If (MouseCtrl ~= SelectAllpic1 "|" Cutpic1 "|" Copypic1 "|" SaveFilepic1 "|" Pastepic1)
    ;     {

    ;         ; MenuPosW1  := 2*MenuPosW + 200
    ;         MenuPosY_minus_2 := MenuPosY - 2
    ;         MenuPosH_plus_2 := MenuPosH + 3

    ;         GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2 


    ;     } 
    ;     Else If (MouseCtrl ~= SelectAll1 "|" Cut1 "|" Copy1 "|" SaveFile1 "|" Paste1)
    ;     {

    ;         ; MenuPosW1  := 2*MenuPosW + 200
    ;         MenuPosY_minus_2 := MenuPosY - 2
    ;         MenuPosH_plus_2 := MenuPosH + 3


    ;         GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2


    ;     } 
    ;     Else If (MouseCtrl ~= SelectAll "|" Cut "|" Copy "|" SaveFile "|" Paste)
    ;     {

    ;         ; MenuPosW1  := 2*MenuPosW + 200
    ;         MenuPosY_minus_2 := MenuPosY - 2
    ;         MenuPosH_plus_2 := MenuPosH + 3


    ;         GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2


    ;     } 
    ;     Else{

    ;         MenuPosY_minus_2 := MenuPosY - 2
    ;         MenuPosH_plus_2 := MenuPosH + 3
    ;         GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

    ;     }
        
    ;     Hover := 0, Curr := MouseCtrl
    ;     Hover2 := 0, Curr := MouseCtrl
    ; }
    ; Else{
    ;     GuiControl, Cyber_Clip:Hide, MenuHover
    ; }

    MenuPosW1  := 2*MenuPosW + 300

    If (MouseCtrl ~= SaveText "|" SaveText1 "|" SaveTextpic1 "|" SaveTextEmptyText1 )
    {
        CtlShowHide("Show", "MenuHover"), Hover := 0
        CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
        CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
        CtlShowHide("Hide", "MenuHoverSettings"), HoverSettings := 0
        CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
        CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1


        IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
        IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

        MenuPosH_plus_2 := MenuPosH - 4
        MenuPosH := MenuPosH - 4
        MenuPosY_minus_2 := MenuPosY - 1
        MenuPosH_plus_2 += 6

        GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

        Hover := 0, Curr := MouseCtrl
        Hover2 := 0, Curr := MouseCtrl
    }

    ; If (MouseCtrl ~= SaveFile "|" SaveFile1 "|" SaveFilepic1 "|" SaveFileEmptyText1 )
    ; {
    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1


    ;     IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
    ;     IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

    ;     MenuPosH_plus_2 := MenuPosH - 4
    ;     MenuPosH := MenuPosH - 4
    ;     MenuPosY_minus_2 := MenuPosY - 1
    ;     MenuPosH_plus_2 += 6

    ;     GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

    ;     Hover := 0, Curr := MouseCtrl
    ;     Hover2 := 0, Curr := MouseCtrl
    ; }

    ; If (MouseCtrl ~= Cut "|" Cut1 "|" Cutpic1 "|" CutEmptyText1 )
    ; {
    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1


    ;     IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
    ;     IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

    ;     MenuPosH_plus_2 := MenuPosH - 4
    ;     MenuPosH := MenuPosH - 4
    ;     MenuPosY_minus_2 := MenuPosY - 1
    ;     MenuPosH_plus_2 += 6

    ;     GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

    ;     Hover := 0, Curr := MouseCtrl
    ;     Hover2 := 0, Curr := MouseCtrl
    ; }

    ; If (MouseCtrl ~= Copy "|" Copy1 "|" Copypic1 "|" CopyEmptyText1 )
    ; {
    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1


    ;     IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
    ;     IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

    ;     MenuPosH_plus_2 := MenuPosH - 4
    ;     MenuPosH := MenuPosH - 4
    ;     MenuPosY_minus_2 := MenuPosY - 1
    ;     MenuPosH_plus_2 += 6

    ;     GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

    ;     Hover := 0, Curr := MouseCtrl
    ;     Hover2 := 0, Curr := MouseCtrl
    ; }

    ; If (MouseCtrl ~= Paste "|" Paste1 "|" Pastepic1 "|" PasteEmptyText1 )
    ; {
    ;     CtlShowHide("Show", "MenuHover"), Hover := 0
    ;     CtlShowHide("Hide", "MenuHover2"), Hover2 := 0
    ;     CtlShowHide("Hide", "MenuHoverExit"), HoverExit := 0
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 1
    ;     CtlShowHide("Hide", "MenuHoverCyber_Clip2"), Cyber_ClipHover2 := 1


    ;     IfEqual, Hover, 1, IfEqual, Curr, % MouseCtrl, return
    ;     IfEqual, Hover2, 0, IfEqual, Curr, % MouseCtrl, return

    ;     MenuPosH_plus_2 := MenuPosH - 4
    ;     MenuPosH := MenuPosH - 4
    ;     MenuPosY_minus_2 := MenuPosY - 1
    ;     MenuPosH_plus_2 += 6

    ;     GuiControl, MoveDraw, MenuHover, % "x" MenuPosX_Minus_margin_left_minus20 " y" MenuPosY_minus_2 " w" MenuPosW1 " h" MenuPosH_plus_2

    ;     Hover := 0, Curr := MouseCtrl
    ;     Hover2 := 0, Curr := MouseCtrl
    ; }








    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
    MouseGetPos, MouseX, MouseY,, Cyber_ClipMouseCtrl, 2
    GuiControlGet, MenuPos, Pos, % Cyber_ClipMouseCtrl

    MenuPosWMinus2:=MenuPosW+4

    If (Cyber_ClipMouseCtrl ~= Option1 "|" Option2 "|" Option3 "|" Option4 "|" Option5 "|" Option6 "|" Option7)
    {

        CtlShowHide("Show", "MenuHoverCyber_Clip1"), Cyber_ClipHover := 0

        IfEqual, Cyber_ClipHover, 0, IfEqual, Cyber_ClipCurr, % Cyber_ClipMouseCtrl, return
        GuiControl, MoveDraw, MenuHoverCyber_Clip1, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
        ; GuiControl, MoveDraw, MenuHoverCyber_Clip1, +BackgroundTrans

        Cyber_ClipHover := 1, Cyber_ClipCurr := Cyber_ClipMouseCtrl   

        ; GuiControl, MoveDraw, MenuHoverCyber_Clip1, % "x" MenuPosX " y" MenuPosY " w" MenuPosW1 " h" MenuPosH

    }
    Else{
        GuiControl, Cyber_Clip1:Hide, MenuHoverCyber_Clip1
    }

    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
    MouseGetPos, MouseX, MouseY,, Cyber_ClipMouseCtrl2, 2
    GuiControlGet, MenuPos, Pos, % Cyber_ClipMouseCtrl2

    MenuPosWMinus2:=MenuPosW-96

    static Cyber_ClipCurr2 := ""
    static Cyber_ClipHover2 = 0
        
    CtlShowHide("Show", "MenuHoverCyber_Clip2")
    IfEqual, Cyber_ClipCurr2, % Cyber_ClipMouseCtrl2, return
    IfEqual, Cyber_ClipHover2, 1, return

    ; If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1pasteText "|" ContextMenu_Cyber_Clip2_2pasteText "|" ContextMenu_Cyber_Clip2_3pasteText "|" ContextMenu_Cyber_Clip2_4pasteText "|" ContextMenu_Cyber_Clip2_5pasteText "|" ContextMenu_Cyber_Clip2_1horizontal_line "|" ContextMenu_Cyber_Clip2_2horizontal_line "|" ContextMenu_Cyber_Clip2_3horizontal_line "|" ContextMenu_Cyber_Clip2_4horizontal_line "|" ContextMenu_Cyber_Clip2_5horizontal_line "|" ContextMenu_Cyber_Clip2_1starting_string "|" ContextMenu_Cyber_Clip2_2starting_string "|" ContextMenu_Cyber_Clip2_3starting_string "|" ContextMenu_Cyber_Clip2_4starting_string "|" ContextMenu_Cyber_Clip2_5starting_string "|" ContextMenu_Cyber_Clip2_1vertical_line "|" ContextMenu_Cyber_Clip2_2vertical_line "|" ContextMenu_Cyber_Clip2_3vertical_line "|" ContextMenu_Cyber_Clip2_4vertical_line "|" ContextMenu_Cyber_Clip2_5vertical_line)
    ; {
    ;     If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1pasteText "|" ContextMenu_Cyber_Clip2_2pasteText "|" ContextMenu_Cyber_Clip2_3pasteText "|" ContextMenu_Cyber_Clip2_4pasteText "|" ContextMenu_Cyber_Clip2_5pasteText)
    ;     {
    ;         MenuPosY += 5
    ;         MenuPosH += 3
    ;         MenuPosX -= 100
    ;         MenuPosWMinus2 += 100

    ;         GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
    ;     }
    ;     Else If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1starting_string "|" ContextMenu_Cyber_Clip2_2starting_string "|" ContextMenu_Cyber_Clip2_3starting_string "|" ContextMenu_Cyber_Clip2_4starting_string "|" ContextMenu_Cyber_Clip2_5starting_string)
    ;     {
    ;         MenuPosY -= 18
    ;         MenuPosH += 42
    ;         MenuPosX -= 100
    ;         MenuPosWMinus2 += 100

    ;         GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
    ;     }
    ;     Else If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1vertical_line "|" ContextMenu_Cyber_Clip2_2vertical_line "|" ContextMenu_Cyber_Clip2_3vertical_line "|" ContextMenu_Cyber_Clip2_4vertical_line "|" ContextMenu_Cyber_Clip2_5vertical_line)
    ;     {
    ;         MenuPosY -= 4
    ;         MenuPosH += 10
    ;         MenuPosX -= 100
    ;         MenuPosWMinus2 += 700

    ;         GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
    ;     }
    ; }

    If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1pasteText "|" ContextMenu_Cyber_Clip2_2pasteText "|" ContextMenu_Cyber_Clip2_3pasteText "|" ContextMenu_Cyber_Clip2_4pasteText "|" ContextMenu_Cyber_Clip2_5pasteText "|" ContextMenu_Cyber_Clip2_1horizontal_line "|" ContextMenu_Cyber_Clip2_2horizontal_line "|" ContextMenu_Cyber_Clip2_3horizontal_line "|" ContextMenu_Cyber_Clip2_4horizontal_line "|" ContextMenu_Cyber_Clip2_5horizontal_line "|" ContextMenu_Cyber_Clip2_1starting_string "|" ContextMenu_Cyber_Clip2_2starting_string "|" ContextMenu_Cyber_Clip2_3starting_string "|" ContextMenu_Cyber_Clip2_4starting_string "|" ContextMenu_Cyber_Clip2_5starting_string "|" ContextMenu_Cyber_Clip2_1vertical_line "|" ContextMenu_Cyber_Clip2_2vertical_line "|" ContextMenu_Cyber_Clip2_3vertical_line "|" ContextMenu_Cyber_Clip2_4vertical_line "|" ContextMenu_Cyber_Clip2_5vertical_line)
    {
        If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1pasteText "|" ContextMenu_Cyber_Clip2_2pasteText "|" ContextMenu_Cyber_Clip2_3pasteText "|" ContextMenu_Cyber_Clip2_4pasteText "|" ContextMenu_Cyber_Clip2_5pasteText)
        {
            MenuPosY += 5
            MenuPosH += 3
            MenuPosX += 9
            MenuPosWMinus2 += 100
            MenuPosX := 1

            GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
        }
        Else If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1starting_string "|" ContextMenu_Cyber_Clip2_2starting_string "|" ContextMenu_Cyber_Clip2_3starting_string "|" ContextMenu_Cyber_Clip2_4starting_string "|" ContextMenu_Cyber_Clip2_5starting_string)
        {
            MenuPosY -= 18
            MenuPosH += 42
            ; MenuPosX -= 9
            MenuPosX += 9
            MenuPosWMinus2 += 100
            MenuPosX := 1

            GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
        }
        Else If (Cyber_ClipMouseCtrl2 ~= ContextMenu_Cyber_Clip2_1vertical_line "|" ContextMenu_Cyber_Clip2_2vertical_line "|" ContextMenu_Cyber_Clip2_3vertical_line "|" ContextMenu_Cyber_Clip2_4vertical_line "|" ContextMenu_Cyber_Clip2_5vertical_line)
        {
            MenuPosY -= 4
            MenuPosH += 10
            MenuPosX -= 37
            MenuPosX += 9
            MenuPosWMinus2 += 718

            ; MenuPosX += 1

            GuiControl, MoveDraw, MenuHoverCyber_Clip2, % "x" MenuPosX " y" MenuPosY " w" MenuPosWMinus2 " h" MenuPosH
        }
    }

    Cyber_ClipHover2 := 0
    Cyber_ClipCurr2 := Cyber_ClipMouseCtrl2   
}



CheckboxSwitchingButtonFunction1Local:
IniDelete, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 1, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

CheckboxSwitchingButtoni := 2
GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%

DetectHiddenWindows, On 
  WinClose, Helpy

Return

CheckboxSwitchingButtonFunction2Local:
IniDelete, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1
IniWrite, 0, %A_WorkingDir%\AHKHelpy\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, booleanforhelpyopeningcheckbox1

CheckboxSwitchingButtoni := 1
GuiControl Hide, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, +Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
    CheckboxSwitchingButtoni := 3 - CheckboxSwitchingButtoni
GuiControl Show, CheckboxSwitchingButton%CheckboxSwitchingButtoni%
GuiControl, -Redraw, CheckboxSwitchingButton%CheckboxSwitchingButtoni%

DetectHiddenWindows, On 
  WinClose, Helpy

Return


;    __                  _   _                 
;   / _|                | | (_)                
;  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___ 
;  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;  | | | |_| | | | | (__| |_| | (_) | | | \__ \
;  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
                                             
                                             
Exit2:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Return

Duplicate:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
; MouseClick, right, Cyber_Clipxpos, Cyber_Clipypos
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

PinUnpin:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

CloseOthers:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
; MouseClick, right, Cyber_Clipxpos, Cyber_Clipypos
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

Reload:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

SendInput, {LControl Down}r{LControl Up}
Return

SaveAs:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
; MouseClick, right, Cyber_Clipxpos, Cyber_Clipypos
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

CopyImage:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
; MouseClick, right, Cyber_Clipxpos, Cyber_Clipypos
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

CopyImageAddress:
Gui , Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy

Cyber_Clipypos := Cyber_Clipypos - 32
Cyber_Clipxpos := Cyber_Clipxpos + 8

MouseGetPos,,,WindowUnderMouse
WinGetTitle, title, ahk_id %WindowUnderMouse%
sleep, 100
ControlClick, x%Cyber_Clipxpos% y%Cyber_Clipypos%, %title%,, Right,,
sleep, 100
; MouseClick, right, Cyber_Clipxpos, Cyber_Clipypos
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Down}
SendInput, {Enter}
Return

;    __                  _   _                 ___  
;   / _|                | | (_)               |__ \ 
;  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___   ) |
;  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __| / / 
;  | | | |_| | | | | (__| |_| | (_) | | | \__ \/ /_ 
;  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/____|
                                                  
                                                  
ContextMenu_Cyber_Clip2_1_function:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

clipboard := string_from_ditto_Sql_database_1
SendInput, {RCtrl  Down}v{RCtrl  Up}
; SendInput, %string_from_ditto_Sql_database_1%
return

ContextMenu_Cyber_Clip2_2_function:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

clipboard := string_from_ditto_Sql_database_2
SendInput, {RCtrl  Down}v{RCtrl  Up}
; SendInput, %string_from_ditto_Sql_database_2%
return

ContextMenu_Cyber_Clip2_3_function:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

clipboard := string_from_ditto_Sql_database_3
SendInput, {RCtrl  Down}v{RCtrl  Up}
; SendInput, %string_from_ditto_Sql_database_3%
return

ContextMenu_Cyber_Clip2_4_function:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

clipboard := string_from_ditto_Sql_database_4
SendInput, {RCtrl  Down}v{RCtrl  Up}
; SendInput, %string_from_ditto_Sql_database_4%
return

ContextMenu_Cyber_Clip2_5_function:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

clipboard := string_from_ditto_Sql_database_5
SendInput, {RCtrl  Down}v{RCtrl  Up}
; SendInput, %string_from_ditto_Sql_database_5%
return

Exit2Test:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy

SendInput, {RCtrl  Down}{RShift Down}1{RShift Up}{RCtrl  Up}
Sleep, 10
clipboard_position_01 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}2{RShift Up}{RCtrl  Up}
Sleep, 10
clipboard_position_02 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}3{RShift Up}{RCtrl  Up}
Sleep, 10
clipboard_position_03 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}4{RShift Up}{RCtrl  Up}
Sleep, 10
clipboard_position_04 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}5{RShift Up}{RCtrl  Up}
Sleep, 10
clipboard_position_05 := clipboard 

SendInput, {RCtrl  Down}{RShift Down}1{RShift Up}{RCtrl  Up}
Sleep, 30
clipboard_position_1 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}2{RShift Up}{RCtrl  Up}
Sleep, 30
clipboard_position_2 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}3{RShift Up}{RCtrl  Up}
Sleep, 30
clipboard_position_3 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}4{RShift Up}{RCtrl  Up}
Sleep, 30
clipboard_position_4 := clipboard 
SendInput, {RCtrl  Down}{RShift Down}5{RShift Up}{RCtrl  Up}
Sleep, 30
clipboard_position_5 := clipboard 

MsgBox, %clipboard_position_1% %clipboard_position_2% %clipboard_position_3% %clipboard_position_4% %clipboard_position_5%
Return

Exit2Test3:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy
SendInput, %clipboard_position_4%
return

Exit2Test4:
Gui, Cyber_Clip:Destroy
Gui, Cyber_Clip1:Destroy
Gui, Cyber_Clip2:Destroy


return

;                  _   _               _        __            __                  _   _                 
;                 | | | |             | |      / _|          / _|                | | (_)                
;   _ __ ___   ___| |_| |__   ___   __| |___  | |_ ___  _ __| |_ _   _ _ __   ___| |_ _  ___  _ __  ___ 
;  | '_ ` _ \ / _ \ __| '_ \ / _ \ / _` / __| |  _/ _ \| '__|  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;  | | | | | |  __/ |_| | | | (_) | (_| \__ \ | || (_) | |  | | | |_| | | | | (__| |_| | (_) | | | \__ \
;  |_| |_| |_|\___|\__|_| |_|\___/ \__,_|___/ |_| \___/|_|  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
;                                         ______       ______                                           
;                                        |______|     |______|                                          

SQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction(NumberOfPositionsBehindTheLastPositionPlus1){
    ReturnedStringThatNeedsToBeSeparated := % callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction()
    ColorArray := StrSplit(ReturnedStringThatNeedsToBeSeparated, "(((|||CustomDelimeter|||)))")
    MaxValue := % ColorArray.MaxIndex()
    ; MsgBox, %MaxValue%
    DividedValue := A_Index - MaxValue
    ; MsgBox, %DividedValue%
    AbsValueDividedValue := % Abs(DividedValue)
    AbsValueDividedValue := AbsValueDividedValue - NumberOfPositionsBehindTheLastPositionPlus1
    ; MsgBox, %AbsValueDividedValue%
    this_color := % ColorArray[AbsValueDividedValue]
    LengthValueDividedValue := % StrLen(this_color)
    ; VariableCombination := "Color number " AbsValueDividedValue " is `n" this_color "`n`n`nSize is " LengthValueDividedValue
    VariableCombination := this_color
    return VariableCombination
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

            Loop, % Aindex {
                CustomDelimeter := "(((|||CustomDelimeter|||)))"
                StringForMSGBox1 := % Row[A_Index]
                StringForMSGBox = %StringForMSGBox% %StringForMSGBox1% %CustomDelimeter%
                RC := RecordSet.Next(Row)
            }

            } Until (RC < 1)

        } 
    }

   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   ; GuiControl,25:, +ReDraw, ResultsLV

return StringForMSGBox
}

callSQLiteSELECTFROMGetSpecificColumnAndUseInClipboardFunction(){

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

    CBBSQL := "SELECT * FROM test"
    SQL := "select mText from Main"
    DBFileName := "C:\Users\" . A_UserName . "\AppData\Roaming\Ditto\Ditto_1.db"
    DB := new SQLiteDB

    If !DB.OpenDB(DBFileName) {
        MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
    }

    If !DB.GetTable(SQL, GetTableResult)
        MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
    Else

    If !DB.Query(SQL, QueryResult)
        MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
    Else

    FunctionReturn := % ShowRecordSetStringGetSpecificColumnAndUseInClipboard(QueryResult)

    DB.CloseDB()
    return FunctionReturn
}

CtlShowHide(ShowHide, Controls*) {
    Static K, V

    For K, V In Controls {
        Split := StrSplit(V, ",")

        Loop % Split.MaxIndex() {
            GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}



GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "BtnRestoreN,BtnRestoreH,BtnRestoreP")
    CtlShowHide("Show", "BtnMaxN")

}

GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "BtnMaxN,BtnMaxH,BtnMaxP")
    CtlShowHide("Show", "BtnRestoreN")

}


Show_left_field:

    ; MsgBox, "ggg"

    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Show_Left_Field.ahk" ;
    WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"

    if WinExist(Script)
    {
        WinClose, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Left_Field.ahk ahk_class AutoHotkey
        Process, Close, % PID
    }
    else
    {
        Run, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Left_Field.ahk
    }

return

Show_Top_Field:

    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Show_Top_Field.ahk" ;
    WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"

    if WinExist(Script)
    {
        WinClose, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Top_Field.ahk ahk_class AutoHotkey
        Process, Close, % PID
    }
    else
    {
        Run, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Top_Field.ahk
    }

return

Show_Right_Field:

    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Show_Right_Field.ahk" ;
    WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"

    if WinExist(Script)
    {
        WinClose, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Right_Field.ahk ahk_class AutoHotkey
        Process, Close, % PID
    }
    else
    {
        Run, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Right_Field.ahk
    }

return

Show_Bottom_Field:

    DetectHiddenWindows, On  ; Detect hidden windows
    SetTitleMatchMode, RegEx ; Find window titles by regex

    Script := "Show_Bottom_Field.ahk" ;
    WinGet, PID, PID, % "i)^.+\\" CleanEx(Script) " - AutoHotkey v.+$"

    if WinExist(Script)
    {
        WinClose, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Bottom_Field.ahk ahk_class AutoHotkey
        Process, Close, % PID
    }
    else
    {
        Run, %A_ScriptDir%\AHKv2-Gdip\Examples - v1.1\Show_Bottom_Field.ahk
    }

return

CleanEx(Needle)
{ ; Sanitize the RegEx input
    StringReplace, Needle, Needle, \, \\, All
    StringReplace, Needle, Needle, ., \., All
    StringReplace, Needle, Needle, *, \*, All
    StringReplace, Needle, Needle, ?, \?, All
    StringReplace, Needle, Needle, +, \+, All
    StringReplace, Needle, Needle, [, \[, All
    StringReplace, Needle, Needle, `{, \`{, All
    StringReplace, Needle, Needle, |, \|, All
    StringReplace, Needle, Needle, (, \(, All
    StringReplace, Needle, Needle, ), \), All
    StringReplace, Needle, Needle, ^, \^, All
    StringReplace, Needle, Needle, $, \$, All
    Return Needle
}

; #IfWinActive
#IfWinNotActive ; turn off context sensitivity