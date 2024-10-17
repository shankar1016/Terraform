variable "filename" {
  type    = list(string)
  default = ["file8.txt", "file9.txt", "file10.txt"]
}
variable "content" {
  default = "iam a terraform learner"
}