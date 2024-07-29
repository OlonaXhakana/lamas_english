view: vm_work_n_wage {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_work_n_wage` ;;

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: wrk_15_17_pcnt {
    type: number
    sql: ${TABLE}.Wrk_15_17_pcnt ;;
  }
  dimension: wrk_out_loc_pcnt {
    type: number
    sql: ${TABLE}.WrkOutLoc_pcnt ;;
  }
  dimension: wrk_y_pcnt {
    type: number
    sql: ${TABLE}.WrkY_pcnt ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
