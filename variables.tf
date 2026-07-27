variable "actions_repository_permissions" {
  description = <<EOT
Map of actions_repository_permissions, attributes below
Required:
    - repository
Optional:
    - allowed_actions
    - enabled
    - sha_pinning_required
    - allowed_actions_config (block):
        - github_owned_allowed (required)
        - patterns_allowed (optional)
        - verified_allowed (optional)
EOT

  type = map(object({
    repository           = string
    allowed_actions      = optional(string)
    enabled              = optional(bool)
    sha_pinning_required = optional(bool)
    allowed_actions_config = optional(object({
      github_owned_allowed = bool
      patterns_allowed     = optional(set(string))
      verified_allowed     = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.actions_repository_permissions : (
        v.allowed_actions == null || (contains(["all", "local_only", "selected"], v.allowed_actions))
      )
    ])
    error_message = "must be one of: all, local_only, selected"
  }
  validation {
    condition = alltrue([
      for k, v in var.actions_repository_permissions : (
        length(v.repository) >= 1 && length(v.repository) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

