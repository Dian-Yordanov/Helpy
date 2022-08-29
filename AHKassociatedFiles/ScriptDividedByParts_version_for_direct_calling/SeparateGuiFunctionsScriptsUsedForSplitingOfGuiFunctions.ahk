


GuiRestore() {
    WinRestore
    CtlShowHide("Hide", "BtnRestoreN,BtnRestoreH,BtnRestoreP")
    CtlShowHide("Show", "BtnMaxN")

}

GuiMaximize() {
    WinMaximize
    CtlShowHide("Hide", "BtnMaxN,BtnMaxH,BtnMaxP")
    CtlShowHide("Show", "BtnRestoreN")

}

CtlShowHide(ShowHide, Controls*) {
    Static K, V
    For K, V In Controls {
    Split := StrSplit(V, ",")
    Loop % Split.MaxIndex() {
    GuiControl, % ShowHide, % Split[A_Index]
        }
    }
}