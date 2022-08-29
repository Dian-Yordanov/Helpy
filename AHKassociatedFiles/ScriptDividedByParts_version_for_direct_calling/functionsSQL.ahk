;    __                  _   _                  _____  ____  _      
;   / _|                | | (_)                / ____|/ __ \| |     
;  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___| (___ | |  | | |     
;  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|\___ \| |  | | |     
;  | | | |_| | | | | (__| |_| | (_) | | | \__ \____) | |__| | |____ 
;  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/_____/ \___\_\______|
                                                                  
                                                                  
SQLiteExampleAdjustedToWorkWithHelpy:
; ======================================================================================================================
; Start & GUI
; ======================================================================================================================
CBBSQL := "SELECT * FROM Test"
DBFileName := A_ScriptDir . "\AHKlibs\SQLiteAHKdatabases\test.DB"
Title := "SQL Query/Command ListView Function GUI"
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
Gui, 25:destroy
Gui, +LastFound +OwnDialogs +Disabled
; Gui, Margin, 10, 10
Gui, 25:Add, Text, xm ym w100 cBlack ,Choose a file:
Gui, 25:Add, Edit, %k_Position% w590 vDatabaseChooseFileLockURL,
Gui, 25:Add, Button, %k_Position% w80 gDatabaseChooseFileLock,Choose a file

Gui, 25:Add, Text, xm ym+30 w100 h20 vTX, SQL statement:
; Gui, 25:Add, ComboBox, x+0 ym+30 w590 vSQL Sort, %CBBSQL%
Gui, 25:Add, Edit, x+0 ym+30 w590 vSQL Sort, %CBBSQL%
Gui, 25:Add, Button, %k_Position% ym+30 w80 hp vRun gRunSQL Default, Run

; GuiControlGet, P, Pos, SQL
; GuiControl,25:, Move, TX, h%PH%

Gui, 25:Add, Text, xm h20 w100 0x200, Table name:
Gui, 25:Add, Edit, x+0 yp w150 hp vTable, Test
Gui, 25:Add, Button, Section x+10 yp wp hp gGetTable, Get _Table
; Gui, 25:Add, Button, x+10 yp wp hp gGetRecordSet, Get _RecordSet
Gui, 25:Add, Button, x+10 yp wp hp gCreateDatabase, Create Database

Gui, 25:Add, Text, xm h20 w100 0x200, More functions:
Gui, 25:Add, Button, Section x+0 yp w150 hp gGetTablesName, Get name of tables
Gui, 25:Add, Button, Section x+0 yp w150 hp gAddInfoToTable, Add info to table
Gui, 25:Add, Button, Section x+0 yp w150 hp gShowInfoOfTable, Show info of table
; Gui, 25:Add, Button, x+10 yp wp hp gGetRecordSet, Get _RecordSet
; Gui, 25:Add, Button, x+10 yp wp hp gCreateDatabase, Create Database

Gui, 25:Add, GroupBox, xm w980 h430, Results
Gui, 25:Add, ListView, xp+10 yp+18 w960 h400 HwndResultsLV +LV0x00010000 gSubLV AltSubmit
Gui, 25:Add, StatusBar,
Gui, 25:Show, , %Title%

GoTo, LoadAndReload25

return

; ======================================================================================================================
; Use Class SQLiteDB : Initialize and get lib version
; ======================================================================================================================
LoadAndReload25:
; GuiControl,25:,SQL,%CBBSQL%
GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
SB_SetText("SQLiteDB new")
SetWorkingDir %A_ScriptDir%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB
; SB_SetText("OpenDB")
; If !DB.OpenDB(DBFileName) {
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    ; ExitApp
; }
return

; Sleep, 1000
; SB_SetText("Version")
; Version := DB.Version
; WinSetTitle, %Title% - SQLite3.dll v %Version%
; MsgBox, %Version%

; Sleep, 1000
; ======================================================================================================================
; Use Class SQLiteDB : Open/Create database and table
; ======================================================================================================================
; CreateDatabase:
; SB_SetText("OpenDB")
; If !DB.OpenDB(DBFileName) {
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    ; ExitApp
; }
; Sleep, 1000
; SB_SetText("Exec: CREATE TABLE")
; SQL := "CREATE TABLE Test (Name, Fname, Phone, Room, PRIMARY KEY(Name ASC, FName ASC));"
; If !DB.Exec(SQL)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; Sleep, 1000
; SB_SetText("Exec: INSERT 1000 rows")
; Start := A_TickCount
; DB.Exec("BEGIN TRANSACTION;")
; SQLStr := ""
; _SQL := "INSERT INTO Test VALUES('NÃ¤me#', 'Fname#', 'Phone#', 'Room#');"
; Loop, 1000 {
;    StringReplace, SQL, _SQL, #, %A_Index%, All
;    SQLStr .= SQL
; }
; If !DB.Exec(SQLStr)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; DB.Exec("COMMIT TRANSACTION;")
; SQLStr := ""
; SB_SetText("Exec: INSERT 1000 rows done in " . (A_TickCount - Start) . " ms")
; Sleep, 1000
; return
; ======================================================================================================================
; Use Class SQLiteDB : Using Exec() with callback function
; ======================================================================================================================
; SB_SetText("Exec: Using a callback function")
; SQL := "SELECT COUNT(*) FROM Test;"
; DB.Exec(SQL, "SQLiteExecCallBack")
; ======================================================================================================================
; Use Class SQLiteDB : Get some informations
; ======================================================================================================================
; SB_SetText("LastInsertRowID")
; If !DB.LastInsertRowID(RowID)
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; GuiControl,25:, -ReDraw, ResultsLV
; LV_Delete()
; ColCount := LV_GetCount("Column")
; Loop, %ColCount%
;    LV_DeleteCol(1)
; LV_InsertCol(1,"", "LastInsertedRowID")
; LV_Add("", RowID)
; GuiControl,25:, +ReDraw, ResultsLV
; Sleep, 1000
; SQL := "SELECT COUNT(*) FROM Test;"
; SB_SetText("SQLite_GetTable : " . SQL)
; Result := ""
; If !DB.GetTable(SQL, Result)
;    MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; ShowTable(Result)
; Sleep, 1000
; ======================================================================================================================
; Start of query using Query() : Get the column names for table Test
; ======================================================================================================================
; SQL := "SELECT * FROM Test;"
; SB_SetText("Query : " . SQL)
; If !DB.Query(SQL, RecordSet)
;    MsgBox, 16, SQLite Error: Query, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
; GuiControl,25:, -ReDraw, ResultsLV
; LV_Delete()
; ColCount := LV_GetCount("Column")
; Loop, %ColCount%
;    LV_DeleteCol(1)
; LV_InsertCol(1,"", "Column names")
; Loop, % RecordSet.ColumnCount
;    LV_Add("", RecordSet.ColumnNames[A_Index])
; LV_ModifyCol(1, "AutoHdr")
; RecordSet.Free()
; GuiControl,25:, +ReDraw, ResultsLV
; ; ======================================================================================================================
; ; End of query using Query()
; ; ======================================================================================================================
; Gui, -Disabled
; Return
; return

; SELECT * FROM sqlite_master WHERE type='table';

GetTablesName:
SQLgetTablesQuery = SELECT * FROM sqlite_master WHERE type='table';
GuiControl,25:,SQL,%SQLgetTablesQuery%
return

; ======================================================================================================================
; Use Class SQLiteDB : Open/Create database and table
; ======================================================================================================================
CreateDatabase:
DBFileName := DatabaseChooseFileLockURL
; MsgBox, %DBFileName%
If FileExist(DBFileName) {
   SB_SetText("Deleting " . DBFileName)
   FileDelete, %DBFileName%
}
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}
Sleep, 1000
SB_SetText("Exec: CREATE TABLE")
SQL := "CREATE TABLE Test (Name, Fname, Phone, Room, PRIMARY KEY(Name ASC, FName ASC));"
If !DB.Exec(SQL)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
Sleep, 1000
SB_SetText("Exec: INSERT 100 rows")
Start := A_TickCount
DB.Exec("BEGIN TRANSACTION;")
SQLStr := ""
_SQL := "INSERT INTO Test VALUES('Name#', 'Fname#', 'Phone#', 'Room#');"
Loop, 100 {
   StringReplace, SQL, _SQL, #, %A_Index%, All
   SQLStr .= SQL
}
If !DB.Exec(SQLStr)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
DB.Exec("COMMIT TRANSACTION;")
SQLStr := ""
SB_SetText("Exec: INSERT 100 rows done in " . (A_TickCount - Start) . " ms")
Sleep, 1000
DB.CloseDB()
return
; ======================================================================================================================
; Gui Subs
; ======================================================================================================================
; GuiClose:
; GuiEscape:
; If !DB.CloseDB()
;    MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
; Gui, Destroy
; ExitApp
; ======================================================================================================================
; Other Subs
; ======================================================================================================================
; "One step" query using GetTable()
; ======================================================================================================================
GetTable:
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, 25:Submit, NoHide
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
}
Result := ""
SQL := "SELECT * FROM " . Table . ";"
SB_SetText("GetTable: " . SQL)
Start := A_TickCount
If !DB.GetTable(SQL, Result)
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
SB_SetText("GetTable: " . SQL . " done in " . (A_TickCount - Start) . " ms")
ShowTable(Result)s
DB.CloseDB()
Return
; ======================================================================================================================
; Show results for prepared query using Query()
; ======================================================================================================================
GetRecordSet:
DBFileName := DatabaseChooseFileLockURL
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}
Gui, 25:Submit, NoHide
SQL := "SELECT * FROM " . Table . ";"
SB_SetText("Query: " . SQL)
RecordSet := ""
Start := A_TickCount
If !DB.Query(SQL, RecordSet)
   MsgBox, 16, SQLite Error: Query, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
