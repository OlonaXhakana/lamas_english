view: vm_origin_pivoted_v3_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_origin_pivoted_v3_eng` ;;

  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
  }
  dimension: order_metric_name_eng {
    type: string
    sql: ${TABLE}.order_metric_name_eng ;;
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
