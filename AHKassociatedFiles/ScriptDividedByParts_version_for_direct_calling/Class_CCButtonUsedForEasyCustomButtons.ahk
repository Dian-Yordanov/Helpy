; ======================================================================================================================
; Namespace:      CCButton
; Function:       Helper class for colored captions on themed pushbuttons.
; AHK version:    1.1.09.04 (U32)
; Language:       English
; Version:        1.0.00.00/2013-04-27/just me
; ======================================================================================================================
; How to use:     To register a GUI pushbutton call
;                    CCButton.Attach()
;                    passing two parameters:
;                    Hwnd  - HWND of the GUI control                                            (Integer)
;                    Color - HTML color name or RGB color value (RRGGBB)                        (String/Integer)
;                 To unregister a button call
;                    CCButton.Detach()
;                    passing one parameter:
;                    Hwnd  - see above
; Remarks:        All attached buttons will be subclassed.
; Advantages:     Properly drawn coloured captions on themed pushbuttons.
;                 No pale borders on coloured backgrounds.
; Disadvantages:  Loss of animation on button state changes and certain states (Vista+).
; ======================================================================================================================
; This software is provided 'as-is', without any express or implied warranty.
; In no event will the authors be held liable for any damages arising from the use of this software.
; ======================================================================================================================
Class CCButton {
   ; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ; PRIVATE Properties and Methods ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   Static AttachedBtns := {}
   Static SubclassProc := ""
   ; ===================================================================================================================
   ; This class is only a helper object, you must not instantiate it.
   ; ===================================================================================================================
   __New() {
      Return False
   }
   ; ===================================================================================================================
   ; PTIVATE METHOD ColorCaption
   ; ===================================================================================================================
   ColorCaption(HWND, TxtColor) {
      ; ----------------------------------------------------------------------------------------------------------------
      ; Messages
      Static WM_GETFONT := 0x31, BM_GETSTATE := 0xF2
      ; Styles
      Static BS_DEFPUSHBUTTON := 0x01, BS_LEFT := 0x0100, BS_RIGHT := 0x0200, BS_CENTER := 0x0300, BS_TOP := 0x0400
           , BS_BOTTOM := 0x0800, BS_VCENTER := 0x0C00, WS_DISABLED := 0x08000000
      ; States
      Static BST_FOCUS := 0x08, BST_HOT := 0x0200, BST_PUSHED := 0x04
      ; PushButton PartID & StateIDs
      Static BP_PUSHBUTTON := 1, PBS_NORMAL := 1, PBS_HOT := 2, PBS_PRESSED := 3, PBS_DISABLED := 4, PBS_DEFAULTED := 5
      ; DrawText format flags
      Static DT_LEFT := 0x00, DT_TOP := 0x00, DT_CENTER := 0x01, DT_RIGHT := 0x02, DT_VCENTER := 0x04
           , DT_BOTTOM := 0x08, DT_WORDBREAK := 0x10, DT_SINGLELINE := 0x20, DT_NOCLIP := 0x0100, DT_CALCRECT := 0x0400
      ; ----------------------------------------------------------------------------------------------------------------
      ; Critical
      SetWinDelay, 0
      SetControlDelay, 0
      HTHEME := This.AttachedBtns[HWND]
      ControlGet, BS, Style, , , ahk_id %HWND%
      If (BS & WS_DISABLED)
         TxtColor := DllCall("UxTheme.dll\GetThemeSysColor", "Ptr", HTHEME, "Int", 17, "UInt")
      HFONT := DllCall("User32.dll\SendMessage", "Ptr", HWND, "Int", WM_GETFONT, "Ptr", 0, "Ptr", 0)
      BST := DllCall("User32.dll\SendMessage", "Ptr", HWND, "Int", BM_GETSTATE, "Ptr", 0, "Ptr", 0)
      STID := (BS & WS_DISABLED) ? PBS_DISABLED : (BST & BST_PUSHED) ? PBS_PRESSED : (BST & BST_HOT) ? PBS_HOT
            : (BS & BS_DEFPUSHBUTTON) ? PBS_DEFAULTED : PBS_NORMAL
      VarSetCapacity(PAINTSTRUCT, (4 * 16) + (2 * (A_PtrSize - 4)), 0)
      HDC := DllCall("User32.dll\BeginPaint", "Ptr", HWND, "Ptr", &PAINTSTRUCT, "Ptr")
      CTLRECT := &PAINTSTRUCT + A_PtrSize + 4
      CH := NumGet(CTLRECT + 0, 12, "Int")
      VarSetCapacity(TXTRECT, 16, 0)
      DllCall("UxTheme.dll\GetThemeBackgroundContentRect", "Ptr", HTHEME, "Ptr", HDC, "Int", BP_PUSHBUTTON, "Int", STID
            , "Ptr", CTLRECT, "Ptr", &TXTRECT)
      TW := NumGet(TXTRECT,  8, "Int") - NumGet(TXTRECT, 0, "Int")
      TH := NumGet(TXTRECT, 12, "Int") - NumGet(TXTRECT, 4, "Int")
      TB := NumGet(TXTRECT, 12, "Int")
      DllCall("UxTheme.dll\DrawThemeParentBackground", "Ptr", HWND, "Ptr", HDC, "Ptr", CTLRECT)
      DllCall("UxTheme.dll\DrawThemeBackground", "Ptr", HTHEME, "Ptr", HDC, "Int", BP_PUSHBUTTON, "Int", STID
            , "Ptr", CTLRECT, "Ptr", 0)
      ; ----------------------------------------------------------------------------------------------------------------
      ;GDI DrawText() draws the caption.
      ControlGetText, BtnText, , ahk_id %HWND%
      DllCall("Gdi32.dll\SelectObject", "Ptr", HDC, "UInt", HFONT)
      DllCall("Gdi32.dll\SetBkMode", "Ptr", HDC, "Int", 1)
      DllCall("Gdi32.dll\SetTextColor", "Ptr", HDC, "UInt", TxtColor)
      DT_ALIGN := (BS & BS_CENTER) = BS_CENTER ? DT_CENTER : (BS & BS_CENTER) = BS_RIGHT ? DT_RIGHT
                 : (BS & BS_CENTER) = BS_LEFT ? DT_LEFT : DT_CENTER
      DT_ALIGN |= DT_WORDBREAK
      VC := BS & BS_VCENTER
      If (VC = BS_VCENTER) Or (VC = BS_BOTTOM) OR (VC = 0) {
         VarSetCapacity(RECT, 16, 0)
         NumPut(TW, RECT, 8, "Int"), NumPut(TH, RECT, 12, "Int")
         DllCall("User32.dll\DrawText", "Ptr", HDC, "Str", BtnText, "Int", -1, "Ptr", &RECT
               , "UInt", DT_ALIGN | DT_CALCRECT)
         H := NumGet(RECT, 12, "Int")
         If (VC = BS_BOTTOM)
            NumPut(TB - H, TXTRECT, 4, "Int")
         Else If (H < CH)
            NumPut((CH - H) // 2, TXTRECT, 4, "Int")
      }
      DllCall("User32.dll\DrawText", "Ptr", HDC, "Str", BtnText, "Int", -1, "Ptr", &TXTRECT
            , "UInt", DT_ALIGN)
      ; ----------------------------------------------------------------------------------------------------------------
      DllCall("User32.dll\EndPaint", "Ptr", HWND, "Ptr", &PAINTSTRUCT)
      Return True
   }
   ; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ; PUBLIC Interface ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   ; ===================================================================================================================
   ; METHOD Attach         Register button for coloring
   ; Parameters:           Hwnd        - HWND of the button                                        (Integer)
   ;                       Color       - HTML color name or RGB color value (RRGGBB)               (String/Integer)
   ; Return values:        On success  - True
   ;                       On failure  - False
   ; ===================================================================================================================
   Attach(HWND, Color) {
      Static HTML := {BLACK:  0x000000, GRAY:    0x808080, SILVER: 0xC0C0C0, WHITE: 0xFFFFFF, MAROON: 0x800000
                    , PURPLE: 0x800080, FUCHSIA: 0xFF00FF, RED:    0xFF0000, GREEN: 0x008000, OLIVE:  0x808000
                    , YELLOW: 0xFFFF00, LIME:    0x00FF00, NAVY:   0x000080, TEAL:  0x008080, AQUA:   0x00FFFF
                    , BLUE:   0x0000FF}
      If (This.SubclassProc = "") {
         If !(This.SubclassProc := RegisterCallback("CCButtonSubclassProc"))
            Return False
      }
      If !DllCall("User32.dll\IsWindow", "Ptr", HWND, "UPtr")
         Return False
      If HTML.HasKey(Color)
         Color := HTML[Color]
      Color := ((Color & 0xFF) << 16) | (Color & 0xFF00) | ((Color & 0xFF0000) >> 16)
      If This.AttachedBtns.HasKey(HWND)
         This.Detach(HWND)
      ; Only themed buttons will be colored
      If !(HTHEME := DllCall("UxTheme.dll\OpenThemeData", "Ptr", HWND, "WStr", "Button", "Ptr"))
         Return False
      If !DllCall("Comctl32.dll\SetWindowSubclass", "Ptr", HWND, "Ptr", This.SubclassProc, "Ptr", HWND, "Ptr", Color) {
         DllCall("UxTheme.dll\CloseThemeData", "Ptr", HTHEME)
         Return False
      }
      This.AttachedBtns[HWND] := HTHEME
      WinSet, Redraw, , ahk_id %HWND%
      Return True
   }
   ; ===================================================================================================================
   ; METHOD Detach         Remove button
   ; Parameters:           Hwnd        - HWND of the button                                        (Integer)
   ; Return values:        On success  - True
   ;                       On failure  - False
   ; ===================================================================================================================
   Detach(HWND) {
      If This.AttachedBtns.HasKey(HWND) {
         DllCall("UxTheme.dll\CloseThemeData", "Ptr", This.AttachedBtns[HWND])
         This.AttachedBtns.Remove(HWND, "")
         DllCall("Comctl32.dll\RemoveWindowSubclass", "Ptr", HWND, "Ptr", This.SubclassProc, "Ptr", HWND)
         WinSet, Redraw, , ahk_id %HWND%
         Return True
      }
      Return False
   }
}
; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; PRIVATE Functions ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CCButtonSubclassProc(Hwnd, Message, wParam, lParam, IdSubclass, RefData) {
   Static WM_DESTROY := 0x02, WM_PAINT := 0x0F
   If (Message = WM_PAINT) {
      If CCButton.ColorCaption(Hwnd, RefData)
         Return 0
   }
   If (Message = WM_DESTROY)
      CCButton.Detach(HWND)
   Return DllCall("Comctl32.dll\DefSubclassProc", "Ptr", Hwnd, "UInt", Message, "Ptr", wParam, "Ptr", lParam)
}
; ======================================================================================================================