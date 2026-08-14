output "static_web_apps_id" {
  description = "Map of id values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "static_web_apps_api_key" {
  description = "Map of api_key values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "static_web_apps_app_settings" {
  description = "Map of app_settings values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.app_settings if v.app_settings != null && length(v.app_settings) > 0 }
}
output "static_web_apps_basic_auth" {
  description = "Map of basic_auth values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => one(v.basic_auth) if v.basic_auth != null && length(v.basic_auth) > 0 }
  sensitive   = true
}
output "static_web_apps_configuration_file_changes_enabled" {
  description = "Map of configuration_file_changes_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.configuration_file_changes_enabled if v.configuration_file_changes_enabled != null }
}
output "static_web_apps_default_host_name" {
  description = "Map of default_host_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.default_host_name if v.default_host_name != null && length(v.default_host_name) > 0 }
}
output "static_web_apps_identity" {
  description = "Map of identity values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "static_web_apps_location" {
  description = "Map of location values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.location if v.location != null && length(v.location) > 0 }
}
output "static_web_apps_name" {
  description = "Map of name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "static_web_apps_preview_environments_enabled" {
  description = "Map of preview_environments_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.preview_environments_enabled if v.preview_environments_enabled != null }
}
output "static_web_apps_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "static_web_apps_repository_branch" {
  description = "Map of repository_branch values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_branch if v.repository_branch != null && length(v.repository_branch) > 0 }
}
output "static_web_apps_repository_token" {
  description = "Map of repository_token values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_token if v.repository_token != null && length(v.repository_token) > 0 }
  sensitive   = true
}
output "static_web_apps_repository_url" {
  description = "Map of repository_url values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_url if v.repository_url != null && length(v.repository_url) > 0 }
}
output "static_web_apps_resource_group_name" {
  description = "Map of resource_group_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "static_web_apps_sku_size" {
  description = "Map of sku_size values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.sku_size if v.sku_size != null && length(v.sku_size) > 0 }
}
output "static_web_apps_sku_tier" {
  description = "Map of sku_tier values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.sku_tier if v.sku_tier != null && length(v.sku_tier) > 0 }
}
output "static_web_apps_tags" {
  description = "Map of tags values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

