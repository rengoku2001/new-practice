resource "aws_key_pair" "keytf" {
    key_name = "terraform-key"
    public_key = file("~/.ssh/id_ed25519.pub")
}

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


resource "aws_instance" "instance" {
    ami = data.aws_ami.latest_amazon_linux.id
    instance_type = "t2.micro"
    key_name = aws_key_pair.keytf.id
    tags = {
      Name="key-tf"
    }
  
}