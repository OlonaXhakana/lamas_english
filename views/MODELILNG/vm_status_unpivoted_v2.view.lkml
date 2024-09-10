view: vm_status_unpivoted_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_status_unpivoted_v2` ;;

  #
  ## dimensions:
  #

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ages_eng {
    type: string
    sql: ${TABLE}.ages_eng ;;
  }

  dimension: ages_heb {
    type: string
    sql: ${TABLE}.ages_heb ;;
  }

  dimension: ages_order_by_numbers {
    type: number
    sql: ${TABLE}.ages_order_by_numbers ;;
  }

  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
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

  dimension: shape_name_eng {
    type: string
    sql: ${TABLE}.shape_name_eng ;;
  }

  dimension: status_eng {
    type: string
    sql: ${TABLE}.status_eng ;;
  }

  dimension: status_heb {
    type: string
    sql: ${TABLE}.status_heb ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_eng {
    type: string
    sql: ${TABLE}.type_eng ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  #
  ## measures:
  #

  measure: other_value_m {
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.other_value ;;
  }

  measure: value_m {
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name, name]
  }
}
