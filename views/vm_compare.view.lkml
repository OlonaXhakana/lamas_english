view: vm_compare {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_compare` ;;

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
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
    drill_fields: [shape_name]
  }
}
