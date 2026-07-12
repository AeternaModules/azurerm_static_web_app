data "azurerm_key_vault_secret" "repository_token" {
  for_each     = { for k, v in var.static_web_apps : k => v if v.repository_token_key_vault_id != null && v.repository_token_key_vault_secret_name != null }
  name         = each.value.repository_token_key_vault_secret_name
  key_vault_id = each.value.repository_token_key_vault_id
}
resource "azurerm_static_web_app" "static_web_apps" {
  for_each = var.static_web_apps

  location                           = each.value.location
  name                               = each.value.name
  resource_group_name                = each.value.resource_group_name
  app_settings                       = each.value.app_settings
  configuration_file_changes_enabled = each.value.configuration_file_changes_enabled
  preview_environments_enabled       = each.value.preview_environments_enabled
  public_network_access_enabled      = each.value.public_network_access_enabled
  repository_branch                  = each.value.repository_branch
  repository_token                   = each.value.repository_token != null ? each.value.repository_token : try(data.azurerm_key_vault_secret.repository_token[each.key].value, null)
  repository_url                     = each.value.repository_url
  sku_size                           = each.value.sku_size
  sku_tier                           = each.value.sku_tier
  tags                               = each.value.tags

  dynamic "basic_auth" {
    for_each = each.value.basic_auth != null ? [each.value.basic_auth] : []
    content {
      environments = basic_auth.value.environments
      password     = basic_auth.value.password
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

