F8::
if WinExist("ActivateMouseClicker")
    {
        SetTimer, ClickClick , Off
        GuiControlGet, Holdtoclick, 29:
        if(Holdtoclick==1)
        {
            domino66Click()
        }
        else
        {
            While GetKeyState("F8", "P")
            {
                Click
                Sleep 50 ;  milliseconds
            }
        }
    }
else
    SendInput {F8}
return

domino66Click(Interval=0.00000005){
   static Toggler
   Toggler := !Toggler
   TPer := Toggler ? Interval : "off"
   SetTimer, ClickClick, %TPer%
   return
   ClickClick:
   Click
   return
}
return