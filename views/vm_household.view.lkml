view: vm_household {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_household` ;;

  dimension: age0_19sef_pcnt_08 {
    type: number
    sql: ${TABLE}.age0_19sef_pcnt_08 ;;
  }
  dimension: age0_19sef_pcnt_22 {
    type: number
    sql: ${TABLE}.age0_19sef_pcnt_22 ;;
  }
  dimension: age0_19sef_pcnt_72 {
    type: number
    sql: ${TABLE}.age0_19sef_pcnt_72 ;;
  }
  dimension: age0_19sef_pcnt_83 {
    type: number
    sql: ${TABLE}.age0_19sef_pcnt_83 ;;
  }
  dimension: age0_19sef_pcnt_95 {
    type: number
    sql: ${TABLE}.age0_19sef_pcnt_95 ;;
  }
  dimension: age65sef_pcnt_08 {
    type: number
    sql: ${TABLE}.age65sef_pcnt_08 ;;
  }
  dimension: age65sef_pcnt_22 {
    type: number
    sql: ${TABLE}.age65sef_pcnt_22 ;;
  }
  dimension: age65sef_pcnt_72 {
    type: number
    sql: ${TABLE}.age65sef_pcnt_72 ;;
  }
  dimension: age65sef_pcnt_83 {
    type: number
    sql: ${TABLE}.age65sef_pcnt_83 ;;
  }
  dimension: age65sef_pcnt_95 {
    type: number
    sql: ${TABLE}.age65sef_pcnt_95 ;;
  }
  dimension: age85sef_pcnt_08 {
    type: number
    sql: ${TABLE}.age85sef_pcnt_08 ;;
  }
  dimension: age85sef_pcnt_22 {
    type: number
    sql: ${TABLE}.age85sef_pcnt_22 ;;
  }
  dimension: age85sef_pcnt_72 {
    type: number
    sql: ${TABLE}.age85sef_pcnt_72 ;;
  }
  dimension: age85sef_pcnt_83 {
    type: number
    sql: ${TABLE}.age85sef_pcnt_83 ;;
  }
  dimension: age85sef_pcnt_95 {
    type: number
    sql: ${TABLE}.age85sef_pcnt_95 ;;
  }

  dimension: cellphone_ratio {

    type: string
    # value_format: ""
    sql: coalesce(cast(${TABLE}.cellphone_ratio as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Mobile phone ratio for ages 6 and up</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Mobile phone ratio for ages 6 and up</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: computer_avg {
    type: string
    # value_format: ""
    sql: coalesce(cast(${TABLE}.Computer_avg as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average number of computers per household</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average number of computers per household</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: fam_approx {
    type: number
    sql: ${TABLE}.Fam_approx ;;
  }

  dimension: fam_n_sngprnt1 {
    type: string
    value_format: "#,##0"
    sql: coalesce(cast(${TABLE}.Fam_approx as string), 'missing data') ;;
    html:
        {% if value == 'missing data' %}
        <div style=line-height:1;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Family households</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span><br>
          <span style="color:#22282D;font-size:16px;font-weight:100;letter-spacing:0;">What are single-parent households:</span>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
        <div style=line-height:1.2;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Family households</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ fam_approx }}</span>
        </div>
        <div style=line-height:22px;>
          <span style="color:#22282D;font-size:16px;font-weight:100;letter-spacing:0;">What are single-parent households:</span>
          <span style="color:#22282D;font-size:18px;font-weight:100;letter-spacing:0;">{{ sngl_prnt_approx }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: hh_total_approx1 {
    type: string
    value_format: "#,##0"
    sql: coalesce(cast(${TABLE}.hh_total_approx as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total households</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total households</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: non_fam_approx1 {
    value_format: "#,##0"
    type: string
    sql: coalesce(cast(${TABLE}.NonFam_approx as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Non-family households</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Non-family households</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: size_avg1 {
    type: string
    value_format: "0.0"
    sql: coalesce(cast(${TABLE}.size_avg as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average persons in the household</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average persons in the household</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: godel1_0_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel1_0Emp_pcnt ;;
  }
  dimension: godel1_1_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel1_1Emp_pcnt ;;
  }
  dimension: godel2_0_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel2_0Emp_pcnt ;;
  }
  dimension: godel2_1_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel2_1Emp_pcnt ;;
  }
  dimension: godel2_2_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel2_2Emp_pcnt ;;
  }
  dimension: godel3_0_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel3_0Emp_pcnt ;;
  }
  dimension: godel3_1_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel3_1Emp_pcnt ;;
  }
  dimension: godel3_2_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel3_2Emp_pcnt ;;
  }
  dimension: godel3_3_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel3_3Emp_pcnt ;;
  }
  dimension: godel4_0_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel4_0Emp_pcnt ;;
  }
  dimension: godel4_1_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel4_1Emp_pcnt ;;
  }
  dimension: godel4_2_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel4_2Emp_pcnt ;;
  }
  dimension: godel4_3_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel4_3Emp_pcnt ;;
  }
  dimension: godel5_0_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel5_0Emp_pcnt ;;
  }
  dimension: godel5_1_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel5_1Emp_pcnt ;;
  }
  dimension: godel5_2_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel5_2Emp_pcnt ;;
  }
  dimension: godel5_3_emp_pcnt {
    type: number
    sql: ${TABLE}.Godel5_3Emp_pcnt ;;
  }
  dimension: hh0_17_1_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_1_pcnt ;;
  }
  dimension: hh0_17_2_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_2_pcnt ;;
  }
  dimension: hh0_17_3_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_3_pcnt ;;
  }
  dimension: hh0_17_4_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_4_pcnt ;;
  }
  dimension: hh0_17_5_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_5_pcnt ;;
  }
  dimension: hh0_17_pcnt {
    type: number
    sql: ${TABLE}.hh0_17_pcnt ;;
  }
  dimension: hh0_5_pcnt {
    type: number
    sql: ${TABLE}.hh0_5_pcnt ;;
  }
  dimension: hh18_24_pcnt {
    type: number
    sql: ${TABLE}.hh18_24_pcnt ;;
  }
  dimension: hh65_pcnt {
    type: number
    sql: ${TABLE}.hh65_pcnt ;;
  }
  dimension: hh_acher_pcnt {
    type: number
    sql: ${TABLE}.hh_Acher_pcnt ;;
  }
  dimension: hh_dati_pcnt {
    type: number
    sql: ${TABLE}.hh_Dati_pcnt ;;
  }
  dimension: hh_haredi_pcnt {
    type: number
    sql: ${TABLE}.hh_Haredi_pcnt ;;
  }
  dimension: hh_hiloni_pcnt {
    type: number
    sql: ${TABLE}.hh_Hiloni_pcnt ;;
  }
  dimension: hh_masorati_pcnt {
    type: number
    sql: ${TABLE}.hh_Masorati_pcnt ;;
  }
  dimension: hh_meorav_pcnt {
    type: number
    sql: ${TABLE}.hh_Meorav_pcnt ;;
  }
  dimension: hh_midat_datiyut_name {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_Name ;;
  }
  dimension: hh_midat_datiyut_pcnt {
    type: number
    sql: ${TABLE}.hh_MidatDatiyut_pcnt ;;
  }
  dimension: hh_total_approx {
    type: number
    sql: ${TABLE}.hh_total_approx ;;
  }
  dimension: hh_total_thou_08 {
    type: number
    sql: ${TABLE}.hh_total_thou_08 ;;
  }
  dimension: hh_total_thou_22 {
    type: number
    sql: ${TABLE}.hh_total_thou_22 ;;
  }
  dimension: hh_total_thou_72 {
    type: number
    sql: ${TABLE}.hh_total_thou_72 ;;
  }
  dimension: hh_total_thou_83 {
    type: number
    sql: ${TABLE}.hh_total_thou_83 ;;
  }
  dimension: hh_total_thou_95 {
    type: number
    sql: ${TABLE}.hh_total_thou_95 ;;
  }


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


  dimension: housing_dens1_pcnt {
    type: number
    sql: ${TABLE}.HousingDens1_pcnt ;;
  }
  dimension: housing_dens2_pcnt {
    type: number
    sql: ${TABLE}.HousingDens2_pcnt ;;
  }
  # dimension: housing_dens_avg {
  #   type: number
  #   sql: ${TABLE}.HousingDens_avg ;;
  # }
  dimension: non_fam_approx {
    type: number
    sql: ${TABLE}.NonFam_approx ;;
  }
  dimension: other_arng_pcnt {
    type: number
    sql: ${TABLE}.OtherArng_pcnt ;;
  }
  dimension: own_pcnt {
    type: number
    sql: ${TABLE}.own_pcnt ;;
  }

    dimension: parking_pcnt {
      type: string
      value_format: "0.0\%"
      sql: coalesce(cast(${TABLE}.parking_pcnt as string),'missing data') ;;
      html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households that have parking available</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households that have parking available</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
    }

  dimension: rent_pcnt {
    type: number
    sql: ${TABLE}.rent_pcnt ;;
  }
  dimension: rm1_pcnt {
    type: number
    sql: ${TABLE}.rm1_pcnt ;;
  }
  dimension: rm2_pcnt {
    type: number
    sql: ${TABLE}.rm2_pcnt ;;
  }
  dimension: rm3_pcnt {
    type: number
    sql: ${TABLE}.rm3_pcnt ;;
  }
  dimension: rm4_pcnt {
    type: number
    sql: ${TABLE}.rm4_pcnt ;;
  }
  dimension: rm5_pcnt {
    type: number
    sql: ${TABLE}.rm5_pcnt ;;
  }
  dimension: rm6_pcnt {
    type: number
    sql: ${TABLE}.rm6_pcnt ;;
  }
  dimension: rm7_pcnt {
    type: number
    sql: ${TABLE}.rm7_pcnt ;;
  }
  dimension: rm8up_pcnt {
    type: number
    sql: ${TABLE}.rm8up_pcnt ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: size1_pcnt {
    type: number
    sql: ${TABLE}.size1_pcnt ;;
  }
  dimension: size2_pcnt {
    type: number
    sql: ${TABLE}.size2_pcnt ;;
  }
  dimension: size3_pcnt {
    type: number
    sql: ${TABLE}.size3_pcnt ;;
  }
  dimension: size4_pcnt {
    type: number
    sql: ${TABLE}.size4_pcnt ;;
  }
  dimension: size5_pcnt {
    type: number
    sql: ${TABLE}.size5_pcnt ;;
  }
  dimension: size6_pcnt {
    type: number
    sql: ${TABLE}.size6_pcnt ;;
  }
  dimension: size7up_pcnt {
    type: number
    sql: ${TABLE}.size7up_pcnt ;;
  }

  dimension: size_avg {
    type: string
    value_format: "0.0"
    sql: coalesce(cast(${TABLE}.size_avg as string), 'missing data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'missing data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average persons in the household</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">missing data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average persons in the household</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: size_avg_08 {
    type: number
    sql: ${TABLE}.size_avg_08 ;;
  }
  dimension: size_avg_22 {
    type: number
    sql: ${TABLE}.size_avg_22 ;;
  }
  dimension: size_avg_72 {
    type: number
    sql: ${TABLE}.size_avg_72 ;;
  }
  dimension: size_avg_83 {
    type: number
    sql: ${TABLE}.size_avg_83 ;;
  }
  dimension: size_avg_95 {
    type: number
    sql: ${TABLE}.size_avg_95 ;;
  }
  dimension: sngl_prnt_approx {
    type: number
    sql: ${TABLE}.SnglPrnt_approx ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: vehicle1up_pcnt {
    type: number
    sql: ${TABLE}.Vehicle1up_pcnt ;;
  }

  dimension: cars_pcnt {
    label: "Percentage of households that have at least one vehicle at their disposal"
    type: string
    sql: ${vehicle1up_pcnt};;
    html:
      <div style=line-height:1.2;>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households that have at least one vehicle at their disposal</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ vehicle1up_pcnt_m }}%</span><br>
        <span style="color:#22282D;font-size:15.6px;font-weight:700;letter-spacing:0;">Households that have at least two vehicles at their disposal</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ vehicle2up_pcnt_m }}%</span>
      </div> ;;
  }


  dimension: vehicle2up_pcnt {
    type: number
    sql: ${TABLE}.Vehicle2up_pcnt ;;
  }

  measure: vehicle1up_pcnt_m {
    type: sum
    value_format: "0.0\%"
    label: "Percentage of households that use at least one car"
    sql: ${TABLE}.Vehicle1up_pcnt ;;
  }

  measure: vehicle2up_pcnt_m {
    type: sum
    value_format: "0.0\%"
    label: "Percentage of households that use two or more cars"
    sql: ${TABLE}.Vehicle2up_pcnt ;;
  }

  measure: count {
    type: count
    drill_fields: [hh_midat_datiyut_name, shape_name]
  }
}
