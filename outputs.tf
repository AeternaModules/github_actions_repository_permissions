output "actions_repository_permissionses_id" {
  description = "Map of id values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.id }
}
output "actions_repository_permissionses_allowed_actions" {
  description = "Map of allowed_actions values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.allowed_actions }
}
output "actions_repository_permissionses_allowed_actions_config" {
  description = "Map of allowed_actions_config values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.allowed_actions_config }
}
output "actions_repository_permissionses_enabled" {
  description = "Map of enabled values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.enabled }
}
output "actions_repository_permissionses_repository" {
  description = "Map of repository values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.repository }
}
output "actions_repository_permissionses_sha_pinning_required" {
  description = "Map of sha_pinning_required values across all actions_repository_permissionses, keyed the same as var.actions_repository_permissionses"
  value       = { for k, v in github_actions_repository_permissions.actions_repository_permissionses : k => v.sha_pinning_required }
}

