variable "access_context_manager_gcp_user_access_bindings" {
  description = <<EOT
Map of access_context_manager_gcp_user_access_bindings, attributes below
Required:
    - organization_id
Optional:
    - access_levels
    - deletion_policy
    - dry_run_access_levels
    - group_key
    - principal (block):
        - service_account (optional)
        - service_account_project_number (optional)
    - scoped_access_settings (block):
        - active_settings (optional, block):
            - access_levels (optional)
            - session_settings (optional, block):
                - max_inactivity (optional)
                - session_length (optional)
                - session_length_enabled (optional)
                - session_reauth_method (optional)
                - use_oidc_max_age (optional)
        - dry_run_settings (optional, block):
            - access_levels (optional)
        - scope (optional, block):
            - client_scope (optional, block):
                - restricted_client_application (optional, block):
                    - client_id (optional)
                    - name (optional)
    - session_settings (block):
        - max_inactivity (optional)
        - session_length (optional)
        - session_length_enabled (optional)
        - session_reauth_method (optional)
        - use_oidc_max_age (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    organization_id       = string
    access_levels         = optional(list(string))
    deletion_policy       = optional(string)
    dry_run_access_levels = optional(list(string))
    group_key             = optional(string)
    principal = optional(object({
      service_account                = optional(string)
      service_account_project_number = optional(string)
    }))
    scoped_access_settings = optional(list(object({
      active_settings = optional(object({
        access_levels = optional(list(string))
        session_settings = optional(object({
          max_inactivity         = optional(string)
          session_length         = optional(string)
          session_length_enabled = optional(bool)
          session_reauth_method  = optional(string)
          use_oidc_max_age       = optional(bool)
        }))
      }))
      dry_run_settings = optional(object({
        access_levels = optional(list(string))
      }))
      scope = optional(object({
        client_scope = optional(object({
          restricted_client_application = optional(object({
            client_id = optional(string)
            name      = optional(string)
          }))
        }))
      }))
    })))
    session_settings = optional(object({
      max_inactivity         = optional(string)
      session_length         = optional(string)
      session_length_enabled = optional(bool)
      session_reauth_method  = optional(string)
      use_oidc_max_age       = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

