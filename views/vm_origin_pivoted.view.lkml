view: vm_origin_pivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_origin_pivoted` ;;

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
  }

  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
    }

  dimension: metric_name_heb_l1 {
    type: string
    sql: ${TABLE}.metric_name_heb_l1 ;;
  }

  dimension: metric_name_eng_l1 {
    type: string
    sql: ${TABLE}.metric_name_eng_l1 ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: shape_name_eng {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type_eng {
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
