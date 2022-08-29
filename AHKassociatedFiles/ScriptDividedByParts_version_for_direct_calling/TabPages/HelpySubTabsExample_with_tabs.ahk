gui, Example_with_tabs_:add, text, vLineA h55 0x11  ;Vertical Line > Etched Gray
gui, Example_with_tabs_:add, text, vLineB h55 0x11  ;Vertical Line > Etched Gray
gui, Example_with_tabs_:add, text, vLineC h55 0x11  ;Vertical Line > Etched Gray
gui, Example_with_tabs_:add, text, vLineD h55 0x11  ;Vertical Line > Etched Gray
gui, Example_with_tabs_:add, text, vLineE h55 0x11  ;Vertical Line > Etched Gray

Gui, Example_with_tabs_:Font, s11, Segoe UI
Gui, Example_with_tabs_:Add, Text, cWhite vMenuTextExperimentsSubTabs1 HwndhMenuTextExperimentsSubTabs1 BackgroundTrans 0x200, % "  Experiments page 1"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuTextExperimentsSubTabs2 HwndhMenuTextExperimentsSubTabs2 BackgroundTrans 0x200, % "  Experiments page 2"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuTextExperimentsSubTabs3 HwndhMenuTextExperimentsSubTabs3 BackgroundTrans 0x200, % "  Experiments page 3"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuTextExperimentsSubTabs4 HwndhMenuTextExperimentsSubTabs4 BackgroundTrans 0x200, % "  Experiments page 4"
Gui, Example_with_tabs_:Add, Text, cWhite vMenuTextExperimentsSubTabs5 HwndhMenuTextExperimentsSubTabs5 BackgroundTrans 0x200, % "  Removed old code page"

GuiControlGet, MenuTextExperimentsSubTabs1PosInitial , Example_with_tabs_:Pos, MenuTextExperimentsSubTabs1 
GuiControlGet, MenuTextExperimentsSubTabs2PosInitial , Example_with_tabs_:Pos, MenuTextExperimentsSubTabs2
GuiControlGet, MenuTextExperimentsSubTabs3PosInitial , Example_with_tabs_:Pos, MenuTextExperimentsSubTabs3 
GuiControlGet, MenuTextExperimentsSubTabs4PosInitial , Example_with_tabs_:Pos, MenuTextExperimentsSubTabs4
GuiControlGet, MenuTextExperimentsSubTabs5PosInitial , Example_with_tabs_:Pos, MenuTextExperimentsSubTabs5

GuiControl, Example_with_tabs_:MoveDraw, MenuTextExperimentsSubTabs1, % "x" 1 " y" 56 " w" MenuText1PosInitialW+80 " h" 48
GuiControlGet, MenuTextExperimentsSubTabs1Pos, Example_with_tabs_:Pos, MenuTextExperimentsSubTabs1  
GuiControl, Example_with_tabs_:MoveDraw, MenuTextExperimentsSubTabs2, % "x" MenuTextExperimentsSubTabs1PosX + MenuTextExperimentsSubTabs1PosW " y" 56 " w" MenuTextExperimentsSubTabs2PosInitialW+10 " h" 48
GuiControlGet, MenuTextExperimentsSubTabs2Pos, Example_with_tabs_:Pos, MenuTextExperimentsSubTabs2  
GuiControl, Example_with_tabs_:MoveDraw, MenuTextExperimentsSubTabs3, % "x" MenuTextExperimentsSubTabs2PosX + MenuTextExperimentsSubTabs2PosW " y" 56 " w" MenuTextExperimentsSubTabs3PosInitialW+10 " h" 48
GuiControlGet, MenuTextExperimentsSubTabs3Pos, Example_with_tabs_:Pos, MenuTextExperimentsSubTabs3  
GuiControl, Example_with_tabs_:MoveDraw, MenuTextExperimentsSubTabs4, % "x" MenuTextExperimentsSubTabs3PosX + MenuTextExperimentsSubTabs3PosW " y" 56 " w" MenuTextExperimentsSubTabs4PosInitialW+10 " h" 48
GuiControlGet, MenuTextExperimentsSubTabs4Pos, Example_with_tabs_:Pos, MenuTextExperimentsSubTabs4
GuiControl, Example_with_tabs_:MoveDraw, MenuTextExperimentsSubTabs5, % "x" MenuTextExperimentsSubTabs4PosX + MenuTextExperimentsSubTabs4PosW " y" 56 " w" MenuTextExperimentsSubTabs5PosInitialW+10 " h" 48
GuiControlGet, MenuTextExperimentsSubTabs5Pos, Example_with_tabs_:Pos, MenuTextExperimentsSubTabs5

MenuTextExperimentsSubTabs1PosX := MenuTextExperimentsSubTabs1PosX+MenuTextExperimentsSubTabs1PosW-1
MenuTextExperimentsSubTabs1PosY := MenuTextExperimentsSubTabs1PosY
GuiControl, Example_with_tabs_:MoveDraw, LineA, % "x" MenuTextExperimentsSubTabs1PosX " y" MenuTextExperimentsSubTabs1PosY

MenuTextExperimentsSubTabs2PosX := MenuTextExperimentsSubTabs2PosX+MenuTextExperimentsSubTabs2PosW-1
MenuTextExperimentsSubTabs2PosY := MenuTextExperimentsSubTabs2PosY
GuiControl, Example_with_tabs_:MoveDraw, LineB, % "x" MenuTextExperimentsSubTabs2PosX " y" MenuTextExperimentsSubTabs2PosY

