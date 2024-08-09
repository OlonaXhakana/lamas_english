view: vm_origin_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_origin_pivoted` ;;

  #
  ## dimensions:
  #

  dimension: country_name {
    # label: " "
    type: string
    sql: CONCAT(${vm_origin_pivoted.metric_name_eng}, " ", ${vm_origin_pivoted.value},"%") ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
  }

  dimension: metric_name_eng_l1 {
    type: string
    sql: ${TABLE}.metric_name_eng_l1 ;;
  }

  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
  }

  dimension: metric_name_heb_l1 {
    type: string
    sql: ${TABLE}.metric_name_heb_l1 ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: shape_name_eng {
    type: string
    sql: ${TABLE}.shape_name_eng ;;
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
    value_format: "0.0\%"
    type: number
    sql: ${TABLE}.value ;;
  }

  #
  ## measures:
  #


  measure: value_m {
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.value ;;
  }

  measure: value_m_2 {
    type: string
    sql: rank(-${value}, -${value}) ;;
  }

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name]
  }
}
