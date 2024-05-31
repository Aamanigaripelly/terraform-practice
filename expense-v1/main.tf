resource "aws_instance" "frontend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z0529499O193BZWWIZRO
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = Z0529499O193BZWWIZRO
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami                     = "ami-0f3c7d07486cad139"
  instance_type           = "t3.micro"
  vpc_security_group_ids = ["sg-06662fa98e7cf8786"]
  tags = {
    name ="mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = Z0529499O193BZWWIZRO
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}