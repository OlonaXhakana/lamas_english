view: vm_educ_pivoted_eng_2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ_pivoted_eng_2` ;;

  #
  ## dimensions:
  #

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
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

  #
  ## measures:
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
