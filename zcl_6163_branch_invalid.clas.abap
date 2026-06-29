CLASS zcl_6163_branch_invalid DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_6163_branch_invalid IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* 1. Variables & Test Inputs (Invalid Operator Scenario)
    DATA number1 TYPE i         VALUE 12.
    DATA number2 TYPE i         VALUE 4.       
    DATA op      TYPE c LENGTH 1 VALUE '%'.     
    DATA result  TYPE p LENGTH 8 DECIMALS 2.
    DATA output  TYPE string.

* 2. Conditional Routing (CASE Statement)
    CASE op.
      WHEN '+'.
        result = number1 + number2.
      WHEN '-'.
        result = number1 - number2.
      WHEN '*'.
        result = number1 * number2.
      WHEN '/'.
        " Safe Division Wrapper
        TRY.
            result = number1 / number2.
          CATCH cx_sy_zerodivide.
            output = 'Error: Cannot divide by zero!'.
        ENDTRY.
      WHEN OTHERS.
        output = |Error: '{ op }' is an invalid operator.|.
    ENDCASE.

* 3. Build & Print Output
    IF output IS INITIAL.
      output = |{ number1 } { op } { number2 } = { result }|.
    ENDIF.

    out->write( output ).

  ENDMETHOD.
ENDCLASS.
