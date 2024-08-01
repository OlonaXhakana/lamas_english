view: vm_educ_pivoted_eng_2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ_pivoted_eng_2` ;;

  #
  ## dimensions:
  #

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: value_yeshiva_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: IF(${TABLE}.value != 0, cast(${TABLE}.value as string), 'Missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Missing data' %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Study in a yeshiva</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing data</span>
        {% else %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Study in a yeshiva</span><br>
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
