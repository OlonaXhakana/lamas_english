view: vm_educ_pivoted_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ_pivoted_v2` ;;

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: metric_hub {
    type: string
    sql: ${TABLE}.metric_hub ;;
  }
  dimension: metric_hub_order {
    type: string
    sql: ${TABLE}.metric_hub_order ;;
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
