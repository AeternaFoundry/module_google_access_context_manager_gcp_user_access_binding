resource "google_access_context_manager_gcp_user_access_binding" "access_context_manager_gcp_user_access_bindings" {
  for_each = var.access_context_manager_gcp_user_access_bindings

  organization_id       = each.value.organization_id
  access_levels         = each.value.access_levels
  deletion_policy       = each.value.deletion_policy
  dry_run_access_levels = each.value.dry_run_access_levels
  group_key             = each.value.group_key

  dynamic "principal" {
    for_each = each.value.principal != null ? [each.value.principal] : []
    content {
      service_account                = principal.value.service_account
      service_account_project_number = principal.value.service_account_project_number
    }
  }

  dynamic "scoped_access_settings" {
    for_each = each.value.scoped_access_settings != null ? each.value.scoped_access_settings : []
    content {
      dynamic "active_settings" {
        for_each = scoped_access_settings.value.active_settings != null ? [scoped_access_settings.value.active_settings] : []
        content {
          access_levels = active_settings.value.access_levels
          dynamic "session_settings" {
            for_each = active_settings.value.session_settings != null ? [active_settings.value.session_settings] : []
            content {
              max_inactivity         = session_settings.value.max_inactivity
              session_length         = session_settings.value.session_length
              session_length_enabled = session_settings.value.session_length_enabled
              session_reauth_method  = session_settings.value.session_reauth_method
              use_oidc_max_age       = session_settings.value.use_oidc_max_age
            }
          }
        }
      }
      dynamic "dry_run_settings" {
        for_each = scoped_access_settings.value.dry_run_settings != null ? [scoped_access_settings.value.dry_run_settings] : []
        content {
          access_levels = dry_run_settings.value.access_levels
        }
      }
      dynamic "scope" {
        for_each = scoped_access_settings.value.scope != null ? [scoped_access_settings.value.scope] : []
        content {
          dynamic "client_scope" {
            for_each = scope.value.client_scope != null ? [scope.value.client_scope] : []
            content {
              dynamic "restricted_client_application" {
                for_each = client_scope.value.restricted_client_application != null ? [client_scope.value.restricted_client_application] : []
                content {
                  client_id = restricted_client_application.value.client_id
                  name      = restricted_client_application.value.name
                }
              }
            }
          }
        }
      }
    }
  }

  dynamic "session_settings" {
    for_each = each.value.session_settings != null ? [each.value.session_settings] : []
    content {
      max_inactivity         = session_settings.value.max_inactivity
      session_length         = session_settings.value.session_length
      session_length_enabled = session_settings.value.session_length_enabled
      session_reauth_method  = session_settings.value.session_reauth_method
      use_oidc_max_age       = session_settings.value.use_oidc_max_age
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

