view: vm_age_median {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_age_median` ;;

  #
  ## dimensions:
  #

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: age_median {
    type: number
    sql: ${TABLE}.age_median ;;
  }

  # dimension: dependency_ratio {
  #   type: number
  #   sql: ${TABLE}.DependencyRatio ;;
  # }

  dimension: m_age_median {
    type: number
    sql: ${TABLE}.m_age_median ;;
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

  dimension: w_age_median {
    type: number
    sql: ${TABLE}.w_age_median ;;
  }

  dimension: dependency_ratio {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.DependencyRatio as string), 'Data Missing') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Data Missing' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Dependency ratio per 1,000 people</span><br>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Data Missing</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Dependency ratio per 1,000 people</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  #
  ## measures:
  #

  measure: age_median_m {
    type: sum
    # label: "median age"
    sql: ${TABLE}.age_median ;;
  }

  measure: man_age_median_m {
    type: sum
    # label: "Median age - men"
    sql: ${TABLE}.m_age_median ;;
  }

  measure: woman_age_median_m {
    type: sum
    # label: "Median age - women"
    sql: ${TABLE}.w_age_median ;;
  }

  measure: DependencyRatio_m {
    type: sum
    # label: "dependency ratio per thousand"
    sql: ${TABLE}.DependencyRatio ;;
  }

  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
