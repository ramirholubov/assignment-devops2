##########################
#   REQUIRED VARIABLES   #
##########################

variable "location" {
  description = "Location for azure function resource"
}

variable "function_name" {
  description = "Name for azrue function resource"
}

variable "resource_group_name" {
  description = "Resource group where azure function is deployed"
}

variable "function_service_plan_id" {
  description = "Service plan id allocated to azure function"
}

variable "storage_account_name" {
  description = "Name of the storage account"
}

##########################
#  OPTIONAL VARIABLES   #
##########################

variable "tags" {
  description = "A set of project's specific tags"
  type        = map(string)
  default     = {}
}

variable "account_replication_type" {
  description = "Type of replication that will be used by storage account"
  default = "LRS"
}

variable "account_tier" {
  description = "Account tier for storage account"
  default = "Standart"
}