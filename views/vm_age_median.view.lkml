view: vm_age_median {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_median` ;;

  dimension: age_median {
    type: number
    sql: ${TABLE}.age_median ;;
  }
  dimension: dependency_ratio {
    type: number
    sql: ${TABLE}.DependencyRatio ;;
  }
  dimension: m_age_median {
    type: number
    sql: ${TABLE}.m_age_median ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: w_age_median {
    type: number
    sql: ${TABLE}.w_age_median ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
