; ﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; ; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #Include C:\Users\%A_UserName%\Documents\AHKHelpy\Autohotkey.ahk

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

FileRead, Contents, %A_ScriptDir%\StringBank.txt
FileLocation = %A_ScriptDir%\StringBank.txt
; FileLocation = %A_ScriptDir%\Security\StringBank.txt
LockedFileLocation = %A_ScriptDir%\StringBank.7z
LockedFileLocation1 = "StringBank.7z"
FileLocation2 = %A_ScriptDir%\LoopIndex.txt
FileLocation3 = %A_ScriptDir%\HashPass.txt
NameOfFile := "StringBank.txt"
FileLocation1 = %A_ScriptDir%\Autohotkey.ahk
NameOfFile1 := "Autohotkey.ahk"
FileLocation4 = %A_ScriptDir%\AHKlibs\Security\DotNetMasterPassword\ConsoleMasterPassword\bin\Release
; MsgBox, %SearchString1bend%

; getStringFromBank(SearchText, FileLocation)
; {
;   ; SetWorkingDir %A_ScriptDir%
;   ; FileLocation = %A_ScriptDir%\Security\StringBank.txt
;   ; MsgBox, %A_ScriptDir%\Security\StringBank.txt
; ; MsgBox, %test%
;
;     if not ErrorLevel  ; Successfully loaded.
;         {
;           ; MsgBox, "test"
;             FileFound := TF_Find(FileLocation, "","", SearchText, 0, 1)
;             if FileFound > 0
;             {
;               ; MsgBox, "test"
;                 ;MsgBox %FileFound%
;                 StringReplace, NewStr0, FileFound, %SearchText%,, All
;                 StringReplace, NewStr, NewStr0, =,, All
;                 ;MsgBox %NewStr%
;             }
;             ; Else
;             ; {
;             ;   MsgBox, "FileFound<0"
;             ; }
;         }
;     Return NewStr
; }

