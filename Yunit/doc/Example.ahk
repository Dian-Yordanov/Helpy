


MsgBox, %A_ScriptDir% %A_MyDocuments%



#Include ..\Yunit.ahk
#Include ..\Window.ahk
#Include ..\StdOut.ahk
#Include ..\JUnit.ahk
#Include ..\OutputDebug.ahk

; Yunit.Use(YunitStdOut, YunitWindow, YunitJUnit, YunitOutputDebug)

Tester := Yunit.Use(YunitStdOut, YunitWindow, YunitJUnit, YunitOutputDebug)

#Include IncludeThisInClassB.ahk
#Include IncludeThisInClassA.ahk


global VarA := 6 
global VarAB := 7


global VarXXX := 2
global VarCCC := 7


; MsgBox, % var11 + var13
            ; MsgBox, % var11 + var13

; MsgBox, % var11 + var13

; Yunit.assert(Var11 + Var13 == 3)

; Tester.Test(Yunit.assert(Var11 + Var13 == 3))

Class A{
	Static Var1:=1
	Static Var2:=2

    ; new_c_instance := New C_Class

    
    ; #Include IncludeThisInClasBA.ahk

    ; C_Class_Method_1()
}

Class UnitTestClass extends A{

        Test_Sum1()
        {

            ; (VarA, VarAB)



            Yunit.assert(Var11 + Var13 == 3)
        }

        Test_Sum2()
        {

            ; (VarA, VarAB)



            Yunit.assert(VarA + VarAB == 13)
        }

        Test_Sum3()
        {

            ; (VarA, VarAB)



            Yunit.assert(VarCCC + VarXXX == 9)
        }


        Test_Sum4()
        {

            ; (VarA, VarAB)

            ; var11:=1
            ; var13:=3



            Yunit.assert(var11 + var13 == 4)
        }
        Test_Sum5()
        {

            ; (VarA, VarAB)

            ; var11:=1
            ; var13:=3



            Yunit.assert(var111 + var113 == 6)
        }


        Test_Sum()
        {
            Yunit.assert(A.Var1 + A.Var2 == 3)
        }
        Test_Sum_Fail()
        {
            Yunit.assert(A.Var1 + A.Var2 == 4)
        }

        ; This_Is_A_Test(1)

}

 Tester.Test(UnitTestClass)

; This_Is_A_Test(a)
; {
;     Yunit.Assert(a = 1) ;test passes
; }

; This_Is_Another_Test()
; {
;     Yunit.Assert(1 = 2, "Description of the failure") ;test fails
;     MsgBox, hello world   ;this never runs since the test above failed
; }



; .Test(NumberTestSuite, StringTestSuite)

;   global x1 := 123
;   global y1 := 456

; class NumberTestSuite
; {
    ; Begin()
    ; {
    ;   global x1 := 123
    ;   global y1 := 456
    ; }
    
    ; Test_Sum()
    ; {
    ;     Yunit.assert(x1 + y1 == 579)
    ; }
    
    ; Test_Division()
    ; {
    ;     Yunit.assert(this.x1 / this.y1 < 1)
    ;     Yunit.assert(this.x1 / this.y1 > 0.25)
    ; }
    
    ; Test_Multiplication()
    ; {
    ;     Yunit.assert(this.x1 * this.y1 == 56088)
    ; }
    
    ; End()
    ; {
    ; }
    
    ; class Negatives
    ; {
    ;     Begin()
    ;     {
    ;         this.x := -123
    ;         this.y := 456
    ;     }
        
    ;     Test_Sum()
    ;     {
    ;         Yunit.assert(this.x + this.y == 333)
    ;     }
        
    ;     Test_Division()
    ;     {
    ;         Yunit.assert(this.x / this.y > -1)
    ;         Yunit.assert(this.x / this.y < -0.25)
    ;     }
        
    ;     Test_Multiplication()
    ;     {
    ;         Yunit.assert(this.x * this.y == -56088)
    ;     }
        
    ;     Test_Fails()
    ;     {
    ;         Yunit.assert(this.x - this.y == 0, "oops!")
    ;     }
        
    ;     Test_Fails_NoMessage()
    ;     {
    ;         Yunit.assert(this.x - this.y == 0)
    ;     }

    ;     End()
    ;     {
    ;         this.Delete("x")
    ;         this.Delete("y")
    ;     }
    ; }
; }



; NewClass:= New B
; MsgBox % "Var1=" NewClass.Var1 "`nVar2=" NewClass.Var2 "`nVar3=" NewClass.Var3


; class StringTestSuite
; {
;     Begin()
;     {
;         this.a := "abc"
;         this.b := "cdef"
;     }
    
;     Test_Concat()
;     {
;         Yunit.assert(this.a . this.b == "abccdef")
;     }
    
;     Test_Substring()
;     {
;         Yunit.assert(SubStr(this.b, 2, 2) == "de")
;     }
    
;     Test_InStr()
;     {
;         Yunit.assert(InStr(this.a, "c") == 3)
;     }
    
;     Test_ExpectedException_Success()
;     {
;         this.ExpectedException := Exception("SomeCustomException")
;         if SubStr(this.a, 3, 1) == SubStr(this.b, 1, 1)
;             throw Exception("SomeCustomException")
;     }
    
;     Test_ExpectedException_Fail()
;     {

;         this.ExpectedException := "fubar"
;         Yunit.assert(this.a != this.b)
;             throw Exception("fubar")
;         ; no exception thrown!
;     }
    
;     End()
;     {
;         this.Delete("a")
;         this.Delete("b")
;     }
; }
