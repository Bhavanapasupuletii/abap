CLASS zcl_6163_compute_precision DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_6163_compute_precision IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* 1. Explicit variable definition mapped out to handle decimal precision
    DATA number1 TYPE i.
    DATA number2 TYPE i.
    DATA result  TYPE p LENGTH 8 DECIMALS 2.

* 2. Map input properties
    number1 = -8.
    number2 = 3.

* 3. Mathematical calculation with fixed decimal formatting
    result = number1 / number2.
    DATA(output) = |{ number1 } / { number2 } = { result }|.

* 4. Route accurate precise string value to standard log view (Logs: -2.67)
    out->write( output ).

  ENDMETHOD.
ENDCLASS.
