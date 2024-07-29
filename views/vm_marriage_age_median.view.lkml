view: vm_marriage_age_median {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_marriage_age_median` ;;

  dimension: m_marriage_age_mdn {
    type: number
    sql: ${TABLE}.m_MarriageAge_mdn ;;
  }
  dimension: marriage_age_mdn {
    type: number
    sql: ${TABLE}.MarriageAge_mdn ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: w_marriage_age_mdn {
    type: number
    sql: ${TABLE}.w_MarriageAge_mdn ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
