terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {}

# Create a VPC
resource "aws_instance" "app_builder" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name      = var.key_name
  vpc_security_group_ids = var.sec_group

  tags = {
    Name = "builder"
  }
}