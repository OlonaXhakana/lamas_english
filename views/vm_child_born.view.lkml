view: vm_child_born {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_child_born` ;;

  # dimension: chld_born_avg {

  #   type: number
  #   sql: ${TABLE}.ChldBorn_avg ;;
  # }

  dimension: chld_born_avg {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.Chld_born_avg as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average number of children per woman until due deadliner</span><br>
<span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
{% else %}
<span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average number of children per woman until due deadline</span><br>
<span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: chld_born_avg_08 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_08 ;;
  }
  dimension: chld_born_avg_22 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_22 ;;
  }
  dimension: chld_born_avg_72 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_72 ;;
  }
  dimension: chld_born_avg_83 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_83 ;;
  }
  dimension: chld_born_avg_95 {
    type: number
    sql: ${TABLE}.ChldBorn_avg_95 ;;
  }
  dimension: chld_born_chris_avg {
    type: number
    sql: ${TABLE}.ChldBornChris_avg ;;
  }
  dimension: chld_born_druze_avg {
    type: number
    sql: ${TABLE}.ChldBornDruze_avg ;;
  }
  dimension: chld_born_jew_avg {
    type: number
    sql: ${TABLE}.ChldBornJew_avg ;;
  }
  dimension: chld_born_mosl_avg {
    type: number
    sql: ${TABLE}.ChldBornMosl_avg ;;
  }
  dimension: chld_born_other_avg {
    type: number
    sql: ${TABLE}.ChldBornOther_avg ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