MenuTextExperimentsSubTabs3PosX := MenuTextExperimentsSubTabs3PosX+MenuTextExperimentsSubTabs3PosW-1
MenuTextExperimentsSubTabs3PosY := MenuTextExperimentsSubTabs3PosY
GuiControl, Example_with_tabs_:MoveDraw, LineC, % "x" MenuTextExperimentsSubTabs3PosX " y" MenuTextExperimentsSubTabs3PosY

MenuTextExperimentsSubTabs4PosX := MenuTextExperimentsSubTabs4PosX+MenuTextExperimentsSubTabs4PosW-1
MenuTextExperimentsSubTabs4PosY := MenuTextExperimentsSubTabs4PosY
GuiControl, Example_with_tabs_:MoveDraw, LineD, % "x" MenuTextExperimentsSubTabs4PosX " y" MenuTextExperimentsSubTabs4PosY

MenuTextExperimentsSubTabs5PosX := MenuTextExperimentsSubTabs5PosX+MenuTextExperimentsSubTabs5PosW-1
MenuTextExperimentsSubTabs5PosY := MenuTextExperimentsSubTabs5PosY
GuiControl, Example_with_tabs_:MoveDraw, LineE, % "x" MenuTextExperimentsSubTabs5PosX " y" MenuTextExperimentsSubTabs5PosY


Gui, Example_with_tabs_:Add, Text, x10 y108 w1280 0x10  ;Horizontal Line > Etched Gray
; Gui, Example_with_tabs_:Add, Tab2, vExperimentsSubTabs x0 y10 w0 h0 +Theme -Wrap AltSubmit Choose1 xp+50, a|b|c|d ; note that the position is x-100, so it wont show up in the gui
Gui, Example_with_tabs_:Font, s8, Verdana
; Gui, Example_with_tabs_:tab, a
Gui, Example_with_tabs_:Add, Text,   w0 h0 x20 yp+8,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Button, xm                  gTEST                    vTEST                            x20 yp+10,Test
Gui, Example_with_tabs_:Add, Button, xm                  gTESTMsgbox              vTESTMsgbox                      x20 yp+25,TESTMsgbox
Gui, Example_with_tabs_:Add, Button, xm                  gIFTTTsimpleFunction     vIFTTTsimpleFunction             x20 yp+25,IFTTT
Gui, Example_with_tabs_:Add, Button, xm                  gSearch                  vSearch                          x20 yp+25,Search
Gui, Example_with_tabs_:Add, Button, xm                  gSpreedThat              vSpreedThat                      x20 yp+25,SpreedThat
Gui, Example_with_tabs_:Add, Button, xm                  gDoubleSearch            vDoubleSearch                    x20 yp+25,DoubleSearch
Gui, Example_with_tabs_:Add, Button, xm                  gSaveInfo                vSaveInfo                        x20 yp+25,SaveInfo
Gui, Example_with_tabs_:Add, Button, xm                  gBooleanLaunch           vBooleanLaunch                   x20 yp+25,BooleanLaunch
Gui, Example_with_tabs_:Add, Button, xm                  gMPLaunchTL              vMPLaunchTL                      x20 yp+25,TopLeft
Gui, Example_with_tabs_:Add, Button, %k_Position%        gMPLaunchTR              vMPLaunchTR                      x20 yp+25,TopRight
Gui, Example_with_tabs_:Add, Button, xm                  gMPLaunchBL              vMPLaunchBL                      x20 yp+25 ,BotLeft
Gui, Example_with_tabs_:Add, Button, %k_Position%        gMPLaunchBR              vMPLaunchBR                      x20 yp+25 ,BotRight
Gui, Example_with_tabs_:Add, Button, xm                  gSwitchWindow            vSwitchWindow                    x20 yp+25,SwitchWindow
Gui, Example_with_tabs_:Add, Button, xm                  gSpreedThatArticle       vSpreedThatArticle               x20 yp+25,SpreedThatArticle
Gui, Example_with_tabs_:Add, Button, xm                  gtesttest                vtesttest                        x20 yp+25,imagetest
; Gui, Example_with_tabs_:Add, Button, %k_Position%        gRunMasterPassword       vRunMasterPassword               ,RunMasterPassword
; Gui, Example_with_tabs_:Add, Button, %k_Position%        gRunCliMasterPassword    vRunCliMasterPassword            ,RunCliMasterPassword

Show_tab_1_gui_elements(){
   GuiControl, Example_with_tabs_:Show, TEST                 
   GuiControl, Example_with_tabs_:Show, TESTMsgbox           
   GuiControl, Example_with_tabs_:Show, IFTTTsimpleFunction  
   GuiControl, Example_with_tabs_:Show, Search           
   GuiControl, Example_with_tabs_:Show, SpreedThat           
   GuiControl, Example_with_tabs_:Show, DoubleSearch         
   GuiControl, Example_with_tabs_:Show, SaveInfo             
   GuiControl, Example_with_tabs_:Show, BooleanLaunch        
   GuiControl, Example_with_tabs_:Show, MPLaunchTL           
   GuiControl, Example_with_tabs_:Show, MPLaunchTR           
   GuiControl, Example_with_tabs_:Show, MPLaunchBL           
   GuiControl, Example_with_tabs_:Show, MPLaunchBR           
   GuiControl, Example_with_tabs_:Show, SwitchWindow         
   GuiControl, Example_with_tabs_:Show, SpreedThatArticle    
   GuiControl, Example_with_tabs_:Show, testtest             
   ; GuiControl, Example_with_tabs_:Show, RunMasterPassword    
   ; GuiControl, Example_with_tabs_:Show, RunCliMasterPassword 
}

