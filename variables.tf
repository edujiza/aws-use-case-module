variable "vpc_name" {
    description = "vpc name"
    type = string
}

variable "subnet_name" {
    description = "subnet name"
    type = string
}

variable "cidr_block" {
    description = "address space of the vpc"
    type = string
    default = "172.1.0.0/16"
}

variable "aws_region" {
    description = "set aws region"
    type = string
    default = "us-east-1"
}