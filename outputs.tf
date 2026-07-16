output "actions_repository_permissionses_id" {
  description = "Map of id values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "actions_repository_permissionses_allowed_actions" {
  description = "Map of allowed_actions values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.allowed_actions if v.allowed_actions != null && length(v.allowed_actions) > 0 }
}
output "actions_repository_permissionses_allowed_actions_config" {
  description = "Map of allowed_actions_config values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.allowed_actions_config if v.allowed_actions_config != null && length(v.allowed_actions_config) > 0 }
}
output "actions_repository_permissionses_enabled" {
  description = "Map of enabled values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.enabled if v.enabled != null }
}
output "actions_repository_permissionses_repository" {
  description = "Map of repository values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "actions_repository_permissionses_sha_pinning_required" {
  description = "Map of sha_pinning_required values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.sha_pinning_required if v.sha_pinning_required != null }
}