Hide_tab_1_gui_elements(){
   GuiControl, Example_with_tabs_:Hide, TEST                 
   GuiControl, Example_with_tabs_:Hide, TESTMsgbox           
   GuiControl, Example_with_tabs_:Hide, IFTTTsimpleFunction  
   GuiControl, Example_with_tabs_:Hide, Search           
   GuiControl, Example_with_tabs_:Hide, SpreedThat           
   GuiControl, Example_with_tabs_:Hide, DoubleSearch         
   GuiControl, Example_with_tabs_:Hide, SaveInfo             
   GuiControl, Example_with_tabs_:Hide, BooleanLaunch        
   GuiControl, Example_with_tabs_:Hide, MPLaunchTL           
   GuiControl, Example_with_tabs_:Hide, MPLaunchTR           
   GuiControl, Example_with_tabs_:Hide, MPLaunchBL           
   GuiControl, Example_with_tabs_:Hide, MPLaunchBR           
   GuiControl, Example_with_tabs_:Hide, SwitchWindow         
   GuiControl, Example_with_tabs_:Hide, SpreedThatArticle    
   GuiControl, Example_with_tabs_:Hide, testtest             
   ; GuiControl, Example_with_tabs_:Hide, RunMasterPassword    
   ; GuiControl, Example_with_tabs_:Hide, RunCliMasterPassword 
}








; Gui, Example_with_tabs_:Tab, b
Gui, Example_with_tabs_:Add, Text, w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Text, w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Button, xm            gDateOfScript                 vDateOfScript                 Hidden1 x20 yp+25,DateOfScript
Gui, Example_with_tabs_:Add, Button, xm            gDate                         vDate                         Hidden1 x20 yp+25,Date
Gui, Example_with_tabs_:Add, Button, xm            gSearchForAStringInFiles      vSearchForAStringInFiles      Hidden1 x20 yp+25,SearchForAStringInFiles
Gui, Example_with_tabs_:Add, Button, xm            gEditBoxToShowRandomString    vEditBoxToShowRandomString    Hidden1 x20 yp+25,RandomGenerationFunction

; global BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; global BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; global TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)
; BkColor2   := 0x800000   ; Background Color | BGR (BLUE - GREEN - RED)
; BkColor   := 0x800080   ; Background Color | BGR (BLUE - GREEN - RED)
; TxColor   := 0xFFFFFF    ; Text Color       | BGR (BLUE - GREEN - RED)

; OnMessage(0x0138, "WM_CTLCOLOR")    ; WM_CTLCOLORSTATIC
; OnMessage(0x0133, "WM_CTLCOLOR2")    ; WM_CTLCOLOREDIT
; OnMessage(0x0132, "WM_CTLCOLOR3")    ; WM_CTLCOLOREDIT

; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_1                         Hidden1 xm w100 ReadOnly  x20 yp+25,         ReadWrite
; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_2                         Hidden1 xm w100 x20 yp+25,                   ReadWrite
; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_3                         Hidden1 xm w100 ReadOnly x20 yp+25,          ReadOnly
; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_4                         Hidden1 xm w100 x20 yp+25,                   ReadWrite
; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_5                         Hidden1 xm w100 ReadOnly x20 yp+25,          ReadOnly
; Gui, Example_with_tabs_:Add, Edit,     vEdit_CustomButton_6                         Hidden1 xm w100 ReadOnly x20 yp+25,          services.msc
; Gui, Example_with_tabs_:Add, Button,   vEdit_CustomButton_7                         Hidden1 xm w100 x20 yp+25 hwndExOrb cFF5733, ExOrb

; ExOrb1 := [0, 0x00FFFFFF, , "red", , , "red", 1]

; ExOrb1 := [0, 0x00FFFFFF, "White", , "White", 4]         ; normal flat background & text color
; ExOrb2 := [ , "red"]
; ExOrb3 := {5: "White"}                                      ; hot flat background color
; ExOrb4 := [ , , ,"White"]                                      ; defaulted text color -> animation

; Opt1 := [0, 0x80CF0000, , "White", "H", , "red", 4]         ; normal flat background & text color
; Opt2 := [ , "White"]                                          ; hot flat background color
; Opt5 := [ , , ,"Gray"]                                      ; defaulted text color -> animation

; If !ImageButton.Create(ExOrb, ExOrb1, ExOrb2, ExOrb3, , ExOrb4)
;    MsgBox, 0, ImageButton Error ExOrb, % ImageButton.LastError

; Gui, Example_with_tabs_:Add, Edit,                 vServicesmsc                                                    Hidden1 xm w100 ReadOnly x20 yp+25 , services.msc
; Gui, Example_with_tabs_:Add, Text,                 vText_Variable_for_experiments1                                 Hidden1 xm w100 x20 yp hp cFF5733 BackgroundTrans Center 0x200 E0x200, Label 3
Gui, Example_with_tabs_:Add, Edit,                   vRandomGenerationFunction                                       Hidden1 xm w150 cFF5733 ReadOnly x20 yp+25, % RandomGenerationFunction()
; Gui, Example_with_tabs_:Add, Text,                 vText_Variable_for_experiments2                                 Hidden1 xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3
; Gui, Example_with_tabs_:Add, Text,                 vText_Variable_for_experiments3                                 Hidden1 xm w100 hp x20 yp cFFFFFF BackgroundTrans Left 0x200 E0x200 , Label 3

