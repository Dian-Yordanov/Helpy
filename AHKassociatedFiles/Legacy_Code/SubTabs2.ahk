Gui, Add, Button, gtb1 w50, tab 1
Gui, Add, Button, gtb2 w50 y+30, tab 2
Gui, Add, Button, gtb3 w50 y+30, tab 3
Gui, Add, Button, gtb4 w50 y+30, tab 4

Gui, Add, Tab2,buttons w100 vTAB_BUTTON x-100, a|b|c|d  ; note that the position is x-100, so it wont show up in the gui
Gui, tab, a
Gui, Add, Checkbox, vMyCheckbox x150 y10, Sample checkbox
Gui, Tab, b
Gui, Add, Radio, vMyRadio x150 y10, Sample radio1
Gui, Add, Radio,, Sample radio2
Gui, Tab, c
Gui, Add, Edit, vMyEdit r5  x150 y10
Gui, Tab, d
Gui, Add, Text,x150 y10, Tab Four
Gui, Tab 
Gui, Add, Button, default xm, OK  
Gui, Show,w300
return

tb1:
GuiControl, Choose, TAB_BUTTON, 1
return
tb2:
GuiControl, Choose, TAB_BUTTON, 2
return
tb3:
GuiControl, Choose, TAB_BUTTON, 3
return
tb4:
GuiControl, Choose, TAB_BUTTON, 4
return