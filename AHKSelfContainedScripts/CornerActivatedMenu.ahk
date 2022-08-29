#Persistent  ; Keep the script running until the user exits it.
DetectHiddenWindows, on
SetTitleMatchMode, 2

global AlreadyActivated := "false"
global InTopLeftCorner := "false"
global InTopRightCorner := "false"
global InBottomLeftCorner := "false"
global InBottomRightCorner := "false"

Menu, Tray, Add  ; Creates a separator line.
Menu, Tray, Add, InBottomLeftCorner : %InBottomLeftCorner%, MenuHandler
Menu, Tray, Add, InBottomRightCorner : %InBottomRightCorner%, MenuHandler
Menu, Tray, Add, INFO, InfoFunctionLabel

Loop {
  If (ifInTopLeftCorner() == true && AlreadyActivated == "false"){
    ; If (InBottomLeftCorner == "true" && InBottomRightCorner == "true") {
    If (InBottomLeftCorner == "true") {
      Gosub, GuiLabel
    }
  }
  If (ifNotInTopLeftCorner() == true){
    Gosub, GuiClose
  }
  If (ifInTopRightCorner() == true){
    ; If (GetKeyState("LCtrl", "P")){
    ;   MsgBox, "sss"
    ; }
    ; Menu, Tray, Rename, InBottomLeftCorner : , InBottomLeftCorner : %InBottomLeftCorner%
    ; Menu, Tray, Rename, InBottomRightCorner : , InBottomRightCorner : %InBottomRightCorner%
  }
  If (ifInBottomLeftCorner() == true){
    If (GetKeyState("LCtrl", "P")){
      booleanToggleInBottomLeftCorner()
      Gosub, GuiMsgbox
      Sleep, 500
      Gosub, GuiMsgboxClose
    }
  }
  If (ifInBottomRightCorner() == true){
    booleanToggleInBottomRightCorner()   
    ; PostMessage, 0x000C, 0, 0, %control%, A
    ; PostMessage, 0x0111, 65306 ,,, CornerActivatedMenu.ahk
    
  }
  
  Sleep, 100
}

return

InfoFunctionLabel:
MsgBox CornerActivatedMenu.ahk : press ctrl while cursor is `nin the bottom left corner to activate a gui-on-hover`nin the top left corner which does not take`nfocus from other windows
return

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from menu %A_ThisMenu%.
return

GuiLabel:
WinGet, current_ID, ID, A
previous_ID := current_ID
Gui, 1:Add, Button, gLaunchGoogle w80, OK
Gui, 1:Add, Button, gGG w80, GG
Gui, 1:Add, Button, gGG2 w80, GG2
Gui, 1:+LastFound +AlwaysOnTop +ToolWindow +Border +E0x08000000
Gui, 1:+ToolWindow
Gui, 1:+ToolWindow
Gui, 1:Show, w250 h250 y0 x0 NoActivate
Sleep, 10
WinSet, Transparent, 200,CornerActivatedMenu.ahk
WinSet, Style, -0xC00000, CornerActivatedMenu.ahk
AlreadyActivated := "true"
return

GuiClose:
GuiEscape: 
AlreadyActivated := "false"
previous_ID := 0
Gui, 1:Destroy
Return

GuiMsgbox:
Gui, 2:font, s15
; Gui, 2:Add, Text,, InBottomLeftCorner : %InBottomLeftCorner%`nInBottomRightCorner : %InBottomRightCorner%
Gui, 2:Add, Text,, InBottomLeftCorner : %InBottomLeftCorner%
Gui, 2:+AlwaysOnTop +ToolWindow +Border +E0x08000000
Gui, 2:+ToolWindow
Gui, 2:+ToolWindow
Gui, 2:Show, w500 h200 y0 x0 NoActivate
Sleep, 10
WinSet, Transparent, 200,CornerActivatedMenu.ahk
WinSet, Style, -0xC00000, CornerActivatedMenu.ahk
return

GuiMsgboxClose:
Gui, 2:Destroy
Return

LaunchGoogle:
WinActivate ahk_id %previous_ID%
SendInput {Raw}A long series of raw characters sent via the fastest method.
return

GG:
WinActivate ahk_id %previous_ID%
SendInput GG
return

GG2:
;WinActivate ahk_id %previous_ID%
SendInput GG
return

ifInTopLeftCorner(){
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1
  ScreenWidth := 20
  ScreenWidth2 := A_ScreenWidth - 15
  ScreenHeight := 20
  ScreenHeight2 := A_ScreenHeight - 15
  Sleep,1
  If (ScreenWidth >= xpos && ScreenHeight >= ypos) {
    InTopLeftCorner := "true"
    return true
  }
  Else {
    InTopLeftCorner := "false"
    return false
  }
}

ifNotInTopLeftCorner(){
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1
  ScreenWidth := 260
  ScreenWidth2 := A_ScreenWidth - 15
  ScreenHeight := 280
  ScreenHeight2 := A_ScreenHeight - 15
  Sleep,1
  If (ScreenWidth <= xpos || ScreenHeight <= ypos) {
    InTopLeftCorner := "false"
    return true
  }
  Else {
    InTopLeftCorner := "true"
    return false
  }
}

ifInTopRightCorner(){
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1
  ScreenWidth := 20
  ScreenWidth2 := A_ScreenWidth - 15
  ScreenHeight := 20
  ScreenHeight2 := A_ScreenHeight - 15
  Sleep,1
  If (ScreenWidth2 <= xpos && ScreenHeight >= ypos) {
    InTopRightCorner := "true"
    return true
  }
  Else {
    InTopRightCorner := "false"
    return false
  }
}

ifInBottomLeftCorner(){
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1
  ScreenWidth := 20
  ScreenWidth2 := A_ScreenWidth - 15
  ScreenHeight := 20
  ScreenHeight2 := A_ScreenHeight - 15
  Sleep,1
  If (ScreenWidth >= xpos && ScreenHeight2 <= ypos) {
    ; InBottomLeftCorner := "true"
    return true
  }
  Else {
    ; InBottomLeftCorner := "false"
    return false
  }
}

ifInBottomRightCorner(){
  CoordMode, Mouse, Screen
  MouseGetPos, xpos, ypos
  Sleep,1
  ScreenWidth := 20
  ScreenWidth2 := A_ScreenWidth - 15
  ScreenHeight := 20
  ScreenHeight2 := A_ScreenHeight - 15
  Sleep,1
  If (ScreenWidth2 <= xpos && ScreenHeight2 <= ypos) {
    ; InBottomRightCorner := "true"
    return true
  }
  Else {
    ; InBottomRightCorner := "false"
    return false
  }
}

booleanToggleInBottomRightCorner(){
  If (InBottomRightCorner == "false") {
    InBottomRightCorner := "true"
    Menu, Tray, Rename, InBottomRightCorner : false, InBottomRightCorner : true
  }
  Else {
    InBottomRightCorner := "false"
    Menu, Tray, Rename, InBottomRightCorner : true, InBottomRightCorner : false
  }
}

booleanToggleInBottomLeftCorner(){
  If (InBottomLeftCorner == "false") {
    InBottomLeftCorner := "true"
    Menu, Tray, Rename, InBottomLeftCorner : false, InBottomLeftCorner : true
  }
  Else {
    InBottomLeftCorner := "false"
    Menu, Tray, Rename, InBottomLeftCorner : true, InBottomLeftCorner : false
  }
}