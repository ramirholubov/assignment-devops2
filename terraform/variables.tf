variable "environment" {
  default = "dev"
}
variable "project" {
  default = "devopsasg2"
}
variable "region" {
  default = "eastus"
}

#Service plan variables

variable "service_plan_os" {
  default = "Linux"
}
variable "sku_version" {
  default = "EP1"
}

#Backend variables

variable "bkrg" {
  default     = "PLACEHOLDER"
}
variable "bkstrg" {
  default     = "PLACEHOLDER"
}
variable "bkcontainer" {
  default     = "PLACEHOLDER"
}
variable "bkstrgkey" {
  default     = "PLACEHOLDER"
}