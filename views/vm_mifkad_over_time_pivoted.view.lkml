view: vm_mifkad_over_time_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_mifkad_over_time_pivoted` ;;

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: haim_lo_motza {
    type: number
    sql: ${TABLE}.Haim_Lo_motza ;;
  }
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
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
    drill_fields: [metric_name, shape_name]
  }
}
