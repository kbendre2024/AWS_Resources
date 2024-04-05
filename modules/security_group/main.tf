# modules/security_group/main.tf

variable "region" {}
variable "vpc_id" {}
variable "security_group_name" {}

resource "aws_security_group" "security_group" {
  vpc_id = var.vpc_id
  name   = var.security_group_name

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_name
  }
}
