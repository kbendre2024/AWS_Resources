# modules/subnets/main.tf

variable "region" {}
variable "vpc_id" {}
variable "subnet_count" {}
variable "subnet_type" {}
variable "cidr_block" {}  # Define cidr_block variable
variable "cidr_suffix" {}
variable "availability_zones" {}

resource "aws_subnet" "subnet" {
  count             = var.subnet_count
  vpc_id            = var.vpc_id
  cidr_block        = cidrsubnet(var.cidr_block, 8, var.cidr_suffix[count.index])
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${var.subnet_type}-subnet-${count.index + 1}"
  }
}
