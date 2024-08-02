view: vm_status_unpivoted_v2_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_status_unpivoted_v2_eng` ;;

  dimension: ages_eng {
    type: string
    sql: ${TABLE}.ages_eng ;;
  }
  dimension: ages_order_by_numbers {
    type: number
    sql: ${TABLE}.ages_order_by_numbers ;;
  }
  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: status_eng {
    type: string
    sql: ${TABLE}.status_eng ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: value_sum {
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name, name]
  }
}