Show_tab_2_gui_elements(){
   GuiControl, Example_with_tabs_:Show, DateOfScript              
   GuiControl, Example_with_tabs_:Show, Date                      
   GuiControl, Example_with_tabs_:Show, SearchForAStringInFiles   
   GuiControl, Example_with_tabs_:Show, EditBoxToShowRandomString 
   GuiControl, Example_with_tabs_:Show, Servicesmsc             
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments1                    
   GuiControl, Example_with_tabs_:Show, RandomGenerationFunction 
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments2                    
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments3 
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_1
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_2
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_3
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_4
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_5
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_6
   ; GuiControl, Example_with_tabs_:Show, Edit_CustomButton_7
}

Hide_tab_2_gui_elements(){
   GuiControl, Example_with_tabs_:Hide, DateOfScript              
   GuiControl, Example_with_tabs_:Hide, Date                      
   GuiControl, Example_with_tabs_:Hide, SearchForAStringInFiles   
   GuiControl, Example_with_tabs_:Hide, EditBoxToShowRandomString 
   GuiControl, Example_with_tabs_:Hide, Servicesmsc             
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments1                    
   GuiControl, Example_with_tabs_:Hide, RandomGenerationFunction 
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments2                    
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments3
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_1
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_2
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_3
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_4
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_5
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_6
   ; GuiControl, Example_with_tabs_:Hide, Edit_CustomButton_7                    
}









; Gui, Example_with_tabs_:Tab, c
Gui, Example_with_tabs_:Add, Text,       vText_Variable_for_experiments5                                                                                                    Hidden1 w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Text,       vText_Variable_for_experiments4                                                                                                    Hidden1 w0 h0 x20 yp+108,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Button,     vText_Variable_for_experimentsToSpeechUsingCliAndNoInstalls                  gTextToSpeechUsingCliAndNoInstalls                    Hidden1 xm x20 yp+25,TextToSpeechUsingCliAndNoInstalls
Gui, Example_with_tabs_:Add, Edit,       vSafeToRainlanderEdit                                                                                                              Hidden1 xm cFF5733 w160 ReadOnly x20 yp+25, Rainlander
Gui, Example_with_tabs_:Add, Button,     vSaveToRainlanderFromHelpy                                                   gSaveToRainlanderFromHelpy                            Hidden1 %k_Position%           ,SaveToRainlanderFromHelpy
Gui, Example_with_tabs_:Add, Button,     vChangeRainlanderSizeStartingAt500                                           gChangeRainlanderSizeStartingAt500                    Hidden1 %k_Position%           ,ChangeRainlanderSizeStartingAt500
Gui, Example_with_tabs_:Add, Button,     v2ndButtonOfHelpylander                                                      g2ndButtonOfHelpylander                               Hidden1 xm x20 yp+25           ,2ndButtonOfHelpylander
Gui, Example_with_tabs_:Add, Button,     v3rdButtonOfHelpylander                                                      g3rdButtonOfHelpylander                               Hidden1 %k_Position%           ,3rdButtonOfHelpylander
Gui, Example_with_tabs_:Add, Button,     vRunAutoGUI                                                                  gRunAutoGUI                                           Hidden1 xm x20 yp+25           ,RunAutoGUI
Gui, Example_with_tabs_:Add, Button,     vRunCodeQuickTester                                                          gRunCodeQuickTester                                   Hidden1 xm x20 yp+25           ,RunCodeQuickTester
Gui, Example_with_tabs_:Add, Button,     vRunLiveXGraph                                                               gRunLiveXGraph                                        Hidden1 xm x20 yp+25           ,RunLiveXGraph
Gui, Example_with_tabs_:Add, Button,     vRunBarChartExample1                                                         gRunBarChartExample1                                  Hidden1 xm x20 yp+25           ,RunBarChartExample1
Gui, Example_with_tabs_:Add, Button,     vSQLiteINSERTINTOxVALUES                                                     gSQLiteINSERTINTOxVALUES                              Hidden1 xm x20 yp+25           ,SQLiteINSERTINTOxVALUES
Gui, Example_with_tabs_:Add, Button,     vSQLiteSELECTFROM                                                            gSQLiteSELECT*FROM                                    Hidden1 xm x20 yp+25           ,SQLiteSELECT*FROM
Gui, Example_with_tabs_:Add, Button,     vSQLiteExampleAdjustedToWorkWithHelpy                                        gSQLiteExampleAdjustedToWorkWithHelpy                 Hidden1 xm x20 yp+25           ,SQLiteExampleAdjustedToWorkWithHelpy
Gui, Example_with_tabs_:Add, Button,     vSQLiteSELECTFROMGetSpecificColumnAndUseInClipboard                          gSQLiteSELECTFROMGetSpecificColumnAndUseInClipboard   Hidden1 xm x20 yp+25           ,SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard
Gui, Example_with_tabs_:Add, Button,     vCtrlDown                                                                    gCtrlDown                                             Hidden1 xm x20 yp+25           ,CtrlDown
Gui, Example_with_tabs_:Add, Button,     vCtrlUp                                                                      gCtrlUp                                               Hidden1 xm x20 yp+25           ,CtrlUp
Gui, Example_with_tabs_:Add, Button,     vIsCtrlDown                                                                  gIsCtrlDown                                           Hidden1 xm x20 yp+25           ,IsCtrlDown
Gui, Example_with_tabs_:Add, Button,     vClassImageButtonExperiments                                                 gClassImageButtonExperiments                          Hidden1 xm x20 yp+25           ,ClassImageButtonExperiments

