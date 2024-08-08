view: vm_religion_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_religion_v2` ;;

  #
  ## dimensions
  #

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_eng {
    type: string
    sql: ${TABLE}.name_eng ;;
  }

  dimension: district_eng {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: loc_name_eng {
    type: string
    sql: ${TABLE}.LocNameEng ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: nat_reg_eng {
    type: string
    sql: ${TABLE}.NatRegEng ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: religion_eng {
    type: string
    sql: ${TABLE}.ReligionEng ;;
  }

  dimension: hh_midatdatiyut_name {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_Name ;;
  }

  dimension: hh_MidatDatiyut_NameEng {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_NameEng ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: shape_name_eng {
    type: string
    sql: ${TABLE}.shape_name_eng ;;
  }

  dimension: type_eng {
    type: string
    sql: ${TABLE}.type_eng ;;
  }

  dimension: stat_area {
    type: string
    sql: ${TABLE}.StatArea ;;
  }

  dimension: sub_district_eng {
    type: string
    sql: ${TABLE}.SubDistrictEng;;
  }

  dimension: sub_quarter {
    type: string
    sql: ${TABLE}.SubQuarter ;;
  }

  dimension: value {
    type: number
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
  }

  dimension: row_num {
    type: number
    sql: ${TABLE}.row_num ;;
  }

  dimension: religion_text {
    label: "Percentage of main religion_"
    type: string
    sql: ${value} ;;
    html:
        <div style="line-height:1.2;">
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Main religion</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:0;">{{ religion_eng}}</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m_2 }}%</span>
        </div> ;;
  }

  # dimension: religion_text_icon{
  #   type: string
  #   sql: 1 ;;
  #   html:
  #       <div style="line-height:1.2;">
  #           <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/religion_icon.png" width="45px" height="45px"/><br>
  #           <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">דת עיקרית</span><br>
  #           <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:0;">{{ religion_heb }}</span><br>
  #           <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m_2 }}%</span>
  #       </div>;;
  # }

  dimension: religion_text_icon{
    label: "Percentage of main religion"
    type: string
    sql: ${value} ;;
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/religion_icon.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Main religion</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ religion_eng }} - {{ value_m_2 }}%</span>
        </div>;;
  }

  # html: <div style=line-height:1.2;font-size:16px;>דת עיקרית<br><span style="color:#2D4A99;font-size:44px;">{{ religion_heb }}</span><br><span style="color:#2D4A99;font-size:44px;">{{ value_m_2 }}%</span> ;;

  # dimension: religion_text {
  #   type: string
  #   sql: 1 ;;
  #   html: <span style="line-height:30px;font-size:24px;">דת עיקרית</span><br><span style="color:#12B5CB;font-size:18px;">{{religion_heb}}</span><br><span style="color:#12B5CB;font-size:18px">{{value_m_2}}%</span> ;;
  # }

  dimension: midatdatiyut_text {
    label: "Main lifestyle percentage"
    type: string
    sql: ${value} ;;
    html:
        <div style=line-height:1.2;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">The main lifestyle in the household</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:0;">{{ hh_midatdatiyut_name }}</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m_2 }}%</span>
        </div>;;
  }

  dimension: metric_order {
    type: string
    sql: ${TABLE}.metric_order ;;
  }

  #
  ## measures
  #

  measure: value_m {
    label: "value"
    value_format: "0.0\%"
    type: average
    sql: ${TABLE}.value ;;
  }

  measure: value_m_2 {
    label: "value"
    value_format: "0.0\%"
    type: average
    sql:${TABLE}.value;;
  }

  measure: count {
    type: count
    drill_fields: [name, metric_name, shape_name]
  }
}