InitializeZlogies(){
; FileLocation = %A_ScriptDir%\Security\StringBank.txt

varTest1 = "hhhhhhhhhhhhhhhhhhddddd222222222222"
MsgBox, %varTest%

Run C:\Users\%A_UserName%\Documents\AHKHelpy\tf.ahk

P0igzCZNwt9RilfEV = % getStringFromBank("hSniYw56tipgmni3", FileLocation)

; MsgBox, %P0igzCZNwt9RilfEV%

PG6v129mjWr390pBy = % getStringFromBank("E5jW6hciEBs1uH1C", FileLocation)
Pi8i_qiepLo1yZfi2 = % getStringFromBank("iRPkMSbqrXrRhiFl", FileLocation)
PQH0JiiV97gyjNNiL = % getStringFromBank("_itdjG4iSiV1fXAf", FileLocation)
PFnJA_J9iigCwlmPN = % getStringFromBank("PkgDHYig260uzAv0", FileLocation)
PeIkwKsSDzKiLYt07 = % getStringFromBank("neugHV0BhLb5DjHU", FileLocation)
EYZAQzDULImqkNjF9 = % getStringFromBank("53TjiOrR5TTdRtKc", FileLocation)
EQpEptt6ii4nhfoi8 = % getStringFromBank("ucmuAanRAvi4wJyw", FileLocation)
Eu0PrIiaiNXlHHiXP = % getStringFromBank("iOSLAP4Xdj4yv1wK", FileLocation)
EIZCXCSi7kioAxlki = % getStringFromBank("OiKZC09iHSsiQiSi", FileLocation)
E2cMiszHY7nFabFHW = % getStringFromBank("YiSW6GGRfSiiZULZ", FileLocation)
E4ieicLWFinHil3vQ = % getStringFromBank("4ggiiEaw28MOiQLi", FileLocation)
Edk2pi7TDriQiaaii = % getStringFromBank("if3bkCWiYiVfavKS", FileLocation)
EKP4nBzfnQOXAXiit = % getStringFromBank("HirHQk35N4iS6GiM", FileLocation)
ETawbhydrXpiGQ2sl = % getStringFromBank("diRxdR4yqBRUdOb8", FileLocation)
E8xr90WOz1h5TYIiX = % getStringFromBank("mHIons9i0JRNizYT", FileLocation)
E4RZl7092fdiSrC7i = % getStringFromBank("NiJE0fNqu6aM5JP8", FileLocation)
E0wUWPgiJ9B_u9ilO = % getStringFromBank("eT5iFiSwYLiWWi8X", FileLocation)
EE9k5DhpM37riHiiv = % getStringFromBank("Xx07DGKK7aPlBgqh", FileLocation)
E4ngYoGzusbAukkyh = % getStringFromBank("iUyAVfBkij_onC21", FileLocation)
EScir7EGisf8pkrii = % getStringFromBank("wlndicRBoili888i", FileLocation)
EoQKiiJjR57Iiirr7 = % getStringFromBank("8PTHqBCIkAdqir4t", FileLocation)
EiAa70s4Ai4i4I5ig = % getStringFromBank("iyaJwIGIf_iOGm5i", FileLocation)
Efi3iin1iO5hIJsxp = % getStringFromBank("P4ekXxYioLbielNi", FileLocation)
E1VtNmTzwoQWy7iYE = % getStringFromBank("K6pWqj_ei08nQvVE", FileLocation)
Ep5UzRZ_iZfMiCkkn = % getStringFromBank("oiaUiBFe2JI6i98i", FileLocation)
Ei4iJ9Dik2iDmzpiG = % getStringFromBank("4VioiiTGRVi9PKvd", FileLocation)
EuiciOibFiiCTmiis = % getStringFromBank("jvAmiwjuYiwi9M4A", FileLocation)
ENe8vkiqZzw8GbiiL = % getStringFromBank("C45XW13Y8DMHi5EZ", FileLocation)
Efii4L1nIVzFR8iI6 = % getStringFromBank("iHoNSFFiqkf7oHii", FileLocation)
EtcLEW5hBRKFqzfti = % getStringFromBank("MOiViiChhiNz320k", FileLocation)
EeVx0elRwc1yQSiPk = % getStringFromBank("nvFidGjK6Fh38I7Y", FileLocation)
Eq9wcBR8siEifwlqY = % getStringFromBank("1suiNi5iVKH3cVBv", FileLocation)
EoT6cirtmiidqnwpv = % getStringFromBank("DJiOi8BnEFfiMuSs", FileLocation)
EbGleLvmI8iNibhzT = % getStringFromBank("qu0JXerrgYXSHuXi", FileLocation)
EyhRfIgzpvdGI0HLi = % getStringFromBank("N_I4jifDOila3XcN", FileLocation)
EoQiTbmrWziiKDwEd = % getStringFromBank("cqXAAQ0YOoc0U6g1", FileLocation)
EMFp4gx_LYiaziKkX = % getStringFromBank("3JrODimL7UNkM5zk", FileLocation)
EFswyTyiwzu4JpiiK = % getStringFromBank("6YIu2HB8fXRHDGKh", FileLocation)
EGuiMC1eYivtVFUTi = % getStringFromBank("lk1XRiOhvAi2tRXh", FileLocation)
EvhAxiPi22QiYLk_i = % getStringFromBank("i871M6OYvODUaBAi", FileLocation)
EShiDzFiK3NitTePM = % getStringFromBank("iuhiRbXc6Xiq0Jgw", FileLocation)
EtAyssnpkTcUJiORp = % getStringFromBank("3pviIDSBeygiqprj", FileLocation)
EPO8o20qXimLTViOi = % getStringFromBank("RciPSiXdE5rUanNX", FileLocation)
E8iCRtR41scifSiO7 = % getStringFromBank("p5GNWAiiqvihJjiF", FileLocation)
ELPxzCrf1iKcNbH9C = % getStringFromBank("eXCqbiiDMebO6UoO", FileLocation)
EJQiverbKtihTuhti = % getStringFromBank("LcaGqmhQWHpo3hxk", FileLocation)
Ehhi3hiiYfQtuicTi = % getStringFromBank("u_izeVKEL4ZcizTq", FileLocation)
E43giJg2XXw5TtTS5 = % getStringFromBank("EpvLYiiLUMiz2Vig", FileLocation)
NiN1QWJiht9iPclsx = % getStringFromBank("U9LsQKoOllziDEiM", FileLocation)
EFi6mdIHiBL4WVdQN = % getStringFromBank("itQ2jovJ6iedXSRb", FileLocation)
EziCys3zdiKiigbaX = % getStringFromBank("cit0f4uEQfFi6uSS", FileLocation)
E1ICQfnvXCi2iHWU_ = % getStringFromBank("wZiiiOk_imA6liKo", FileLocation)
EWzKA6NbiHhOkxuGE = % getStringFromBank("0AOiTKii7QixsTze", FileLocation)
EsxbtiKfxxM2ipU2T = % getStringFromBank("eYiPiLpJihO8EiiI", FileLocation)
ErpOKDpZi6ii2bqgg = % getStringFromBank("8fifI0gUL4iaoZTZ", FileLocation)
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||
; GENERATED CONTENT [...&&&...]
; GENERATED CONTENT [...&e&e&...]
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||

Zlogies()
}

