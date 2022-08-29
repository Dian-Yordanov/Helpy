ShowRecordSetString(RecordSet) {
   Global
   Local ColCount, RowCount, Row, RC
   ; GuiControl,25:, -ReDraw, ResultsLV
   LV_Delete()
   ColCount := LV_GetCount("Column")

    
   Loop, %ColCount%
      LV_DeleteCol(1)
   If (RecordSet.HasNames) {
      Loop, % RecordSet.ColumnCount
         LV_InsertCol(A_Index,"", RecordSet.ColumnNames[A_Index])
   }
   If (RecordSet.HasRows) {

     Aindex := 0
     If (RecordSet.Next(Row) < 1) {
        MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
        Return
     }
     Loop, % RecordSet.ColumnCount  {

       StringForMSGBox :=
       StringForMSGBox1 :=
       Aindex := Aindex + 1
       Loop {
            RowCount := LV_Add("", "")

            ; MsgBox, %Aindex%
            Loop, % Aindex {
              StringForMSGBox1 := % Row[A_Index]
              StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
              RC := RecordSet.Next(Row)
            }
            ; MsgBox, %StringForMSGBox%
            ; Loop, % A_Index {
            ;   StringForMSGBox1 := % Row[A_Index]
            ;   StringForMSGBox = %StringForMSGBox% %StringForMSGBox1%
            ;   RC := RecordSet.Next(Row)
            ; }

            } Until (RC < 1)

; MsgBox, %StringForMSGBox%
; MsgBox, %StringForMSGBox%

      }
      ; MsgBox, %StringForMSGBox%
	  
	  ;TODO SOME WORK WITH THIS CODE LATTER
	  
      ;FileAppend, %StringForMSGBox%, %A_ScriptDir%\AHKassociatedFiles\resources\log.txt
      ; MsgBox, %StringForMSGBox%
  }

   If (RC = 0)
      MsgBox, 16, %A_ThisFunc%, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
   Loop, % RecordSet.ColumnCount
      LV_ModifyCol(A_Index, "AutoHdr")
   ; GuiControl,25:, +ReDraw, ResultsLV
}

SQLiteSELECT*FROM:
; "SELECT * FROM stocks"
; C:\Users\Fallar\Documents\AHKHelpy\AHKlibs\SQLiteAHKdatabases\test.DB

; MyDB.GetTable(SQL, Table, ...)
; Should be called for SELECT statements whenever you want to get the complete
; result of the query as a "Table" object for direct access via the row index.
; All field values will be returned "in their zero-terminated string representation"
; (and accordingly an empty string for NULL values).
; MyDB.Query(SQL, RecordSet, ...)
; Should be called for SELECT statements whenever you want to get the result
; of the query as a "RecordSet" object. You'll have to call the built-in method
; RecordSet.Next() to access the records sequentially. Only DB-Query() does handle
; BLOBs properly. All other field types will be returned as strings (see DB.GetTable()).
; If you don't need the RecordSet anymore, call RecordSet.Free() to release the resources.


; CBBSQL := "SELECT * FROM albums"
; SQL := "SELECT * FROM albums"
; DBFileName := A_ScriptDir . "\AHKlibs\SQLiteAHKdatabases\chinook.db"
CBBSQL := "SELECT * FROM test"
SQL := "SELECT * FROM test"
; SQL := "select Fname from test"
DBFileName := A_ScriptDir . "\AHKHelpy\AHKlibs\SQLiteAHKdatabases\test.db"
; Title := "SQL Query/Command ListView Function GUI"
; GuiControl,25:,DatabaseChooseFileLockURL,%DBFileName%
; SB_SetText("SQLiteDB new")
; SetWorkingDir %A_ScriptDir%"\AHKlibs\SQLiteAHKdatabases"
DB := new SQLiteDB
Table := "Test"

; GuiControlGet, DatabaseChooseFileLockURL
; DBFileName := DatabaseChooseFileLockURL
; GuiControlGet, Table
; Gui, +OwnDialogs
; GuiControlGet, SQL
; If SQL Is Space
; {
;    SB_SetText("No text entered")
;    Return
; }
; MsgBox, %DBFileName%
; If FileExist(DBFileName) {
;    SB_SetText("Deleting " . DBFileName)
;    FileDelete, %DBFileName%
; }
; SB_SetText("OpenDB")
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ; ExitApp
}

; DB.GetTable(SQL, Table)

; If !InStr("`n" . CBBSQL . "`n", "`n" . SQL . "`n") {
;    GuiControl, , SQL, %SQL%
;    CBBSQL .= "`n" . SQL
; }
; If (SubStr(SQL, 0) <> ";")
;    SQL .= ";"
; Result := ""
; If RegExMatch(SQL, "i)^\s*SELECT\s") {
;    SB_SetText("GetTable: " . SQL)
   If !DB.GetTable(SQL, GetTableResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

   If !DB.Query(SQL, QueryResult)
      MsgBox, 16, SQLite Error: GetTable, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   Else

      ; ShowTableString(GetTableResult)
    ;   MsgBox, % QueryResult
      ShowRecordSetString(QueryResult)

;    SB_SetText("GetTable: " . SQL . " done!")
; } Else {
;    SB_SetText("Exec: " . SQL)
;    If !DB.Exec(SQL)
;       MsgBox, 16, SQLite Error: Exec, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
;    Else
;       SB_SetText("Exec: " . SQL . " done!")
; }


; MsgBox, % GetTableResult
; MsgBox, % QueryResult.Next()
DB.CloseDB()
return
