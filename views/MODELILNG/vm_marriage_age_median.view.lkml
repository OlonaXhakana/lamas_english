view: vm_marriage_age_median {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_marriage_age_median` ;;

  #
  ## dimensions
  #

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: loc_name_heb {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: m_marriage_age_mdn {
    type: number
    sql: ${TABLE}.m_MarriageAge_mdn ;;
  }

  dimension: marriage_age_mdn {
    type: number
    sql: ${TABLE}.MarriageAge_mdn ;;
  }

  dimension: marriage_age_mdn_text_icon {
    label: "Median Marriage Age"
    type: string
    value_format: "0.0"
    sql:IFNULL(cast(${TABLE}.MarriageAge_mdn as string), 'Data Missing') ;;
    # sql:coalesce(cast(${TABLE}.MarriageAge_mdn as string), 'Data Missing') ;;
    html:
      {% if value == 'Data Missing' %}
        <div style="line-height:1.2;">
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/marriage_age_mdn.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Median Marriage Age</span><br>
        <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
        </div>
      {% else %}
        <div style="line-height:1.2;">
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/marriage_age_mdn.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Median Marriage Age</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>
      {% endif %}
      ;;
  }

  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: shape_code {
    type: number
    sql: ${TABLE}.shape_code ;;
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

  dimension: sub_district_heb {
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }

  dimension: sub_quarter {
    type: string
    sql: ${TABLE}.SubQuarter ;;
  }

  dimension: w_marriage_age_mdn {
    type: number
    sql: ${TABLE}.w_MarriageAge_mdn ;;
  }

  #
  ## measures
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
