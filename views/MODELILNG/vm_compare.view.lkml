view: vm_compare {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_compare` ;;

  #
  ## dimensions:
  #

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_eng {
    type: string
    sql: ${TABLE}.metric_eng ;;
  }

  dimension: shape_name {
    label: " "
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: shape_name_eng {
    label: " "
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
    # label: " "
    type: number
    sql: ${TABLE}.value ;;
  }


  measure: count {
    type: count
    drill_fields: [shape_name]
  }

  measure: value_m {
      label: " "
      type: number
      sql: ${TABLE}.value ;;
  }
}
