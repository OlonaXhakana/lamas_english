view: vm_religion_v2 {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_religion_v2` ;;

  #
  ## dimensions:
  #

  dimension: hh_midat_datiyut_name {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_Name ;;
  }

  dimension: hh_midat_datiyut_name_eng {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_NameEng ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_eng {
    type: string
    sql: ${TABLE}.name_eng ;;
  }

  dimension: religion_eng {
    type: string
    sql: ${TABLE}.ReligionEng ;;
  }

  dimension: religion_heb {
    type: string
    sql: ${TABLE}.ReligionHeb ;;
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

  dimension: religion_text_icon{
    type: string
    sql: ${value} ;;
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/religion_icon.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Main Religion</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m }}% - {{ religion_eng }}</span>
        </div>;;
  }

  dimension: midatdatiyut_text {
    type: string
    sql: ${value} ;;
    html:
        <div style=line-height:1.2;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">The primary lifestyle</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:0;">{{ hh_midat_datiyut_name_eng }}</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m }}%</span>
        </div>;;
  }

  dimension: religion_text {
    type: string
    sql: ${value} ;;
    html:
        <div style="line-height:1.2;">
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Main Religion</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:0;">{{ religion_eng }}</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ value_m }}%</span>
        </div> ;;
  }

  #
  ## measures:
  #

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name, name, hh_midat_datiyut_name]
  }

  measure: value_m {
    value_format: "0.0\%"
    type: average
    sql: ${TABLE}.value ;;
  }
}
