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

##########################
#  OPTIONAL VARIABLES   #
##########################

variable "tags" {
  description = "A set of project's specific tags"
  type        = map(string)
  default     = {}
}