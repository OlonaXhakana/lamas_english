view: vm_geography {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_geography` ;;

  dimension: area {
    type: number
    sql: ${TABLE}.Area ;;
  }
  dimension: area1 {
    type: number
    sql: ${TABLE}.Area1 ;;
  }
  dimension: district_code {
    type: number
    sql: ${TABLE}.DistrictCode ;;
  }
  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }
  dimension: estb_yr {
    type: string
    sql: ${TABLE}.EstbYr ;;
  }
  dimension: locality_code {
    type: number
    sql: ${TABLE}.LocalityCode ;;
  }
  dimension: nat_reg_code {
    type: number
    sql: ${TABLE}.NatRegCode ;;
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
  dimension: sub_district_code {
    type: number
    sql: ${TABLE}.SubDistrictCode ;;
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
