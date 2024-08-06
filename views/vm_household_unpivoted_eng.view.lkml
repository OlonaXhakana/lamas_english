view: vm_household_unpivoted_eng {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_household_unpivoted_eng` ;;

  dimension: housing_dens_avg {
    type: string
    sql: coalesce(cast(${TABLE}.HousingDens_avg as string), 'missing data') ;;
    value_format: "0.0"
    html:
        <div style="line-height:1.2;">
{% if value == 'missing data' %}
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average housing density</span><br>
<span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
{% else %}
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average housing density</span><br>
<span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_name_eng {
    type: string
    sql: ${TABLE}.metric_name_eng ;;
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

  measure: value_sum {
    type: sum
    value_format: "0.0\%"
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [metric_name, shape_name]
  }
}
