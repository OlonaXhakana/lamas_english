view: vm_age_pivoted_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_pivoted_eng` ;;

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
  measure: count {
    type: count
    drill_fields: [age_name, metric_name, shape_name]
  }
}
