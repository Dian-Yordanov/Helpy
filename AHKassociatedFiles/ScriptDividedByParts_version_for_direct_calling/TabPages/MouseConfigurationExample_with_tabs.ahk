Gui, Example_with_tabs_:Add, Groupbox, xp-50 yp-10 w740 h370 ,
Gui, Example_with_tabs_:Font, s11, Segoe UI
Gui, Example_with_tabs_:Add, Text, xm cBlue xp+10 yp+15,Logitech g402 configuration:
Gui, Example_with_tabs_:Font, s10, Tahoma
Gui, Example_with_tabs_:Add, Picture, xp yp+30  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button12.png
Gui, Example_with_tabs_:Add, Picture, xp+140 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button52.png
Gui, Example_with_tabs_:Add, Picture, xp+155 yp-5  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button42.png
Gui, Example_with_tabs_:Add, Picture, xp+120 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button32.png
Gui, Example_with_tabs_:Add, Picture, xp+120 yp  h-1 , %A_ScriptDir%\AHKassociatedFiles\resources\ImageFilesForAHK\Button221.png
Gui, Example_with_tabs_:Add, Text, cWhite xp-530 yp+45 ,
Gui, Example_with_tabs_:Add, Text, cWhite xp yp h80 w140 ,Numpad1 - Helpy
Gui, Example_with_tabs_:Add, Text, cWhite xp+120 yp h80 w140,Numpad3::Backspace`r{If in edge whole line is deleted}
Gui, Example_with_tabs_:Add, Text, cWhite xp+160 yp ,Numpad6::Enter
Gui, Example_with_tabs_:Add, Text, cWhite xp+120 yp ,Numpad5::Win+D
Gui, Example_with_tabs_:Add, Text, cWhite xp+120 yp ,Numpad8::Alt-Tab
Gui, Example_with_tabs_:Add, Text, cWhite xp-530 yp+55 ,
Gui, Example_with_tabs_:Font, s11, Segoe UI
Gui, Example_with_tabs_:Add, Text, xm cBlue xp yp,Hotkey combinations:                        || # - Win || ! - Alt || ^ - Control || + - Shift ||
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+18 ,
Gui, Example_with_tabs_:Font, s8, Segoe UI
Gui, Example_with_tabs_:Add, Text, cWhite xp yp h80 w180 ,Numpad6 && WheelUp     ::^ && C
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Numpad6 && WheelDown ::^ && V
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && Numpad3    ::+ && Enter
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && Numpad6    ::NULL
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && WheelUp    ::UpdateScript
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Numpad1 && WheelDown::Open Helpy
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,! && capslock  ::Ditto Clipboard manager -
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,^ && capslock ::Ditto Clipboard manager +
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Hold Numpad3 to reset triggers
Gui, Example_with_tabs_:Add, Text, cWhite xp yp+12 h20 w180 ,Hold Numpad6 to press Ctrl+W