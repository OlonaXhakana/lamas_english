view: vm_child_born {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_child_born` ;;

  dimension: chld_born_avg {
    type: number
    sql: ${TABLE}.ChldBorn_avg ;;
  }
  dimension: chld_born_avg_08 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_08 ;;
  }
  dimension: chld_born_avg_22 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_22 ;;
  }
  dimension: chld_born_avg_72 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_72 ;;
  }
  dimension: chld_born_avg_83 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_83 ;;
  }
  dimension: chld_born_avg_95 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_95 ;;
  }
  dimension: chld_born_chris_avg {
    type: number
    sql: ${TABLE}.ChldBornChris_avg ;;
  }
  dimension: chld_born_druze_avg {
    type: number
    sql: ${TABLE}.ChldBornDruze_avg ;;
  }
  dimension: chld_born_jew_avg {
    type: number
    sql: ${TABLE}.ChldBornJew_avg ;;
  }
  dimension: chld_born_mosl_avg {
    type: number
    sql: ${TABLE}.ChldBornMosl_avg ;;
  }
  dimension: chld_born_other_avg {
    type: number
    sql: ${TABLE}.ChldBornOther_avg ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
