view: vm_religion_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_religion_v2` ;;

  dimension: hh_midat_datiyut_name {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_Name ;;
  }
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: religion_heb {
    type: string
    sql: ${TABLE}.ReligionHeb ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [metric_name, shape_name, name, hh_midat_datiyut_name]
  }
}
