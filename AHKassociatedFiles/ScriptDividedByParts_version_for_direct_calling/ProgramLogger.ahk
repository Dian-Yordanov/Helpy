;|ProgramLogger||SEARCHINDICATOR|
;     _____                                     _
;   |  __ \                                   | |
;   | |__) | __ ___   __ _ _ __ __ _ _ __ ___ | |     ___   __ _  __ _  ___ _ __
;   |  ___/ '__/ _ \ / _` | '__/ _` | '_ ` _ \| |    / _ \ / _` |/ _` |/ _ \ '__|
;   | |   | | | (_) | (_| | | | (_| | | | | | | |___| (_) | (_| | (_| |  __/ |
;   |_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|______\___/ \__, |\__, |\___|_|
;                     __/ |                                 __/ | __/ |
;                    |___/                                 |___/ |___/
;



MsgBox, "fd"

loop{
WinGet, current_ID, ID, A
if(previous_ID != current_ID){
fileappend, `r , %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt
fileappend, %current_ID%, %A_ScriptDir%\AHKassociatedFiles\resources\ProgramUsedLogger.txt
previous_ID := current_ID
}
sleep, 10
}