Show_tab_3_gui_elements(){
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments5                                             
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments4                                             
   GuiControl, Example_with_tabs_:Show, TextToSpeechUsingCliAndNoInstalls                 
   GuiControl, Example_with_tabs_:Show, SafeToRainlanderEdit                              
   GuiControl, Example_with_tabs_:Show, SaveToRainlanderFromHelpy                         
   GuiControl, Example_with_tabs_:Show, ChangeRainlanderSizeStartingAt500                 
   GuiControl, Example_with_tabs_:Show, 2ndButtonOfHelpylander                            
   GuiControl, Example_with_tabs_:Show, 3rdButtonOfHelpylander                            
   GuiControl, Example_with_tabs_:Show, RunAutoGUI                                        
   GuiControl, Example_with_tabs_:Show, RunCodeQuickTester                                
   GuiControl, Example_with_tabs_:Show, RunLiveXGraph                                     
   GuiControl, Example_with_tabs_:Show, RunBarChartExample1                               
   GuiControl, Example_with_tabs_:Show, SQLiteINSERTINTOxVALUES                           
   GuiControl, Example_with_tabs_:Show, SQLiteSELECTFROM                                 
   GuiControl, Example_with_tabs_:Show, SQLiteExampleAdjustedToWorkWithHelpy              
   GuiControl, Example_with_tabs_:Show, SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard
   GuiControl, Example_with_tabs_:Show, CtrlDown                                          
   GuiControl, Example_with_tabs_:Show, CtrlUp                                            
   GuiControl, Example_with_tabs_:Show, IsCtrlDown                                        
   GuiControl, Example_with_tabs_:Show, ClassImageButtonExperiments                                        
}

Hide_tab_3_gui_elements(){
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments5                                             
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments4                                             
   GuiControl, Example_with_tabs_:Hide, TextToSpeechUsingCliAndNoInstalls                 
   GuiControl, Example_with_tabs_:Hide, SafeToRainlanderEdit                              
   GuiControl, Example_with_tabs_:Hide, SaveToRainlanderFromHelpy                         
   GuiControl, Example_with_tabs_:Hide, ChangeRainlanderSizeStartingAt500                 
   GuiControl, Example_with_tabs_:Hide, 2ndButtonOfHelpylander                            
   GuiControl, Example_with_tabs_:Hide, 3rdButtonOfHelpylander                            
   GuiControl, Example_with_tabs_:Hide, RunAutoGUI                                        
   GuiControl, Example_with_tabs_:Hide, RunCodeQuickTester                                
   GuiControl, Example_with_tabs_:Hide, RunLiveXGraph                                     
   GuiControl, Example_with_tabs_:Hide, RunBarChartExample1                               
   GuiControl, Example_with_tabs_:Hide, SQLiteINSERTINTOxVALUES                           
   GuiControl, Example_with_tabs_:Hide, SQLiteSELECTFROM                                 
   GuiControl, Example_with_tabs_:Hide, SQLiteExampleAdjustedToWorkWithHelpy              
   GuiControl, Example_with_tabs_:Hide, SQLiteSELECTFROMGetSpecificColumnAndUseInClipboard
   GuiControl, Example_with_tabs_:Hide, CtrlDown                                          
   GuiControl, Example_with_tabs_:Hide, CtrlUp                                            
   GuiControl, Example_with_tabs_:Hide, IsCtrlDown                                        
   GuiControl, Example_with_tabs_:Hide, ClassImageButtonExperiments             
}








; Gui, Example_with_tabs_:Add, ActiveX, x500 y0 w640 h480 vWB, Shell.Explorer  ; The final parameter is the name of the ActiveX component.
; WB.silent := true ;Surpress JS Error boxes
; Display(WB,HTML_page_FromFile)
; ComObjConnect(WB, WB_events)  ; Connect WB's events to the WB_events class object.
; Gui, Example_with_tabs_:Tab, d

