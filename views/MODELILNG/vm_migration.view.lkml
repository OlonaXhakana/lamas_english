view: vm_migration {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_migration` ;;

  #
  ## dimensions:
  #

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_eng {
    label: "value"
    type: string
    sql: ${TABLE}.metric_eng ;;
  }

  dimension: metric_heb {
    type: string
    sql: ${TABLE}.metric_heb ;;
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
    type: number
    sql: ${TABLE}.value ;;
  }

  #
  ## measures:
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }

  measure: value_m {
    label: " "
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
 }
}
