module "dev" {
    source = "../day-5-sample-ec2-code"
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "mumbaikey"
    Name = "moduleec2"
  
}