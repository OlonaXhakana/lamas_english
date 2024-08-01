view: vm_pop {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_pop` ;;

  # dimension: change_pcnt {
  #   type: number
  #   sql: ${TABLE}.change_pcnt ;;
  # }

  dimension: change_pcnt {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.change_pcnt as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;"> The population change from the 2008 census</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;"> The population change from the 2008 census</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }


  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }
  dimension: foreign_pcnt {
    type: number
    sql: ${TABLE}.Foreign_pcnt ;;
  }
  dimension: inst_pcnt {
    type: number
    sql: ${TABLE}.inst_pcnt ;;
  }
  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }
  # dimension: pop_approx {
  #   type: number
  #   sql: ${TABLE}.pop_approx ;;
  # }

  dimension: pop_approx {
    type: number
    sql: ${TABLE}.pop_approx ;;
    value_format: "#,##0"
    html:
        <div style="line-height:1.2;">
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;"> Total population </span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>;;
  }

  # dimension: pop_density {
  #   type: number
  #   sql: ${TABLE}.pop_density ;;
  # }

  dimension: pop_density {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.pop_density as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">population per km</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">population per km</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.Quarter ;;
  }
  # dimension: shape_name {
  #   type: string
  #   sql: ${TABLE}.shape_name ;;
  # }

  dimension: shape_name {
    label: "region name"
    # map_layer_name: union_13layers_v2
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

  measure: pop_approx_m {
    type: sum
    label: "population sum"
    sql: ${TABLE}.pop_approx ;;
  }

  measure: pop_density_m {
    type: sum
    label: "Population density per km"
    sql: ${TABLE}.pop_density ;;
  }

  measure: change_pcnt_m {
    type: sum
    label:"Percentage of population size change compared to the 2008 census"
    value_format: "0.0\%"
    sql: ${TABLE}.change_pcnt ;;
  }

  measure: Foreign_pcnt_m {
    type: sum
    label: "percentage of foreigners"
    value_format: "0.0\%"
    sql: coalesce(cast(${TABLE}.Foreign_pcnt as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">percentage of foreigners</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">percentage of foreigners</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  measure: inst_pcnt_m {
    type: sum
    label: "percentage of residents of institutions"
    value_format: "0.0\%"
    sql: ${TABLE}.inst_pcnt ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
