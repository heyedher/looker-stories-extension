project_name: "looker-stories"

# Looker Stories Extension Manifest
# Copy and paste this configuration into your Looker project's manifest.lkml file.

application: looker-stories {
  label: "Looker Stories ⚡"

  # 🚀 PRODUCTION MODE: Loads the static compiled file uploaded directly to your Looker project
  file: "bundle.js"

  # 🔌 MOUNT POINTS: Enables the extension to run as a sidebar app and embed inside dashboard tiles
  mount_points: {
    standalone: yes
    dashboard_tile: yes
  }

  entitlements: {
    # Allows the extension to navigate between pages inside Looker
    navigation: yes

    # Allows the extension to open standalone full-screen tabs and popups
    new_window: yes

    # Allows the extension to save states in the browser
    local_storage: yes

    # Allows the extension to securely connect to Google's Gemini API domain
    external_api_urls: ["https://generativelanguage.googleapis.com"]

    # Allows the extension to read and write the gemini_api_key user attribute client-side
    scoped_user_attributes: ["gemini_api_key"]

    # Required Core API methods to fetch dashboard configurations, run queries, and read metadata
    core_api_methods: [
      "me",                          # Get current user context
      "all_dashboards",              # List dashboards for the selector
      "all_lookml_dashboards",       # List LookML dashboards for the selector
      "search_lookml_dashboards",    # Search LookML dashboards reliably across SDK versions
      "dashboard",                   # Read dashboard tiles and configurations
      "run_query",                   # Execute existing dashboard queries
      "run_inline_query",            # Run queries directly from client definitions
      "project_files",               # Read README.md from the project repository
      "lookml_model_explore",        # Extract definitions and descriptions from LookML
      "user_attribute_user_values"   # Securely fetch the Gemini API Key user attribute
    ]
  }
}
