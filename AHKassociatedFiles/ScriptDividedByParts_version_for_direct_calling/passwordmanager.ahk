;|passwordmanager||SEARCHINDICATOR|
;                                              _
;                                             | |
;    _ __   __ _ ___ _____      _____  _ __ __| |  _ __ ___   __ _ _ __   __ _  __ _  ___ _ __
;   | '_ \ / _` / __/ __\ \ /\ / / _ \| '__/ _` | | '_ ` _ \ / _` | '_ \ / _` |/ _` |/ _ \ '__|
;   | |_) | (_| \__ \__ \\ V  V / (_) | | | (_| | | | | | | | (_| | | | | (_| | (_| |  __/ |
;   | .__/ \__,_|___/___/ \_/\_/ \___/|_|  \__,_| |_| |_| |_|\__,_|_| |_|\__,_|\__, |\___|_|
;   | |                                                                         __/ |
;   |_|                                                                        |___/
; :*:zpass1::%EYZAQzDULImqkNjF9%{tab}%PG6v129mjWr390pBy%{tab}{enter}
; :*:zpass2::%E2cMiszHY7nFabFHW%{tab}%P0igzCZNwt9RilfEV%{tab}{enter}
; :*:zpass3::%EIZCXCSi7kioAxlki%{tab}%P0igzCZNwt9RilfEV%{tab}{enter}
; :*:zpass4::%Edk2pi7TDriQiaaii%{tab}%Pi8i_qiepLo1yZfi2%{tab}{enter}
; :*:zlog::
; SendInput {f6}
; sleep, 1
; SendInput {Lctrl down}
; sleep, 1
; SendInput {c}
; sleep, 1
; SendInput {Lctrl up}
; ClipWait
; addressNeeded:= "https://.*.com";
; addressNeededUK:= "https://sts.kcl.ac.uk";
; addressNeededTwitch:= "twitch.tv"
; addressNeededChessCom:= "https://www.chess.com/login";
; addressFacebook:= "https://www.facebook.com";
; addressSteam:= "https://steamcommunity.com";
; addressYahoo:= "https://login.yahoo.com/";
; addressKCL:= "https://sts.kcl.ac.uk";
; addressKeats:= "https://keats.kcl.ac.uk";
; addressChessCom:= "https://www.chess.com/login";
; addressTwitch:= "twitch.tv"
; addressName:= Clipboard
; FoundPos := RegExMatch(addressName, (addressNeeded), SubPat)
; FoundPosUK := RegExMatch(addressName, (addressNeededUK), SubPatUK)
; FoundPosKeats := RegExMatch(addressName, (addressNeededKeats), SubPatKeats)
; FoundPosTwitch := RegExMatch(addressName, (addressNeededTwitch), SubPatTwitch)
; FoundPosChessCom := RegExMatch(addressName, (addressNeededChessCom), SubPatChessCom)
; sleep, 1
; SendInput {f6}
; sleep, 1
; if addressFacebook = %SubPat%
; {
; SendInput {f6}
; sleep, 1
; SendInput %E4ieicLWFinHil3vQ%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PQH0JiiV97gyjNNiL%
; sleep, 1
; SendInput {enter}
; }
; if addressSteam = %SubPat%
; {
; SendInput {f6}
; sleep, 1
; SendInput cynnect
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PG6v129mjWr390pBy%
; sleep, 1
; SendInput {enter}
; sleep, 1
; Run, https://login.yahoo.com/
; }
; if addressYahoo = %SubPat%
; {
; SendInput {f6}
; sleep, 1
; SendInput %E4ieicLWFinHil3vQ%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %Pi8i_qiepLo1yZfi2%
; sleep, 1
; SendInput {enter}
; }
; if addressKCL = %SubPatUK%
; {
; SendInput {f6}
; sleep, 1
; SendInput %EKP4nBzfnQOXAXiit%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PQH0JiiV97gyjNNiL%
; sleep, 1
; SendInput {enter}
; }
; if addressKeats = %SubPatKeats%
; {
; SendInput {f6}
; sleep, 1
; SendInput %EKP4nBzfnQOXAXiit%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PFnJA_J9iigCwlmPN%
; sleep, 1
; SendInput {enter}
; }
; if addressTwitch = %SubPatTwitch%
; {
; SendInput {f6}
; sleep, 1
; sleep, 1
; SendInput %EsxbtiKfxxM2ipU2T%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PG6v129mjWr390pBy%
; sleep, 1
; SendInput {enter}
; }
; if addressChessCom = %SubPatChessCom%
; {
; sleep, 1
; SendInput %EQpEptt6ii4nhfoi8%
; sleep, 1
; SendInput {tab}
; sleep, 1
; SendInput %PQH0JiiV97gyjNNiL%
; sleep, 1
; SendInput {enter}
; }
; return