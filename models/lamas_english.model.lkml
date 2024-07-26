connection: "english_lamas"

datagroup: lamas_english_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: lamas_english_default_datagroup
