resource "azurerm_storage_account" "func-strg" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  location                 = var.location
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
}
resource "azurerm_linux_function_app" "simp-func" {
  location            = var.location
  name                = var.function_name
  resource_group_name = var.resource_group_name
  service_plan_id     = var.function_service_plan_id

  storage_account_name = azurerm_storage_account.func-strg.name
  storage_account_access_key = azurerm_storage_account.func-strg.primary_access_key

  site_config {
    application_stack {
      node_version = "18"
    }
  }

  tags = var.tags
}