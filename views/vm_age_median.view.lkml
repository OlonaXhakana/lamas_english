view: vm_age_median {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_median` ;;

  dimension: age_median {
    type: number
    sql: ${TABLE}.age_median ;;
  }

  # dimension: dependency_ratio {
  #   type: number
  #   sql: ${TABLE}.DependencyRatio ;;
  # }

  dimension: dependency_ratio {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.DependencyRatio as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
         <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Dependency ratio per 1,000 people</span><br>
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Missing data</span>
{% else %}
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Dependency ratio per 1,000 people</span><br>
<span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: m_age_median {
    type: number
    sql: ${TABLE}.m_age_median ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: w_age_median {
    type: number
    sql: ${TABLE}.w_age_median ;;
  }

  measure: median_age {
    type: sum
    sql: ${TABLE}.age_median ;;
  }

  measure: men_age_median {
    type: sum
    sql: ${TABLE}.m_age_median ;;
  }

  measure: women_median_age {
    type: sum
    sql: ${TABLE}.w_age_median ;;
  }

  measure: DependencyRatio_m {
    type: sum
    label: "dependency ratio per thousand"
    sql: ${TABLE}.DependencyRatio ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
