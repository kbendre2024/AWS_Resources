# modules/vpc/main.tf

variable "region" {}
variable "vpc_name" {}
variable "cidr_block" {}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}
 
output "cidr_block" {
  value = aws_vpc.main.cidr_block
}
