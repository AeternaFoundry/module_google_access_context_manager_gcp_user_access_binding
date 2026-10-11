output "access_context_manager_gcp_user_access_bindings_id" {
  description = "Map of id values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no id are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_access_levels" {
  description = "Map of access_levels values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no access_levels are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.access_levels if v.access_levels != null && length(v.access_levels) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_deletion_policy" {
  description = "Map of deletion_policy values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_dry_run_access_levels" {
  description = "Map of dry_run_access_levels values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no dry_run_access_levels are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.dry_run_access_levels if v.dry_run_access_levels != null && length(v.dry_run_access_levels) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_group_key" {
  description = "Map of group_key values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no group_key are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.group_key if v.group_key != null && length(v.group_key) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_name" {
  description = "Map of name values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no name are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_organization_id" {
  description = "Map of organization_id values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no organization_id are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_principal" {
  description = "Map of principal values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no principal are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => one(v.principal) if v.principal != null && length(v.principal) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_scoped_access_settings" {
  description = "Map of scoped_access_settings values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no scoped_access_settings are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => v.scoped_access_settings if v.scoped_access_settings != null && length(v.scoped_access_settings) > 0 }
}
output "access_context_manager_gcp_user_access_bindings_session_settings" {
  description = "Map of session_settings values across all access_context_manager_gcp_user_access_bindings, keyed the same as var.access_context_manager_gcp_user_access_bindings except keys with no session_settings are omitted"
  value       = { for k, v in google_access_context_manager_gcp_user_access_binding.access_context_manager_gcp_user_access_bindings : k => one(v.session_settings) if v.session_settings != null && length(v.session_settings) > 0 }
}

