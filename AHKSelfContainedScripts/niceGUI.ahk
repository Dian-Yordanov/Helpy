#SingleInstance,Force
SetBatchLines,-1
CoordMode,Mouse,client
hover_active:=0,Press_Active:=0,hover_ctrl:=""
Gui,1:+AlwaysOnTop -Caption +LastFound
Gui,1:Add,Progress,x0 y0 w450 h715 Background1F2130
Gui,1:Font,cWhite s6 Bold q5  ,arial ;Unicode ms
Gui,1:Add,Text,x3 y3 Backgroundtrans ,10196
Gui,1:Font,cWhite s36  q5  ,Harlow Solid Italic
Gui,1:Add,Text,x419 y-15  Center Backgroundtrans ,x
Gui,1:Font,cWhite s9 Bold q5  ,arial 
Gui,1:Add,Text,x0 y38 w450 Center Backgroundtrans ,Hello Test Account
Gui,1:Font,cWhite s36 Bold q5  ,Eras Bold ITC 
Gui,1:Add,Text,cD1015B x0 y53 w450 Center Backgroundtrans ,MAIN MENU
Gui,1:Add,Text,x0 y50 w450 Center Backgroundtrans ,MAIN MENU
Gui,1:Add,Progress,x15 y109 w126 h34 Background1C1E2C c27293C ,100
Gui,1:Add,Progress,x+0 y109 w126 h34 Background1C1E2C c27293C ,100
Gui,1:Font,cWhite s14  q5  ,Corbel ;Arial ;Rounded MT Bold
Gui,1:Add,Text,x25 y115 BackgroundTrans,SUPPORT
Gui,1:Add,Text,x151 y115 BackgroundTrans,LOYALTY
Gui,1:Show,w450 h715, Testing a remake
Gui,2:+Alwaysontop +Owner1 +LastFound -Caption
Gui,2:Color, 54042A
Gui,2:Show,w450 h715
Winset,region, 0-658 450-555 450-715 0-715 ,A
Gui,3:+Alwaysontop +Owner2 +LastFound -Caption
Gui,3:Color, FB016D
Gui,3:Show,w450 h715
Winset,region, 0-680 450-577 450-715 0-715 ,A
Gui,4:+Alwaysontop +Owner3 +LastFound -Caption
Gui,4:Color,Lime
Winset,TransColor,Lime
Gui,4:Add,Progress,x15 y143 w420 h2 backgroundWhite
Gui,4:Add,Progress,x15 y143 w2 h225 backgroundWhite
Gui,4:Add,Progress,x15 y366 w420 h2 background696969
Gui,4:Add,Progress,x16 y366 w418 h1 backgroundA0A0A0
Gui,4:Add,Progress,x434 y143 w2 h225 background696969
Gui,4:Add,Progress,x434 y143 w1 h225 backgroundA0A0A0
Text1:=["INSTALL","DATA OUTAGE","QA","ADMIN","KNOCKBACK"]
Gui,4:Font,cBlack s10 w600 Q5,Arial Narrow  ;Berlin Sans FB
Y:=163,y_Off:=8,var:=1
Loop 5	{
	Gui,4:Add,Progress,x29 y%y% w121 h30 backgroundFB016D 
	Gui,4:Add,Progress,x32 y%y% w118 h30 backgroundWhite vP_%var%
	Gui,4:Add,Text,% "x42 y" y+y_Off " BackgroundTrans vPT_" var,% Text1[A_Index]
	y+=40,var++
}
Gui,4:Font,cBlack s9 Norm  Q5,Berlin Sans FB	
Text2:=["Fred Confirmation","QA Pass","Cancellation","Phone Rang Out"],Y:=203
Loop 4	{
	Gui,4:Add,Progress,x164 y%y% w121 h30 backgroundFB016D
	Gui,4:Add,Progress,x167 y%y% w118 h30 backgroundWhite vP_%var%
	Gui,4:Add,Text,% "x177 y" y+y_Off " w100 Right BackgroundTrans vPT_"var,% Text2[A_Index]
	y+=40,var++
}
Text3:=["Remote Update","Paths for AV","Email Templates"],Y:=243	
Loop 3	{
	Gui,4:Add,Progress,x298 y%y% w121 h30 backgroundFB016D
	Gui,4:Add,Progress,x301 y%y% w118 h30 backgroundWhite vP_%var%
	Gui,4:Add,Text,% "x311 y" y+y_Off " w100 Right BackgroundTrans vPT_"var,% Text3[A_Index]
	y+=40,var++
}
Gui,4:Font,
Gui,4:Font,cBlack s9 Q5 w550, Arial Unicode MS ;Berlin Sans FB
Gui,4:Add,Progress,x15 y385 w175 h30 BackgroundWhite vP_13
Gui,4:Add,Text,x23 y392  BackgroundTrans vPT_13,Process Charts
Gui,4:Add,Progress,x198 y385 w115 h30 BackgroundWhite vP_14
Gui,4:Add,Text,x206 y392  BackgroundTrans vPT_14,Macros
Gui,4:Add,Progress,x15 y421 w175 h30 BackgroundWhite vP_15
Gui,4:Add,Text,x23 y428  BackgroundTrans vPT_15,Password Generator
Gui,4:Add,Progress,x198 y421 w115 h30 BackgroundWhite vP_16
Gui,4:Add,Text,x206 y428  BackgroundTrans vPT_16,Staff Points
Gui,4:Add,Progress,x320 y385 w115 h30 BackgroundWhite vP_17
Gui,4:Add,Text,x328 y392  BackgroundTrans vPT_17,View Store Logs
Gui,4:Add,Progress,x320 y421 w115 h30 BackgroundWhite vP_18
Gui,4:Add,Text,x328 y428  BackgroundTrans vPT_18,Staff Logs
Gui,4:Font,
Gui,4:Font,cWhite s11 Q3 ,Franklin Gothic Demi  ;Estrangelo Edessa ;Arial Unicode MS ;Berlin Sans FB
Gui,4:Add,Text,x0 y478 w202 r1 BackgroundTrans Center ,RUNNING TOTAL = None :(
Gui,4:Add,Text,cCC0000 x225 y478 w225 r1 BackgroundTrans Center ,DATA OUTAGE COUNT = 0/15
Gui,4:Font,
Gui,4:Font,cWhite s11 Q5 ,Franklin Gothic Demi
Gui,4:Add,Progress,x15 y520 w80 h20 BackgroundWhite vP_19
Gui,4:Add,Text,cBlack x18 y520  BackgroundTrans vPT_19,Data Out
Gui,4:Add,Progress,x100 y520 w80 h20 BackgroundWhite vP_20
Gui,4:Add,Text,cBlack x103 y520  BackgroundTrans vPT_20,Install
Gui,4:Add,Progress,x185 y520 w80 h20 BackgroundWhite vP_21
Gui,4:Add,Text,cBlack x188 y520  BackgroundTrans vPT_21,QA
Gui,4:Add,Progress,x270 y520 w80 h20 BackgroundWhite vP_22
Gui,4:Add,Text,cBlack x273 y520  BackgroundTrans vPT_22,Till Install
Gui,4:Add,Progress,x355 y520 w80 h20 BackgroundWhite vP_23
Gui,4:Add,Text,cBlack x358 y520  BackgroundTrans vPT_23,Till Config
Gui,4:Font,
Gui,4:Font,cWhite s10 Q5 ,Franklin Gothic Demi
Gui,4:Add,Progress,x270 y670 w165 h30 BackgroundWhite vP_24
Gui,4:Add,Text,cBlack x275 y677  BackgroundTrans vPT_24,Exit
Gui,4:Show,w450 h715
Gui,5:+AlwaysOnTop -Caption +LastFound +Owner4
Gui,5:Color,White
Winset,Transparent,1
;overlay
Gui,5:Font,cBlack s6 q1 
Gui,5:Add,Text,x0 y0 w400 h50 Border gMove_Windows , gMove_Windows
Gui,5:Add,Text,x420 y0 w30 h30 Border gGuiClose ,Close
Gui,5:Add,Text,x15 y109 w126 h34 Border , Not using
Gui,5:Add,Text,x+0 y109 w126 h34 Border , Not Using
Y:=163,var:=1
Loop 5	{
	Gui,5:Add,Text,x29 y%y% w121 h30 Border vT_%var% gShow_Control,vT_%var% gShow_Control
	y+=40,var++	
} Y:=203
Loop 4	{
	Gui,5:Add,Text,x164 y%y% w121 h30 Border vT_%var% gShow_Control,vT_%var% gShow_Control
	y+=40,var++
} Y:=243	
Loop 3	{
	Gui,5:Add,Text,x298 y%y% w121 h30 Border vT_%var% gShow_Control ,vT_%var% gShow_Control
	y+=40,var++
}
Gui,5:Add,Text,x15 y385 w175 h30 Border  vT_13 gShow_Control, vT_13 gShow_Control
Gui,5:Add,Text,x198 y385 w115 h30 Border vT_14 gShow_Control, vT_14 gShow_Control
Gui,5:Add,Text,x15 y421 w175 h30 Border vT_15 gShow_Control, vT_15 gShow_Control
Gui,5:Add,Text,x198 y421 w115 h30 Border vT_16 gShow_Control, vT_16 gShow_Control
Gui,5:Add,Text,x320 y385 w115 h30 Border vT_17 gShow_Control, vT_17 gShow_Control
Gui,5:Add,Text,x320 y421 w115 h30 Border vT_18 gShow_Control, vT_18 gShow_Control
Gui,5:Add,Text,x15 y520 w80 h20 Border vT_19 gShow_Control, vT_19 gShow_Control
Gui,5:Add,Text,x100 y520 w80 h20 Border vT_20 gShow_Control, vT_20 gShow_Control
Gui,5:Add,Text,x185 y520 w80 h20 Border vT_21 gShow_Control, vT_21 gShow_Control
Gui,5:Add,Text,x270 y520 w80 h20 Border vT_22 gShow_Control, vT_22 gShow_Control
Gui,5:Add,Text,x355 y520 w80 h20 Border vT_23 gShow_Control, vT_23 gShow_Control
Gui,5:Add,Text,x270 y670 w165 h30 Border vT_24 gExit_Script, vT_24 gExit_Script
Gui,5:Show,w450 h715,Top Layer Window Overlay
SetTimer,Button_Hover,60
return
GuiClose:
5GuiEscape:
*^ESC::
	ExitApp
Button_Hover:
	if(Press_Active=0){
		if(WinActive("Top Layer Window Overlay")){
			MouseGetPos,,,,ctrl,2
			GuiControlGet,cName,5:Name,% ctrl
			if(Hover_Active=0){
				MouseGetPos,,,,ctrl,2
				GuiControlGet,cName,5:Name,% ctrl
				loop 24	{
					if(cName="T_" A_Index){
						if(A_Index>=10)
							StringRight,tt,cName,2
						else 	
							StringRight,tt,cName,1
						GuiControl,4:+Background00aaff,P_%tt%
						GuiControl,4:+Redraw,PT_%tt%
						Hover_Active:=1
						GuiControlGet,cpos,5:pos,% cName		
					}
				}
			}
		}	
		if(Hover_Active=1){
			MouseGetPos,x,y,,ctrl,2
			GuiControlGet,cName,5:Name,% ctrl
			if((x<cposx||x>cposx+cposw||y<cposy||y>cposy+cposh)){
				GuiControl,4:+BackgroundWhite,P_%tt%
				GuiControl,4:+Redraw,PT_%tt%
				Hover_Active:=0,Hover_Ctrl:=""
			}		
		}
	}	
	return
Exit_Script:
	Press_Active:=1
	GuiControl,4:+Background33ff33,P_24
	GuiControl,4:+Redraw,PT_24
	While(GetKeyState("LButton"))
			sleep,10
	MouseGetPos,,,,ctrl,2
	GuiControlGet,cName,5:Name,% ctrl
	if(cName="T_24"){
		GuiControl,4:+Background00aaff,P_24
		GuiControl,4:+Redraw,PT_24
		Hover_Active:=1
		GuiControlGet,cpos,5:pos,% cName
	}else	{
		GuiControl,4:+BackgroundWhite,P_24
		GuiControl,4:+Redraw,PT_24
		Press_Active:=0	
		return
	}
	Press_Active:=0	
	Loop 500
		ToolTip,% A_Index
	Tooltip
	gosub, guiclose
	return
Show_Control:
	if(Strlen(A_GuiControl)=3)
		StringRight,temp,A_GuiControl,1
	else
		StringRight,temp,A_GuiControl,2
	Press_Active:=1
	GuiControl,4:+Background33ff33,P_%temp%
	GuiControl,4:+Redraw,PT_%temp%
	While(GetKeyState("LButton"))
		sleep,10
	MouseGetPos,,,,ctrl,2
	GuiControlGet,cName,5:Name,% ctrl
	if(cName=A_GuiControl){
		GuiControl,4:+Background00aaff,P_%temp%
		GuiControl,4:+Redraw,PT_%temp%
		Hover_Active:=1
		GuiControlGet,cpos,5:pos,% cName
	}else	{
		GuiControl,4:+BackgroundWhite,P_%temp%
		GuiControl,4:+Redraw,PT_%temp%
		Press_Active:=0	
		return
	}
	Press_Active:=0	
	GuiControlGet,text,4:,PT_%temp%
	TrayTip,Button Text,% Text,1
	return
Move_Windows:
	PostMessage,0xA1,2
	While(GetKeyState("LButton"))
		Sleep,10
	WinGetPos,x,y,,,Top Layer Window Overlay
	Loop, 4
		Gui,%A_Index%:Show,x%x% y%y%
	winactivate,Top Layer Window Overlay
	return
	