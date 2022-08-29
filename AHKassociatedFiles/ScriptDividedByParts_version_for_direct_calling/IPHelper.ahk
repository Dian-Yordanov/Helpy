
;|IP Helper||SEARCHINDICATOR|
;
;  _____ _____    _    _      _                             _____ _    _ _____   _          _____      _                         _______                                      _____      _     ______      _                        _
; |_   _|  __ \  | |  | |    | |                           / ____| |  | |_   _| | |        |  __ \    | |                       / /  __ \                            ___     / ____|    | |   |  ____|    | |                      | |
;   | | | |__) | | |__| | ___| |_ __   ___ _ __   ______  | |  __| |  | | | |   | |_ ___   | |__) |___| | ___  __ _ ___  ___   / /| |__) |___ _ __   _____      __  ( _ )   | |  __  ___| |_  | |__  __  _| |_ ___ _ __ _ __   __ _| |
;   | | |  ___/  |  __  |/ _ \ | '_ \ / _ \ '__| |______| | | |_ | |  | | | |   | __/ _ \  |  _  // _ \ |/ _ \/ _` / __|/ _ \ / / |  _  // _ \ '_ \ / _ \ \ /\ / /  / _ \/\ | | |_ |/ _ \ __| |  __| \ \/ / __/ _ \ '__| '_ \ / _` | |
;  _| |_| |      | |  | |  __/ | |_) |  __/ |             | |__| | |__| |_| |_  | || (_) | | | \ \  __/ |  __/ (_| \__ \  __// /  | | \ \  __/ | | |  __/\ V  V /  | (_>  < | |__| |  __/ |_  | |____ >  <| ||  __/ |  | | | | (_| | |
; |_____|_|      |_|  |_|\___|_| .__/ \___|_|              \_____|\____/|_____|  \__\___/  |_|  \_\___|_|\___|\__,_|___/\___/_/   |_|  \_\___|_| |_|\___| \_/\_/    \___/\/  \_____|\___|\__| |______/_/\_\\__\___|_|  |_| |_|\__,_|_|
;                              | |
;                              |_|
;
IPHelperGUI:
TempFile=%A_Temp%\ip_temp.txt
Gui, 3:Add, Groupbox, w100 h100,IP Address:
Gui, 3:Add, Text, vIPList x20 yp+15 r4 w85
Gui, 3:Add, Button, gGetIP w50, Refresh
Gui, 3:Add, Button, gIPInfo w30 yp x+2, Info
Gui, 3:Add, Button, gReleaseIP +Section y10, Release IP
Gui, 3:Add, Button, gRenewIP y+0 wp xs, Renew IP
Gui, 3:Add, Button, gFlushDNS y+0 wp xs, Flush DNS
Gui, 3:Add, Button, gGetExternalIP y+0 wp xs, External IP
Gui, 3:Show, ,IP Helper
GoSub, GetIP
Return
RenewIP:
SplashTextOn, , 20,Working, Renewing IP
RunWait %comspec% /c "ipconfig /renew > %TempFile%",,Hide
SplashTextOff
GoSub, GetIP
GoSub, GetDetails
Return
ReleaseIP:
SplashTextOn, , 20,Working, Releasing IP
RunWait %comspec% /c "ipconfig /release > %TempFile%",,Hide
SplashTextOff
GoSub, GetIP
GoSub, GetDetails
Return
FlushDNS:
SplashTextOn, , 20,Working, Flushing DNS
RunWait %comspec% /c "ipconfig /flushdns > %TempFile%",,Hide
SplashTextOff
GoSub, GetDetails
Return
GetExternalIP:
SplashTextOn, , 20,Working, Getting External IP
URLDownloadToFile, http://automation.whatismyip.com/n09230945.asp, %TempFile%
SplashTextOff
FileRead, detail, %A_Temp%\ip_temp.txt
If (StrLen(detail) > 15) ;Yeah, I still need to learn RegEx.
{
   FileDelete, %TempFile%
   FileAppend, ERROR, %TempFile%
}
GoSub, GetDetails
Return
IPInfo:
SplashTextOn, , 20,Working, Getting IP Info
RunWait %comspec% /c "ipconfig.exe > %TempFile%",,Hide
SplashTextOff
GoSub, GetDetails
Return
GetIP:
SplashTextOn, , 20,Working, Getting IP List
IPList=
(
%A_IPAddress1%
%A_IPAddress2%
%A_IPAddress3%
%A_IPAddress4%
)
GuiControl, , IPList,%IPList%
SplashTextOff
Return
GetDetails:
FileRead, detail, %A_Temp%\ip_temp.txt
FileDelete, %A_Temp%\ip_temp.txt
StringReplace, detail, detail, `r`n`r`n,`r`n, all
EnvGet PCName, COMPUTERNAME
detail:= "IP details for " . PCName . ":`r`n" . detail
Msgbox, ,Details, %detail%
Return
