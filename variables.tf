# variables.tf

variable "region" {
  description = "The AWS region where resources will be provisioned."
  default     = "us-west-2" # Set your preferred default region
}

variable "aws_access_key" {
  description = "AWS Access Key ID."
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key."
}

variable "vpc_name" {
  description = "Name of the VPC."
}

variable "cidr_block" {
  description = "CIDR block for the VPC."
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to create subnets in."
}

variable "security_group_name" {
  description = "Name of the security group."
}

variable "subnet_count" {
  description = "Number of subnets to create."
  default     = 2
}

variable "cidr_suffix" {
  description = "Suffixes for CIDR blocks of subnets."
  default     = ["1", "2"]
}
