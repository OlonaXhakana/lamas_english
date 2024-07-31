view: vm_disabilites_unpivoted_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_disabilites_unpivoted_eng` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
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
