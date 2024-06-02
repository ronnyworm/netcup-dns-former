terraform {
  required_providers {
    netcupdns = {
      source = "sveba/netcupdns"
    }
  }
}

variable "key" {}
variable "password" {}
variable "customer_number" {}

provider "netcupdns" {
  customer_number = var.customer_number
  key             = var.key
  password        = var.password
}
