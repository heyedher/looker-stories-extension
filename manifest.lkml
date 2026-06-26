project_name: "looker-stories"

# Looker Stories Extension Manifest

application: looker-stories {
  label: "Looker Stories ⚡"

  # 🛠️ DEVELOPMENT MODE: Loads the live bundle from your Vite dev server
  # url: "https://localhost:5173/"
  file: "bundle.js"

  # 🚀 PRODUCTION MODE: Loads the static compiled file uploaded directly to your Looker project
  # file: "bundle.js"

  entitlements: {
    # Allows the extension to navigate between pages inside Looker
    navigation: yes

    # Allows the extension to save states in the browser
    local_storage: yes

    # Required Core API methods to fetch dashboard configurations, run queries, and read metadata
    core_api_methods: [
      "me",                          # Get current user context
      "all_dashboards",              # List dashboards for the selector
      "dashboard",                   # Read dashboard tiles and configurations
      "run_query",                   # Execute existing dashboard queries
      "run_inline_query",            # Run queries directly from client definitions
      "project_files",               # Read README.md from the project repository
      "lookml_model_explore",        # Extract definitions and descriptions from LookML
      "user_attribute_user_values"   # Securely fetch the Gemini API Key user attribute
    ]
  }
}
