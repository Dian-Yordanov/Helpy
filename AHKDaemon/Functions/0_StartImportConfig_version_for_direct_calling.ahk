;
;   _____ _        _             ____              _
;  / ____| |      (_)           |  _ \            | |
; | (___ | |_ _ __ _ _ __   __ _| |_) | __ _ _ __ | | __
;  \___ \| __| '__| | '_ \ / _` |  _ < / _` | '_ \| |/ /
;  ____) | |_| |  | | | | | (_| | |_) | (_| | | | |   <
; |_____/ \__|_|  |_|_| |_|\__, |____/ \__,_|_| |_|_|\_\
;                           __/ |
;                          |___/
;#    Win (Windows logo key). In v1.0.48.01+, for Windows Vista and later, hotkeys that include the Windows key (e.g. #a) will wait for the Windows key to be released before sending any text containing an "L" keystroke. This prevents usages of Send within such a hotkey from locking the PC. This behavior applies to all sending modes except SendPlay (which doesn't need it) and blind mode.
;!    Alt
;^    Control
;+    Shift
;&    An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey. See below for details.
;<    Use the left key of the pair. e.g. <!a is the same as !a except that only the left Alt key will trigger it.
;>    Use the right key of the pair.

#SingleInstance ignore
; #Include %A_ScriptDir%\AHKlibs\Security\AHK_CNG\src\hash\win10\class_bcrypt.ahk




; AutoIt
;                 _       _____ _   
;      /\        | |     |_   _| |  
;     /  \  _   _| |_ ___  | | | |_ 
;    / /\ \| | | | __/ _ \ | | | __|
;   / ____ \ |_| | || (_) || |_| |_ 
;  /_/    \_\__,_|\__\___/_____|\__|
                                  
; Run, %A_ScriptDir%\AHKassociatedFiles\AutoIt\main.au3


;    _____           _   _                   _      _     _
;   / ____|         | | (_)                 | |    (_)   | |
;  | (___   ___  ___| |_ _  ___  _ __  ___  | |     _ ___| |_
;   \___ \ / _ \/ __| __| |/ _ \| '_ \/ __| | |    | / __| __|
;   ____) |  __/ (__| |_| | (_) | | | \__ \ | |____| \__ \ |_
;  |_____/ \___|\___|\__|_|\___/|_| |_|___/ |______|_|___/\__|
;
;|SL| SectionsList||00EC72
;|SL| Autoruns||00EC72
;|SL| OnExit||00EC72
;|SL| SEARCHINDICATOR||00EC72
;|SL| MouseHotkeys||00EC72
;|SL| ShiftMacros||00EC72
;|SL| SoundControlFunctions||00EC72
;|SL| GetCommonPath||00EC72
;|SL| ArrayMethods||00EC72
;|SL| tfahk||00EC72
;|SL| BuggyMouseahk||00EC72
;|SL| MouseWheelTabScroll4Chrome||00EC72
;|SL| IP Helper||00EC72
;|SL| ClassImageButtonahk||00EC72
;|SL| helpyGUI||E800FF
;|SL| Evernote||00EC72
;|SL| BegginZlogies||00EC72
;|SL| EndZlogies||00EC72
;|SL| helpyPMC||FFFB00
;|SL| functions||00EC72
;|SL| passwordmanager||00EC72
;|SL| ScrollFunctions||00EC72
;|SL| UtilityHotkeys||00EC72
;|SL| keylogger||00EC72
;|SL| helpy||00EC72
;|SL| dinamicM||00EC72
;|SL| removed||00EC72
;|SL| ProgramLogger||00EC72
;|SL| GenerateNewZlogy||E800FF
;|SL| CountDown||00EC72
;|SL| Cryptahk||00EC72

;|Autoruns||SEARCHINDICATOR|
;                 _
;      /\        | |
;     /  \  _   _| |_ ___  _ __ _   _ _ __  ___
;    / /\ \| | | | __/ _ \| '__| | | | '_ \/ __|
;   / ____ \ |_| | || (_) | |  | |_| | | | \__ \
;  /_/    \_\__,_|\__\___/|_|   \__,_|_| |_|___/

;C:\Users\%A_UserName%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;can also use win+r + shell:startup
; Gosub, OnStart
; Run C:\Users\%A_UserName%\Documents\AHKHelpy\StartUpLogger.ahk
; Run C:\Users\%A_UserName%\Documents\AHKHelpy\tf.ahk

;AutoStarterFunction()

URLZlogy :=
UsernameZlogy :=
PassZlogy :=
SearchString1 := "[...&"
SearchString2 := "&&...]"
SearchString := SearchString1 . SearchString2
SearchString1end := "[...&e"
SearchString2end := "&e&...]"
SearchStringend := SearchString1end . SearchString2end
SearchString1a := "[..&&"
SearchString2a := "&&&..]"
SearchStringa := SearchString1a . SearchString2a
SearchString1aend := "[..&e&e"
SearchString2aend := "&e&e&..]"
SearchStringaend := SearchString1aend . SearchString2aend
SearchString1b := "[.&&&"
SearchString2b := "&&&&.]"
SearchStringb := SearchString1b . SearchString2b
SearchString1bend := "[.&e&e&e"
SearchString2bend := "&e&e&e&.]"
SearchStringbend := SearchString1bend . SearchString2bend
ReplaceString1 := "wP2HmBpInN7Riytio52yDB"
ReplaceString2 := "nidO4JeiAj"
ReplaceString := ReplaceString1 . ReplaceString2
Index := 0
Index1 := 0
IndexEnd := 0
Index1End := 0
pauseloop := 0
stringToHashAndUseForDecryption :=
stringToHashAndUseForEncryption :=
DBFileName :=
DB :=

FileRead, Contents, %A_ScriptDir%\StringBank.txt
FileLocation = %A_ScriptDir%\StringBank.txt
LockedFileLocation = %A_ScriptDir%\StringBank.7z
LockedFileLocation1 = "StringBank.7z"
FileLocation2 = %A_ScriptDir%\AHKassociatedFiles\OldBackup\LoopIndex.txt
FileLocation3 = %A_ScriptDir%\AHKassociatedFiles\resources\HashPass.txt
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\WILLBEREWRITTENBegginZlogies.ahk
NameOfFile1 := "WILLBEREWRITTENBegginZlogies.ahk"
FileLocation4 = %A_ScriptDir%\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release

getStringFromBank(SearchText, FileLocation)
{

    if not ErrorLevel  ; Successfully loaded.
        {
             
            FileFound := TF_Find_version_for_direct_calling(FileLocation, "","", SearchText, 0, 1)
            if FileFound > 0
            {
                ;MsgBox %FileFound%
                StringReplace, NewStr0, FileFound, %SearchText%,, All
                StringReplace, NewStr, NewStr0, =,, All
                ;MsgBox %NewStr%
            }
        }
    Return NewStr
}

MYAPP_PROTOCOL:="myapp"
; %A_ScriptDir%\AHKlibs\WebappHTMLforGUI\index.html
StringPath = %A_ScriptDir%\AHKlibs\WebappHTMLforGUI\page1.html
; StringPath1 = %A_ScriptDir%%StringPath%
; StringPath2 := "index.html"
TF_version_for_direct_calling(StringPath)
t:= TF_Replace_version_for_direct_calling(t, "%MYAPP_PROTOCOL%" , "myapp")
HTML_page_FromFile = %t%
; MsgBox, %HTML_page_FromFile%
; FileAppend, %HTML_page_FromFile%,  %A_ScriptDir%\log.txt

;|OnExit||SEARCHINDICATOR|
;    ____        ______      _ _
;   / __ \      |  ____|    (_) |
;  | |  | |_ __ | |__  __  ___| |_
;  | |  | | '_ \|  __| \ \/ / | __|
;  | |__| | | | | |____ >  <| | |_
;   \____/|_| |_|______/_/\_\_|\__|
OnExit("ExitFunc")
ExitFunc(ExitReason, ExitCode)
{
    ; StartUpScriptOnExit("ExitLogger.txt")

    ; I am commenting this in order to be able to disable HelpyMPC. The change is done on 24.12.2019 
    ; dataStorageForStartAndExit("Exit")



    ; if A_ExitReason not in Logoff,Shutdown
    ; {
    ;   ; Runwait, taskkill /im StartUpLogger.ahk /f
    ;   ; Runwait, taskkill /im tf.ahk /f
    ; }
    ; Do not call ExitApp -- that would prevent other OnExit functions from being called.
}

StartUpScriptOnExit(stringToBeUsed){
dateToBePrinted := getDate()
Source = "
StringMid, newline1, Source, 2, 2
newline2 = %dateToBePrinted%
newline = %newline1% %newline2%
1newline = \%stringToBeUsed%
f := A_ScriptDir 1newline
a := FilePrePend(f, newline)
if !(a)
   fileappend,, ExitLogger.txt
}
getDate(){
FormatTime, TimeString,,H:mm:ss d/M/yyyy
return TimeString
}
RemoveFirstLine(){
textLocation = A_ScriptDir "\AutoHotkey.ahk"
    TF_RemoveLines_version_for_direct_calling(textLocation, 1) ;remove first line
}
FilePrePend(fileIN, string) {
   IfNotExist, %fileIN%
      return false
   input := FileOpen(fileIN, 0)
   text := input.Read()
   input.Close()
   output := FileOpen(fileIN, 5)
   output.WriteLine(string)
   output.Write(text)
   output.Close()
   return true
}

;|MouseHotkeys||SEARCHINDICATOR|
;                                     _           _   _
;                                    | |         | | | |
;    _ __ ___   ___  _   _ ___  ___  | |__   ___ | |_| | _____ _   _ ___
;   | '_ ` _ \ / _ \| | | / __|/ _ \ | '_ \ / _ \| __| |/ / _ \ | | / __|
;   | | | | | | (_) | |_| \__ \  __/ | | | | (_) | |_|   <  __/ |_| \__ \
;   |_| |_| |_|\___/ \__,_|___/\___| |_| |_|\___/ \__|_|\_\___|\__, |___/
;                                                               __/ |
;                                                              |___/

settimer, ProgramLoggerFunction, -1

ProgramLoggerFunction()
{

    ; MsgBox, "fd"

    loop{
    WinGet, current_ID, ID, A
    if(previous_ID != current_ID){
        ; Msgbox, %current_ID%
    fileappend, `r , %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt
    fileappend, %current_ID%, %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt

    File = %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt ; file path here

    ; FileRead, text, %File%
    ; FileDelete, %File%
    ; Msgbox, % RegExMatch(text, "^.*\R\K")/8
    ; FileAppend, % SubStr(text, RegExMatch(text, "^.*\R\K")), %File%
    ; FileAppend, % SubStr(text, 1, RegExMatch(text, "\R.*\R?$")-1), %File%
    ; FileAppend, % SubStr(text,1, RegExMatch(text, "\R.*\R?$")), %File%

    previous_ID := current_ID
    }
    sleep, 10
    }


}

; 1.
; #Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts\MTGAimprovements.ahk
; ALL FUNCTIONS THAT SHOULD ALWAYS BE RUNNING MUST BE PUT ABOVE THIS POINT. 
; FUNCTIONS BELLOW ARE ONLY INVOKED ON TRIGGER

; 2.
; Also use settimer, ProgramLoggerFunction, -1 for a separate thread of execution
#InstallKeybdHook
globalBoolean = false

Return