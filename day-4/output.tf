output "instance_id" {
  value = aws_instance.web_server.id
}

output "public_ip" {
  value = aws_instance.web_server.public_ip
}

output "public_dns" {
  value = aws_instance.web_server.public_dns
}

output "website_url" {
  value = "http://${aws_instance.web_server.public_ip}"
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}