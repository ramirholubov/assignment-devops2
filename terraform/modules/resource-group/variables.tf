##########################
#   REQUIRED VARIABLES   #
##########################

variable "location" {
  description = "Location for azure resource group"
}

variable "resource_group_name" {
  description = "Name for azure resource group"
}

variable "tags" {
  description = "A set of project's specific tags"
  type        = map(string)
  default     = {}
}