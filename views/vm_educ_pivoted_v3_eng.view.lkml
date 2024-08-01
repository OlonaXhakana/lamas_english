view: vm_educ_pivoted_v3_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ_pivoted_v3_eng` ;;

  dimension: district {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: loc_name_eng {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
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

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
  }

  dimension: nat_reg {
    type: string
    sql: ${TABLE}.NatReg ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: shape_type {
    type: string
    sql: ${TABLE}.shape_type ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: stat_area {
    type: string
    sql: ${TABLE}.StatArea ;;
  }

  dimension: sub_district {
    type: string
    sql: ${TABLE}.SubDistrict ;;
  }

  dimension: sub_quarter {
    type: string
    sql: ${TABLE}.SubQuarter ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: value_yeshiva_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: IF(${TABLE}.value != 0, cast(${TABLE}.value as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">למדו בישיבה</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/yeshiva_pcnt.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">למדו בישיבה</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  #
  ## measures
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
