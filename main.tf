terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}
resource "aws_instance" "ec2" {
  ami = var.id
  instance_type = var.type
}