ShowRecordSet(RecordSet)
RecordSet.Free()
SB_SetText("Query: " . SQL . " done in " . (A_TickCount - Start) . " ms")
DB.CloseDB()
Return
; ======================================================================================================================
; Execute SQL statement using Exec() / GetTable()
; ======================================================================================================================
RunSQL:
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, +OwnDialogs
GuiControlGet, SQL
If SQL Is Space
{
   SB_SetText("No text entered")
   Return
}
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
   GuiControl, , SQL, %SQL%
   CBBSQL .= "`n" . SQL
}
If (SubStr(SQL, 0) <> ";")
   SQL .= ";"
Result := ""
If RegExMatch(SQL, "i)^\s*SELECT\s") {
   SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, Result)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      ShowTable(Result)
   SB_SetText("GetTable: " . SQL . " done!")
} Else {
   SB_SetText("Exec: " . SQL)
   If !DB.Exec(SQL)
      MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      SB_SetText("Exec: " . SQL . " done!")
}
DB.CloseDB()
Return
; ======================================================================================================================
; Exec() callback function sample
; ======================================================================================================================
; SQLiteExecCallBack(DB, ColumnCount, ColumnValues, ColumnNames) {
;    This := Object(DB)
;    MsgBox, 0, %A_ThisFunc%
;       , % "SQLite version: " . This.Version . "`n"
;       . "SQL statement: " . StrGet(A_EventInfo) . "`n"
;       . "Number of columns: " . ColumnCount . "`n"
;       . "Name of first column: " . StrGet(NumGet(ColumnNames + 0, "UInt"), "UTF-8") . "`n"
;       . "Value of first column: " . StrGet(NumGet(ColumnValues + 0, "UInt"), "UTF-8")
;    Return 0
; }
; ======================================================================================================================
; Show results
; ======================================================================================================================
ShowTable(Table) {
   Global
   Local ColCount, RowCount, Row
   GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (Table.HasNames) {
      Loop, % Table.ColumnCount
         LV_InsertCol(A_Index,"", Table.ColumnNames[A_Index])
      If (Table.HasRows) {
         Loop, % Table.RowCount {
            RowCount := LV_Add("", "")
            Table.Next(Row)
            Loop, % Table.ColumnCount
               LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
         }
      }
      Loop, % Table.ColumnCount
         LV_ModifyCol(A_Index, "AutoHdr")
   }
   GuiControl,25:, +ReDraw, ResultsLV
}
ShowTableString(Table) {
   Global
   ; StringForMSGBox :=
   ; StringForMSGBox1 :=
   Local ColCount, RowCount, Row
   ; GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (Table.HasNames) {
      Loop, % Table.ColumnCount

        ; MsgBox, % Table.ColumnNames[A_Index]

        ; MsgBox, % (A_Index,"", Table.ColumnNames[A_Index])
         ; LV_InsertCol(A_Index,"", Table.ColumnNames[A_Index])
      If (Table.HasRows) {
        ; StringForMSGBox :=
        ; StringForMSGBox1 :=
         Loop, % Table.RowCount {
            RowCount := LV_Add("", "")
            Table.Next(Row)
            Loop, % Table.ColumnCount
               ; LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
               ; MsgBox, % (RowCount, "Col" . A_Index, Row[A_Index])
               ; MsgBox, "dsdsfds"
               ; if(A_Index<20)
               ; {
                StringForMSGBox1 := % Row[A_Index]
                ; StringForMSGBox = %StringForMSGBox% %RowCount% "Col" . %A_Index% %StringForMSGBox1% "----------------" ; % Row[A_Index]
                StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
               ; }
         }

         ; works
         ; MsgBox, %StringForMSGBox%

      }
      ; MsgBox, %StringForMSGBox%
      Loop, % Table.ColumnCount
         LV_ModifyCol(A_Index, "AutoHdr")
         ; MsgBox, %A_Index%
   }
   ; MsgBox, %StringForMSGBox%
   ; GuiControl,25:, +ReDraw, ResultsLV
}
; ----------------------------------------------------------------------------------------------------------------------
ShowRecordSet(RecordSet) {
   Global
   Local ColCount, RowCount, Row, RC
   GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (RecordSet.HasNames) {
      Loop, % RecordSet.ColumnCount
         LV_InsertCol(A_Index,"", RecordSet.ColumnNames[A_Index])
   }
   If (RecordSet.HasRows) {
      If (RecordSet.Next(Row) < 1) {
         MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
         Return
      }
      Loop {
         RowCount := LV_Add("", "")
         Loop, % RecordSet.ColumnCount
            LV_Modify(RowCount, "Col" . A_Index, Row[A_Index])
            RC := RecordSet.Next(Row)
      } Until (RC < 1)
   }
   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   GuiControl,25:, +ReDraw, ResultsLV
}

