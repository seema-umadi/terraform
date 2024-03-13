terraform {
  required_providers {
    aws = {
        version = "5.38.0"
    }
  }
}
provider "aws" {
    region = var.region
  
}
resource "aws_instance" "server" {
  ami = var.ami
  instance_type = var.instance_type
}

resource "aws_security_group" "sg" {
    name = "sg"
    description = "dynamic block"

    dynamic "ingress" {
        for_each = [80,8080,22]
        iterator = port
        content {
          description = "dynamic block"
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]  
        }
    }
}

