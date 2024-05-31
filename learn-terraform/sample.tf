variable "sample1"{
  default = "hello"
}
output "sample1" {
  value = var.sample1
}

variable "fruits" {
  default = ["apple","mango","banana"]
}
output "firstfruit" {
  value = var.fruits[0]
}

variable "fruitsquantity" {
  default = {
    apple = 100
    bananan = 200
    mango = 150
  }
}
output "applecount" {
  value = var.fruitsquantity["mango"]
}