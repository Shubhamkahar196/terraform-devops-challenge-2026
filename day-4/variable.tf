variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "instance_name" {
  description = "EC2 Instance Name"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}

variable "allowed_ports" {
  description = "Allowed Ports"
  type        = list(number)
}