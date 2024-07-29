view: vm_migration {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_migration` ;;

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: metric_heb {
    type: string
    sql: ${TABLE}.metric_heb ;;
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
    drill_fields: [shape_name]
  }
}
