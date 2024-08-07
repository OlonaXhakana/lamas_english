view: vm_geography {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_geography` ;;

  #
  ## dimensions
  #

  dimension: area {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.Area as string), 'Data Missing') ;;
    html:
        {% if value == 'Data Missing' %}
            <span style='color:#22282D; font-size:50%;'>Data Missing</span>
        {% else %}
            <span> {{ rendered_value }} </span>
        {% endif %}
  ;;
  }

  dimension: area_text_icon {
    label: "Area (km²)"
    type: number
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.Area as string), cast(${TABLE}.Area1 as string), 'Data Missing') ;;
    html:
        {% if value == 'Data Missing' %}
           <div style="line-height:1.2;">
           <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/area.svg" width="45px" height="45px"/><br>
           <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Area (km²)</span><br>
           <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
           </div>
        {% else %}
          <div style="line-height:1.2;">
          <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/area.svg" width="45px" height="45px"/><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Area (km²)</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
          </div>
        {% endif %}
        ;;
  }

  dimension: district_code {
    type: number
    sql: ${TABLE}.DistrictCode ;;
  }

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: area_1 {
    type: string
    sql: ${TABLE}.Area1 ;;
  }

  dimension: estb_yr {
    type: string
    # value_format: ""
    sql: coalesce(${TABLE}.EstbYr, 'Data Missing') ;;
    html:
      <div style="line-height:1.2;">
      {% if value == 'Data Missing' %}
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Year Established</span><br>
        <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
      {% else %}
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Year Established</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
      {% endif %}
      </div> ;;
  }

  dimension: loc_name_heb {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: locality_code {
    type: number
    sql: ${TABLE}.LocalityCode ;;
  }

  dimension: nat_reg_code {
    type: number
    sql: ${TABLE}.NatRegCode ;;
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
    label: "Symbol Code"
    type: number
    sql: ${TABLE}.shape_code ;;
  }

  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }

  dimension: stat_area {
    type: string
    sql: ${TABLE}.StatArea ;;
  }

  dimension: sub_district_code {
    type: number
    sql: ${TABLE}.SubDistrictCode ;;
  }

  dimension: sub_district_heb {
    type: string
    sql: ${TABLE}.SubDistrictHeb ;;
  }

  dimension: sub_quarter {
    type: string
    sql: ${TABLE}.SubQuarter ;;
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

  #
  ## measures
  #

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
