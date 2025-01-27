view: vw_allyeshuyot {
  sql_table_name: `jutomate-lamas-english.MODELLING.vw_allyeshuyot` ;;

  #
  ## dimensions:
  #

  dimension: district_code {
    label: "סמל מחוז"
    description: "סמל מחוז"
    type: number
    sql: ${TABLE}.DistrictCode ;;
  }

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

  dimension: local_authorities_cluster_code {
    label: "סמל אשכול רשויות מקומיות"
    description: "סמל אשכול רשויות מקומיות"
    type: number
    sql: ${TABLE}.LocalAuthoritiesClusterCode ;;
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

  dimension: locality_code {
    label: "סמל יישוב"
    description: "סמל יישוב"
    type: number
    sql: ${TABLE}.LocalityCode ;;
  }

  dimension: metr_all_code {
    label: "סמל מטרופולין"
    description: "סמל מטרופולין"
    type: number
    sql: ${TABLE}.MetrAllCode ;;
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

  # dimension: metr_code {
  #   type: number
  #   sql: ${TABLE}.MetrCode ;;
  # }

  # dimension: metr_eng {
  #   type: string
  #   sql: ${TABLE}.MetrEng ;;
  # }

  # dimension: metr_heb {
  #   type: string
  #   sql: ${TABLE}.MetrHeb ;;
  # }

  dimension: religion_heb {
    label: "דת עיקרית"
    description: "שם דת עיקרית"
    type: string
    sql: ${TABLE}.ReligionHeb ;;
  }

  dimension: hh_midat_datiyut_name {
    label: "אורח חיים עיקרי של משקי הבית"
    description: "שם אורח החיים העיקרי של משקי הבית"
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_Name ;;
  }

  dimension: metr_ring_code {
    label: "סמל טבעת"
    description: "סמל טבעת"
    type: number
    sql: ${TABLE}.MetrRingCode ;;
  }

  dimension: gender {
    label: "מגדר"
    description: "חלוקה לפי נשים, גברים או סך הכל"
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: metr_ring_eng {
    type: string
    sql: ${TABLE}.MetrRingEng ;;
  }

  dimension: metr_ring_heb {
    label: "טבעת"
    description: "שם טבעת"
    type: string
    sql: ${TABLE}.MetrRingHeb ;;
  }

  dimension: metr_sec_code {
    label: "סמל גזרה"
    description: "סמל גזרה"
    type: number
    sql: ${TABLE}.MetrSecCode ;;
  }

  dimension: metr_sec_eng {
    type: string
    sql: ${TABLE}.MetrSecEng ;;
  }

  dimension: metr_sec_heb {
    label: "גזרה"
    description: "שם גזרה"
    type: string
    sql: ${TABLE}.MetrSecHeb ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  dimension: muni_code {
    label: "סמל מעמד מוניציפלי"
    description: "סמל מעמד מוניציפלי"
    type: number
    sql: ${TABLE}.MuniCode ;;
  }

  dimension: muni_eng {
    type: string
    sql: ${TABLE}.MuniEng ;;
  }

  dimension: muni_heb {
    label: "מעמד מוניציפלי"
    description: "שם מעמד מוניציפלי"
    type: string
    sql: ${TABLE}.MuniHeb ;;
  }

  dimension: nat_reg_code {
    label: "סמל אזור טבעי"
    description: "סמל אזור טבעי"
    type: number
    sql: ${TABLE}.NatRegCode ;;
  }

  dimension: nat_reg_eng {
    type: string
    sql: ${TABLE}.NatRegEng ;;
  }

  dimension: nat_reg_heb {
    label: "אזור טבעי"
    description: "שם אזור טבעי"
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }

  dimension: num_value {
    label: "ערך מספרי"
    description: "הנתון או הערך המספרי של המדד"
    type: number
    sql: ${TABLE}.num_value ;;
  }

  # dimension: quarter {
  #   label: "רובע"
  #   description: "שם רובע"
  #   type: number
  #   sql: ${TABLE}.Quarter ;;
  # }

  dimension: rova_cmb {
    label: "רובע"
    description: "מספר רובע"
    type: string
    sql: ${TABLE}.Rova_cmb ;;
  }

  dimension: shape_name {
    label: "שם אזור"
    description: "שם יחידה גיאוגרפית, יישוב או אזור"
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: shape_name_eng {
    type: string
    sql: ${TABLE}.shape_name_eng ;;
  }

  dimension: stat_area_cmb {
    label: "אזור סטטיסטי"
    description: "שם אזור סטטיסטי"
    type: string
    sql: ${TABLE}.StatAreaCmb ;;
  }

  dimension: string_value {
    label: "ערך מחרוזת"
    description: "הנתון או הערך הטקסטואלי של המדד"
    type: string
    sql: ${TABLE}.string_value ;;
  }

  dimension: sub_district_code {
    label: "סמל נפה"
    description: "סמל נפה"
    type: number
    sql: ${TABLE}.SubDistrictCode ;;
  }

  dimension: sub_district_eng {
    type: string
    sql: ${TABLE}.SubDistrictEng ;;
  }

  dimension: sub_district_heb {
    label: "נפה"
    description: "שם נפה"
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }

  # dimension: sub_quarter {
  #   label: "תת-רובע"
  #   description: "תת-רובע"
  #   type: number
  #   sql: ${TABLE}.SubQuarter ;;
  # }

  dimension: subtopic {
    label: "תת נושא"
    description: "תת נושא"
    type: string
    sql: ${TABLE}.subtopic ;;
  }

  dimension: tatrova_cmb {
    label: "תת-רובע"
    description: "שם תת-רובע"
    type: string
    sql: ${TABLE}.Tatrova_cmb ;;
  }

  dimension: topic {
    label: "נושא"
    description: "נושא"
    type: string
    sql: ${TABLE}.topic ;;
  }

  dimension: translated_metric {
    label: "מדד"
    description: "שם המדד עליו מבוססת השאלה"
    type: string
    sql: ${TABLE}.translated_metric ;;
  }

  dimension: type {
    label: "סוג אזור"
    description: "סוג היחידה הגיאוגרפית או האזור"
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_eng {
    type: string
    sql: ${TABLE}.type_eng ;;
  }

  dimension: type_loc_code {
    label: "סמל צורת יישוב"
    description: "סמל צורת יישוב"
    type: number
    sql: ${TABLE}.TypeLocCode ;;
  }

  dimension: type_loc_eng {
    type: string
    sql: ${TABLE}.TypeLocEng ;;
  }

  dimension: type_loc_heb {
    label: "צורת יישוב"
    description: "שם צורת יישוב"
    type: string
    sql: ${TABLE}.TypeLocHeb ;;
  }

  #
  ## measures:
  #

  measure: sum_value {
    label: "ערך מספרי"
    description: "הנתון או הערך המספרי של המדד"
    type: sum
    sql: ${TABLE}.num_value ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
