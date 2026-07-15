provider "aws" {
  region = var.aws_region
}

# Latest Amazon Linux AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Security Group
resource "aws_security_group" "web_sg" {

  name        = var.security_group_name
  description = "Security Group created by Terraform"

  dynamic "ingress" {

    for_each = var.allowed_ports

    content {

      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.security_group_name
  }
}

# EC2 Instance
resource "aws_instance" "web_server" {

  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>Terraform Day-4 - Remote Backend</h1>" > /var/www/html/index.html
EOF

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_security_group.web_sg
  ]

  tags = {
    Name = var.instance_name
  }
}