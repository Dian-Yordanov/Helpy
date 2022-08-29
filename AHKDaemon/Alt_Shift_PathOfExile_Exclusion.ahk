#InstallMouseHook
#MaxHotkeysPerInterval 1000 ; Avoids warning messages for high speed wheel users.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

#IfWinActive Path of Exile 
!LShift::
    {
        SendInput !{!LShift}
    }
return
#IfWinActive