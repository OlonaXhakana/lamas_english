view: vm_work_n_wage_unpivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_work_n_wage_unpivoted` ;;

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }
  # dimension: formatted_metric_name_heb {
  #   type: string
  #   sql: ${TABLE}.formatted_metric_name_heb ;;
  # }
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


  dimension: value_Wrk_15_17_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: IF(${TABLE}.value != 0, cast(${TABLE}.value as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/Wrk_15_17_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">נוער עובד</span><br>
            <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/Wrk_15_17_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">נוער עובד</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div>;;
  }

  dimension: value_WrkY_pcnt_text_icon {
    label: "15 years old and older work"
    type: string
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/WrkY_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">בני 15 ומעלה עובדים</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>;;
  }

  dimension: value_WrkOutLoc_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/WrkOutLoc_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">עובדים מחוץ ליישוב המגורים</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>;;
  }

  dimension: formatted_metric_name_heb {
    label: "Occupation"
    sql: ${TABLE}.formatted_metric_name_heb ;;
    html:
        <div style="line-height:1.1;width:100px;text-align:center;">
        <span style="white-space:normal;word-wrap:break-word;">{{ value }}</span>
        </div>;;
  }

  dimension: formatted_metric_name_heb_inds {
    label: "branch"
    sql: ${TABLE}.formatted_metric_name_heb ;;
    html:
        <div style="line-height:1.1;width:55px;text-align:center;transform:rotate(0deg);transform-origin:100%;">
        <span style="white-space:normal;word-wrap:break-word;rotate:45deg">{{ value }}</span>
        </div>;;
  }

  dimension: formatted_metric_name_heb_trans {
    label: "means of arrival"
    sql: ${TABLE}.formatted_metric_name_heb ;;
    html:
        <div style="line-height:1.1;width:100px;text-align:center;">
        <span style="white-space:normal;word-wrap:break-word;">{{ value }}</span>
        </div>;;
  }

  measure: value_m {
    # label: "ערך"
    type: sum
    sql: ${TABLE}.value ;;
  }

  measure: value_m_p {
    # label: "ערך"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name]
  }
}
