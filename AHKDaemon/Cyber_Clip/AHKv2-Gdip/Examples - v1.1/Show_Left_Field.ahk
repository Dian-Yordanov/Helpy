; gdi+ ahk tutorial 1 written by tic (Tariq Porter)
; Requires Gdip.ahk either in your Lib folder as standard library or using #Include
;
; Tutorial to draw a single ellipse and rectangle to the screen

#SingleInstance Force
#NoEnv
SetBatchLines -1

; Uncomment if Gdip.ahk is not in your standard library
; #Include ../Gdip_All.ahk

#Include %A_ScriptDir%/Gdip_All.ahk

SysGet, Mon2, Monitor, 1

; MsgBox, %A_ScriptDir%

new_string := ""
word_array := StrSplit(A_ScriptDir, "\")

; MsgBox,  % word_array.MaxIndex()

Loop % word_array.MaxIndex()-2
{
    
   new_string := new_string  word_array[A_Index] "\"

}

; MsgBox, %new_string%

IniRead, minimal_distance_to_the_left_old_var, %new_string%/Cyber_Clip_config_ini_file.ini, LocationConfig, left__distance_location

; MsgBox, % minimal_distance_to_the_left_old_var

; Start gdi+
If !pToken := Gdip_Startup()
{
	MsgBox "Gdiplus failed to start. Please ensure you have gdiplus on your system"
	ExitApp
}
OnExit("ExitFunc")

; Set the width and height we want as our drawing area, to draw everything in. This will be the dimensions of our bitmap
Width :=Mon2Right, Height := Mon2Bottom

; Create a layered window (+E0x80000 : must be used for UpdateLayeredWindow to work!) that is always on top (+AlwaysOnTop), has no taskbar entry or caption
Gui, _distance_to_the_left_old_var: -Caption +E0x80000 +LastFound +AlwaysOnTop +ToolWindow +OwnDialogs
; Gui, 1:Add, Button, x50 y50 cFFFFFF h420 w400 , test
Gui, _distance_to_the_left_old_var: Show, NA

; Get a handle to this window we have created in order to update it later
hwnd_distance_to_the_left_old_var := WinExist()

; Create a gdi bitmap with width and height of what we are going to draw into it. This is the entire drawing area for everything
hbm := CreateDIBSection(Width, Height)

; Get a device context compatible with the screen
hdc := CreateCompatibleDC()

; Select the bitmap into the device context
obm := SelectObject(hdc, hbm)

; Get a pointer to the graphics of the bitmap, for use with drawing functions
G := Gdip_GraphicsFromHDC(hdc)

; Set the smoothing mode to antialias = 4 to make shapes appear smother (only used for vector drawing and filling)
Gdip_SetSmoothingMode(G, 4)

; Create a fully opaque red brush (ARGB = Transparency, red, green, blue) to draw a circle
pBrush := Gdip_BrushCreateSolid(0xffff0000)

; Fill the graphics of the bitmap with an ellipse using the brush created
; Filling from coordinates (100,50) an ellipse of 200x300
; Gdip_FillEllipse(G, pBrush, 100, 500, 200, 300)

; Delete the brush as it is no longer needed and wastes memory
Gdip_DeleteBrush(pBrush)

; Create a slightly transparent (66) blue brush (ARGB = Transparency, red, green, blue) to draw a rectangle
pBrush := Gdip_BrushCreateSolid(0x66ff0000)

; Fill the graphics of the bitmap with a rectangle using the brush created
; Filling from coordinates (250,80) a rectangle of 300x200
Gdip_FillRectangle(G, pBrush, 0,0, minimal_distance_to_the_left_old_var, Height)



; Delete the brush as it is no longer needed and wastes memory
Gdip_DeleteBrush(pBrush)


; Update the specified window we have created (hwnd1) with a handle to our bitmap (hdc), specifying the x,y,w,h we want it positioned on our screen
; So this will position our gui at (0,0) with the Width and Height specified earlier
UpdateLayeredWindow(hwnd_distance_to_the_left_old_var, hdc, 0, 0, Width, Height)


; Select the object back into the hdc
SelectObject(hdc, obm)

; Now the bitmap may be deleted
DeleteObject(hbm)

; Also the device context related to the bitmap may be deleted
DeleteDC(hdc)

; The graphics may now be deleted
Gdip_DeleteGraphics(G)

Gdip_Shutdown(pToken)
Return

Esc::
ExitApp  

; Gdip_Shutdown(pToken)
; ; Delete the brush as it is no longer needed and wastes memory
; Gdip_DeleteBrush(pBrush)


; ; Update the specified window we have created (hwnd1) with a handle to our bitmap (hdc), specifying the x,y,w,h we want it positioned on our screen
; ; So this will position our gui at (0,0) with the Width and Height specified earlier
; UpdateLayeredWindow(hwnd1, hdc, 0, 0, Width, Height)


; ; Select the object back into the hdc
; SelectObject(hdc, obm)

; ; Now the bitmap may be deleted
; DeleteObject(hbm)

; ; Also the device context related to the bitmap may be deleted
; DeleteDC(hdc)

; ; The graphics may now be deleted
; Gdip_DeleteGraphics(G)
Return

;#######################################################################

ExitFunc(ExitReason, ExitCode)
{
   global
   ; Delete the brush as it is no longer needed and wastes memory
; Gdip_DeleteBrush(pBrush)


; ; Update the specified window we have created (hwnd1) with a handle to our bitmap (hdc), specifying the x,y,w,h we want it positioned on our screen
; ; So this will position our gui at (0,0) with the Width and Height specified earlier
; UpdateLayeredWindow(hwnd1, hdc, 0, 0, Width, Height)


; ; Select the object back into the hdc
; SelectObject(hdc, obm)

; ; Now the bitmap may be deleted
; DeleteObject(hbm)

; ; Also the device context related to the bitmap may be deleted
; DeleteDC(hdc)

; ; The graphics may now be deleted
; Gdip_DeleteGraphics(G)
;    ; gdi+ may now be shutdown on exiting the program
   Gdip_Shutdown(pToken)
}

; exit:
; MsgBox, "fff"
; Return