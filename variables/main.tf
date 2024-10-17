terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
resource "random_string" "length" {
  length           = var.length
  special          = true
  override_special = "/@£$"
}
