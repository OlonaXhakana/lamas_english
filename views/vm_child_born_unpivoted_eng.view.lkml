view: vm_child_born_unpivoted_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_child_born_unpivoted_eng` ;;

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
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
    drill_fields: [metric_name, shape_name]
  }
}
