; Gui, Add, Text, cWhite xp+50 yp+10 , Page 2
; Gui, Add, Text, x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray

; Gui, Add, Text,cWhite x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray


; ; Gui, 20:Destroy
BkColor2   := 0xFFFFFF   ; Background Color | BGR (BLUE - GREEN - RED)
BkColor   := 0xFFFF8F   ; Background Color | BGR (BLUE - GREEN - RED)
BkColor3   := 0x001111   ; Background Color | BGR (BLUE - GREEN - RED)
TxColor   := 0x000000    ; Text Color       | BGR (BLUE - GREEN - RED)
OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT
;OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; Gui, 20:Add, Groupbox, h1000 w1650,

; Gui, 20:Add, Edit, xm w250 h20 x100 vLabelView,
; Gui, 20:Add, Edit, w250 h20 %k_Position% vTscriptEditView,
; Gui, 20:Add, Edit, xm w60 ReadOnly x20 yp+25, Sound
; Gui, 20:Add, Button, w250 h20 %k_Position% gFastCreateTscrips,FastCreateTscrips

Gui, Add, Button, w250 h20 %k_Position% gFastCreateTscrips,FastCreateTscrips



#Include %A_ScriptDir%\AHKassociatedFiles\ScriptDividedByParts_version_for_direct_calling\TabPages\TScriptsData_version_for_direct_calling.ahk




; Gui, 19:Add, ListView, xm r20 w1450 h800 x100 yp+25 gZlogiesListViewLabel, Key|1st
; Gui, 18:Add, Edit, xm w1450 h20 x100 yp+825 vRemoveSpecificZlogy,
; Gui, 18:Add, Button, xm w1450 x100 yp+25 gRemoveSpecificZlogyFunc,RemoveSpecificZlogy
; Gui, 20:Font, s18 cRed Bold, Verdana
; Gui, 20:Color, 000000, FFFFFF
; Gui, 20:Show, h900 w650 x65 y65,
; MsgBox, "works"