view: vm_status_unpivoted_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_status_unpivoted_v2` ;;

  dimension: ages_heb {
    type: string
    sql: ${TABLE}.ages_heb ;;
  }
  dimension: ages_order_by_numbers {
    type: number
    sql: ${TABLE}.ages_order_by_numbers ;;
  }
  dimension: gender_heb {
    type: string
    sql: ${TABLE}.gender_heb ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: status_heb {
    type: string
    sql: ${TABLE}.status_heb ;;
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
    drill_fields: [shape_name, name]
  }
}
