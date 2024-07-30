view: vm_disabilites_unpivoted_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_disabilites_unpivoted_v2` ;;

#
  ## dimensions
  #

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: gender_heb {
    type: string
    sql: ${TABLE}.gender_heb ;;
  }

  dimension: loc_name_heb {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
  }

  dimension: metric_name_heb_all {
   label: "The type of disability"
    type: string
    sql: ${TABLE}.metric_name_heb_all ;;
  }

  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: shape_code {
    type: number
    sql: ${TABLE}.shape_code ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: stat_area {
    type: string
    sql: ${TABLE}.StatArea ;;
  }

  dimension: sub_district_heb {
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }

  dimension: sub_quarter {
    type: string
    sql: ${TABLE}.SubQuarter ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  #
  ## measures
  #

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name]
  }
}
