env = "dev"
ami = "ami-0f3c7d07486cad139"

sg_id = ["sg-06662fa98e7cf8786"]
zone_id = "Z0529499O193BZWWIZRO"
components = {
  frontend={
    name = "frontend"
    instance_type = "t3.micro"
  }
  backend={
    name = "backend"
    instance_type = "t3.micro"

  }
  mysql={
    name = "mysql"
    instance_type = "t3.micro"

  }
}