Gui, Example_with_tabs_:Add, Text,                             vText_Variable_for_experiments6     Hidden1        w0 h0 x20 y0,  ;Horizontal Line > Etched Gray
Gui, Example_with_tabs_:Add, Text,                             vText_Variable_for_experiments7     Hidden1        w0 h0 x20 yp+100,  ;Horizontal Line > Etched Gray
; ----------------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Margin, 10, 10
Gui, Example_with_tabs_:Add, Radio,                            vSTDRB1 gSTDRBG hwndRBID1           Hidden1         yp+28 Checked          , Standard Radio 1
Gui, Example_with_tabs_:Add, Radio,                            vSTDRB2 gSTDRBG                     Hidden1         x+55 yp hwndRBID2      , Standard Radio 2
Gui, Example_with_tabs_:Add, CheckBox,                         vSTDCB1 gSTDCB1                     Hidden1         xm yp+20 hwndCBID1     , Standard CheckBox
; ----------------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Add, Text,                             vTextForTab4_3                      Hidden1         xm w292 yp+20 h2 0x10
; "Faked" RadioButtons -------------------------------------------------------------------------------------------------
; Note: Minimum width and height are font, font size and OS dependend, if you get below the limit, nothing is shown!!!
Gui, Example_with_tabs_:Add, Radio,                            vRB1                                Hidden1         yp+20 xm w15 h20 gRBG  Section Group Checked
Gui, Example_with_tabs_:Add, Radio,                            vRB2                                Hidden1         yp+20 xm wp hp gRBG 
Gui, Example_with_tabs_:Add, Radio,                            vRB3                                Hidden1         yp+20 xm wp hp gRBG 
Gui, Example_with_tabs_:Add, Text,                             vRT1 hwndRTID1                      Hidden1         ys x+5 w50 hp 0x200 cBlue gRBG         , % "Radio 1"
Gui, Example_with_tabs_:Add, Text,                             vRT2 hwndRTID2                      Hidden1         xp yp+20 wp hp 0x200 cBlue gRBG        , % "Radio 2"
Gui, Example_with_tabs_:Add, Text,                             vRT3 hwndRTID3                      Hidden1         xp yp+20 wp hp 0x200 cBlue gRBG        , % "Radio 3"
; "Faked" CheckBox -----------------------------------------------------------------------------------------------------
; Note: for minimum width see "Faked" RadioButtons
Gui, Example_with_tabs_:Add, CheckBox,                         vCB1                                Hidden1         ys x+80 w15 h20 gCB1 Section
Gui, Example_with_tabs_:Add, Text, x+5                         vCT1 hwndCTID1                      Hidden1         ys hp 0x200 gCB1                      , % " Check me! "
; ComboBox -------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Add, Combobox,                         vCBB1 hwndCBBID1                    Hidden1         xs yp+40 w141 gCBB1 
   , ComboBox 1||ComboBox 2|ComboBox 3
; ----------------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Add, Text,                             vTextForTab4_2                      Hidden1         yp+40 xm w292 h2 +0x1000
; ListBox --------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Add, ListBox,                          vLB1 hwndLBID1                      Hidden1         yp+40 xm w292 r4 gLB1
   , ListBox Red|ListBox Green|ListBox Blue|ListBox Pink
; ----------------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Add, Text,                             vTextForTab4_1                      Hidden1         yp+90 xm w292 h2 0x10
; Edit -----------------------------------------------------------------------------------------------------------------
Gui, Example_with_tabs_:Font, s10
Gui, Example_with_tabs_:Add, Edit,                             vED1              hwndEDID1         Hidden1         yp+40 xm w292 r10 , I'm an Edit, edit me!
Gui, Example_with_tabs_:Add, Edit,                             vED2              hwndEDID2         Hidden1         yp+180 xm w292 +Disabled, % " I'm disabled!"
Gui, Example_with_tabs_:Add, ListView,                         vListView_tab4                      Hidden1         yp+70 xm w292 r5 Grid -HDR




; vText_Variable_for_experiments6
; vText_Variable_for_experiments7
; vSTDRB1
; vSTDRB2
; vSTDCB1
; vRB1 
; vRB2 
; vRB3 
; vRT1 
; vRT2 
; vRT3 
; vCB1
; vCT1
; vCBB1
; vTextForTab4_2
; vLB1
; vTextForTab4_1
; vED1           
; vED2           
; vListView_tab4 




LB_SETCURSEL := 0x186
CB_SETCURSEL := 0x14E
Red   := "FF0000"
Green := "00C000"
Blue  := "0000FF"
Pink  := "FF20FF"

CTLCOLORS.Attach(RBID1, "Lime", "")
CTLCOLORS.Attach(CBID1, "C0C0C0", "Red")
RBGA := 1
CTLCOLORS.Attach(RTID%RBGA%, "Yellow", "Blue")
CTLCOLORS.Attach(CTID1, "", "Green")
CTLCOLORS.Attach(CBBID1, "Aqua", "Red")
CTLCOLORS.Attach(LBID1, Red, "White")
GuiControl, Choose, LB1, |1
CTLCOLORS.Attach(EDID1, "606060", "Aqua")
CTLCOLORS.Attach(EDID2, "Gray", "Lime")


Show_tab_4_gui_elements(){
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments6                                             
   GuiControl, Example_with_tabs_:Show, Text_Variable_for_experiments7               
   GuiControl, Example_with_tabs_:Show, STDRB1
   GuiControl, Example_with_tabs_:Show, STDRB2
   GuiControl, Example_with_tabs_:Show, STDCB1
   GuiControl, Example_with_tabs_:Show, RB1 
   GuiControl, Example_with_tabs_:Show, RB2 
   GuiControl, Example_with_tabs_:Show, RB3 
   GuiControl, Example_with_tabs_:Show, RT1 
   GuiControl, Example_with_tabs_:Show, RT2 
   GuiControl, Example_with_tabs_:Show, RT3 
   GuiControl, Example_with_tabs_:Show, CB1
   GuiControl, Example_with_tabs_:Show, CT1
   GuiControl, Example_with_tabs_:Show, CBB1
   GuiControl, Example_with_tabs_:Show, TextForTab4_3
   GuiControl, Example_with_tabs_:Show, TextForTab4_2
   GuiControl, Example_with_tabs_:Show, LB1
   GuiControl, Example_with_tabs_:Show, TextForTab4_1
   GuiControl, Example_with_tabs_:Show, ED1           
   GuiControl, Example_with_tabs_:Show, ED2           
   GuiControl, Example_with_tabs_:Show, ListView_tab4                                                                     
}

