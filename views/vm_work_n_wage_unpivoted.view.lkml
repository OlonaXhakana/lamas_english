view: vm_work_n_wage_unpivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_work_n_wage_unpivoted` ;;

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }
  dimension: formatted_metric_name_heb {
    type: string
    sql: ${TABLE}.formatted_metric_name_heb ;;
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
  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
  }
  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }
  dimension: quarter {
    type: number
    sql: ${TABLE}.Quarter ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: stat_area {
    type: number
    sql: ${TABLE}.StatArea ;;
  }
  dimension: sub_district_heb {
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }
  dimension: sub_quarter {
    type: number
    sql: ${TABLE}.SubQuarter ;;
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
