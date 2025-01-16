view: vw_multi_kpi_heb {
  sql_table_name: `jutomate-lamas-english.MODELLING.vw_multi_kpi_heb` ;;
  drill_fields: [id]

  #
  ## dimensions:
  #

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: metric {
    label: "שם המדד"
    description: "שם המדד עליו מבוססת השאלה"
    type: string
    sql: ${TABLE}.metric ;;
  }

  # dimension: metric_eng {
  #   label: "kpi in English"
  #   description: "kpi in English"
  #   type: string
  #   sql: ${TABLE}.metric_eng ;;
  # }

  dimension: shape_name {
    label: "שם יחידה גיאוגרפית"
    description: "שם יישוב או אזור"
    map_layer_name: union_12layers
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  # dimension: shape_name_eng {
  #   label: "Location name in English"
  #   description: "Location name in English"
  #   type: string
  #   sql: ${TABLE}.shape_name_eng ;;
  # }

  dimension: type {
    label: "סוג היחידה הגיאוגרפית"
    description: "סוג האזור"
    type: string
    sql: ${TABLE}.type ;;
  }

  # dimension: type_eng {
  #   label: "Geographic unit type in English"
  #   description: "Various geographic units types"
  #   type: string
  #   sql: ${TABLE}.type_eng ;;
  # }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  # dimension: ReligionEng {
  #   label: "Main Religion"
  #   description: "Main Religion in English"
  #   type: string
  #   sql: ${TABLE}.ReligionEng ;;
  # }

  dimension: ReligionHeb {
    label: "דת עיקרית"
    description: "שם הדת העיקרית"
    type: string
    sql: ${TABLE}.ReligionHeb ;;
  }

  #
  ## measures:
  #

  measure: count {
    type: count
    drill_fields: [id, shape_name]
  }

  measure: sum_of_value {
    label: "ערך"
    description: "הנתון או הערך המספרי של המדד"
    type: sum
    sql: ${TABLE}.value ;;
  }

  # measure: sum_of_value_eng {
  #   label: "Sum of value"
  #   description: "Measure the sum of value"
  #   type: sum
  #   sql: ${TABLE}.value ;;
  # }

  # measure: avg_of_value {
  #   label: "ממוצע"
  #   description: "הנתון או הממוצע המספרי של המדד"
  #   type: average
  #   sql: ${TABLE}.value ;;
  # }

  # measure: avg_of_value_eng {
  #   label: "Average of value"
  #   description: "Measure the sum of value"
  #   type: average
  #   sql: ${TABLE}.value ;;
  # }
}