Zlogies(){
Gui, 15:Destroy
E4ngYoGzusbAukkyh = % removeNameOfUsedEmail1(E4ngYoGzusbAukkyh)
EQpEptt6ii4nhfoi8 = % removeNameOfUsedEmail1(EQpEptt6ii4nhfoi8)
Eu0PrIiaiNXlHHiXP = % removeNameOfUsedEmail2(Eu0PrIiaiNXlHHiXP)
EE9k5DhpM37riHiiv = % removeNameOfUsedEmail3(EE9k5DhpM37riHiiv)
EScir7EGisf8pkrii = % removeNameOfUsedEmail2(EScir7EGisf8pkrii)
EoQKiiJjR57Iiirr7 = % removeNameOfUsedEmail2(EoQKiiJjR57Iiirr7)
EiAa70s4Ai4i4I5ig = % removeNameOfUsedEmail2(EiAa70s4Ai4i4I5ig)
EIZCXCSi7kioAxlki = % removeNameOfUsedEmail1(EIZCXCSi7kioAxlki)
Efi3iin1iO5hIJsxp = % removeNameOfUsedEmail1(Efi3iin1iO5hIJsxp)
E1VtNmTzwoQWy7iYE = % removeNameOfUsedEmail1(E1VtNmTzwoQWy7iYE)
Ep5UzRZ_iZfMiCkkn = % removeNameOfUsedEmail1(Ep5UzRZ_iZfMiCkkn)
Ei4iJ9Dik2iDmzpiG = % removeNameOfUsedEmail1(Ei4iJ9Dik2iDmzpiG)
Eq9wcBR8siEifwlqY = % removeNameOfUsedEmail2(Eq9wcBR8siEifwlqY)
EoT6cirtmiidqnwpv = % removeNameOfUsedEmail2(EoT6cirtmiidqnwpv)
EbGleLvmI8iNibhzT = % removeNameOfUsedEmail2(EbGleLvmI8iNibhzT)
EyhRfIgzpvdGI0HLi = % removeNameOfUsedEmail2(EyhRfIgzpvdGI0HLi)
EoQiTbmrWziiKDwEd = % removeNameOfUsedEmail2(EoQiTbmrWziiKDwEd)
EMFp4gx_LYiaziKkX = % removeNameOfUsedEmail2(EMFp4gx_LYiaziKkX)
EFswyTyiwzu4JpiiK = % removeNameOfUsedEmail2(EFswyTyiwzu4JpiiK)
EGuiMC1eYivtVFUTi = % removeNameOfUsedEmail2(EGuiMC1eYivtVFUTi)
EvhAxiPi22QiYLk_i = % removeNameOfUsedEmail2(EvhAxiPi22QiYLk_i)
EShiDzFiK3NitTePM = % removeNameOfUsedEmail2(EShiDzFiK3NitTePM)
EtAyssnpkTcUJiORp = % removeNameOfUsedEmail2(EtAyssnpkTcUJiORp)
EeVx0elRwc1yQSiPk = % removeNameOfUsedEmail2(EeVx0elRwc1yQSiPk)
EPO8o20qXimLTViOi = % removeNameOfUsedEmail2(EPO8o20qXimLTViOi)
E8iCRtR41scifSiO7 = % removeNameOfUsedEmail2(E8iCRtR41scifSiO7)
ELPxzCrf1iKcNbH9C = % removeNameOfUsedEmail2(ELPxzCrf1iKcNbH9C)
EJQiverbKtihTuhti = % removeNameOfUsedEmail2(EJQiverbKtihTuhti)
Ehhi3hiiYfQtuicTi = % removeNameOfUsedEmail2(Ehhi3hiiYfQtuicTi)
E43giJg2XXw5TtTS5 = % removeNameOfUsedEmail2(E43giJg2XXw5TtTS5)
ETawbhydrXpiGQ2sl = % removeNameOfUsedEmail2(ETawbhydrXpiGQ2sl)
E8xr90WOz1h5TYIiX = % removeNameOfUsedEmail2(E8xr90WOz1h5TYIiX)
E4RZl7092fdiSrC7i = % removeNameOfUsedEmail2(E4RZl7092fdiSrC7i)
E0wUWPgiJ9B_u9ilO = % removeNameOfUsedEmail2(E0wUWPgiJ9B_u9ilO)
EuiciOibFiiCTmiis = % removeNameOfUsedEmail2(EuiciOibFiiCTmiis)

; Gui, 15:Add, Groupbox,w550 h950,

; Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25 , Blizzard
Gui_15AddPicture("x20 w60 h20 yp+25", "FF 57 33") ; background
Gui, 15:Add, Text, x20 w60 yp hp cFFFFFF BackgroundTrans Center 0x200 E0x200, Blizzard
Gui, 15:Add, Button, %k_Position% gfzpass1,%EFi6mdIHiBL4WVdQN%
Gui, 15:Add, Button, %k_Position% gfzpass2,%EziCys3zdiKiigbaX%
Gui, 15:Add, Button, %k_Position% gfzpass3,%E1ICQfnvXCi2iHWU_%
Gui, 15:Add, Button, %k_Position% gfzpass4,%EWzKA6NbiHhOkxuGE%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25 , Poe1
Gui, 15:Add, Button, %k_Position% gfzpoezpass1,%ETawbhydrXpiGQ2sl%
Gui, 15:Add, Button, %k_Position% gfzpoezpass2,%E8xr90WOz1h5TYIiX%
Gui, 15:Add, Button, %k_Position% gfzpoezpass3,%E4RZl7092fdiSrC7i%
Gui, 15:Add, Button, %k_Position% gfzpoezpass4,%E0wUWPgiJ9B_u9ilO%
Gui, 15:Add, Button, %k_Position% gfzpoezpass51,%EuiciOibFiiCTmiis%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe2
Gui, 15:Add, Button, %k_Position% gfzpoezpass6,%E4ngYoGzusbAukkyh%
Gui, 15:Add, Button, %k_Position% gfzpoezpass8,%EQpEptt6ii4nhfoi8%
Gui, 15:Add, Button, %k_Position% gfzpoezpass9,%Eu0PrIiaiNXlHHiXP%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe3
Gui, 15:Add, Button, %k_Position% gfzpoezpass5,%EE9k5DhpM37riHiiv%
Gui, 15:Add, Button, %k_Position% gfzpoezpass10,%EScir7EGisf8pkrii%
Gui, 15:Add, Button, %k_Position% gfzpoezpass11,%EoQKiiJjR57Iiirr7%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe4
Gui, 15:Add, Button, %k_Position% gfzpoezpass12,%EiAa70s4Ai4i4I5ig%
Gui, 15:Add, Button, %k_Position% gfzpoezpass7,%EIZCXCSi7kioAxlki%
Gui, 15:Add, Button, %k_Position% gfzpoezpass13,%Efi3iin1iO5hIJsxp%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe5
Gui, 15:Add, Button, %k_Position% gfzpoezpass14,%E1VtNmTzwoQWy7iYE%
Gui, 15:Add, Button, %k_Position% gfzpoezpass15,%Ep5UzRZ_iZfMiCkkn%
Gui, 15:Add, Button, %k_Position% gfzpoezpass16,%Ei4iJ9Dik2iDmzpiG%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe6
Gui, 15:Add, Button, %k_Position% gfzpoezpass18bg,%Eq9wcBR8siEifwlqY%
Gui, 15:Add, Button, %k_Position% gfzpoezpass19,%EoT6cirtmiidqnwpv%
Gui, 15:Add, Button, %k_Position% gfzpoezpass20,%EbGleLvmI8iNibhzT%
Gui, 15:Add, Button, %k_Position% gfzpoezpass21,%EyhRfIgzpvdGI0HLi%
Gui, 15:Add, Button, %k_Position% gfzpoezpass22,%EoQiTbmrWziiKDwEd%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe7
Gui, 15:Add, Button, %k_Position% gfzpoezpass23,%EMFp4gx_LYiaziKkX%
Gui, 15:Add, Button, %k_Position% gfzpoezpass24,%EFswyTyiwzu4JpiiK%
Gui, 15:Add, Button, %k_Position% gfzpoezpass25,%EGuiMC1eYivtVFUTi%
Gui, 15:Add, Button, %k_Position% gfzpoezpass26,%EvhAxiPi22QiYLk_i%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe8
Gui, 15:Add, Button, %k_Position% gfzpoezpass27,%EShiDzFiK3NitTePM%
Gui, 15:Add, Button, %k_Position% gfzpoezpass28,%EtAyssnpkTcUJiORp%
Gui, 15:Add, Button, %k_Position% gfzpoezpass29,%EeVx0elRwc1yQSiPk%
Gui, 15:Add, Button, %k_Position% gfzpoezpass30,%EPO8o20qXimLTViOi%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Poe9
Gui, 15:Add, Button, %k_Position% gfzpoezpass31,%E8iCRtR41scifSiO7%
Gui, 15:Add, Button, %k_Position% gfzpoezpass32,%ELPxzCrf1iKcNbH9C%
Gui, 15:Add, Button, %k_Position% gfzpoezpass33,%EJQiverbKtihTuhti%
Gui, 15:Add, Button, %k_Position% gfzpoezpass34,%Ehhi3hiiYfQtuicTi%
Gui, 15:Add, Button, %k_Position% gfzpoezpass35,%E43giJg2XXw5TtTS5%
Gui, 15:Add, Edit, xm w60 ReadOnly x20 yp+25, Zlogies
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||
; GENERATED CONTENT [..&&&&&..]
; GENERATED CONTENT [..&e&e&e&e&..]
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||
E4ngYoGzusbAukkyh = % addNameOfUsedEmail1(E4ngYoGzusbAukkyh)
EQpEptt6ii4nhfoi8 = % addNameOfUsedEmail1(EQpEptt6ii4nhfoi8)
Eu0PrIiaiNXlHHiXP = % addNameOfUsedEmail2(Eu0PrIiaiNXlHHiXP)
EE9k5DhpM37riHiiv = % addNameOfUsedEmail3(EE9k5DhpM37riHiiv)
EScir7EGisf8pkrii = % addNameOfUsedEmail2(EScir7EGisf8pkrii)
EoQKiiJjR57Iiirr7 = % addNameOfUsedEmail2(EoQKiiJjR57Iiirr7)
EiAa70s4Ai4i4I5ig = % addNameOfUsedEmail2(EiAa70s4Ai4i4I5ig)
EIZCXCSi7kioAxlki = % addNameOfUsedEmail1(EIZCXCSi7kioAxlki)
Efi3iin1iO5hIJsxp = % addNameOfUsedEmail1(Efi3iin1iO5hIJsxp)
E1VtNmTzwoQWy7iYE = % addNameOfUsedEmail1(E1VtNmTzwoQWy7iYE)
Ep5UzRZ_iZfMiCkkn = % addNameOfUsedEmail1(Ep5UzRZ_iZfMiCkkn)
Ei4iJ9Dik2iDmzpiG = % addNameOfUsedEmail1(Ei4iJ9Dik2iDmzpiG)
Eq9wcBR8siEifwlqY = % addNameOfUsedEmail2(Eq9wcBR8siEifwlqY)
EoT6cirtmiidqnwpv = % addNameOfUsedEmail2(EoT6cirtmiidqnwpv)
EbGleLvmI8iNibhzT = % addNameOfUsedEmail2(EbGleLvmI8iNibhzT)
EyhRfIgzpvdGI0HLi = % addNameOfUsedEmail2(EyhRfIgzpvdGI0HLi)
EoQiTbmrWziiKDwEd = % addNameOfUsedEmail2(EoQiTbmrWziiKDwEd)
EMFp4gx_LYiaziKkX = % addNameOfUsedEmail2(EMFp4gx_LYiaziKkX)
EFswyTyiwzu4JpiiK = % addNameOfUsedEmail2(EFswyTyiwzu4JpiiK)
EGuiMC1eYivtVFUTi = % addNameOfUsedEmail2(EGuiMC1eYivtVFUTi)
EvhAxiPi22QiYLk_i = % addNameOfUsedEmail2(EvhAxiPi22QiYLk_i)
EShiDzFiK3NitTePM = % addNameOfUsedEmail2(EShiDzFiK3NitTePM)
EtAyssnpkTcUJiORp = % addNameOfUsedEmail2(EtAyssnpkTcUJiORp)
EeVx0elRwc1yQSiPk = % addNameOfUsedEmail2(EeVx0elRwc1yQSiPk)
EPO8o20qXimLTViOi = % addNameOfUsedEmail2(EPO8o20qXimLTViOi)
E8iCRtR41scifSiO7 = % addNameOfUsedEmail2(E8iCRtR41scifSiO7)
ELPxzCrf1iKcNbH9C = % addNameOfUsedEmail2(ELPxzCrf1iKcNbH9C)
EJQiverbKtihTuhti = % addNameOfUsedEmail2(EJQiverbKtihTuhti)
Ehhi3hiiYfQtuicTi = % addNameOfUsedEmail2(Ehhi3hiiYfQtuicTi)
E43giJg2XXw5TtTS5 = % addNameOfUsedEmail2(E43giJg2XXw5TtTS5)
ETawbhydrXpiGQ2sl = % addNameOfUsedEmail2(ETawbhydrXpiGQ2sl)
E8xr90WOz1h5TYIiX = % addNameOfUsedEmail2(E8xr90WOz1h5TYIiX)
E4RZl7092fdiSrC7i = % addNameOfUsedEmail2(E4RZl7092fdiSrC7i)
E0wUWPgiJ9B_u9ilO = % addNameOfUsedEmail2(E0wUWPgiJ9B_u9ilO)
EuiciOibFiiCTmiis = % addNameOfUsedEmail2(EuiciOibFiiCTmiis)



Gui, 15:Font, s18 cRed Bold, Verdana
GuiControl, 15:Font, MyEdit
Gui, 15:Color, 000000, FFFFFF
Gui, 15:Show, w550 h550 x65 y65, Zlogies
return
}

