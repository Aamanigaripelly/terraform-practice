variable "sample1"{
  default = "hello"
}
output "sample1" {
  value = var.sample1
}

variable "fruits" {
  default = ["apple","mango","banana"]
}
output "apple" {
  value = var.fruits[0]
}