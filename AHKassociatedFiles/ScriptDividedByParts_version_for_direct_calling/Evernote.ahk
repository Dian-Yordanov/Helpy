
;|Evernote||SEARCHINDICATOR|
;  ______                          _
; |  ____|                        | |
; | |____   _____ _ __ _ __   ___ | |_ ___
; |  __\ \ / / _ \ '__| '_ \ / _ \| __/ _ \
; | |___\ V /  __/ |  | | | | (_) | ||  __/
; |______\_/ \___|_|  |_| |_|\___/ \__\___|
;
;
SavePictureFusion(tag)
{
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {e}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 1000
SendInput {t}
sleep, 50
SendInput %tag%
sleep, 500
SendInput {enter}
sleep, 50
SendInput {tab}
sleep, 50
SendInput {tab}
sleep, 50
SendInput {Lctrl down}
sleep, 1
SendInput {a}
sleep, 1
SendInput {Lctrl up}
sleep, 50
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 50
SendInput {enter}
sleep, 1
SendInput {tab}
sleep, 50
SendInput {enter}
sleep, 2000
}
TagIt(tag)
{
;simplified on 20.05.2019
SendInput %tag%
sleep, 1
SendInput {enter}
; sleep, 1
; SendInput %tag%
; sleep, 1
; SendInput {enter}
; sleep, 100
return
}
TagItFusion(tag)
{
SendInput {f3}
sleep, 50
SendInput %tag%
sleep, 50
SendInput {enter}
sleep, 1500
SendInput {f2}
sleep, 50
SendInput {Lctrl down}
sleep, 50
SendInput {v}
sleep, 50
SendInput {Lctrl up}
sleep, 100
SendInput {tab}
}
WebClip1()
{
SendInput {f6}
sleep, 10
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 1000
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {n}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 2000
}
WebClip1Fusion()
{
SendInput {f6}
sleep, 10
SendInput {Lctrl down}
sleep, 1
SendInput {c}
sleep, 1
SendInput {Lctrl up}
sleep, 100
SendInput {f5}
sleep, 1000
}
WebClip2()
{
SendInput {Lctrl down}
sleep, 1
SendInput {v}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {enter}
sleep, 100
}
ENtagging(tag)
{
;does not work because of EN as of 28.12.14
SendInput {Lalt down}
sleep, 1
SendInput {Lctrl down}
sleep, 1
SendInput {t}
sleep, 1
SendInput {Lctrl up}
sleep, 1
SendInput {Lalt up}
sleep, 1500
SendInput %tag%
sleep, 500
SendInput {space}
sleep, 100
RepeatCountENtagging = 6
sleep, 1
Loop %RepeatCountENtagging% {
    SendInput {tab}
sleep, 100
}
sleep, 100
SendInput {enter}
sleep, 500
}
newENtagging(tag)
{
SendInput {f3}
sleep, 1
SendInput %tag%
sleep, 1
SendInput {enter}
}
idXlikeTag(tag)
{
    ;simplified on 20.05.2019
    sleep, 1
    Clipboard:=
    ; If WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; WebClip1()
    ; MyBoolean := 1
    ; }
    ; If !WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; newENtagging(tag)
    ; ;ENtagging(tag)
    ; }
    ; If !WinActive("ahk_class ENMainFrame")
    ; {
    TagIt(tag)
    ; }
    ; If MyBoolean = 1
    ; {
    ; WebClip2()
    ; MyBoolean = 0
    ; }
    WinClose ahk_class AutoHotkeyGUI
    sleep, 100
    WinClose ahk_class ENSingleNoteView
