resource "azurerm_linux_function_app" "simp-func" {
  location            = var.location
  name                = var.function_name
  resource_group_name = var.resource_group_name
  service_plan_id     = var.function_service_plan_id
  site_config {}

  tags = var.tags
}