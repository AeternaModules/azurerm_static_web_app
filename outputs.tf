output "static_web_apps_id" {
  description = "Map of id values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.id }
}
output "static_web_apps_api_key" {
  description = "Map of api_key values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.api_key }
  sensitive   = true
}
output "static_web_apps_app_settings" {
  description = "Map of app_settings values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.app_settings }
}
output "static_web_apps_basic_auth" {
  description = "Map of basic_auth values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.basic_auth }
  sensitive   = true
}
output "static_web_apps_configuration_file_changes_enabled" {
  description = "Map of configuration_file_changes_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.configuration_file_changes_enabled }
}
output "static_web_apps_default_host_name" {
  description = "Map of default_host_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.default_host_name }
}
output "static_web_apps_identity" {
  description = "Map of identity values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.identity }
}
output "static_web_apps_location" {
  description = "Map of location values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.location }
}
output "static_web_apps_name" {
  description = "Map of name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.name }
}
output "static_web_apps_preview_environments_enabled" {
  description = "Map of preview_environments_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.preview_environments_enabled }
}
output "static_web_apps_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.public_network_access_enabled }
}
output "static_web_apps_repository_branch" {
  description = "Map of repository_branch values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_branch }
}
output "static_web_apps_repository_token" {
  description = "Map of repository_token values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_token }
  sensitive   = true
}
output "static_web_apps_repository_url" {
  description = "Map of repository_url values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.repository_url }
}
output "static_web_apps_resource_group_name" {
  description = "Map of resource_group_name values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.resource_group_name }
}
output "static_web_apps_sku_size" {
  description = "Map of sku_size values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.sku_size }
}
output "static_web_apps_sku_tier" {
  description = "Map of sku_tier values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.sku_tier }
}
output "static_web_apps_tags" {
  description = "Map of tags values across all static_web_apps, keyed the same as var.static_web_apps"
  value       = { for k, v in azurerm_static_web_app.static_web_apps : k => v.tags }
}

