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
output "mangocount" {
  value = var.fruitsquantity["mango"]
}

output "mangoquantitywithname" {
  value = "mango quantity is only ${var.fruitsquantity["mango"]}"
}

variable test1{}
output "test" {
  value = var.test1
}

variable "env" {}
output "env" {
  value = var.env
}