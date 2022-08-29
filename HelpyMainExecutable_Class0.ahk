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

Run %A_ScriptDir%\AHKDaemon\Subscription_based_daemon.ahk
#Include %A_ScriptDir%\HelpyDaemon_Class1.ahk


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































; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\RichEdit\RichEditOleCallback.ahk

; #Include %A_ScriptDir%\HelpyGui_ScriptForCallingGuiDirectly.ahk

; #Include %A_ScriptDir%\HelpyGui_ScriptForIncludingToMainScript.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\WheelUp___WheelDown.ahk
; #Include %A_ScriptDir%\OnTrigger\OnClipboardChange_optimised_for_gui43.ahk


; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\StylizedButtonsWithArguments_version_for_direct_calling.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\43ALL_IN_ONE_version_for_direct_calling.ahk
; #IncludeAgain %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\helpy2.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\OnStart_2.ahk

; Global Global_var_telling_if_CalledDirectly_or_Included := "Included"

; IniRead, output_var, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, LibrariesIncludeOrDirectCall

; IniDelete, %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, LibrariesIncludeOrDirectCall
; IniWrite, "Included", %A_ScriptDir%\AHKassociatedFiles\resources\AutohotkeyIniFile.ini, AutohotkeyConfig, LibrariesIncludeOrDirectCall

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Class_CCButtonUsedForEasyCustomButtons.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ShiftMacros.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\tf.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\SoundControlFunctions.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ArrayMethods.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Buggy-Mouse.ahk


; This is the same as MouseWheelTabScroll4Chrome.ahk but has been modified to block wheelup and down 
; when ctrl and alt are pressed
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ModifiedMouseWheelTabScroll4Chrome.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\IPHelper.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ClassImageButton.ahk
; #Include %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\EndZlogies-ExperimentalGuiLabels.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Evernote.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\helpySupportFunctions.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\CountDown.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\!UseThisFor_helpyGUI_Functions.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\helpyPMC.ahk

; This is the code for stylised buttons with arguments
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\StylizedButtonsWithArguments.ahk

; This is the code for CapsLock ctrl and alt
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\functionsSQLiteCapsLockButtons.ahk

; This launches helpy2

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\SeparateGuiFunctionsScriptsUsedForSplitingOfGuiFunctions.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\FunctionsForHelpyAndExperimental.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\functions.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\functionsSQL.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\functionsSQLiteSELECTFROMExample.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\functionsSQLiteGetSpecificColumnAndUseInClipboard.ahk

; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ClassSQLdatabase.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Cryptahk.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\passwordmanager.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ScrollFunctions.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\UtilityHotkeys.ahk


; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\ChromeImprovements.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\dinamicM.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\removed.ahk
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\Legacy_clipboard_manager_support_files.ahk

; #Include %A_ScriptDir%\HelpyGuiLibraries.ahk

; #Include %A_ScriptDir%\HelpyFunctions.ahk
