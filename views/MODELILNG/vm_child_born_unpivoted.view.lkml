view: vm_child_born_unpivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_child_born_unpivoted` ;;

  #
  ## dimensions:
  #

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
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
    drill_fields: [metric_name, shape_name]
  }
}
