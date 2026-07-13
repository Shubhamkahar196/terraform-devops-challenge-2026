variable "aws_region"{
    description = "AWS Region"
    type = string
}

variable "ami_id"{
    description = "AMI ID"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type= string
}

variable "instance_name" {
  description = "EC2 Name Tag"
  type        = string
}