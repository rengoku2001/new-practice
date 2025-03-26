resource "aws_instance" "venk" {
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "mumbaikey"
  
}