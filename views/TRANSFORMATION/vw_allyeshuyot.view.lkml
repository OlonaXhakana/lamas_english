view: vw_allyeshuyot {
  sql_table_name: `jutomate-lamas-english.TRANSFORMATION.vw_allyeshuyot` ;;

  #
  ## dimensions:
  #

  dimension: district_eng {
    type: string
    sql: ${TABLE}.districtEng ;;
  }

  dimension: district_heb {
    label: "מחוז"
    description: "מחוז"
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: loc_name_eng {
    type: string
    sql: ${TABLE}.LocNameEng ;;
  }

  dimension: loc_name_heb {
    label: "שם יישוב"
    description: "שם יישוב"
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: local_authorities_cluster_eng {
    type: string
    sql: ${TABLE}.LocalAuthoritiesClusterEng ;;
  }

  dimension: local_authorities_cluster_heb {
    label: "אשכול רשויות מקומיות"
    description: "אשכול רשויות מקומיות"
    type: string
    sql: ${TABLE}.LocalAuthoritiesClusterHeb ;;
  }

  dimension: metr_all_eng {
    type: string
    sql: ${TABLE}.MetrAllEng ;;
  }

  dimension: metr_all_heb {
    label: "שם מטרופולין"
    description: "שם מטרופולין"
    type: string
    sql: ${TABLE}.MetrAllHeb ;;
  }

  dimension: metr_eng {
    type: string
    sql: ${TABLE}.MetrEng ;;
  }

  dimension: metr_heb {
    label: "מטרופולין"
    description: "מטרופולין"
    type: string
    sql: ${TABLE}.MetrHeb ;;
  }

  dimension: metr_ring_eng {
    type: string
    sql: ${TABLE}.MetrRingEng ;;
  }

  dimension: metr_ring_heb {
    label: "טבעת"
    description: "טבעת"
    type: string
    sql: ${TABLE}.MetrRingHeb ;;
  }

  dimension: metr_sec_eng {
    type: string
    sql: ${TABLE}.MetrSecEng ;;
  }

  dimension: metr_sec_heb {
    label: "גזרה"
    description: "גזרה"
    type: string
    sql: ${TABLE}.MetrSecHeb ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  dimension: muni_eng {
    type: string
    sql: ${TABLE}.MuniEng ;;
  }

  dimension: muni_heb {
    label: "מעמד מוניציפלי"
    description: "מעמד מוניציפלי"
    type: string
    sql: ${TABLE}.MuniHeb ;;
  }

  dimension: nat_reg_eng {
    type: string
    sql: ${TABLE}.NatRegEng ;;
  }

  dimension: nat_reg_heb {
    label: "אזור טבעי"
    description: "אזור טבעי"
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }

  dimension: num_value {
    type: number
    sql: ${TABLE}.num_value ;;
  }

  dimension: rova_cmb {
    label: "שם רובע"
    description: "שם רובע"
    type: string
    sql: ${TABLE}.Rova_cmb ;;
  }

  dimension: stat_area_cmb {
    label: "שם אזור סטטיסטי"
    description: "שם אזור סטטיסטי"
    type: string
    sql: ${TABLE}.StatAreaCmb ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.string_value ;;
  }

  dimension: sub_district_eng {
    type: string
    sql: ${TABLE}.SubDistrictEng ;;
  }

  dimension: sub_district_heb {
    label: "נפה"
    description: "נפה"
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }

  dimension: tatrova_cmb {
    label: "שם תת רובע"
    description: "שם תת רובע"
    type: string
    sql: ${TABLE}.Tatrova_cmb ;;
  }

  dimension: translated_metric {
    label: "שם המדד"
    description: "שם המדד עליו מבוססת השאלה"
    type: string
    sql: ${TABLE}.translated_metric ;;
  }

  dimension: type_loc_eng {
    type: string
    sql: ${TABLE}.TypeLocEng ;;
  }

  dimension: type_loc_heb {
    label: "צורת יישוב"
    description: "צורת יישוב"
    type: string
    sql: ${TABLE}.TypeLocHeb ;;
  }

  #
  ## measures:
  #

  measure: count {
    type: count
  }

  measure: sum_of_value {
    label: "ערך"
    description: "הנתון או הערך המספרי של המדד"
    type: sum
    sql: ${TABLE}.num_value ;;
  }

  measure: string_as_value {
    label: "ערך מחרוזת"
    description: "ערך המייצג את התשובה או הקטגוריה של המדד"
    type: string
    sql: ${TABLE}.string_value ;;
  }
}
