view: vm_household_unpivoted {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_household_unpivoted` ;;

  #
  ## dimensions:
  #

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }

  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
  }

  dimension: rent_pcnt_text_icon {
    type: string
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/hh_rent_pcnt.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households Renting</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1%;">{{ rendered_value }}</span><br>
        </div>;;
  }


  dimension: metric_name_heb {
    type: string
    sql: ${TABLE}.metric_name_heb ;;
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

  #
  ## measures:
  #

  measure: value_m {
    label: " "
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name]
  }
}