removeNameOfUsedEmail1(UsedEmail){
    StringReplace, NewStr, UsedEmail, @gmail.com, , All
    return NewStr
}
removeNameOfUsedEmail2(UsedEmail){
    StringReplace, NewStr, UsedEmail, @protonmail.com, , All
    return NewStr
}
removeNameOfUsedEmail3(UsedEmail){
    StringReplace, NewStr, UsedEmail, @unseen.is, , All
    return NewStr
}
addNameOfUsedEmail1(UsedEmail){
    UsedEmail = %UsedEmail%@gmail.com
    return UsedEmail
}
addNameOfUsedEmail2(UsedEmail){
    UsedEmail = %UsedEmail%@protonmail.com
    return UsedEmail
}
addNameOfUsedEmail3(UsedEmail){
    UsedEmail = %UsedEmail%@unseen.is
    return UsedEmail
}
;-------------------------------------------------------------------------------
Gui_15AddPicture(Options, Colour) { ; hex RGB with spaces
;-------------------------------------------------------------------------------
    FileName := A_Temp "\" Colour ".bmp"
    Handle := DllCall("CreateFile", "Str", FileName, "Int", 0x40000000
        , "Int", 0, "Int", 0, "Int", 4, "Int", 0, "Int", 0)

    ;---------------------------------------------------------------------------
    Picture =
    ;---------------------------------------------------------------------------
        ( Join LTrim
            42 4D 3A 00 | 00 00 00 00 | 00 00 36 00 | 00 00 28 00
            00 00 01 00 | 00 00 01 00 | 00 00 01 00 | 18 00 00 00
            00 00 04 00 | 00 00 00 00 | 00 00 00 00 | 00 00 00 00
            00 00 00 00 | 00 00
        )

    Picture .= SubStr(Colour, 7, 2)
            .  SubStr(Colour, 4, 2)
            .  SubStr(Colour, 1, 2) "00"
    StringReplace, Picture, Picture, |,, All
    StringReplace, Picture, Picture, %A_Space%,, All

    Loop, % StrLen(Picture) // 2 {
        StringLeft, Hex, Picture, 2
        StringTrimLeft, Picture, Picture, 2
        DllCall("WriteFile", "Int", Handle, "CharP", "0x" Hex
            , "Int", 1, "IntP", BytesWritten, "Int", 0)
    }
    DllCall("CloseHandle", "Int", Handle)
    Gui, 15:Add, Picture, %Options%, %FileName%
    FileDelete, %FileName%
}

