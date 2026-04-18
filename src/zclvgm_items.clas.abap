CLASS zclvgm_items DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclvgm_items IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_items TYPE STANDARD TABLE OF ztvgm_elec_items.

**   Old School - Insert data
*    INSERT INITIAL LINE INTO lt_items ASSIGNING FIELD-SYMBOL(<fs_items>).
*    <fs_items>-id_item = 1.
*    ...

**    New School

**   ToDo: Mejo de Excepciones
    lt_items = VALUE #(
                        (
                          client    = sy-mandt
                          id_item   = 1
                          descr     = 'Resistor'
                          adc_desc  = '330 Ohm'
                          color     = 'Verde'
                          pieces    = 1
                          stock     = 1000
                          url       = 'https://techcircuit.org/wp-content/uploads/2022/07/Resistor1.png'
                         )
                        (
                          client    = sy-mandt
                          id_item   = 2
                          descr     = 'Resistor'
                          adc_desc  = '1K Ohm'
                          color     = 'Verde'
                          pieces    = 1
                          stock     = 10000
                          url       = 'https://techcircuit.org/wp-content/uploads/2022/07/Resistor1.png'
                         )
                        (
                          client    = sy-mandt
                          id_item   = 3
                          descr     = 'Transistor'
                          adc_desc  = '2n2222'
                          color     = 'Gris'
                          pieces    = 1
                          stock     = 100
                          url       = 'https://techcircuit.org/wp-content/uploads/2022/07/transistor.png'
                         )
                        (
                          client    = sy-mandt
                          id_item   = 4
                          descr     = 'Diode'
                          adc_desc  = '1nFFF'
                          color     = 'Negro'
                          pieces    = 1
                          stock     = 1000
                          url       = 'https://techcircuit.org/wp-content/uploads/2022/07/diodecc-768x480.jpg'
                         )
                         (
                          client    = sy-mandt
                          id_item   = 5
                          descr     = 'Dip Switch'
                          adc_desc  = ''
                          color     = 'Azul'
                          pieces    = 1
                          stock     = 300
                          url       = ''
                         )
                         (
                          client    = sy-mandt
                          id_item   = 6
                          descr     = 'Motor'
                          adc_desc  = 'Motor DC 5V'
                          color     = 'Plateado'
                          pieces    = 1
                          stock     = 80
                          url       = ''
                         )
                         (
                          client    = sy-mandt
                          id_item   = 7
                          descr     = 'Breadboard'
                          adc_desc  = 'Protoboard'
                          color     = 'Beige'
                          pieces    = 1
                          stock     = 100
                          url       = ''
                         )
                         (
                          client    = sy-mandt
                          id_item   = 8
                          descr     = 'Multimetro'
                          adc_desc  = 'Multimetro RMS Escolar'
                          color     = 'Naranja'
                          pieces    = 3
                          stock     = 25
                          url       = 'https://techcircuit.org/wp-content/uploads/2025/04/img28-768x489.jpg'
                         )
    ).

    INSERT ztvgm_elec_items FROM TABLE @lt_items.
    IF sy-subrc EQ 0.
        out->write( 'Succcessful data insertion' ).
    ELSE.
        out->write( 'Wrong data insertion' ).
    ENDIF.


*    UPDATE ZTVGM_ELEC_ITEMS SET URL = 'https://techcircuit.org/wp-content/uploads/2022/07/Resistor1.png' WHERE ID_ITEM = 1.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = 'https://techcircuit.org/wp-content/uploads/2022/07/Resistor1.png' WHERE ID_ITEM = 2.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = 'https://techcircuit.org/wp-content/uploads/2022/07/transistor.png' WHERE ID_ITEM = 3.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = 'https://techcircuit.org/wp-content/uploads/2022/07/diodecc-768x480.jpg' WHERE ID_ITEM = 4.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = '' WHERE ID_ITEM = 5.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = '' WHERE ID_ITEM = 6.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = '' WHERE ID_ITEM = 7.
*    UPDATE ZTVGM_ELEC_ITEMS SET URL = 'https://techcircuit.org/wp-content/uploads/2025/04/img28-768x489.jpg' WHERE ID_ITEM = 8.



  ENDMETHOD.
ENDCLASS.
