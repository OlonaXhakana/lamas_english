view: vm_work_n_wage_unpivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_work_n_wage_unpivoted` ;;

  #
  ## dimensions:
  #

  dimension: formatted_metric_name_eng {
    type: string
    sql: ${TABLE}.formatted_metric_name_eng ;;
  }

  dimension: formatted_metric_name_heb {
    type: string
    sql: ${TABLE}.formatted_metric_name_heb ;;
  }

  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
  }

  dimension: gender_heb {
    type: string
    sql: ${TABLE}.gender_heb ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
  }

  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
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
