view: vm_age_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_pivoted` ;;

  dimension: age_name {
    type: string
    sql: ${TABLE}.age_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
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
  measure: value_m {
    label: "value_sum"
    type: sum
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name]


  }
}
