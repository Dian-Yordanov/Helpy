;|ScrollFunctions||SEARCHINDICATOR|
;    _____                _ _   ______                _   _
;   / ____|              | | | |  ____|              | | (_)
;  | (___   ___ _ __ ___ | | | | |__ _   _ _ __   ___| |_ _  ___  _ __  ___
;   \___ \ / __| '__/ _ \| | | |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
;   ____) | (__| | | (_) | | | | |  | |_| | | | | (__| |_| | (_) | | | \__ \
;  |_____/ \___|_|  \___/|_|_| |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

#Include %A_ScriptDir%\AHKlibs\libWindows.ahk

CreateGUID()
{
    VarSetCapacity(pguid, 16, 0)
    if !(DllCall("ole32.dll\CoCreateGuid", "ptr", &pguid)) {
        size := VarSetCapacity(sguid, (38 << !!A_IsUnicode) + 1, 0)
        if (DllCall("ole32.dll\StringFromGUID2", "ptr", &pguid, "ptr", &sguid, "int", size))
            return StrGet(&sguid)
    }
    return ""
}