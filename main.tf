resource "github_actions_repository_permissions" "actions_repository_permissions" {
  for_each = var.actions_repository_permissions

  repository           = each.value.repository
  allowed_actions      = each.value.allowed_actions
  enabled              = each.value.enabled
  sha_pinning_required = each.value.sha_pinning_required

  dynamic "allowed_actions_config" {
    for_each = each.value.allowed_actions_config != null ? [each.value.allowed_actions_config] : []
    content {
      github_owned_allowed = allowed_actions_config.value.github_owned_allowed
      patterns_allowed     = allowed_actions_config.value.patterns_allowed
      verified_allowed     = allowed_actions_config.value.verified_allowed
    }
  }
}

