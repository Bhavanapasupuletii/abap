CLASS zcl_6163_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_6163_hello_world IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    " Deliver verified configuration text to the out stream
    out->write( 'Hello World' ).
  ENDMETHOD.
ENDCLASS.
