;|FunctionsForHelpyAndExperimental||SEARCHINDICATOR|
;   ______                _   _                 ______         _    _      _                                _ ______                      _                      _        _ 
;  |  ____|              | | (_)               |  ____|       | |  | |    | |               /\             | |  ____|                    (_)                    | |      | |
;  | |__ _   _ _ __   ___| |_ _  ___  _ __  ___| |__ ___  _ __| |__| | ___| |_ __  _   _   /  \   _ __   __| | |__  __  ___ __   ___ _ __ _ _ __ ___   ___ _ __ | |_ __ _| |
;  |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|  __/ _ \| '__|  __  |/ _ \ | '_ \| | | | / /\ \ | '_ \ / _` |  __| \ \/ / '_ \ / _ \ '__| | '_ ` _ \ / _ \ '_ \| __/ _` | |
;  | |  | |_| | | | | (__| |_| | (_) | | | \__ \ | | (_) | |  | |  | |  __/ | |_) | |_| |/ ____ \| | | | (_| | |____ >  <| |_) |  __/ |  | | | | | | |  __/ | | | || (_| | |
;  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/_|  \___/|_|  |_|  |_|\___|_| .__/ \__, /_/    \_\_| |_|\__,_|______/_/\_\ .__/ \___|_|  |_|_| |_| |_|\___|_| |_|\__\__,_|_|
;                                                                           | |     __/ |                                | |                                                
;                                                                           |_|    |___/                                 |_|                                                



ClassImageButtonExperiments:
; ----------------------------------------------------------------------------------------------------------------------
Gui, DummyGUI:Destroy
Gui, DummyGUI:Add, Pic, hwndHPIC, PIC1.jpg
SendMessage, 0x0173, 0, 0, , ahk_id %HPIC% ; STM_GETIMAGE
HPIC1 := ErrorLevel
; ----------------------------------------------------------------------------------------------------------------------
; Button states:
; PBS_NORMAL    = 1
; PBS_HOT       = 2
; PBS_PRESSED   = 3
; PBS_DISABLED  = 4
; PBS_DEFAULTED = 5
; PBS_STYLUSHOT = 6 <- used only on tablet computers
; ----------------------------------------------------------------------------------------------------------------------
GuiColor := "Blue"
Gui, Margin, 50, 20
Gui, Font, s10
; Gui, Color, %GuiColor%
; ImageButton.SetGuiColor(GuiColor)
; Common button --------------------------------------------------------------------------------------------------------
; Gui, DummyGUI:Add, Button, w200, Common Button
; Unicolored button rounded by half of its height with different colors for states normal, hot and defaulted -----------

; PBS_NORMAL    = 1
; PBS_HOT       = 2
; PBS_PRESSED   = 3
; PBS_DISABLED  = 4
; PBS_DEFAULTED = 5
; PBS_STYLUSHOT = 6 ; used only on tablet computers

;  Index Value
;  1     Mode        mandatory:
;  				  0  -  unicolored or bitmap
;  				  1  -  vertical bicolored
;  				  2  -  horizontal bicolored
;  				  3  -  vertical gradient
;  				  4  -  horizontal gradient
;  				  5  -  vertical gradient using StartColor at both borders and
;  						TargetColor at the center
;  				  6  -  horizontal gradient using StartColor at both borders and 
;  						TargetColor at the center
;  				  7  -  'raised' style (just try out!)
;  2     StartColor  mandatory for Option[1], higher indices will inherit the value of
;  				  Option[1], if omitted:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  				  -  Path of an image file or HBITMAP handle for Mode 0
;  3     TargetColor mandatory for Option[1] if Mode > 0, ignored if Mode = 0. Higher
;  				  indcices will inherit the color of Option[1], if omitted:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  4     TextColor   optional, if omitted, the default text color will be used for Option[1],
;  				  higher indices will inherit the color of Option[1]:
;  				  -  ARGB integer value (0xAARRGGBB) or HTML color name ("Red").
;  					 Default: 0x000000 (black)
;  5     Rounded     optional:
;  				  -  Radius of the rounded corners in pixel; the letters 'H' and 'W' may be
;  				     specified also to use the half of the button's height or width respectively.
;  					 Default: 0 - not rounded
;  6     GuiColor    optional, needed for rounded buttons if you've changed the GUI background color:
;  				  -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;  					 Default: AHK default GUI background color
;  7     BorderColor optional, ignored for modes 0 (bitmap) and 7, color of the border:
;                    -  RGB integer value (0xRRGGBB) or HTML color name ("Red").
;  8     BorderWidth optional, ignored for modes 0 (bitmap) and 7, width of the border in pixels:
;                    -  Default: 1




Gui, DummyGUI:Add, Button, vBT1 w200 hwndHBT1, Button 1`nLine 2
Opt1 := [0, 0x80333333, , "White", "6", , "White", 1]         ; normal flat background & text color
Opt2 := [ , "0x80666666"]                                          ; hot flat background color
Opt5 := [ , , ,"White"]                                      ; defaulted text color -> animation
ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)






; If !ImageButton.Create(HBT1, Opt1, Opt2, , , Opt5)
;    MsgBox, 0, ImageButton Error Btn1, % ImageButton.LastError
; Vertical bicolored  button with different 3D-style colors for states normal, hot, and pressed ------------------------
; Gui, DummyGUI:Add, Button, vBT2 w200 h30 hwndHBT2, Button 2
; Opt1 := [1, 0xC0E0E0E0, 0xC0B0E0FF, 0x60000000]             ; normal background & text colors
; Opt2 := {2: 0xE0E0E0, 3: 0xB0E0FF, 4: "Black"}              ; hot background & text colors (object syntax)
; Opt3 := {4: "Red"}                                          ; pressed text color (object syntax)
; If !ImageButton.Create(HBT2, Opt1, Opt2, Opt3)
;    MsgBox, 0, ImageButton Error Btn2, % ImageButton.LastError
; ; Raised button with different 3D-style colors for states normal, hot, and disabled ------------------------------------
; Gui, DummyGUI:Add, Button, vBT3 w200 Disabled hwndHBT3, Button 3
; Opt1 := [6, 0x80404040, 0xC0C0C0, "Yellow"]                 ; normal background & text colors
; Opt2 := [ , 0x80606060, 0xF0F0F0, 0x606000]                 ; hot background & text colors
; Opt4 := [0, 0xC0A0A0A0, , 0xC0606000]                       ; disabled flat background & text colors
; If !ImageButton.Create(HBT3, Opt1, Opt2, "", Opt4)
;    MsgBox, 0, ImageButton Error Btn3, % ImageButton.LastError
; Gui, Font
; Gui, DummyGUI:Add, CheckBox, xp y+0 w200 gCheck vCheckBox, Enable!
; ; Image button without caption with different pictures for states normal and hot ---------------------------------------
; ; Gui, DummyGUI:Add, Button, vBT4 w200 h30 hwndHBT4
; ; Opt1 := [0, HPIC1]                                          ; normal image
; ; Opt2 := {2:"PIC2.jpg"}                                      ; hot image (object syntax)
; ; If !ImageButton.Create(HBT4, Opt1, Opt2)
;    MsgBox, 0, ImageButton Error Btn4, % ImageButton.LastError
; GuiControl, Focus, BT2
Gui, DummyGUI:Show, , Image Buttons
Return