view: vm_migration_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_migration_eng` ;;

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: metric_eng {
    type: string
    sql: ${TABLE}.metric_eng ;;
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