DatabaseChooseFileLock:
FileSelectFile, SelectedFile, 3, , Open a file,
if SelectedFile =
    MsgBox, The user didn't select anything.
else
GuiControl,,DatabaseChooseFileLockURL,%SelectedFile%
GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
return

; GetMoreDataFromTheData:
; if A_GuiEvent = DoubleClick
; {
;     ; LV_GetText(OutputVar, A_EventInfo [, ColumnNumber])
;     ; LV_GetText(RowText, A_EventInfo [, ColumnNumber])
;     ; LV_GetText(RowText, A_EventInfo, 2)
;     ; MsgBox, %RowText% %A_EventInfo% %ColumnNumber%
;     ; MsgBox, % LV_GetCount("Column")
;
;     ; MsgBox, %
;
;     Loop % LV_GetCount("Column")
;     {
;         ; SendMessage, 4125, A_Index - 1, 0, SysListView321  ; 4125 is LVM_GETCOLUMNWIDTH.
;           ; LV_GetIndex
          ; LV_GetText(RowText, A_EventInfo, A_Index)
          ; MsgBox, %RowText% %A_EventInfo% %A_Index%
;
;         ; MsgBox Column %A_Index%'s width is %ErrorLevel%.
;     }
;
; }
; return

; ----------------------------------------------------------------------------------------------------------------------
SubLV:
   If (A_GuiEvent = "Normal") {
      Row := A_EventInfo
      Column := LV_SubItemHitTest(ResultsLV)

      LV_GetText(RowText, A_EventInfo, Column)
      ; MsgBox, %RowText% %A_EventInfo% %A_Index%

      ; LV_GetText(RowText, A_EventInfo, A_Index)
      ; MsgBox, %RowText% %A_EventInfo% %A_Index%

      ; ToolTip, You clicked on column %Column% in row %Row%! %RowText% %A_EventInfo%
      ToolTip, %RowText%

      BuildSQLquery = SELECT * FROM %RowText%
      GuiControl,25:,SQL,%BuildSQLquery%

      SetTimer, KillToolTip, -1500
   }
