view: vm_educ_pivoted_v3 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ_pivoted_v3` ;;

  #
  ## dimensions:
  #

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_eng {
    type: string
    sql: ${TABLE}.gender_eng ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_eng {
    label: " "
    type: string
    sql: ${TABLE}.metric_eng ;;
  }

  dimension: metric_heb {
    label: " "
    type: string
    sql: ${TABLE}.metric_heb ;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
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

  dimension: value_yeshiva_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: IF(${TABLE}.value != 0, cast(${TABLE}.value as string), 'Data Missing') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Data Missing' %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Study in Yeshiva</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
        {% else %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Study in Yeshiva</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  #
  ## measures:
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
