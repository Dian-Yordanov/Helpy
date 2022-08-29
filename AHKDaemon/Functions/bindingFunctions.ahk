ifOnTheTopOfTheScreen(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 10
ScreenHeight := 10
Sleep,1
If (xpos <> 960)
{
    If (ScreenHeight >= ypos)
    {
    return true
    }
}
return false
}

ifInScreenMiddle(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenWidth2 := A_ScreenWidth - 5
ScreenHeight := 5
Sleep,1
If (xpos <> 960)
{
    If (ScreenWidth <= xpos)
    {
        If (ScreenWidth2 >= xpos)
            { 
                return true
            }
    }
}
return false
}

ifInLeftEdge(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth >= xpos)
{
return true
}
return false
}

ifInRightEdge(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := A_ScreenWidth - 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth <= xpos)
{
return true
}
return false
}
ifInCorner(){
WinActivate ahk_id %previous_ID%
CoordMode, Mouse, Screen
MouseGetPos, xpos, ypos
Sleep,1
ScreenWidth := 5
ScreenHeight := 5
Sleep,1
If (ScreenWidth >= xpos)
{
  If (ScreenHeight >= ypos)
    {
      return true
    }
}

ScreenWidth := 5
ScreenHeight := A_ScreenHeight - 10
If (ScreenWidth >= xpos)
{
  If (ScreenHeight <= ypos)
    {
      return true
    }
}

ScreenWidth := A_ScreenWidth - 5
ScreenHeight := 5
If (ScreenWidth <= xpos)
{
  If (ScreenHeight >= ypos)
    {
      return true
    }
}

ScreenWidth := A_ScreenWidth - 5
ScreenHeight := A_ScreenHeight - 10
If (ScreenWidth <= xpos)
{
  If (ScreenHeight <= ypos)
    {
      return true
    }
}

; }
return false
}