Return
; ----------------------------------------------------------------------------------------------------------------------
KillToolTip:
   ToolTip
Return
; ----------------------------------------------------------------------------------------------------------------------
LV_SubitemHitTest(HLV) {
   ; To run this with AHK_Basic change all DllCall types "Ptr" to "UInt", please.
   ; HLV - ListView's HWND
   Static LVM_SUBITEMHITTEST := 0x1039
   VarSetCapacity(POINT, 8, 0)
   ; Get the current cursor position in screen coordinates
   DllCall("User32.dll\GetCursorPos", "Ptr", &POINT)
   ; Convert them to client coordinates related to the ListView
   DllCall("User32.dll\ScreenToClient", "Ptr", HLV, "Ptr", &POINT)
   ; Create a LVHITTESTINFO structure (see below)
   VarSetCapacity(LVHITTESTINFO, 24, 0)
   ; Store the relative mouse coordinates
   NumPut(NumGet(POINT, 0, "Int"), LVHITTESTINFO, 0, "Int")
   NumPut(NumGet(POINT, 4, "Int"), LVHITTESTINFO, 4, "Int")
   ; Send a LVM_SUBITEMHITTEST to the ListView
   SendMessage, LVM_SUBITEMHITTEST, 0, &LVHITTESTINFO, , ahk_id %HLV%
   ; If no item was found on this position, the return value is -1
   If (ErrorLevel = -1)
      Return 0
   ; Get the corresponding subitem (column)
   Subitem := NumGet(LVHITTESTINFO, 16, "Int") + 1
   Return Subitem
}
/*
typedef struct _LVHITTESTINFO {
  POINT pt;
  UINT  flags;
  int   iItem;
  int   iSubItem;
  int   iGroup;
} LVHITTESTINFO, *LPLVHITTESTINFO;
*/

