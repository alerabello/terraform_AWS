provider "aws" {
    token = var.do_token
}

variable "do_token" {  
}

resource "aws_droplet" "web" {
  image = "ami-0b0ea68c435eb488d (64-bit x86)"
  name = "web"
  region = "us-east-1"
  size = "t2.micro"
}