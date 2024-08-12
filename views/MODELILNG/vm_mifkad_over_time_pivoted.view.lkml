view: vm_mifkad_over_time_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_mifkad_over_time_pivoted` ;;

  #
  ## dimensions:
  #

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
  }

  dimension: haim_lo_motza {
    type: number
    sql: ${TABLE}.Haim_Lo_motza ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: metric_name_year {
    type: string
    sql: ${TABLE}.metric_name_year ;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
  }

  dimension: packed_bubble {
    type: number
    sql: ${TABLE}.packed_bubble ;;
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
    drill_fields: [metric_name, shape_name]
  }
}
