variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "security_group_name" {
  description = "Security Group name"
  type        = string
}

variable "allowed_ports" {
  description = "Ports allowed in Security Group"
  type        = list(number)
}