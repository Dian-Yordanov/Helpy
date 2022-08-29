Gui, 1:Add, Text, xm , Write the value that the webshiter made unpasteable: 
Gui, 1:Add, Text, xm , Please note that some niggas make it so you have to run this in admin mode
Gui, 1:Add, Edit, vFirstName ; The ym option starts a new column of controls.
Gui, 1:Add, Button, gGG2 w80, Paste this
Gui, 1:Show,
return

GG2:
Gui, 1:Submit
SendInput !{Tab}
Sleep, 500
SendInput %FirstName%
return
