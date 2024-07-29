view: vm_pop {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_pop` ;;

  dimension: change_pcnt {
    type: number
    sql: ${TABLE}.change_pcnt ;;
  }
  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }
  dimension: foreign_pcnt {
    type: number
    sql: ${TABLE}.Foreign_pcnt ;;
  }
  dimension: inst_pcnt {
    type: number
    sql: ${TABLE}.inst_pcnt ;;
  }
  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }
  dimension: pop_approx {
    type: number
    sql: ${TABLE}.pop_approx ;;
  }
  dimension: pop_density {
    type: number
    sql: ${TABLE}.pop_density ;;
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
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
