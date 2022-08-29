;|dinamicM||SEARCHINDICATOR|
;         _ _                       _      __  __
;        | (_)                     (_)    |  \/  |
;      __| |_ _ __   __ _ _ __ ___  _  ___| \  / |
;     / _` | | '_ \ / _` | '_ ` _ \| |/ __| |\/| |
;    | (_| | | | | | (_| | | | | | | | (__| |  | |
;     \__,_|_|_| |_|\__,_|_| |_| |_|_|\___|_|  |_|

#SingleInstance ignore
#InstallKeybdHook
#InstallMouseHook
#UseHook

#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Menu, Tray, Tip, Mousewheel tab scroll for Chrome (1.0.3)

#If !WinActive("ahk_class MozillaWindowClass") && !WinActive("ahk_class Direct3DWindowClass") && !WinActive("ahk_class ENMainFrame") && !WinActive("ahk_class Chrome_WidgetWin_1") && !WinActive("ahk_class Chrome_WidgetWin_0")
{
MButton::
SendInput {Lwin down}
sleep, 1
SendInput {Lwin up}
return
}