connection: "english_lamas"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: lamas_english_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

map_layer: union_12layers {
  file: "/map/12layers.json"
  # file: "/map/union_12layers_v3.topojson"
}

map_layer: union_13layers {
  file: "/map/13layers.json"
  # file: "/map/union_13layers_v2.topojson"
}

persist_with: lamas_english_default_datagroup

explore: vm_origin_pivoted_v3 {}

explore: vm_origin_pivoted {}

explore: vm_disabilites_unpivoted_v2 {}

explore: vm_age_median {}

explore: vm_age_pivoted {}

explore: vm_religion_v2 {}

explore: vm_educ {}

explore: vm_child_born_unpivoted {}

explore: vm_child_born {}

explore: vm_marriage_age_median {}

explore: vm_status_unpivoted_v2 {}

explore: vm_household {}

explore: vm_household_unpivoted {}

explore: vm_migration {}

explore: vm_household_unpivoted_v2 {}

explore: vm_educ_pivoted_v3 {}

explore: vm_work_n_wage {}

explore: vm_work_n_wage_unpivoted {}

explore: vm_geography {}

explore: vm_mifkad_over_time_pivoted {}

explore: vm_compare {}

########################################################################



explore: vm_disabilites_unpivoted_eng {}
explore: vm_age_pivoted_eng {}



explore: vm_child_born_unpivoted_eng {}

explore: vm_educ_pivoted_v2{}


explore: vm_household_unpivoted_eng {}
explore: vm_household_unpivoted_v2_eng {}


explore: vm_migration_eng {}

explore: vm_origin_pivoted_eng {}
explore: vm_origin_pivoted_v3_eng {}
explore: vm_pop {}

explore: vm_status_unpivoted_v2_eng {}

explore: vm_work_n_wage_unpivoted_eng {}
explore: vm_educ_pivoted_eng {}
explore: vm_educ_pivoted_eng_v3 {}
explore: vm_educ_pivoted_eng_2 {}
explore: vm_religion_v2_eng {}
