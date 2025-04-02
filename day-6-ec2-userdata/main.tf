provider "aws" {
  
}

resource "aws_instance" "bro" {
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "mumbaikey"
    user_data = file("test.sh")
    tags = {
      Name="docker"
    }
  
}