return
}
deXlikeTag(tag)
{
    sleep, 1
    Clipboard:=
    ; If WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; SavePicture(tag)
    ; WebClip1()
    ; MyBoolean := 1
    ; }
    ; If !WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; newENtagging(tag)
    ; ;ENtagging(tag)
    ; }
    ; If !WinActive("ahk_class ENMainFrame")
    ; {
    TagIt(tag)
    ; }
    ; If MyBoolean = 1
    ; {
    ; WebClip2()
    ; MyBoolean = 0
    ; }
    WinClose ahk_class AutoHotkeyGUI
    sleep, 300
    WinClose ahk_class ENSingleNoteView
}
idXTagingFusion(tag)
{
    sleep, 1
    Clipboard:=
    ; If WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; WebClip1()
    ; TagItFusion(tag)
    ; }
    ; Else
    ; {
    ; If !WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; newENtagging(tag)
    ; ;ENtagging(tag)
    ; }
    ; If !WinActive("ahk_class ENMainFrame")
    ; {
    TagIt(tag)
    ; }
    ; }
    WinClose ahk_class AutoHotkeyGUI
    sleep, 1000
    WinClose ahk_class ENSingleNoteView
}
deXTagingFusion(tag)
{
    sleep, 1
    Clipboard:=
    ; If WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; WebClip1Fusion()
    ; SavePictureFusion(tag)
    ; }
    ; If !WinActive("ahk_class Chrome_WidgetWin_1")
    ; {
    ; newENtagging(tag)
    ; ;ENtagging(tag)
    ; }
    ; If !WinActive("ahk_class ENMainFrame")
    ; {
    TagIt(tag)
    ; }
    WinClose ahk_class AutoHotkeyGUI
}
ideaX:
WinActivate ahk_id %previous_ID%
tag:="idea"
idXlikeTag(tag)
return
ideaXpic:
WinActivate ahk_id %previous_ID%
tag:="idea"
deXlikeTag(tag)
return
designX:
WinActivate ahk_id %previous_ID%
tag:="deX"
deXTagingFusion(tag)
return
designXnoPic:
WinActivate ahk_id %previous_ID%
tag:="deX"
idXlikeTag(tag)
return
idXdeX:
WinActivate ahk_id %previous_ID%
tag:="deX idX"
deXlikeTag(tag)
return
gaX:
WinActivate ahk_id %previous_ID%
tag:="gaX"
idXlikeTag(tag)
return
gaXPic:
WinActivate ahk_id %previous_ID%
tag:="gaX"
deXlikeTag(tag)
return
gladiatorX:
WinActivate ahk_id %previous_ID%
tag:="glX"
idXlikeTag(tag)
return
deglX:
WinActivate ahk_id %previous_ID%
tag:="glX || Xygl"
deXlikeTag(tag)
return
pfrombY:
WinActivate ahk_id %previous_ID%
tag:="pfrombY"
deXlikeTag(tag)
return
pfrombYvideo:
WinActivate ahk_id %previous_ID%
tag:="pfrombY"
idXlikeTag(tag)
return
Yhs:
WinActivate ahk_id %previous_ID%
tag:="Yhs"
idXlikeTag(tag)
return
XyidA:
WinActivate ahk_id %previous_ID%
tag:="XyidA"
idXlikeTag(tag)
return
appZ:
WinActivate ahk_id %previous_ID%
tag:="appZ"
idXlikeTag(tag)
return
Xymo:
WinActivate ahk_id %previous_ID%
tag:="Xymo"
idXlikeTag(tag)
return
movies:
WinActivate ahk_id %previous_ID%
tag:="movies"
idXlikeTag(tag)
return
oldmX:
WinActivate ahk_id %previous_ID%
tag:="oldmX"
idXlikeTag(tag)
return
newsZ:
WinActivate ahk_id %previous_ID%
tag:="newsZ"
idXTagingFusion(tag)
return
rss:
WinActivate ahk_id %previous_ID%
tag:="rss"
idXTagingFusion(tag)
return
nameX:
WinActivate ahk_id %previous_ID%
tag:="nameX"
idXTagingFusion(tag)
return
rngX:
WinActivate ahk_id %previous_ID%
tag:="rngX"
idXTagingFusion(tag)
return
pythonbot:
WinActivate ahk_id %previous_ID%
tag:="python bot"
idXTagingFusion(tag)
return
