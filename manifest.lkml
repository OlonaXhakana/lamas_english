project_name: "lamas_english"
application: explore_assistant {
  label: "Explore Assistant Lamas"
  # url: "https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://us-central1-jutomate-explore-assistant.cloudfunctions.net/explore-assistant-api"]
  }
  }
  # project_name: "lamas_english"
# application: explore_assistant {
#   label: "Explore Assistant Lamas"
#   url: "https://localhost:8080/bundle.js"
#   # file: "bundle.js"
#   entitlements: {
#     core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#     new_window_external_urls: ["https://developers.generativeai.google/*"]
#     local_storage: yes
#     external_api_urls: ["https://us-west1-jutomate-lamas-english.cloudfunctions.net/explore-assistant-api"]
#   }
# }
# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
