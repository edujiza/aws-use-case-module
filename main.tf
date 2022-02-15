terraform {
    required_version = "~>1.1.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>4.0.0"
        }
    }

    backend "s3" {
        bucket = "ccs-module-test-devops"
        key = "ccs-module/terraform.tfstate"
        region = "us-west-2"
    }
}

provider "aws" {
    region = var.aws_region
}

module "vpc_module" {
    source = "github.com/edujiza/vpc_module.git?ref=2.0.0"
    cidr_block = var.cidr_block
    vpc_name = var.vpc_name
    subnet_name = var.subnet_name
}
