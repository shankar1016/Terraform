variable "num" {
  type    = number
  default = 8
}
variable "str" {
  type    = string
  default = "Hello world"
}
variable "boolean" {
  type    = bool
  default = true
}
variable "ls" {
  type    = list(any)
  default = ["sha", 16, true]
}
variable "lsstring" {
  type    = list(string)
  default = ["Dev1", "Dev2", "Dev3"]
}
variable "varmap" {
  type = map(string)
  default = {
    test1 = "Yugan"
    test2 = "today is monday"
  }
}
variable "vartuple" {
  type    = tuple([number, number])
  default = [1, 50]
}
variable "varobject" {
  type = object({
    name = string
  num1 = number })
  default = {
    name = "vick"
    num1 = 1
  }
}
