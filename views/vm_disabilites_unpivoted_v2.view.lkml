view: vm_disabilites_unpivoted_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_disabilites_unpivoted_v2` ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }
  dimension: gender_heb {
    type: string
    sql: ${TABLE}.gender_heb ;;
  }
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
  }
  dimension: metric_name_heb_all {
    type: string
    sql: ${TABLE}.metric_name_heb_all ;;
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
