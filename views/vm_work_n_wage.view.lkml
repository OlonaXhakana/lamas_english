view: vm_work_n_wage {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_work_n_wage` ;;

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  # dimension: wrk_15_17_pcnt {
  #   type: number
  #   sql: ${TABLE}.Wrk_15_17_pcnt ;;
  # }

dimension: wrk_15_17_pcnt {

  type: number
  sql: coalesce(cast(${TABLE}.Wrk_15_17_pcnt as string), 'missing data') ;;
  value_format: "0.0\%"
  html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/Wrk_15_17_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Working Youth</span><br>
            <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/Wrk_15_17_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Working Youth</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div>;;
}

  # dimension: wrk_out_loc_pcnt {
  #   type: number
  #   sql: ${TABLE}.WrkOutLoc_pcnt ;;
  # }


  dimension: wrk_out_loc_pcnt {
    type: number
    sql: coalesce(cast(${TABLE}.WrkOutLoc_pcnt as string), 'missing data') ;;
    value_format: "0.0\%"
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/WrkOutLoc_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Workers outside the settlement of residence</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing data</span>
        {% else %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/WrkOutLoc_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Workers outside the settlement of residence</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div>;;
  }

  dimension: wrk_y_pcnt {
    type: number
    sql: ${TABLE}.WrkY_pcnt ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