fzpass1:
WinActivate ahk_id %previous_ID%
SendInput %EYZAQzDULImqkNjF9%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpass2:
WinActivate ahk_id %previous_ID%
SendInput %E2cMiszHY7nFabFHW%{tab}%P0igzCZNwt9RilfEV%{tab}{enter}
return
fzpass3:
WinActivate ahk_id %previous_ID%
SendInput %EIZCXCSi7kioAxlki%{tab}%P0igzCZNwt9RilfEV%{tab}{enter}
return
fzpass4:
WinActivate ahk_id %previous_ID%
SendInput %Edk2pi7TDriQiaaii%{tab}%Pi8i_qiepLo1yZfi2%{tab}{enter}
return
fzpoezpass1:
WinActivate ahk_id %previous_ID%
SendInput %ETawbhydrXpiGQ2sl%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass2:
WinActivate ahk_id %previous_ID%
SendInput %E8xr90WOz1h5TYIiX%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass3:
WinActivate ahk_id %previous_ID%
SendInput %E4RZl7092fdiSrC7i%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass4:
WinActivate ahk_id %previous_ID%
SendInput %E0wUWPgiJ9B_u9ilO%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass5:
WinActivate ahk_id %previous_ID%
SendInput %EE9k5DhpM37riHiiv%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass6:
WinActivate ahk_id %previous_ID%
SendInput %E4ngYoGzusbAukkyh%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass7:
WinActivate ahk_id %previous_ID%
SendInput %EIZCXCSi7kioAxlki%{tab}%P0igzCZNwt9RilfEV%{tab}{enter}
return
fzpoezpass8:
WinActivate ahk_id %previous_ID%
SendInput %EQpEptt6ii4nhfoi8%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass9:
WinActivate ahk_id %previous_ID%
SendInput %Eu0PrIiaiNXlHHiXP%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass10:
WinActivate ahk_id %previous_ID%
SendInput %EScir7EGisf8pkrii%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass11:
WinActivate ahk_id %previous_ID%
SendInput %EoQKiiJjR57Iiirr7%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass12:
WinActivate ahk_id %previous_ID%
SendInput %EiAa70s4Ai4i4I5ig%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass13:
WinActivate ahk_id %previous_ID%
SendInput %Efi3iin1iO5hIJsxp%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass14:
WinActivate ahk_id %previous_ID%
SendInput %E1VtNmTzwoQWy7iYE%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass15:
WinActivate ahk_id %previous_ID%
SendInput %Ep5UzRZ_iZfMiCkkn%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass16:
WinActivate ahk_id %previous_ID%
SendInput %Ei4iJ9Dik2iDmzpiG%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass51:
WinActivate ahk_id %previous_ID%
SendInput %EuiciOibFiiCTmiis%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass18bg:
WinActivate ahk_id %previous_ID%
SendInput %Eq9wcBR8siEifwlqY%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass19:
WinActivate ahk_id %previous_ID%
SendInput %EoT6cirtmiidqnwpv%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass20:
WinActivate ahk_id %previous_ID%
SendInput %EbGleLvmI8iNibhzT%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass21:
WinActivate ahk_id %previous_ID%
SendInput %EyhRfIgzpvdGI0HLi%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass22:
WinActivate ahk_id %previous_ID%
SendInput %EoQiTbmrWziiKDwEd%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass23:
WinActivate ahk_id %previous_ID%
SendInput %EMFp4gx_LYiaziKkX%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass24:
WinActivate ahk_id %previous_ID%
SendInput %EFswyTyiwzu4JpiiK%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass25:
WinActivate ahk_id %previous_ID%
SendInput %EGuiMC1eYivtVFUTi%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass26:
WinActivate ahk_id %previous_ID%
SendInput %EvhAxiPi22QiYLk_i%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass27:
WinActivate ahk_id %previous_ID%
SendInput %EShiDzFiK3NitTePM%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass28:
WinActivate ahk_id %previous_ID%
SendInput %EtAyssnpkTcUJiORp%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass29:
WinActivate ahk_id %previous_ID%
SendInput %EeVx0elRwc1yQSiPk%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass30:
WinActivate ahk_id %previous_ID%
SendInput %EPO8o20qXimLTViOi%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass31:
WinActivate ahk_id %previous_ID%
SendInput %E8iCRtR41scifSiO7%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass32:
WinActivate ahk_id %previous_ID%
SendInput %ELPxzCrf1iKcNbH9C%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass33:
WinActivate ahk_id %previous_ID%
SendInput %EJQiverbKtihTuhti%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass34:
WinActivate ahk_id %previous_ID%
SendInput %Ehhi3hiiYfQtuicTi%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
fzpoezpass35:
WinActivate ahk_id %previous_ID%
SendInput %E43giJg2XXw5TtTS5%{tab}%PG6v129mjWr390pBy%{tab}{enter}
return
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||
; GENERATED CONTENT [.&&&&&&&.]
; GENERATED CONTENT [.&e&e&e&e&e&e&.]
;||||||||||||||||||||||||||||||||||||||||||||||||||||||||
