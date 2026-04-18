@AbapCatalog.sqlViewName: 'ZCDSVGMSQLITEMS'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Items - CDS Data Definition'
@Metadata.allowExtensions: true
define view zcdsvgm_items
  as select from ztvgm_elec_items
{
 // key client   as client,
  key id_item  as IdItem,
      descr    as Descr,
      adc_desc as AdcDesc,
      color    as Color,
      pieces   as Pieces,
      stock    as Stock,
      url      as URL,
      case
      when stock = 0 then 0
      when stock between 1 and 26 then 1
      when stock between 27 and 201 then 2
      when stock > 201 then 3
      else 0
      end as Status
      /*
        0 -> Gris       Neutral
        1 -> Rojo       Negativo
        2 -> Amarillo   Crítico
        3 -> Verde      Positivo
      */

}
