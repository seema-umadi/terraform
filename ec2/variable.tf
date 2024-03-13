variable "ami"{
    type = string
    default = "ami-03f4878755434977f"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "region" {
    type = string
    default = "ap-south-1"
}
