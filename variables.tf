variable "static_web_apps" {
  description = <<EOT
Map of static_web_apps, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - app_settings
    - configuration_file_changes_enabled
    - preview_environments_enabled
    - public_network_access_enabled
    - repository_branch
    - repository_token
    - repository_token_key_vault_id (alternative to repository_token - read from Key Vault instead)
    - repository_token_key_vault_secret_name (alternative to repository_token - read from Key Vault instead)
    - repository_url
    - sku_size
    - sku_tier
    - tags
    - basic_auth (block):
        - environments (required)
        - password (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location                               = string
    name                                   = string
    resource_group_name                    = string
    app_settings                           = optional(map(string))
    configuration_file_changes_enabled     = optional(bool)
    preview_environments_enabled           = optional(bool)
    public_network_access_enabled          = optional(bool)
    repository_branch                      = optional(string)
    repository_token                       = optional(string)
    repository_token_key_vault_id          = optional(string)
    repository_token_key_vault_secret_name = optional(string)
    repository_url                         = optional(string)
    sku_size                               = optional(string)
    sku_tier                               = optional(string)
    tags                                   = optional(map(string))
    basic_auth = optional(object({
      environments = string
      password     = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
}

