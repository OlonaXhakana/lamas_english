view: vm_pop {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_pop` ;;

  #
  ## dimensions
  #

  dimension: change_pcnt {
    type: string
    label: "Percentage Change in Population Size Compared to the 2008 Census"
    value_format: "0.0\%"
    sql: coalesce(cast(${TABLE}.change_pcnt as string), 'Missing Data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Missing Data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Population Change from the 2008 Census</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing Data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Population Change from the 2008 Census</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: district_heb {
    type: string
    sql: ${TABLE}.DistrictHeb ;;
  }

  dimension: district {
    type: string
    label: "Geographical Unit"
    sql: coalesce(${TABLE}.StatArea, ${TABLE}.SubQuarter, ${TABLE}.Quarter, ${TABLE}.LocNameHeb, ${TABLE}.NatRegHeb, ${TABLE}.SubDistrictHeb, ${TABLE}.DistrictHeb) ;;
  }

  dimension: foreign_pcnt {
    type: number
    value_format: "0.0\%"
    sql: coalesce(cast(${TABLE}.Foreign_pcnt as string), 'Missing Data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Missing Data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Foreigners</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing Data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Foreigners</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  dimension: inst_pcnt {
    type: string
    label: "Percentage of Institutional Residents"
    value_format: "0.0\%"
    sql: coalesce(cast(${TABLE}.inst_pcnt as string), 'Missing Data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Missing Data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Institutional Residents</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing Data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Institutional Residents</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div>;;
  }

  dimension: loc_name_heb {
    type: string
    sql: ${TABLE}.LocNameHeb ;;
  }

  dimension: nat_reg_heb {
    type: string
    sql: ${TABLE}.NatRegHeb;
  }

  dimension: pop_approx {
    type: number
    sql: ${TABLE}.pop_approx ;;
    value_format: "#,##0"
    html:
        <div style="line-height:1.2;">
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Population</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>;;
  }

  dimension: pop_approx_text_icon {
    label: "Total Population"
    type: number
    sql: ${TABLE}.pop_approx ;;
    value_format: "#,##0"
    html:
        <div style="line-height:1.2;">
            <img src="https://dashboard.cbs.gov.il/cbs-data/Infographics/pop_total.svg" width="45" height="45"/><br>
            <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Total Population</span><br>
            <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span><br>
        </div>;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: shape_name {
    label: "Region Name"
    #map_layer_name: union_13layers_v2
    type: string
    sql: ${TABLE}.shape_name ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: pop_density {
    type: string
    value_format: "#,##0.0"
    sql: coalesce(cast(${TABLE}.pop_density as string), 'Missing Data') ;;
    html:
        <div style="line-height:1.2;">
        {% if value == 'Missing Data' %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Population Density per km²</span><br>
          <span style="color:#22282D;font-size:16px;letter-spacing:0;">Missing Data</span>
        {% else %}
          <span style="color:#22282D;font-size:16px;font-weight:700;letter-spacing:0;">Population Density per km²</span><br>
          <span style="color:#22282D;font-size:44px;font-weight:600;letter-spacing:-1;">{{ rendered_value }}</span>
        {% endif %}
        </div> ;;
  }

  ########################################################
  ########################################################
  ########################################################

  dimension: general_profile_link {
    type: string
    label: "General Profile"
    sql: "general_profile" ;;
    html: <a href="/dashboards/Fu4FPB4vDPS0GrOvjTIeBd?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/general.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: general_profile_link_selected {
    type: string
    label: "General Profile Selected"
    sql: "general_profile" ;;
    html: <a href="/dashboards/Fu4FPB4vDPS0GrOvjTIeBd?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/general_selected.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: pop_link {
    type: string
    label: "Population Link"
    sql: "pop_link" ;;
    html: <a href="/dashboards/cmK1M4B8ah3pknZybofUaq?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/pop.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: pop_link_selected {
    type: string
    label: "Population Link Selected"
    sql: "pop_link" ;;
    html: <a href="/dashboards/cmK1M4B8ah3pknZybofUaq?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/pop_selected.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: socio_link {
    type: string
    label: "Socio-Economic Link"
    sql: "socio_link" ;;
    html: <a href="/dashboards/2Wud7He26Tt7jV7uLr0dm6?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/socio.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: socio_link_selected {
    type: string
    label: "Socio-Economic Link Selected"
    sql: "socio_link" ;;
    html: <a href="/dashboards/2Wud7He26Tt7jV7uLr0dm6?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/socio_selected.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: housing_link {
    type: string
    label: "Housing Link"
    sql: "housing_link" ;;
    html: <a href="/dashboards/SBIYZm7Jb2dMXjMgxT7TG6?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/housing.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: housing_link_selected {
    type: string
    label: "Housing Link Selected"
    sql: "housing_link" ;;
    html: <a href="/dashboards/SBIYZm7Jb2dMXjMgxT7TG6?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/housing_selected.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: families_link {
    type: string
    label: "Families Link"
    sql: "families_link" ;;
    html: <a href="/dashboards/UJrcS3YfY1xpwbnfwoyyAw?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/families.png" width="103.2" height="105.6"/>
      </a> ;;
  }

  dimension: families_link_selected {
    type: string
    label: "Families Link Selected"
    sql: "families_link" ;;
    html: <a href="/dashboards/UJrcS3YfY1xpwbnfwoyyAw?District={{ _filters['vm_pop.district_heb'] | url_encode}}&SubDistrict={{ _filters['vm_pop.sub_district_heb'] | url_encode}}&NaturalRegion={{ _filters['vm_pop.nat_reg_heb'] | url_encode}}&Location={{ _filters['vm_pop.loc_name_heb'] | url_encode}}&Quarter={{ _filters['vm_pop.quarter'] | url_encode}}&SubQuarter={{ _filters['vm_pop.sub_quarter'] | url_encode}}&StatArea={{ _filters['vm_pop.stat_area'] | url_encode}}" >
        <img src="https://dashboard.cbs.gov.il/cbs-data/looker-images/families_selected.png" width="103.2" height="105.6"/>
      </a> ;;
  }
}
