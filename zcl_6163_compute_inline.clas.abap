CLASS zcl_6163_compute_inline DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_6163_compute_inline IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* 1. Declare input variables
    DATA number1 TYPE i.
    DATA number2 TYPE i.

* 2. Populate input buffers
    number1 = -8.
    number2 = 3.

* 3. Compute with Inline Declaration (Triggers Integer Type Conversion)
    DATA(result) = number1 / number2.
    DATA(output) = |{ number1 } / { number2 } = { result }|.

* 4. Output to console window (Logs: -3)
    out->write( output ).

  ENDMETHOD.
ENDCLASS.
