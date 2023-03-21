##########################
#   REQUIRED VARIABLES   #
##########################

variable "location" {
  description = "Location of azure service plan"
}

variable "service_plan_name" {
  description = "Name of service plan"
}

variable "service_plan_type" {
  description = "Service plan type"
}

variable "resource_group_name" {
  description = "Resource group for service plan"
}

variable "sku_version" {
  description = "Version of service plan"
}