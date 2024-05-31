resource "aws_instance" "frontend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="frontend"
  }
}
resource "aws_instance" "backend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="backend"
  }
}
resource "aws_instance" "mysql" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="mysql"
  }
}