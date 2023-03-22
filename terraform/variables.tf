variable "environment" {}
variable "project" {}
variable "region" {}
variable "tags" {}

#Service plan variables

variable "service_plan_os" {}
variable "sku_version" {}

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