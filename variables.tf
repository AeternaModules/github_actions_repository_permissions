variable "actions_repository_permissionses" {
  description = <<EOT
Map of actions_repository_permissionses, attributes below
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
  # --- Unconfirmed validation candidates, derived from github_actions_repository_permissions's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: allowed_actions
  #   condition: contains(["all", "local_only", "selected"], value)
  #   message:   must be one of: all, local_only, selected
  # path: repository
  #   condition: length(value) >= 1 && length(value) <= 100
  #   message:   must be between 1 and 100 characters
}