AddInfoToTable:
BuildSQLquery = INSERT INTO Test VALUES('Name#', 'Fname#', 'Phone#', 'Room#');
GuiControl,25:,SQL,%BuildSQLquery%
return

ShowInfoOfTable:
BuildSQLquery = SELECT * FROM Test
GuiControl,25:,SQL,%BuildSQLquery%
return

SQLiteINSERTINTOxVALUES:
; "INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',300,35.14)"
GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
SB_SetText("SQLiteDB new")
SetWorkingDir %A_ScriptDir%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB


GuiControlGet, DatabaseChooseFileLockURL
DBFileName := DatabaseChooseFileLockURL
GuiControlGet, Table
Gui, +OwnDialogs
GuiControlGet, SQL
If SQL Is Space
{
   SB_SetText("No text entered")
   Return
}
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
   GuiControl, , SQL, %SQL%
   CBBSQL .= "`n" . SQL
}
If (SubStr(SQL, 0) <> ";")
   SQL .= ";"
Result := ""
If RegExMatch(SQL, "i)^\s*SELECT\s") {
   SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, Result)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      ShowTable(Result)
   SB_SetText("GetTable: " . SQL . " done!")
} Else {
   SB_SetText("Exec: " . SQL)
   If !DB.Exec(SQL)
      MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else
      SB_SetText("Exec: " . SQL . " done!")
}
DB.CloseDB()
return