Hide_tab_4_gui_elements(){
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments6                                             
   GuiControl, Example_with_tabs_:Hide, Text_Variable_for_experiments7     
   GuiControl, Example_with_tabs_:Hide, STDRB1
   GuiControl, Example_with_tabs_:Hide, STDRB2
   GuiControl, Example_with_tabs_:Hide, STDCB1
   GuiControl, Example_with_tabs_:Hide, RB1 
   GuiControl, Example_with_tabs_:Hide, RB2 
   GuiControl, Example_with_tabs_:Hide, RB3 
   GuiControl, Example_with_tabs_:Hide, RT1 
   GuiControl, Example_with_tabs_:Hide, RT2 
   GuiControl, Example_with_tabs_:Hide, RT3 
   GuiControl, Example_with_tabs_:Hide, CB1
   GuiControl, Example_with_tabs_:Hide, CT1
   GuiControl, Example_with_tabs_:Hide, CBB1
   GuiControl, Example_with_tabs_:Hide, TextForTab4_3
   GuiControl, Example_with_tabs_:Hide, TextForTab4_2
   GuiControl, Example_with_tabs_:Hide, LB1
   GuiControl, Example_with_tabs_:Hide, TextForTab4_1
   GuiControl, Example_with_tabs_:Hide, ED1           
   GuiControl, Example_with_tabs_:Hide, ED2           
   GuiControl, Example_with_tabs_:Hide, ListView_tab4                                                                                          
}



















Gui, Example_with_tabs_:Add, Edit,                   vRandomGenerationFunction_2                                       Hidden1 xm w150 cFF5733 ReadOnly x20 y125, % RandomGenerationFunction()


global 0CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35 Hidden1", "33 33 33/", "0CommonlyUsedFunctionsBackground") ; background
Gui, Example_with_tabs_:Add, Text,          v8CommonlyUsedFunctionsText     Hidden1        x20 w160 yp hp cFFFFFF BackgroundTrans Center  0x200, ZlogyV2 - E/D: 
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_1        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v10CommonlyUsedFunctions        Hidden1        %k_Position% glockZlogy hwndHBT11CommonlyUsedFunctions ,lockZlogy
; Gui, Example_with_tabs_:Add, Button,        v11CommonlyUsedFunctions        Hidden1        %k_Position% gUnlockZlogy hwndHBT12CommonlyUsedFunctions ,UnlockStringBank
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_2        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v12CommonlyUsedFunctions        Hidden1        %k_Position% gFileLock hwndHBT13CommonlyUsedFunctions ,File locking
; Gui, Example_with_tabs_:Add, Button,        v13CommonlyUsedFunctions        Hidden1        %k_Position% gFileUnlock hwndHBT14CommonlyUsedFunctions ,File unlocking

global 1CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35 Hidden1", "33 33 33", "1CommonlyUsedFunctionsBackground") ; background
; Gui, Example_with_tabs_:Add, Text,          v7CommonlyUsedFunctionsText     Hidden1        x20 w160 yp hp cFFFFFF BackgroundTrans Center  0x200, Zlogy manipulation:
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_3        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v14CommonlyUsedFunctions        Hidden1        %k_Position% gMNZnoButton hwndHBT15CommonlyUsedFunctions,MNZ no button
; Gui, Example_with_tabs_:Add, Button,        v15CommonlyUsedFunctions        Hidden1        %k_Position% gRemoveSpecificZlogy hwndHBT16CommonlyUsedFunctions ,Remove specific Zlogy
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_4        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_5        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_6        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_7        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_8        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_9        Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_10       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_11       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_12       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_13       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_14       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_15       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_16       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v16CommonlyUsedFunctions        Hidden1        %k_Position% gMakeNewZlogy hwndHBT17CommonlyUsedFunctions ,MakeNewZlogy(MNZ)
; Gui, Example_with_tabs_:Add, Button,        v17CommonlyUsedFunctions        Hidden1        %k_Position% gMakeNewZlogyFromUrl hwndHBT18CommonlyUsedFunctions,MNZ from Url

global 2CommonlyUsedFunctionsBackground
Gui_AddPicture_VariableName("x20 w160 h30 yp+35 Hidden1", "33 33 33", "2CommonlyUsedFunctionsBackground") ; background
; Gui, Example_with_tabs_:Add, Text,          v6CommonlyUsedFunctionsText     Hidden1        x20 w160 yp hp cFFFFFF BackgroundTrans Center 0x200, ZlogyV2 - functions:
Gui, Example_with_tabs_:Add, Text,          v18CommonlyUsedFunctions        Hidden1        %k_Position% cWhite,
Gui, Example_with_tabs_:Add, Button,        v19CommonlyUsedFunctions        Hidden1        %k_Position% gMakeHashPassSharable hwndHBT19CommonlyUsedFunctions ,Make HashPass publicly sharable
; Gui, Example_with_tabs_:Add, Button,        vHBT20CommonlyUsedFunctions     Hidden1        %k_Position% gCleanGeneratedContent hwndHBT20CommonlyUsedFunctions ,CleanGeneratedContent
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_17       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v20CommonlyUsedFunctions        Hidden1        %k_Position% gZlogies hwndHBT21CommonlyUsedFunctions ,Zlogies
; Gui, Example_with_tabs_:Add, Button,        v21CommonlyUsedFunctions        Hidden1        %k_Position% gZlogiesListView hwndHBT22CommonlyUsedFunctions ,ZlogiesListView
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_18       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v22CommonlyUsedFunctions        Hidden1        %k_Position% gZlogiesPoeBlizzard hwndHBT23CommonlyUsedFunctions ,ZlogiesPoeBlizzard
; Gui, Example_with_tabs_:Add, Text,          vcWhite_RemovedZlogies_19       Hidden1        %k_Position% cWhite,
; Gui, Example_with_tabs_:Add, Button,        v23CommonlyUsedFunctions        Hidden1        %k_Position% gZlogiesMega hwndHBT24CommonlyUsedFunctions ,ZlogiesMega


