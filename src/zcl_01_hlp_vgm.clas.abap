CLASS zcl_01_hlp_vgm DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_hlp_vgm IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lv_txt) = 'h' && 'h'.
    out->write( lv_txt ).



  ENDMETHOD.
ENDCLASS.
