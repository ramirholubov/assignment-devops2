module "resource-group" {
  source = "./modules/resource-group"

  location            = var.region
  resource_group_name = "${local.pattern_name}-rg"
}

module "function-service-plan" {
  source = "./modules/service-plan"


  location            = module.resource-group.resource_group_location
  resource_group_name = module.resource-group.resource_group_name
  service_plan_name   = "${local.pattern_name}-function-sp"
  service_plan_type   = var.service_plan_type
  sku_version         = var.sku_version
}

module "azure-function" {
  source = "./modules/azure-function"


  function_name            = "${local.pattern_name}-simple-func"
  storage_account_name     = "${local.pattern_name}-func-strg"
  function_service_plan_id = module.function-service-plan.service_plan_id
  location                 = module.resource-group.resource_group_location
  resource_group_name      = module.resource-group.resource_group_name
}