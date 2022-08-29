OnMessage(0x115, "OnScroll") ; WM_VSCROLL
OnMessage(0x114, "OnScroll") ; WM_HSCROLL

UpdateScrollBars(GuiNum, GuiWidth, GuiHeight)
{
    static SIF_RANGE=0x1, SIF_PAGE=0x2, SIF_DISABLENOSCROLL=0x8, SB_HORZ=0, SB_VERT=1
       
    Gui, %GuiNum%:Default
    Gui, +LastFound
   
    ; Calculate scrolling area.
    Left := Top := 99999
    Right := Bottom := 0
    WinGet, ControlList , ControlList
    Loop, Parse, ControlList , `n
    {
        If (A_LoopField == "msctls_statusbar321")
            continue
        ControlGet, hControl, Hwnd,, %A_LoopField%
        ControlGetPos, cX, cY, cW, cH,, ahk_id %hControl%
        if (cX < Left)
            Left := cX
        if (cY < Top)
            Top := cY
        if (cX + cW > Right)
            Right := cX + cW
        if (cY + cH > Bottom)
            Bottom := cY + cH
    }
    WinGetPos, wX, wY, wW, wH
    VarSetCapacity(point, 8, 0)
    DllCall("ClientToScreen", "Ptr", WinExist(), "Ptr", &point)
    clientX := NumGet(point, 0, "Int")
    clientY := NumGet(point, 4, "Int")
    Left -= clientX - wX
    Top -= clientY - wY
    Right -= clientX - wX
    Bottom -= clientY - wY
    ScrollWidth := Right-Left
    ScrollHeight := Bottom-Top
    ; Initialize SCROLLINFO.
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_RANGE | SIF_PAGE, si, 4) ; fMask
   
    ; Update horizontal scroll bar.
    NumPut(ScrollWidth, si, 12) ; nMax
    NumPut(GuiWidth, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_HORZ, "uint", &si, "int", 1)
   
    ; Update vertical scroll bar.
;     NumPut(SIF_RANGE | SIF_PAGE | SIF_DISABLENOSCROLL, si, 4) ; fMask
    NumPut(ScrollHeight, si, 12) ; nMax
    NumPut(GuiHeight, si, 16) ; nPage
    DllCall("SetScrollInfo", "uint", WinExist(), "uint", SB_VERT, "uint", &si, "int", 1)
   
    if (Left < 0 && Right < GuiWidth)
        x := Abs(Left) > GuiWidth-Right ? GuiWidth-Right : Abs(Left)
    if (Top < 0 && Bottom < GuiHeight)
        y := Abs(Top) > GuiHeight-Bottom ? GuiHeight-Bottom : Abs(Top)
    If (Left >= 0)
        x := GuiWidth > ScrollWidth ? (GuiWidth - ScrollWidth)/2 - Left : -Left
    If (Top >= 0)
        y := GuiHeight > ScrollHeight ? (GuiHeight - ScrollHeight)/2 - Top : -Top
    if (x || y)
        DllCall("ScrollWindow", "uint", WinExist(), "int", x, "int", y, "uint", 0, "uint", 0)
}

OnScroll(wParam, lParam, msg, hwnd)
{
    static SIF_ALL=0x17, SCROLL_STEP=10
   
    bar := msg=0x115 ; SB_HORZ=0, SB_VERT=1
   
    VarSetCapacity(si, 28, 0)
    NumPut(28, si) ; cbSize
    NumPut(SIF_ALL, si, 4) ; fMask
    if !DllCall("GetScrollInfo", "uint", hwnd, "int", bar, "uint", &si)
        return
   
    VarSetCapacity(rect, 16)
    DllCall("GetClientRect", "uint", hwnd, "uint", &rect)
   
    new_pos := NumGet(si, 20) ; nPos
   
    action := wParam & 0xFFFF
    if action = 0 ; SB_LINEUP
        new_pos -= SCROLL_STEP
    else if action = 1 ; SB_LINEDOWN
        new_pos += SCROLL_STEP
    else if action = 2 ; SB_PAGEUP
        new_pos -= NumGet(rect, 12, "int") - SCROLL_STEP
    else if action = 3 ; SB_PAGEDOWN
        new_pos += NumGet(rect, 12, "int") - SCROLL_STEP
    else if (action = 5 || action = 4) ; SB_THUMBTRACK || SB_THUMBPOSITION
        new_pos := wParam>>16
    else if action = 6 ; SB_TOP
        new_pos := NumGet(si, 8, "int") ; nMin
    else if action = 7 ; SB_BOTTOM
        new_pos := NumGet(si, 12, "int") ; nMax
    else
        return
   
    min := NumGet(si, 8, "int") ; nMin
    max := NumGet(si, 12, "int") - NumGet(si, 16) ; nMax-nPage
    new_pos := new_pos > max ? max : new_pos
    new_pos := new_pos < min ? min : new_pos
   
    old_pos := NumGet(si, 20, "int") ; nPos
   
    x := y := 0
    if bar = 0 ; SB_HORZ
        x := old_pos-new_pos
    else
        y := old_pos-new_pos
    ; Scroll contents of window and invalidate uncovered area.
    DllCall("ScrollWindow", "uint", hwnd, "int", x, "int", y, "uint", 0, "uint", 0)
    ; Move status bar
    ControlGetPos, cX, cY, cW, cH, msctls_statusbar321, ahk_id %hwnd%
    sX := cX - x
    sY := cY - y
    ControlMove, msctls_statusbar321, sX, sY,,, ahk_id %hwnd%
    ; Update scroll bar.
    NumPut(new_pos, si, 20, "int") ; nPos
    DllCall("SetScrollInfo", "uint", hwnd, "int", bar, "uint", &si, "int", 1)
}