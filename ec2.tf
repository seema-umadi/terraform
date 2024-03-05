provider "aws" {
  region = "ap-south-1"  # Set your desired AWS region
}

# Define a security group allowing all traffic
resource "aws_security_group" "example_security_group" {
  name        = "example-security-group"
  description = "Example security group allowing all traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch 5 EC2 instances with the above security group
resource "aws_instance" "ec2_instance" {
  count         = 5
  ami           = "ami-03f4878755434977f"  # Specify your desired AMI ID
  instance_type = "t2.micro"       # Specify your desired instance type

  security_groups = [aws_security_group.example_security_group.name]

  # Optional: Uncomment and adjust to specify additional configuration
   key_name      = "testkey"
  # subnet_id     = "subnet-12345678"
  # tags = {
  #   Name = "Instance-${count.index + 1}"
  # }
}
