
;|tfahk||SEARCHINDICATOR|
;  _    __      _     _
; | |  / _|    | |   | |
; | |_| |_ __ _| |__ | | __
; | __|  _/ _` | '_ \| |/ /
; | |_| || (_| | | | |   <
;  \__|_(_)__,_|_| |_|_|\_\
;
/*
Name          : TF: Textfile & String Library for AutoHotkey
Version       : 3.7
Documentation : https://github.com/hi5/TF
AHKScript.org : http://www.ahkscript.org/boards/viewtopic.php?f=6&t=576
AutoHotkey.com: http://www.autohotkey.com/forum/topic46195.html (Also for examples)
License       : see license.txt (GPL 2.0)

Credits & History: See documentation at GH above.

Structure of most functions:

TF_...(Text, other parameters)
	{
	 ; get the basic data we need for further processing and returning the output:
	 TF_GetData(OW, Text, FileName)
	 ; OW = 0 Copy inputfile
	 ; OW = 1 Overwrite inputfile
	 ; OW = 2 Return variable
	 ; Text : either contents of file or the var that was passed on
	 ; FileName : Used in case OW is 0 or 1 (=file), not used for OW=2 (variable)

	 ; Creates a matchlist for use in Loop below
	 TF_MatchList:=_MakeMatchList(Text, StartLine, EndLine, 0, A_ThisFunc) ; A_ThisFunc useful for debugging your scripts

	 Loop, Parse, Text, `n, `r
		{
		 If A_Index in %TF_MatchList%
			{
			...
			}
		 Else
			{
			...
			}
		}
	 ; either copy or overwrite file or return variable
	 Return TF_ReturnOutPut(OW, OutPut, FileName, TrimTrailing, CreateNewFile)
	 ; OW 0 or 1 = file
	 ; Output = new content of file to save or variable to return
	 ; FileName
	 ; TrimTrailing: because of the loops used most functions will add trailing newline, this will remove it by default
	 ; CreateNewFile: To create a file that doesn't exist this parameter is needed, only used in few functions
	}

*/

; ======================================================================================================================
; Includes
; ======================================================================================================================
; #Include %A_ScriptDir%\AHKlibs\SQLiteAHKdatabases\Class_SQLiteDB.ahk
