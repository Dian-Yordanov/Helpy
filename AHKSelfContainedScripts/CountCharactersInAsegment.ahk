;------------------------------------------------------------------------------
; Count characters in a segment
;------------------------------------------------------------------------------
!c:: 
Send, ^c
ClipWait
Chars := StrLen(Clipboard)
RegExReplace(Clipboard,A_Space,"",Spaces)
MsgBox % "The highlighted text is " Chars " characters in length and contains " Spaces " spaces."
clipboard = ; Empty the clipboard
return