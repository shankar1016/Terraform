terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
}
resource "random_id" "server" {
 byte_length = var.num
}
resource "random_integer" "priority" {
  min = var.vartuple[0]
  max = var.vartuple[1]
}
resource "random_password" "password" {
  length           = var.ls[1]
  special          = var.boolean
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
resource "random_pet" "server" {
  length = var.varobject.num1
  prefix = var.varmap.test1
}
resource "random_shuffle" "az" {
  input        = [var.varmap.test1, var.varmap.test2, var.lsstring[0], var.lsstring[1], var.lsstring[2], var.varobject.name]
  result_count = var.vartuple[0]
}
resource "random_string" "random" {
  length           = var.ls[1]
  special          = var.ls[2]
  override_special = "/@£$"
}
output "rid" {
value = random_id.server.id
}
output "rint" {
value = random_integer.priority.result
}
output "rpass" {
value = random_password.password.result
sensitive = true
}
output "rpet" {
value = random_pet.server.id
}
output "rshuffle" {
value = random_shuffle.az.result
}
output "rstring" {
value = random_string.random.result
}
