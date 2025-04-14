terraform {
  backend "s3" {
    bucket = "venkatesh2001"
    key = "terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
    
  }
}