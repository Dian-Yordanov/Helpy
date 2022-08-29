; This is the link to the main Helpy file. This link Should be placed in the "documents" directory in order to have it working for autohotkey auto start. 
; #Include %A_ScriptDir%\Helpy.ahk

; on 05/09/2020 there is an attempt to split the script into parts - daemon, gui and libraries
; 16.09.20202 : The whole script launch system has to change and be only dependant on the HelpyDaemon.ahk starting every script from a mouse script trigger. 
; This file should be left but only as a file that will launch some "On_Start" scripts. The main launcher is HelpyDaemon.ahk.

DetectHiddenWindows, ON
Gui0 := WinExist( A_ScriptFullpath " ahk_pid " DllCall( "GetCurrentProcessId" ) )
DetectHiddenWindows, OFF


Menu, Tray, NoStandard

Menu, Tray, Add, Open,                StandardTrayMenu
Menu, Tray, Add, Help,                StandardTrayMenu
Menu, Tray, Add, Run on Startup, startUpReg
Menu, Tray, Add
Menu, Tray, Add, Window Spy,          StandardTrayMenu
Menu, Tray, Add, Reload This Script,  StandardTrayMenu
Menu, Tray, Add, Edit This Script,    StandardTrayMenu
Menu, Tray, Add
Menu, Tray, Add, Suspend Hotkeys,     StandardTrayMenu
Menu, Tray, Add, Pause Script,        StandardTrayMenu
Menu, Tray, Add, Exit,                StandardTrayMenu
Menu, Tray, Default, Open

;   _____            _                 _       _         _             _   
;  |  __ \          | |               (_)     | |       | |           | |  
;  | |__) |___  __ _| |  ___  ___ _ __ _ _ __ | |_   ___| |_ __ _ _ __| |_ 
;  |  _  // _ \/ _` | | / __|/ __| '__| | '_ \| __| / __| __/ _` | '__| __|
;  | | \ \  __/ (_| | | \__ \ (__| |  | | |_) | |_  \__ \ || (_| | |  | |_ 
;  |_|  \_\___|\__,_|_| |___/\___|_|  |_| .__/ \__| |___/\__\__,_|_|   \__|
;                                       | |                                
;                                       |_|                                

Run %A_ScriptDir%\AHKDaemon\Subscription_based_daemon.ahk
#Include %A_ScriptDir%\HelpyDaemon.ahk



RegRead, startUp, HKCU, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, %appName%
if (ErrorLevel = 0) {
    RegWrite, REG_SZ, HKCU, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, %appName%, %A_ScriptFullPath%
	Menu, Tray, Check, Run on Startup
}

startUpReg:
	RegRead, startUp, HKCU, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, %appName%
	if ErrorLevel {
		RegWrite, REG_SZ, HKCU, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, %appName%, %A_ScriptFullPath%
		Menu, Tray, Check, %A_ThisMenuItem%
	}
	else{
		RegDelete, HKCU, SOFTWARE\Microsoft\Windows\CurrentVersion\Run, %appName%
		if ErrorLevel {
			reload
		}
		Menu, Tray, Uncheck, %A_ThisMenuItem%
	}
return

MenuHandler:
return

exitHandler:
	ExitApp

; Template for Reconstructing 'Standard Tray Menu' - By SKAN / 30-Nov-2011

StandardTrayMenu:

 If ( A_ThisMenuItem = "Open" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65406, UInt,0 )

 If ( A_ThisMenuItem = "Help" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65411, UInt,0 )

 If ( A_ThisMenuItem = "Window Spy" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65402, UInt,0 )

 If ( A_ThisMenuItem = "Reload This Script" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65400, UInt,0 )

 If ( A_ThisMenuItem = "Edit This Script" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65401, UInt,0 )

 If ( A_ThisMenuItem = "Suspend Hotkeys" ) {
   Menu, Tray, ToggleCheck, %A_ThisMenuItem%
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65404, UInt,0 )
 }

 If ( A_ThisMenuItem = "Pause Script" ) {
   Menu, Tray, ToggleCheck, %A_ThisMenuItem%
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65403, UInt,0 )
 }

 If ( A_ThisMenuItem = "Exit" )
   DllCall( "PostMessage", UInt,Gui0, UInt,0x111, UInt,65405, UInt,0 )

Return