view: vm_age_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_pivoted` ;;

  #
  ## dimensions:
  #

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age_name {
    type: string
    sql: ${TABLE}.age_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
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

  measure: value_m {
    type: sum
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [age_name, metric_name, shape_name]
  }
}
