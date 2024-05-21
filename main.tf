terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.1"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2" {
  ami = var.id
  instance_type = var.type
}