view: vm_household {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_household` ;;

  #
  ## dimensions
  #

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
    sql: coalesce(cast(${TABLE}.cellphone_ratio as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">יחס טלפונים ניידים לבני 6 ומעלה</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">יחס טלפונים ניידים לבני 6 ומעלה</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: computer_avg {
    type: string
    # value_format: ""
    sql: coalesce(cast(${TABLE}.Computer_avg as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">מספר מחשבים ממוצע למשק בית</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">מספר מחשבים ממוצע למשק בית</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: fam_approx {
    value_format: "#,##0"
    label: "מספר משקי בית משפחתיים"
    type: string
    sql: coalesce(cast(${TABLE}.Fam_approx as string), 'נתון חסר') ;;
    html:
        {% if value == 'נתון חסר' %}
        <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        ;;
  }

  dimension: godel1_0_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel1_0Emp_pcnt ;;
  }

  dimension: godel1_1_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel1_1Emp_pcnt ;;
  }

  dimension: godel2_0_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel2_0Emp_pcnt ;;
  }

  dimension: godel2_1_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel2_1Emp_pcnt ;;
  }

  dimension: godel2_2_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel2_2Emp_pcnt ;;
  }

  dimension: godel3_0_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel3_0Emp_pcnt ;;
  }

  dimension: godel3_1_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel3_1Emp_pcnt ;;
  }

  dimension: godel3_2_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel3_2Emp_pcnt ;;
  }

  dimension: godel3_3_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel3_3Emp_pcnt ;;
  }

  dimension: godel4_0_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel4_0Emp_pcnt ;;
  }

  dimension: godel4_1_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel4_1Emp_pcnt ;;
  }

  dimension: godel4_2_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel4_2Emp_pcnt ;;
  }

  dimension: godel4_3_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel4_3Emp_pcnt ;;
  }

  dimension: godel5_0_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel5_0Emp_pcnt ;;
  }

  dimension: godel5_1_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel5_1Emp_pcnt ;;
  }

  dimension: godel5_2_emp_pcnt {
    type: string
    sql: ${TABLE}.Godel5_2Emp_pcnt ;;
  }

  dimension: godel5_3_emp_pcnt {
    type: string
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

  dimension: hh_midat_datiyut_name_eng {
    type: string
    sql: ${TABLE}.hh_MidatDatiyut_NameEng ;;
  }

  dimension: hh_midat_datiyut_pcnt {
    type: number
    sql: ${TABLE}.hh_MidatDatiyut_pcnt ;;
  }

  dimension: hh_total_approx {
    type: string
    value_format: "#,##0"
    sql: coalesce(cast(${TABLE}.hh_total_approx as string), 'Data Missing') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Data Missing' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Households</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Households</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: hh_total_approx_text_icon {
    #label: "סך הכל משקי בית"
    type: number
    value_format: "#,##0"
    sql: IFNULL(cast(${TABLE}.hh_total_approx as string), 'Data Missing') ;;
    html:
          {% if value == 'Data Missing' %}
               <div style="line-height:1.2;">
               <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/household_total.svg" width="45px" height="45px"/><br>
               <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Households</span><br>
               <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
               </div>
          {% else %}
            <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/household_total.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Households</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
            </div>
          {% endif %}
        ;;
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

  dimension: housing_dens1_pcnt {
    type: string
    sql: ${TABLE}.HousingDens1_pcnt ;;
  }

  dimension: housing_dens2_pcnt {
    type: string
    sql: ${TABLE}.HousingDens2_pcnt ;;
  }

  dimension: housing_dens_avg {
    type: string
    sql: coalesce(cast(${TABLE}.HousingDens_avg as string), 'נתון חסר') ;;
    value_format: "0.0"
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">צפיפות דיור ממוצעת</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">צפיפות דיור ממוצעת</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: housing_dens_avg_text_icon {
    #label: "צפיפות דיור ממוצעת"
    type: string
    sql: IFNULL(cast(${TABLE}.HousingDens_avg as string), 'Data Missing') ;;
    value_format: "0.0"
    html:
       <div style="line-height:1.2;">
       {% if value == 'Data Missing' %}
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/HousingDens_avg.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average housing density</span><br>
        <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
       {% else %}
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/HousingDens_avg.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average housing density</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
       {% endif %}
       </div> ;;
  }

  dimension: loc_name_heb {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb ;;
  }

  dimension: non_fam_approx {
    value_format: "#,##0"
    type: string
    sql: coalesce(cast(${TABLE}.NonFam_approx as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית לא משפחתיים</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית לא משפחתיים</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
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
    sql: coalesce(cast(${TABLE}.parking_pcnt as string),'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית שעומדת לרשותם חניה</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית שעומדת לרשותם חניה</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: rent_pcnt {
    type: number
    sql: ${TABLE}.rent_pcnt ;;
  }

  dimension: rent_pcnt_text_icon {
   # label: "אחוז משקי הבית הגרים בשכירות"
    type: string
    value_format: "0.0\%"
    sql: IFNULL(cast(${TABLE}.rent_pcnt as string), 'Data Missing') ;;
    html:
      <div style="line-height:1.2;">
      {% if value == 'Data Missing' %}
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/hh_rent_pcnt.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households living in rental housing</span><br>
        <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
      {% else %}
        <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/hh_rent_pcnt.svg" width="45px" height="45px"/><br>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Households living in rental housing</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
      {% endif %}
      </div>;;
  }

  dimension: rm1_pcnt {
    type: string
    sql: ${TABLE}.rm1_pcnt ;;
  }

  dimension: rm2_pcnt {
    type: string
    sql: ${TABLE}.rm2_pcnt ;;
  }

  dimension: rm3_pcnt {
    type: string
    sql: ${TABLE}.rm3_pcnt ;;
  }

  dimension: rm4_pcnt {
    type: string
    sql: ${TABLE}.rm4_pcnt ;;
  }

  dimension: rm5_pcnt {
    type: string
    sql: ${TABLE}.rm5_pcnt ;;
  }

  dimension: rm6_pcnt {
    type: string
    sql: ${TABLE}.rm6_pcnt ;;
  }

  dimension: rm7_pcnt {
    type: string
    sql: ${TABLE}.rm7_pcnt ;;
  }

  dimension: rm8up_pcnt {
    type: string
    sql: ${TABLE}.rm8up_pcnt ;;
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
    sql: coalesce(cast(${TABLE}.size_avg as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'נתון חסר' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">ממוצע נפשות במשק הבית</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">ממוצע נפשות במשק הבית</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        {% endif %}
        </div> ;;
  }

  dimension: size_avg_text_icon {
    #label: "ממוצע נפשות במשק הבית"
    type: string
    value_format: "0.0"
    sql: IFNULL(cast(${TABLE}.size_avg as string), 'Data Missing') ;;
    html:
          {% if value == 'Data missing' %}
             <div style="line-height:1.2;">
             <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/hh_size_avg.svg" width="45px" height="45px"/><br>
             <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average household size</span><br>
             <span style="color:#22282D;font-size:16px;letter-spacing:0;">Data Missing</span>
             </div>
          {% else %}
            <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/hh_size_avg.svg" width="45px" height="45px"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Average household size</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
            </div>
          {% endif %}
          ;;
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
    #label: "מתוכם, מספר משקי בית עם הורה יחיד"
    value_format: "#,##0"
    type: string
    sql: coalesce(cast(${TABLE}.SnglPrnt_approx as string), 'נתון חסר') ;;
    html:
        <div style="line-height:1.2;">
          {% if value == 'נתון חסר' %}
          <span style='color:#22282D; font-size:16px;'>נתון חסר</span>
          {% else %}
          <span style='color:#22282D; font-size:16px;'>{{ rendered_value }}</span>
          {% endif %}
        </div>;;
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

  dimension: vehicle1up_pcnt {
   # label: "משקי בית שעומד לרשותם כלי רכב אחד לפחות"
    type: number
    value_format: "0.0\%"
    sql: ${TABLE}.Vehicle1up_pcnt ;;
  }

  dimension: vehicle2up_pcnt {
    #label: "משקי בית שעומדים לרשותם שני כלי רכב לפחות"
    type: number
    value_format: "0.0\%"
    sql: ${TABLE}.Vehicle2up_pcnt ;;
  }

  dimension: shape_name {
    #label: "שם אזור"
    #map_layer_name: union_12layers
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

  dimension: cars_pcnt {
    label: "אחוז משקי בית שעומד לרשותם כלי רכב אחד לפחות"
    type: string
    sql: ${vehicle1up_pcnt} ;;
    html:
      <div style=line-height:1.2;>
        <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית שעומד לרשותם כלי רכב אחד לפחות</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ vehicle1up_pcnt_m }}%</span><br>
        <span style="color:#22282D;font-size:15.6px;font-weight:700;letter-spacing:0;">משקי בית שעומדים לרשותם שני כלי רכב לפחות</span><br>
        <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ vehicle2up_pcnt_m }}%</span>
      </div> ;;
  }

  # dimension: fam_n_sngprnt {
  #   type: string
  #   sql: 1 ;;
  #   # value_format: "#,##0"
  #   html: <div style=line-height:1.3;font-size:60%;> מספר משקי בית משפחתיים<br><span style="color:#2D4A99;font-size:150%;"> {{ fam_approx }}</span><br>מתוכם, מספר משקי בית עם הורה יחיד<br><span style="color:#2D4A99;font-size:150%;">{{ sngl_prnt_approx }}</span> ;;
  # }

  dimension: fam_n_sngprnt {
    type: string
    value_format: "#,##0"
    sql: coalesce(cast(${TABLE}.Fam_approx as string), 'נתון חסר') ;;
    html:
        {% if value == 'נתון חסר' %}
        <div style=line-height:1;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית משפחתיים</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span><br>
          <span style="color:#22282D;font-size:16px;font-weight:100;letter-spacing:0;">מהם משקי בית עם הורה יחיד:</span>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">נתון חסר</span>
        {% else %}
        <div style=line-height:1.2;>
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">משקי בית משפחתיים</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ fam_approx }}</span>
        </div>
        <div style=line-height:22px;>
          <span style="color:#22282D;font-size:16px;font-weight:100;letter-spacing:0;">מהם משקי בית עם הורה יחיד:</span>
          <span style="color:#22282D;font-size:18px;font-weight:100;letter-spacing:0;">{{ sngl_prnt_approx }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: household_header {
    type: string
    sql: 1 ;;
    html: <span style="color:#22282D;font-size:18px;letter-spacing:0;">משקי בית, לפי גיל הנפשות במשק הבית</span> ;;
  }

  dimension: household_header_2 {
    type: string
    sql: 1 ;;
    html: <div style=line-height:0.8;>
          <span style="color:#22282D;font-size:18px;letter-spacing:0;">,בני 15 ומעלה שעבדו ב-12 החודשים האחרונים</span><br>
          <span style="color:#22282D;font-size:18px;letter-spacing:0;">לפי מעמד בעבודה ומין</span>
          </div>;;
  }

  # #12B5CB
  #

  #
  ## measures
  #

  measure: hh0_17_1_pcnt_m {
 #   label: "אחוז משקי בית עם ילד אחד"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_1_pcnt ;;
  }

  measure: hh0_17_2_pcnt_m {
  #  label: "אחוז משקי בית עם 2 ילדים"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_2_pcnt ;;
  }

  measure: hh0_17_3_pcnt_m {
 #   label: "אחוז משקי בית עם 3 ילדים"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_3_pcnt ;;
  }

  measure: hh0_17_4_pcnt_m {
  #  label: "אחוז משקי בית עם 4 ילדים"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_4_pcnt ;;
  }

  measure: hh0_17_5_pcnt_m {
 #   label: "אחוז משקי בית עם 5 ילדים או יותר"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_5_pcnt ;;
  }

  measure: hh0_5_pcnt_m {
    type: sum
   # label: "אחוז גילאי 0-5"
    value_format: "0.0\%"
    sql: ${TABLE}.hh0_5_pcnt ;;
  }

  measure: hh0_17_pcnt_m {
 #   label: "אחוז גילאי 0-17"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh0_17_pcnt ;;
  }

  measure: hh18_24_pcnt_m {
  #  label: "אחוז גילאי 18-24"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh18_24_pcnt ;;
  }

  measure: hh65_pcnt_m {
  #  label: "אחוז גילאי +65"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh65_pcnt ;;
  }

  measure: size1_pcnt_m {
  #  label: "אחוז משקי בית עם נפש אחת"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size1_pcnt ;;
  }

  measure: size2_pcnt_m {
  #  label: "אחוז משקי בית עם 2 נפשות"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size2_pcnt ;;
  }

  measure: size3_pcnt_m {
  #  label: "אחוז משקי בית עם 3 נפשות"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size3_pcnt ;;
  }

  measure: size4_pcnt_m{
  #  label: "אחוז משקי בית עם 4 נפשות"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size4_pcnt ;;
  }

  measure: size5_pcnt_m {
  #  label: "אחוז משקי בית עם 5 נפשות"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size5_pcnt ;;
  }

  measure: size6_pcnt_m {
 #   label: "אחוז משקי בית עם 6 נפשות"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size6_pcnt ;;
  }

  measure: size7up_pcnt_m {
   # label: "אחוז משקי בית עם 7 נפשות ומעלה"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.size7up_pcnt ;;
  }

  measure: hh_Hiloni_pcnt_m {
  #  label: "אחוז אורח חילוני"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Hiloni_pcnt ;;
  }

  measure: hh_masorati_pcnt_m {
  #  label: "אחוז אורח חיים מסורתי"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Masorati_pcnt ;;
  }

  measure: hh_dati_pcnt_m {
   # label: "אחוז אורח חיים דתי"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Dati_pcnt ;;
  }

  measure: hh_haredi_pcnt_m {
  #  label: "אחוז אורח חיים חרדי"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Haredi_pcnt ;;
  }

  measure: hh_meorav_pcnt_m {
   # label: "אחוז אורח חיים מעורב"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Meorav_pcnt ;;
  }

  measure: hh_acher_pcnt_m {
  #  label: "אחוז אורח חיים אחר"
    value_format: "0.0\%"
    type: sum
    sql: ${TABLE}.hh_Acher_pcnt ;;
  }

  measure: hh_total_thou_08_kpi {
   # label: "משקי בית סה״כ(אלפים) 08"
    type: sum
    sql: ${TABLE}.hh_total_thou_08 ;;
  }

  measure: hh_total_thou_22_kpi {
   # label: "משקי בית סה״כ(אלפים) 22"
    type: sum
    sql: ${TABLE}.hh_total_thou_22 ;;
  }

  measure: hh_total_thou_72_kpi {
  #  label: "משקי בית סה״כ(אלפים) 72"
    type: sum
    sql: ${TABLE}.hh_total_thou_72 ;;
  }

  measure: hh_total_thou_83_kpi {
   # label: "משקי בית סה״כ(אלפים) 83"
    type: sum
    sql: ${TABLE}.hh_total_thou_83 ;;
  }

  measure: hh_total_thou_95_kpi {
    #label: "משקי בית סה״כ(אלפים) 95"
    type: sum
    sql: ${TABLE}.hh_total_thou_95 ;;
  }

  measure: age0_19sef_pcnt_08_kpi {
  #  label: "אחוז בני 0-19 08"
    type: sum
    sql: ${TABLE}.age0_19sef_pcnt_08 ;;
  }

  measure: age0_19sef_pcnt_22_kpi {
   # label: "אחוז בני 0-19 22"
    type: sum
    sql: ${TABLE}.age0_19sef_pcnt_22 ;;
  }

  measure: age0_19sef_pcnt_72_kpi {
  #  label: "אחוז בני 0-19 72"
    type: sum
    sql: ${TABLE}.age0_19sef_pcnt_72 ;;
  }

  measure: age0_19sef_pcnt_83_kpi {
 #   label: "אחוז בני 0-19 83"
    type: sum
    sql: ${TABLE}.age0_19sef_pcnt_83 ;;
  }

  measure: age0_19sef_pcnt_95_kpi {
  #  label: "אחוז בני 0-19 95"
    type: sum
    sql: ${TABLE}.age0_19sef_pcnt_95 ;;
  }

  measure: age65sef_pcnt_08_kpi {
  #  label: "אחוז בני 65 ומעלה 08"
    type: sum
    sql: ${TABLE}.age65sef_pcnt_08 ;;
  }

  measure: age65sef_pcnt_22_kpi {
  #  label: "אחוז בני 65 ומעלה 22"
    type: sum
    sql: ${TABLE}.age65sef_pcnt_22 ;;
  }

  measure: age65sef_pcnt_72_kpi {
   # label: "אחוז בני 65 ומעלה 72"
    type: sum
    sql: ${TABLE}.age65sef_pcnt_72 ;;
  }

  measure: age65sef_pcnt_83_kpi {
 #   label: "אחוז בני 65 ומעלה 83"
    type: sum
    sql: ${TABLE}.age65sef_pcnt_83 ;;
  }

  measure: age65sef_pcnt_95_kpi {
  #  label: "אחוז בני 65 ומעלה 95"
    type: sum
    sql: ${TABLE}.age65sef_pcnt_95 ;;
  }

  measure: age85sef_pcnt_08_kpi {
   # label: "אחוז בני 85 ומעלה 08"
    type: sum
    sql: ${TABLE}.age85sef_pcnt_08 ;;
  }

  measure: age85sef_pcnt_22_kpi {
   # label: "אחוז בני 85 ומעלה 22"
    type: sum
    sql: ${TABLE}.age85sef_pcnt_22 ;;
  }

  measure: age85sef_pcnt_72_kpi {
    label: "אחוז בני 85 ומעלה 72"
    type: sum
    sql: ${TABLE}.age85sef_pcnt_72 ;;
  }

  measure: age85sef_pcnt_83_kpi {
    label: "אחוז בני 85 ומעלה 83"
    type: sum
    sql: ${TABLE}.age85sef_pcnt_83 ;;
  }

  measure: age85sef_pcnt_95_kpi {
    label: "אחוז בני 85 ומעלה 95"
    type: sum
    sql: ${TABLE}.age85sef_pcnt_95 ;;
  }

  measure: size_avg_08_kpi {
    label: "גודל משק בית ממוצע 08"
    type: sum
    sql: ${TABLE}.size_avg_08 ;;
  }

  measure: size_avg_22_kpi {
    label: "גודל משק בית ממוצע 22"
    type: sum
    sql: ${TABLE}.size_avg_22 ;;
  }

  measure: size_avg_72_kpi {
   # label: "גודל משק בית ממוצע 72"
    type: sum
    sql: ${TABLE}.size_avg_72 ;;
  }

  measure: size_avg_83_kpi {
  #  label: "גודל משק בית ממוצע 83"
    type: sum
    sql: ${TABLE}.size_avg_83 ;;
  }

  measure: size_avg_95_kpi {
    #label: "גודל משק בית ממוצע 95"
    type: sum
    sql: ${TABLE}.size_avg_95 ;;
  }

  measure: size_avg_kpi {
    #label: "ממוצע נפשות למשק בית"
    type: sum
    sql: ${TABLE}.size_avg ;;
  }

  measure: cellphone_ratio_m {
    type: sum
   # label: "יחס טלפונים למשקי בית באוכלוסייה מגיל 6 ומעלה"
    sql: ${TABLE}.cellphone_ratio ;;
  }

  measure: computer_avg_m {
    type: sum
    #label: "ממוצע מחשבים אישיים במשק הבית"
    sql: ${TABLE}.Computer_avg ;;
  }

  measure: own_pcnt_m {
    type: sum
    value_format: "0.0\%"
   # label: "אחוז משקי בית שגרים בדירות בבעלות"
    sql: ${TABLE}.own_pcnt ;;
  }

  measure: rent_pcnt_m {
    type: sum
    value_format: "0.0\%"
   # label: "אחוז משקי בית שגרים בדירות בשכירות"
    sql: ${TABLE}.rent_pcnt ;;
  }

  measure: other_arng_pcnt_m {
    type: sum
    value_format: "0.0\%"
  #  label: "אחוז משקי בית שגרים בדירות בהסדר אחר"
    sql: ${TABLE}.OtherArng_pcnt ;;
  }

  measure: vehicle1up_pcnt_m {
    type: sum
    value_format: "0.0\%"
   # label: "אחוז משקי בית שלשימושם מכונית אחת לפחות"
    sql: ${TABLE}.Vehicle1up_pcnt ;;
  }

  measure: vehicle2up_pcnt_m {
    type: sum
    value_format: "0.0\%"
   # label: "אחוז משקי בית שלשימושם שתי מכוניות ויותר"
    sql: ${TABLE}.Vehicle2up_pcnt ;;
  }

  measure: parking_pcnt_m {
    type: sum
    value_format: "0.0\%"
    #label: "אחוז משקי בית שלשימושם חניה"
    sql: ${TABLE}.Parking_pcnt ;;
  }

  measure: housing_dens_avg_m {
    type: sum
   # label: "צפיפות דיור ממוצעת"
    sql: ${TABLE}.HousingDens_avg ;;
  }

  measure: hh_total_approx_m {
    type: sum
    #label: "סך משקי בית כללי"
    sql: ${TABLE}.hh_total_approx ;;
  }
}
