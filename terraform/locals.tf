locals {
  tags = { "environment" : var.environment }
  pattern_name = "${lower(var.project)}-${lower(var.environment)}-${lower(var.region)}"
  storage_account_pattern_name = "${lower(var.project)}-${lower(var.environment)}-${lower(var.region)}"
}