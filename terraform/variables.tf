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

variable "service_plan_type" {
  default = "Linux"
}
variable "sku_version" {
  default = "SHARED"
}

#Backend variables

variable "bkrg" {}
variable "bkstrg" {}
variable "bkcontainer" {}
variable "bkstrgkey" {}