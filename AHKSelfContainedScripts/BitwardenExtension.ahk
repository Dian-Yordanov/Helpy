
;   _____           _       _                                           
;  / ____|         (_)     | |                                          
; | (___   ___ _ __ _ _ __ | |_   _ __  _   _ _ __ _ __   ___  ___  ___ 
;  \___ \ / __| '__| | '_ \| __| | '_ \| | | | '__| '_ \ / _ \/ __|/ _ \
;  ____) | (__| |  | | |_) | |_  | |_) | |_| | |  | |_) | (_) \__ \  __/
; |_____/ \___|_|  |_| .__/ \__| | .__/ \__,_|_|  | .__/ \___/|___/\___|
;                    | |         | |              | |                   
;                    |_|         |_|              |_|                   

; This script is trying to take passwords and usernames from the bw cli client 
; for Bitwarden ( https://github.com/bitwarden/cli ). The purpose of the script is to take the 
; login credentials in the fastest way possible while also you get to copy and paste them using a single hotstring.


;  _____                           __ _                          _       _       _        
; |  __ \                         / _(_)                        | |     | |     | |       
; | |__) | __ ___  ___ ___  _ __ | |_ _  __ _ _   _ _ __ ___  __| |   __| | __ _| |_ __ _ 
; |  ___/ '__/ _ \/ __/ _ \| '_ \|  _| |/ _` | | | | '__/ _ \/ _` |  / _` |/ _` | __/ _` |
; | |   | | |  __/ (_| (_) | | | | | | | (_| | |_| | | |  __/ (_| | | (_| | (_| | || (_| |
; |_|   |_|  \___|\___\___/|_| |_|_| |_|\__, |\__,_|_|  \___|\__,_|  \__,_|\__,_|\__\__,_|
;                                        __/ |                                            
;                                       |___/                                             

; This is so that you do not have to write information like email, search terms, item id and password every 
; time you use this script. 
; WARNING: if you use a preconfigured password it will be extremely unsecure. You are literally storing passwords in text
; without hashing. I do not recommend you do this. 

PreconfiguredEmail = 
PreconfiguredPassword = 
PreconfiguredSearchTerm = blizzard
PreconfiguredSearchItemID = cee4e6b4/587d/4d20/895b/aa140161f0a3

;   _____           _       _                   _      
;  / ____|         (_)     | |                 | |     
; | (___   ___ _ __ _ _ __ | |_    ___ ___   __| | ___ 
;  \___ \ / __| '__| | '_ \| __|  / __/ _ \ / _` |/ _ \
;  ____) | (__| |  | | |_) | |_  | (_| (_) | (_| |  __/
; |_____/ \___|_|  |_| .__/ \__|  \___\___/ \__,_|\___|
;                    | |                               
;                    |_|                               

; #Include JSON.ahk
; #Include %A_ScriptDir%\LibraryForJSON\JSON.ahk

global vTitle2 = ""
global executed = 0
global ResultPasswordArray := []
global ResultForUsernamesDropDownListArray := []
global activeTab = 1
global usernameIndex = 0
global passwordIndex = 0

Main:
goSub, LaunchGui1
return

*e::
    GuiControlGet, PressEForPaste, 1:

    if (PressEForPaste = 1) {
        GuiControlGet, UsernameRecievedFromBW, 1:
        GuiControlGet, PasswordRecievedFromBW, 1:

		GuiControlGet, Outputvar, , DropDownListForAccountsWithPasswords, 
		passwordIndex = %Outputvar%
		GuiControlGet, Outputvar, , DropDownListForAccountsWithPasswords, 
		usernameIndex = %Outputvar%
		
		
		; MsgBox, %passwordIndex%

		Pass2Var := % ResultPasswordArray[passwordIndex]
		Username2Var := % ResultForUsernamesDropDownListArray[usernameIndex]

		if (activeTab = 1)
		{
			SendInput,%Username2Var%{Tab}%Pass2Var%
		}
		if (activeTab = 3)
		{
        	SendInput,%UsernameRecievedFromBW%{Tab}%PasswordRecievedFromBW%
		}
    }
    Else {
        SendRaw, e
    }

return

LaunchGui1:
    Gui, +hwndhGui

    ; RE_Dll := DllCall("LoadLibrary", "Str", "Msftedit.dll", "Ptr")
    OnMessage(0x0204, "WM_RBUTTONDOWN")

    Gui, 1:Font, s15

	Gui 1:Add, Button, x30 y10 w200 h40 gTabAllInOne, All in one
    Gui 1:Add, Button, xp+200 y10 w200 h40 gTabGetitemcode, Get item code
    Gui 1:Add, Button, xp+200 y10 w300 h40 gTabUseCodeToGetCredentials, Use code to get credentials
    Gui 1:Add, Button, x900 y10 w300 h40 gosk, On screen keyboard

    Gui 1:Add, Text, x30 y60 w500 vTextForSearchTerm, Input the term you are searching for
    Gui 1:Add, edit, xp+450 yp w400 vSearchTerm hwndEditFieldSearchTerm, %PreconfiguredSearchTerm%

    Gui 1:Add, Text, x30 y60 w500 vTextForEmail, Input your email you use for bitwarden
    Gui 1:Add, edit, xp+450 yp w400 vEmail, %PreconfiguredEmail%

    Gui 1:Add, Text, x30 yp+50 w500 vTextForPassword, Input your password you use for bitwarden
    Gui 1:Add, edit, xp+450 yp w400 vPassword Password, %PreconfiguredPassword%

	Gui 1:Add, Text, vWhiteLineNumberMainShortcut x30 yp+40 w854 0x10

	Gui 1:Add, Text, x30 yp+10 w500 vTextForSearchTerm2, Input the term you are searching for
    Gui 1:Add, edit, xp+450 yp w400 vSearchTerm2, %PreconfiguredSearchTerm%

    Gui 1:Add, Text, x30 yp+20 w500 vTextForItemID, Input the bitwarden item code, replace "-" with "/"
    Gui 1:Add, edit, xp+450 yp w400 vItemID, %PreconfiguredSearchItemID%

    Gui 1:Add, Button, x900 y50 w300 h40 vFunctionToGetBwCodes gFunctionToGetBwCodes, Get bw codes
    Gui 1:Add, Button, x900 y50 w300 h40 vFunctionToGetusernameAndPass gFunctionToGetusernameAndPass, Get username and pass
    Gui 1:Add, CheckBox, x900 y100 vUseHyphenOrSlash, Use "-" (0) or "/" (1)
    Gui 1:Add, CheckBox, x900 yp+30 vPressEForPaste, Press "e" to paste both 
	; Gui 1:Add, CheckBox, x900 yp vPressEForPaste1, Press "e" to paste both 

    Gui 1:Add, Text, vWhiteLineNumberMainShortcut2 x30 yp+70 w854 0x10
	
    Gui 1:Add, Text, x30 yp+10 w500 vTextForDropDownListForAccountsWithPasswords, Select an account login credential from the list
	Gui 1:Add, DropDownList,altsubmit vDropDownListForAccountsWithPasswords xp yp+50 w854, 
	; Black|White|Red|Green|Blue

	Gui 1:Add, Button, xp+870 yp w300 h40 gCopyUsername2 vButtonForCopyUsernameFor1stTab, Copy username
	Gui 1:Add, Button, xp yp+40 w300 h40 gCopyPassword2 vButtonForCopyPasswordFor1stTab, Copy password

	Gui 1:Add, Text, vWhiteLineNumberMainShortcut3 x30 yp-90 w854 0x10
	GuiControl, hide, WhiteLineNumberMainShortcut3

    Gui 1:Font, s13
    Gui 1:Add, Text, x30 yp+20 w500 vTextForUsernameRecievedFromBW, This is the username retrieved from the bitwarden vault
    Gui 1:Font, s15
    Gui 1:Add, edit, xp+450 yp-6 w400 hwndUsernameFieldWithInfoFromBW vUsernameRecievedFromBW, 
    Gui 1:Add, Button, xp+420 yp-3 w300 h40 gCopyUsername vButtonForCopyUsername, Copy username

    Gui 1:Font, s13
    Gui 1:Add, Text, x30 yp+50 w500 vTextForPasswordRecievedFromBW, This is the password retrieved from the bitwarden vault
    Gui 1:Font, s15
    Gui 1:Add, edit, xp+450 yp-6 w400 hwndPasswordFieldWithInfoFromBW vPasswordRecievedFromBW, 
    Gui 1:Add, Button, xp+420 yp-3 w300 h40 gCopyPassword vButtonForCopyPassword, Copy password

    RE_Dll := DllCall("LoadLibrary", "Str", "Msftedit.dll", "Ptr")
    _styles := { WS_VSCROLL: 0x200000
                        , ES_MULTILINE: 4, ES_AUTOVSCROLL: 0x40, ES_NOHIDESEL: 0x100
                        , ES_WANTRETURN: 0x1000, ES_SAVESEL: 0x8000 }, styles := 0
    for k, v in _styles
        styles |= v

    Gui, 1:Add, Custom, ClassRICHEDIT50W x30 yp-100 w430 h350 vFirstEditField hwndFirstEditField +%styles% ; ES_MULTILINE | ES_READONLY
    Gui, 1:Add, Custom, ClassRICHEDIT50W x480 yp w400 h350 vFieldForLoginNames hwndFieldForLoginNames +%styles% 

	goSub, Hide_AllInOne
	; goSub, Hide_TabUseCodeToGetCredentials_Elements

    Gui 1:Show, x55 y55 w1230 h550, BWpasswordAndUsernameExtractorWindow1
Return

LaunchGui2:
	Gui, 2:Destroy
	sleep, 100
    Gui 2:Color, A9A9A9

    OnMessage(0x0202, "2WM_LBUTTONDOWN")

    OnMessage(0x0083, "2WM_NCCALCSIZE")
    ; OnMessage(0x0086, "2WM_NCACTIVATE")
    ; OnMessage(0x0084, "2WM_NCHITTEST")

	height = 12
	numberOfButtons = 4
	height2:= 2*numberOfButtons*height
	CreateContextMenu(2, 100, height2, numberOfButtons)
	height2:= height2-2*height-4

	

    MouseGetPos, xpos, ypos 

    xpos := xpos + 45 + 4
    ypos := ypos + 35 + 16

    ; Gui 2:Show, X%xpos% Y%ypos% W100 H90,  BWpasswordAndUsernameExtractorWindow2
    Gui 2:Show, X%xpos% Y%ypos% W100 H%height2%,  BWpasswordAndUsernameExtractorWindow2
Return

SelectAll:
; WinClose
Gui , 2:Destroy
SendInput {LControl Down}a{LControl Up}
Return

Copy:
; WinClose
Gui , 2:Destroy
SendInput {LControl Down}c{LControl Up}
Return

Cut:
; WinClose
Gui , 2:Destroy
SendInput {LControl Down}x{LControl Up}
Return

Paste:
; WinClose
Gui , 2:Destroy
SendInput {LControl Down}v{LControl Up}
Return

GuiEscape:
GuiClose:
ExitApp

FunctionToGetusernameAndPass:
    GuiControlGet, Password, 1:
    GuiControlGet, ItemID, 1:
    GuiControlGet, UseHyphenOrSlash, 1:

    Run, %A_ComSpec%,,, PID 
    WinWait, ahk_pid %PID%  

    if (UseHyphenOrSlash = 1) {
        ItemID := StrReplace(ItemID, "/", "-")
    }

    SendInput, echo(%Password%|bw get item %ItemID% | clip
    SendInput, {Enter}

    sleep, 2000
    WinClose,  C:\Windows\system32\cmd.exe
    WinClose,  Administrator: C:\Windows\system32\cmd.exe

    TestString := Clipboard

    Data := JSON.Load(Clipboard)
    usernameFromJson := Data.login.username
    passwordFromJson := Data.login.password

    Edit_SetText(UsernameFieldWithInfoFromBW,usernameFromJson)
    Edit_SetText(PasswordFieldWithInfoFromBW,passwordFromJson)
Return

CopyUsername2:
	GuiControlGet, Outputvar, , DropDownListForAccountsWithPasswords, 
	usernameIndex = %Outputvar%

	; MsgBox, %Outputvar%
	; MsgBox, %passwordIndex%

    ; GuiControlGet, DropDownListForAccountsWithPasswords, 1:
    Clipboard := ResultForUsernamesDropDownListArray[usernameIndex]
Return

CopyPassword2:
	GuiControlGet, Outputvar, , DropDownListForAccountsWithPasswords, 
	passwordIndex = %Outputvar%
    ; GuiControlGet, DropDownListForAccountsWithPasswords, 1:
    Clipboard := ResultPasswordArray[passwordIndex]
Return

CopyUsername:
    GuiControlGet, UsernameRecievedFromBW, 1:
    Clipboard := UsernameRecievedFromBW
Return

CopyPassword:
    GuiControlGet, PasswordRecievedFromBW, 1:
    Clipboard := PasswordRecievedFromBW
Return

FunctionToGetBwCodes:
	; Clean last used variables
	; Gui , 1:Destroy
	; GuiControl,,ComboBox1,
	GuiControl,,ComboBox1, |
	global ResultPasswordArray := []
	global ResultForUsernamesDropDownListArray := []

    GuiControlGet, UseHyphenOrSlash, 1:

    GuiControlGet, Password, 1:

    GuiControlGet, SearchTerm2, 1:

    Run, %A_ComSpec%,,, PID 
    WinWait, ahk_pid %PID%  

	Edit_SetText(EditFieldSearchTerm,SearchTerm2)

	GuiControlGet, SearchTerm, 1:

	; Edit_SetText(SearchTerm2,SearchTerm)

	; MsgBox % SearchTerm
	; MsgBox % SearchTerm2

    SearchString = echo(%Password%|bw list items --search %SearchTerm% | clip

    if (UseHyphenOrSlash = 0) {
        SearchString := StrReplace(SearchString, "-", "/")
    }

    SendInput, %SearchString%
    SendInput, {Enter}

    sleep, 3000
    WinClose,  C:\Windows\system32\cmd.exe
    WinClose,  Administrator: C:\Windows\system32\cmd.exe

	if(!Clipboard)
	{
		MsgBox, "Error, possibly as a result of wrong password."
	}
	else
	{
		TestString := Clipboard
		Data := JSON.Load(TestString)

		Result := ""
		ResultForUsernames := ""

		ResultDropDownList := ""
		ResultForUsernamesDropDownList := ""

		ResultName := ""
		
		for element in Data
		{

			; MsgBox % Data[element]

			ResultPasswordArray[element] := Data[element].login.password

			elementResultId := % Data[element].id
			if (UseHyphenOrSlash = 0) {
				elementResultId := StrReplace(elementResultId, "-", "/")
			}
			Else {
				elementResultId = elementResultId
			}

			; emptyLine := "`n"

			lf_char := CHR(10)
			Result := Result . elementResultId . lf_char

			lf_char := "|"
			ResultDropDownList := ResultDropDownList . elementResultId . lf_char

			elementResultLoginUsername := % Data[element].login.username

			if (UseHyphenOrSlash = 0) {
				elementResultLoginUsername := StrReplace(elementResultLoginUsername, "-", "/")
			}

			ResultForUsernamesDropDownListArray[element]  := elementResultLoginUsername

			lf_char := CHR(10)
			ResultForUsernames = %ResultForUsernames%%elementResultLoginUsername%
			ResultForUsernames := ResultForUsernames . lf_char

			ResultName := % Data[element].name
			lf_char := "|"
			ResultForUsernamesDropDownList := ResultForUsernamesDropDownList . elementResultLoginUsername . " : " . ResultName . lf_char
			
			

			; MsgBox % Data[element].id 
		}

		; MsgBox % ResultPasswordArray[1] 

		; MsgBox % ResultDropDownList
		; MsgBox % StrLen(ResultDropDownList) - 1
		ResultDropDownList := % SubStr(ResultDropDownList, 1, StrLen(ResultDropDownList) - 1)
		ResultForUsernamesDropDownList := % SubStr(ResultForUsernamesDropDownList, 1, StrLen(ResultForUsernamesDropDownList) - 1)
		; MsgBox % ResultDropDownList

		Array1 := StrSplit(ResultDropDownList , "|")
		Array2 := StrSplit(ResultForUsernamesDropDownList , "|")

		ResultDropDownListFinal := ""

		for index in Array1
		{

			Var1NoArrayIndex := % Array1[index]
			Var2NoArrayIndex := % Array2[index]

			if (index != 1){
				ResultDropDownListFinal = %ResultDropDownListFinal%|%Var2NoArrayIndex%
			}
			else{
				ResultDropDownListFinal = %Var2NoArrayIndex%|
			}
		}

		ControlSetText, RICHEDIT50W2, %ResultForUsernames%, BWpasswordAndUsernameExtractorWindow1
		ControlSetText, RICHEDIT50W1, %Result%, BWpasswordAndUsernameExtractorWindow1
		GuiControl,,ComboBox1,%ResultDropDownListFinal%
	}
Return

osk:
    SendInput {Lwin down}
    sleep, 100
    SendInput {r}
    sleep, 100
    SendInput {Lwin up}
    sleep, 500
    SendInput, osk
    sleep, 500
    SendInput, {Enter}
Return

TabAllInOne:
	goSub, Hide_AllInOne
	goSub, Show_AllInOne
	activeTab = 1
Return

Hide_AllInOne:
    ; GuiControl, hide, Email
    ; GuiControl, hide, TextForEmail
    GuiControl, hide, ItemID
    GuiControl, hide, TextForItemID
	
    ; GuiControl, hide, WhiteLineNumberMainShortcut
    GuiControl, hide, TextForUsernameRecievedFromBW
    GuiControl, hide, UsernameRecievedFromBW
    GuiControl, hide, ButtonForCopyUsername
    GuiControl, hide, TextForPasswordRecievedFromBW
    GuiControl, hide, PasswordRecievedFromBW
    GuiControl, hide, ButtonForCopyPassword
    GuiControl, hide, TextForSearchTerm
    GuiControl, hide, SearchTerm
    GuiControl, hide, FirstEditField
	GuiControl, hide, FieldForLoginNames
    GuiControl, hide, TextForItemID
	GuiControl, hide, FunctionToGetusernameAndPass
	; GuiControl, hide, PressEForPaste

	; GuiControl, hide, TextForSearchTerm
    ; GuiControl, hide, SearchTerm
	; GuiControl, hide, FunctionToGetBwCodes
	; GuiControl, hide, FirstEditField
    ; GuiControl, hide, FieldForLoginNames
	; GuiControl, hide, TextForSearchTerm2
	; GuiControl, hide, SearchTerm2
	; GuiControl, show, Email
Return

Show_AllInOne:
    GuiControl, show, FunctionToGetBwCodes
    GuiControl, show, TextForSearchTerm
    ; GuiControl, show, SearchTerm
	GuiControl, show, TextForSearchTerm2
	GuiControl, show, SearchTerm2
	GuiControl, show, Email
	GuiControl, show, WhiteLineNumberMainShortcut2
	GuiControl, show, TextForDropDownListForAccountsWithPasswords
	GuiControl, show, DropDownListForAccountsWithPasswords
	GuiControl, show, ButtonForCopyUsernameFor1stTab
	GuiControl, show, ButtonForCopyPasswordFor1stTab
	GuiControl, show, PressEForPaste
	; GuiControl, show, PressEForPaste1
    ; GuiControl, show, FirstEditField
    ; GuiControl, show, FieldForLoginNames
Return

TabGetitemcode:
	goSub, Hide_TabGetitemcode_Elements
	goSub, Show_TabGetitemcode_Elements
	activeTab = 2
Return

Show_TabGetitemcode_Elements:
    GuiControl, show, FunctionToGetBwCodes
    GuiControl, show, TextForSearchTerm
    GuiControl, show, SearchTerm
    GuiControl, show, FirstEditField
    GuiControl, show, FieldForLoginNames
	GuiControl, show, WhiteLineNumberMainShortcut
Return

Hide_TabGetitemcode_Elements:
    GuiControl, hide, Email
    GuiControl, hide, TextForEmail
    GuiControl, hide, ItemID
    GuiControl, hide, TextForItemID
    GuiControl, hide, WhiteLineNumberMainShortcut
    GuiControl, hide, TextForUsernameRecievedFromBW
    GuiControl, hide, UsernameRecievedFromBW
    GuiControl, hide, ButtonForCopyUsername
    GuiControl, hide, TextForPasswordRecievedFromBW
    GuiControl, hide, PasswordRecievedFromBW
    GuiControl, hide, ButtonForCopyPassword
    GuiControl, hide, TextForSearchTerm
    GuiControl, hide, SearchTerm
    GuiControl, hide, FirstEditField
    GuiControl, hide, TextForItemID
	GuiControl, hide, FunctionToGetusernameAndPass
	GuiControl, hide, PressEForPaste
	GuiControl, hide, TextForSearchTerm2
	GuiControl, hide, SearchTerm2
	GuiControl, hide, WhiteLineNumberMainShortcut2
	GuiControl, hide, DropDownListForAccountsWithPasswords
	GuiControl, hide, TextForDropDownListForAccountsWithPasswords
	GuiControl, hide, ButtonForCopyUsernameFor1stTab
	GuiControl, hide, ButtonForCopyPasswordFor1stTab
	; GuiControl, hide, PressEForPaste1
	; GuiControl, show, DropDownListForAccountsWithPasswords
Return

TabUseCodeToGetCredentials:
	goSub, Hide_TabUseCodeToGetCredentials_Elements
	goSub, Show_TabUseCodeToGetCredentials_Elements
	activeTab = 3
Return

Show_TabUseCodeToGetCredentials_Elements:
    GuiControl, show, ButtonForCopyUsername
    GuiControl, show, ButtonForCopyPassword
    GuiControl, show, TextForUsernameRecievedFromBW
    GuiControl, show, UsernameRecievedFromBW
    GuiControl, show, TextForPasswordRecievedFromBW
    GuiControl, show, PasswordRecievedFromBW
    GuiControl, show, TextForEmail
    GuiControl, show, Email
    GuiControl, show, ItemID
    GuiControl, show, TextForItemID
    GuiControl, show, FunctionToGetusernameAndPass
    GuiControl, show, PressEForPaste
Return

Hide_TabUseCodeToGetCredentials_Elements:
    GuiControl, hide, TextForSearchTerm
    GuiControl, hide, SearchTerm
	GuiControl, hide, FunctionToGetBwCodes
	GuiControl, hide, FirstEditField
    GuiControl, hide, FieldForLoginNames
	GuiControl, hide, TextForSearchTerm2
	GuiControl, hide, SearchTerm2
	GuiControl, hide, WhiteLineNumberMainShortcut2
	GuiControl, hide, DropDownListForAccountsWithPasswords
	GuiControl, hide, TextForDropDownListForAccountsWithPasswords
	GuiControl, hide, ButtonForCopyUsernameFor1stTab
	GuiControl, hide, ButtonForCopyPasswordFor1stTab
	GuiControl, hide, PressEForPaste
Return

; This is used to trigger the context menu for the custom edit field.
WM_RBUTTONDOWN(wParam, lParam, Msg, Hwnd) {
    Global ; Assume-global mode
    Static Init := OnMessage(0x0204, "WM_RBUTTONDOWN")

    DllCall("User32.dll\TrackMouseEvent", "UInt", &TME)
	MouseGetPos, MouseX, MouseY,, MouseCtrl, 2

    ; MsgBox, %MouseCtrl%
    ; MsgBox, %HRE%

    If (MouseCtrl ~= FirstEditField) {
        goSub, LaunchGui2
        return
    }

}

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

OnWinActiveChange(hWinEventHook, vEvent, hWnd)
{
	;EVENT_SYSTEM_FOREGROUND := 0x3
	static _ := DllCall("user32\SetWinEventHook", UInt,0x3, UInt,0x3, Ptr,0, Ptr,RegisterCallback("OnWinActiveChange"), UInt,0, UInt,0, UInt,0, Ptr)
	DetectHiddenWindows, On

	WinGetTitle, vTitle, % "ahk_id " hWnd
    WinGetTitle, vTitle2, % "ahk_id " hWnd

    if(vTitle == "BWpasswordAndUsernameExtractorWindow2")
    {
        vTitle2 = %vTitle%
	    ; WinClose
    }

    ; ToolTip, % vTitle2

    if(vTitle2 != "BWpasswordAndUsernameExtractorWindow2")
    {
        vTitle2 = ""
        ; ToolTip, % vTitle2
        Gui, 2:Destroy
	    WinClose
    }

	; SoundBeep
	; SoundPlay, *64
	; SoundPlay, *48
}

;-----------------------------
;
; Function: Edit_SetText
;
; Description:
;
;   Set the text of the Edit control.
;
; Parameters:
;
;   p_Text - Text to set the Edit control.
;
;   p_SetModify - If set to TRUE, the modification flag is set after the text is
;       set.  If FALSE (the default), the modification flag is not set (remains
;       cleared) after the text is set.
;
; Returns:
;
;   TRUE if successful, otherwise FALSE.
;
; Remarks:
;
; * The system automatically clears the modification flag whenever an edit
;   control receives a WM_SETTEXT message.  Set the p_SetModify parameter
;   to TRUE to set the modification flag after the text is set.
;
; * The system automatically resets the undo flag whenever an Edit control
;   receives a WM_SETTEXT message.  Use <Edit_SetSel> (select all) and
;   <Edit_ReplaceSel> to populate the control if undo is desired.
;
; * This function is similar to the AutoHotkey *ControlSetText* command except
;   there is no delay after the command has executed.
;
;-------------------------------------------------------------------------------
Edit_SetText(hEdit,p_Text,p_SetModify=False)
    {
    Static WM_SETTEXT:=0xC
    SendMessage WM_SETTEXT,0,&p_Text,,ahk_id %hEdit%
    if RC:=ErrorLevel  ;-- Text set successfully
        if p_SetModify
            Edit_SetModify(hEdit,True)

    Return RC  ;-- Return code from the WM_SETTEXT message
    }

;-----------------------------
;
; Function: Edit_SetModify
;
; Description:
;
;   Sets or clears the modification flag for the Edit control.  The modification
;   flag indicates whether the text within the control has been modified.
;
; Parameters:
;
;   p_Flag - Set to TRUE to set the modification flag.  Set to FALSE to clear
;       the modification flag.
;
;-------------------------------------------------------------------------------
Edit_SetModify(hEdit,p_Flag)
    {
    Static EM_SETMODIFY:=0xB9
    SendMessage EM_SETMODIFY,p_Flag,0,,ahk_id %hEdit%
    }






CreateContextMenu(hGui, width, height2, numberOfButtons){
    Gui, %hGui%:Font, s12

	width2 := width+5

	heightInitial 	:= height2/numberOfButtons/2
	heightInitial15 := 1.5*heightInitial
	heightInitial152:= 1.7*heightInitial
	heightInitial05 := 0.3*heightInitial
	heightInitial2  := 2*heightInitial

	; height 			:= 2*4*height+1-heightInitial152
	; height1 		:= height+1
	; heightOfButtons := height+1

	height21 := height2+1

    Gui %hGui%:Add, Text, gSelectAll 	x10         	y%heightInitial05%		W%width% 		H%heightInitial2%, Select all           
    Gui %hGui%:Add, Text, gCopy 		x10         	yp+%heightInitial2% 	W%width% 		H%heightInitial2%, Copy
    Gui %hGui%:Add, Text, gCut 			x10         	yp+%heightInitial2%		W%width% 		H%heightInitial2%, Cut
    Gui %hGui%:Add, Text, gPaste 		x10         	yp+%heightInitial2%		W%width% 		H%heightInitial2%, Paste           

	Gui %hGui%:Add, Text, x0         	y0   	       	W%width2%    h1   			0x7   
    Gui %hGui%:Add, Text, x0         	y1          	w1  		H%height21%   	0x7 
    Gui %hGui%:Add, Text, x0         	y%height2%    	W%width2%    h1    			0x7      
    Gui %hGui%:Add, Text, x%width2% 	y0 		    	w1          H%height21%   	0x7 

	; Return hRichEdit
}


























;       _  _____  ____  _   _        _     _    
;      | |/ ____|/ __ \| \ | |      | |   | |   
;      | | (___ | |  | |  \| |  __ _| |__ | | __
;  _   | |\___ \| |  | | . ` | / _` | '_ \| |/ /
; | |__| |____) | |__| | |\  || (_| | | | |   < 
;  \____/|_____/ \____/|_| \_(_)__,_|_| |_|_|\_\

/**
 * Lib: JSON.ahk
 *     JSON lib for AutoHotkey.
 * Version:
 *     v2.1.3 [updated 04/18/2016 (MM/DD/YYYY)]
 * License:
 *     WTFPL [http://wtfpl.net/]
 * Requirements:
 *     Latest version of AutoHotkey (v1.1+ or v2.0-a+)
 * Installation:
 *     Use #Include JSON.ahk or copy into a function library folder and then
 *     use #Include <JSON>
 * Links:
 *     GitHub:     - https://github.com/cocobelgica/AutoHotkey-JSON
 *     Forum Topic - http://goo.gl/r0zI8t
 *     Email:      - cocobelgica <at> gmail <dot> com
 */

/**
 * Class: JSON
 *     The JSON object contains methods for parsing JSON and converting values
 *     to JSON. Callable - NO; Instantiable - YES; Subclassable - YES;
 *     Nestable(via #Include) - NO.
 * Methods:
 *     Load() - see relevant documentation before method definition header
 *     Dump() - see relevant documentation before method definition header
 */
class JSON
{
	/**
	 * Method: Load
	 *     Parses a JSON string into an AHK value
	 * Syntax:
	 *     value := JSON.Load( text [, reviver ] )
	 * Parameter(s):
	 *     value      [retval] - parsed value
	 *     text    [in, ByRef] - JSON formatted string
	 *     reviver   [in, opt] - function object, similar to JavaScript's
	 *                           JSON.parse() 'reviver' parameter
	 */
	class Load extends JSON.Functor
	{
		Call(self, ByRef text, reviver:="")
		{
			this.rev := IsObject(reviver) ? reviver : false
		; Object keys(and array indices) are temporarily stored in arrays so that
		; we can enumerate them in the order they appear in the document/text instead
		; of alphabetically. Skip if no reviver function is specified.
			this.keys := this.rev ? {} : false

			static quot := Chr(34), bashq := "\" . quot
			     , json_value := quot . "{[01234567890-tfn"
			     , json_value_or_array_closing := quot . "{[]01234567890-tfn"
			     , object_key_or_object_closing := quot . "}"

			key := ""
			is_key := false
			root := {}
			stack := [root]
			next := json_value
			pos := 0

			while ((ch := SubStr(text, ++pos, 1)) != "") {
				if InStr(" `t`r`n", ch)
					continue
				if !InStr(next, ch, 1)
					this.ParseError(next, text, pos)

				holder := stack[1]
				is_array := holder.IsArray

				if InStr(",:", ch) {
					next := (is_key := !is_array && ch == ",") ? quot : json_value

				} else if InStr("}]", ch) {
					ObjRemoveAt(stack, 1)
					next := stack[1]==root ? "" : stack[1].IsArray ? ",]" : ",}"

				} else {
					if InStr("{[", ch) {
					; Check if Array() is overridden and if its return value has
					; the 'IsArray' property. If so, Array() will be called normally,
					; otherwise, use a custom base object for arrays
						static json_array := Func("Array").IsBuiltIn || ![].IsArray ? {IsArray: true} : 0
					
					; sacrifice readability for minor(actually negligible) performance gain
						(ch == "{")
							? ( is_key := true
							  , value := {}
							  , next := object_key_or_object_closing )
						; ch == "["
							: ( value := json_array ? new json_array : []
							  , next := json_value_or_array_closing )
						
						ObjInsertAt(stack, 1, value)

						if (this.keys)
							this.keys[value] := []
					
					} else {
						if (ch == quot) {
							i := pos
							while (i := InStr(text, quot,, i+1)) {
								value := StrReplace(SubStr(text, pos+1, i-pos-1), "\\", "\u005c")

								static tail := A_AhkVersion<"2" ? 0 : -1
								if (SubStr(value, tail) != "\")
									break
							}

							if (!i)
								this.ParseError("'", text, pos)

							  value := StrReplace(value,  "\/",  "/")
							, value := StrReplace(value, bashq, quot)
							, value := StrReplace(value,  "\b", "`b")
							, value := StrReplace(value,  "\f", "`f")
							, value := StrReplace(value,  "\n", "`n")
							, value := StrReplace(value,  "\r", "`r")
							, value := StrReplace(value,  "\t", "`t")

							; , value := StrReplace(value, "-", "/")

							pos := i ; update pos
							
							i := 0
							while (i := InStr(value, "\",, i+1)) {
								if !(SubStr(value, i+1, 1) == "u")
									this.ParseError("\", text, pos - StrLen(SubStr(value, i+1)))

								uffff := Abs("0x" . SubStr(value, i+2, 4))
								if (A_IsUnicode || uffff < 0x100)
									value := SubStr(value, 1, i-1) . Chr(uffff) . SubStr(value, i+6)
							}

							if (is_key) {
								key := value, next := ":"
								continue
							}
						
						} else {
							value := SubStr(text, pos, i := RegExMatch(text, "[\]\},\s]|$",, pos)-pos)

							static number := "number", integer :="integer"
							if value is %number%
							{
								if value is %integer%
									value += 0
							}
							else if (value == "true" || value == "false")
								value := %value% + 0
							else if (value == "null")
								value := ""
							else
							; we can do more here to pinpoint the actual culprit
							; but that's just too much extra work.

								; MsgBox, "value " %value%
								; MsgBox, "next " %next%
								; MsgBox, "text " %text%
								; MsgBox, "pos " %pos%

								this.ParseError(next, text, pos, i)

								

							pos += i-1
						}

						next := holder==root ? "" : is_array ? ",]" : ",}"
					} ; If InStr("{[", ch) { ... } else

					is_array? key := ObjPush(holder, value) : holder[key] := value

					if (this.keys && this.keys.HasKey(holder))
						this.keys[holder].Push(key)
				}
			
			} ; while ( ... )

			return this.rev ? this.Walk(root, "") : root[""]
		}

		ParseError(expect, ByRef text, pos, len:=1)
		{
			static quot := Chr(34), qurly := quot . "}"
			
			line := StrSplit(SubStr(text, 1, pos), "`n", "`r").Length()
			col := pos - InStr(text, "`n",, -(StrLen(text)-pos+1))
			msg := Format("{1}`n`nLine:`t{2}`nCol:`t{3}`nChar:`t{4}"
			,     (expect == "")     ? "Extra data"
			    : (expect == "'")    ? "Unterminated string starting at"
			    : (expect == "\")    ? "Invalid \escape"
			    : (expect == ":")    ? "Expecting ':' delimiter"
			    : (expect == quot)   ? "Expecting object key enclosed in double quotes"
			    : (expect == qurly)  ? "Expecting object key enclosed in double quotes or object closing '}'"
			    : (expect == ",}")   ? "Expecting ',' delimiter or object closing '}'"
			    : (expect == ",]")   ? "Expecting ',' delimiter or array closing ']'"
			    : InStr(expect, "]") ? "Expecting JSON value or array closing ']'"
			    :                      "Expecting JSON value(string, number, true, false, null, object or array)"
			, line, col, pos)

			static offset := A_AhkVersion<"2" ? -3 : -4
			throw Exception(msg, offset, SubStr(text, pos, len))
		}

		Walk(holder, key)
		{
			value := holder[key]
			if IsObject(value) {
				for i, k in this.keys[value] {
					; check if ObjHasKey(value, k) ??
					v := this.Walk(value, k)
					if (v != JSON.Undefined)
						value[k] := v
					else
						ObjDelete(value, k)
				}
			}
			
			return this.rev.Call(holder, key, value)
		}
	}

	/**
	 * Method: Dump
	 *     Converts an AHK value into a JSON string
	 * Syntax:
	 *     str := JSON.Dump( value [, replacer, space ] )
	 * Parameter(s):
	 *     str        [retval] - JSON representation of an AHK value
	 *     value          [in] - any value(object, string, number)
	 *     replacer  [in, opt] - function object, similar to JavaScript's
	 *                           JSON.stringify() 'replacer' parameter
	 *     space     [in, opt] - similar to JavaScript's JSON.stringify()
	 *                           'space' parameter
	 */
	class Dump extends JSON.Functor
	{
		Call(self, value, replacer:="", space:="")
		{
			this.rep := IsObject(replacer) ? replacer : ""

			this.gap := ""
			if (space) {
				static integer := "integer"
				if space is %integer%
					Loop, % ((n := Abs(space))>10 ? 10 : n)
						this.gap .= " "
				else
					this.gap := SubStr(space, 1, 10)

				this.indent := "`n"
			}

			return this.Str({"": value}, "")
		}

		Str(holder, key)
		{
			value := holder[key]

			if (this.rep)
				value := this.rep.Call(holder, key, ObjHasKey(holder, key) ? value : JSON.Undefined)

			if IsObject(value) {
			; Check object type, skip serialization for other object types such as
			; ComObject, Func, BoundFunc, FileObject, RegExMatchObject, Property, etc.
				static type := A_AhkVersion<"2" ? "" : Func("Type")
				if (type ? type.Call(value) == "Object" : ObjGetCapacity(value) != "") {
					if (this.gap) {
						stepback := this.indent
						this.indent .= this.gap
					}

					is_array := value.IsArray
				; Array() is not overridden, rollback to old method of
				; identifying array-like objects. Due to the use of a for-loop
				; sparse arrays such as '[1,,3]' are detected as objects({}). 
					if (!is_array) {
						for i in value
							is_array := i == A_Index
						until !is_array
					}

					str := ""
					if (is_array) {
						Loop, % value.Length() {
							if (this.gap)
								str .= this.indent
							
							v := this.Str(value, A_Index)
							str .= (v != "") ? v . "," : "null,"
						}
					} else {
						colon := this.gap ? ": " : ":"
						for k in value {
							v := this.Str(value, k)
							if (v != "") {
								if (this.gap)
									str .= this.indent

								str .= this.Quote(k) . colon . v . ","
							}
						}
					}

					if (str != "") {
						str := RTrim(str, ",")
						if (this.gap)
							str .= stepback
					}

					if (this.gap)
						this.indent := stepback

					return is_array ? "[" . str . "]" : "{" . str . "}"
				}
			
			} else ; is_number ? value : "value"
				return ObjGetCapacity([value], 1)=="" ? value : this.Quote(value)
		}

		Quote(string)
		{
			static quot := Chr(34), bashq := "\" . quot

			if (string != "") {
				  string := StrReplace(string,  "\",  "\\")
				; , string := StrReplace(string,  "/",  "\/") ; optional in ECMAScript
				, string := StrReplace(string, quot, bashq)
				, string := StrReplace(string, "`b",  "\b")
				, string := StrReplace(string, "`f",  "\f")
				, string := StrReplace(string, "`n",  "\n")
				, string := StrReplace(string, "`r",  "\r")
				, string := StrReplace(string, "`t",  "\t")

				static rx_escapable := A_AhkVersion<"2" ? "O)[^\x20-\x7e]" : "[^\x20-\x7e]"
				while RegExMatch(string, rx_escapable, m)
					string := StrReplace(string, m.Value, Format("\u{1:04x}", Ord(m.Value)))
			}

			return quot . string . quot
		}
	}

	/**
	 * Property: Undefined
	 *     Proxy for 'undefined' type
	 * Syntax:
	 *     undefined := JSON.Undefined
	 * Remarks:
	 *     For use with reviver and replacer functions since AutoHotkey does not
	 *     have an 'undefined' type. Returning blank("") or 0 won't work since these
	 *     can't be distnguished from actual JSON values. This leaves us with objects.
	 *     Replacer() - the caller may return a non-serializable AHK objects such as
	 *     ComObject, Func, BoundFunc, FileObject, RegExMatchObject, and Property to
	 *     mimic the behavior of returning 'undefined' in JavaScript but for the sake
	 *     of code readability and convenience, it's better to do 'return JSON.Undefined'.
	 *     Internally, the property returns a ComObject with the variant type of VT_EMPTY.
	 */
	Undefined[]
	{
		get {
			static empty := {}, vt_empty := ComObject(0, &empty, 1)
			return vt_empty
		}
	}

	class Functor
	{
		__Call(method, ByRef arg, args*)
		{
		; When casting to Call(), use a new instance of the "function object"
		; so as to avoid directly storing the properties(used across sub-methods)
		; into the "function object" itself.
			if IsObject(method)
				return (new this).Call(method, arg, args*)
			else if (method == "")
				return (new this).Call(arg, args*)
		}
	}
}