Show_tab_5_gui_elements(){
   GuiControl, Example_with_tabs_:Show, RandomGenerationFunction_2     
   GuiControl, Example_with_tabs_:Show,8CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_1    
   ; GuiControl, Example_with_tabs_:Show,10CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,11CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_2    
   ; GuiControl, Example_with_tabs_:Show,12CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,13CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,7CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_3    
   ; GuiControl, Example_with_tabs_:Show,14CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,15CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_4    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_5    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_6    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_7    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_8    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_9    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_10   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_11   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_12   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_13   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_14   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_15   
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_16   
   ; GuiControl, Example_with_tabs_:Show,16CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,17CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,6CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Show,18CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,19CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,HBT20CommonlyUsedFunctions 
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_17   
   ; GuiControl, Example_with_tabs_:Show,20CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,21CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_18   
   ; GuiControl, Example_with_tabs_:Show,22CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Show,cWhite_RemovedZlogies_19   
   GuiControl, Example_with_tabs_:Show,23CommonlyUsedFunctions    
   GuiControl, Example_with_tabs_:Hide,0CommonlyUsedFunctionsBackground         
   GuiControl, Example_with_tabs_:Hide,1CommonlyUsedFunctionsBackground            
   GuiControl, Example_with_tabs_:Hide,2CommonlyUsedFunctionsBackground       

}

Hide_tab_5_gui_elements(){
   GuiControl, Example_with_tabs_:Hide,RandomGenerationFunction_2    
   GuiControl, Example_with_tabs_:Hide,8CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_1    
   ; GuiControl, Example_with_tabs_:Hide,10CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,11CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_2    
   ; GuiControl, Example_with_tabs_:Hide,12CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,13CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,7CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_3    
   ; GuiControl, Example_with_tabs_:Hide,14CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,15CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_4    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_5    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_6    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_7    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_8    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_9    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_10   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_11   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_12   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_13   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_14   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_15   
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_16   
   ; GuiControl, Example_with_tabs_:Hide,16CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,17CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,6CommonlyUsedFunctionsText 
   ; GuiControl, Example_with_tabs_:Hide,18CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,19CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,HBT20CommonlyUsedFunctions 
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_17   
   ; GuiControl, Example_with_tabs_:Hide,20CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,21CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_18   
   ; GuiControl, Example_with_tabs_:Hide,22CommonlyUsedFunctions    
   ; GuiControl, Example_with_tabs_:Hide,cWhite_RemovedZlogies_19   
   GuiControl, Example_with_tabs_:Hide,23CommonlyUsedFunctions      
   GuiControl, Example_with_tabs_:Hide,0CommonlyUsedFunctionsBackground         
   GuiControl, Example_with_tabs_:Hide,1CommonlyUsedFunctionsBackground            
   GuiControl, Example_with_tabs_:Hide,2CommonlyUsedFunctionsBackground                                                            
}
















; Gui, Example_with_tabs_:Tab 
; Display(WB,html_str) {
; 	Count:=0
; 	while % FileExist(f:=A_Temp "\" A_TickCount A_NowUTC "-tmp" Count ".DELETEME.html")
; 		Count+=1
; 	FileAppend,%html_str%,%f%
; 	WB.Navigate("file://" . f)
; }



; ----------------------------------------------------------------------------------------------------------------------
STDRBG:
   GuiControlGet, STDRB1
   CTLCOLORS.Change(RBID1, (STDRB1 ? "Lime" : ""), "006000")
   CTLCOLORS.Change(RBID2, (STDRB1 ? "" : "Lime"), "006000")
Return
; ----------------------------------------------------------------------------------------------------------------------
STDCB1:
   GuiControlGet, STDCB1
   CTLCOLORS.Change(CBID1, (STDCB1 ? "Lime" : "C0C0C0"), "Red")
   Return
; ----------------------------------------------------------------------------------------------------------------------
RBG:
   RBG := SubStr(A_GuiControl, 3)
   If (RBG != RBGA) {
      CTLCOLORS.Detach(RTID%RBGA%)
      CTLCOLORS.Attach(RTID%RBG%, "Yellow", "Blue")
      GuiControl, , RB%RBG%, 1
      RBGA := RBG
   }
Return
; ----------------------------------------------------------------------------------------------------------------------
LB1:
   GuiControlGet, LB1
   StringSplit, LC, LB1, %A_Space%
   If (%LC2%) {
      BG := %LC2%, TX := "White"
      CTLCOLORS.Change(LBID1, BG, TX)
      SendMessage, LB_SETCURSEL, -1, 0, , ahk_id %LBID1%
   }
Return
; ----------------------------------------------------------------------------------------------------------------------
CB1:
   GuiControlGet, CB1
   If (A_GuiControl = "CT1")
      CB1 ^= True
   If (CB1)
      CTLCOLORS.Change(CTID1, "Lime", "406060")
   Else
      CTLCOLORS.Change(CTID1, "", "Green")
   GuiControl, , CB1, %CB1%
Return
; ----------------------------------------------------------------------------------------------------------------------
CBB1:
Return