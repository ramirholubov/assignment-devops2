variable "environment" {}
variable "project" {}
variable "region" {
  default = "eastus"
}

#Service plan variables

variable "service_plan_type" {}
variable "sku_version" {}

#Backend variables

variable "bkrg" {}
variable "bkstrg" {}
variable "bkcontainer" {}
variable "bkstrgkey" {}