#  TerraWeek Challenge 2026 - Day 3

##  Date
14 July 2026

##  Topic
Managing Resources with Terraform

---

##  Objectives

- Learn how to manage multiple resources in Terraform.
- Understand resource dependencies.
- Use lifecycle meta-arguments.
- Provision AWS infrastructure using Terraform.
- Automate server configuration with User Data.

---

##  What I Learned

### Resource

A resource is any infrastructure component that Terraform creates and manages, such as an EC2 instance, Security Group, or S3 Bucket.

Example:

```hcl
resource "aws_instance" "web_server" {

}
```

---

### Resource Dependencies

Terraform automatically detects dependencies between resources.

In this project, the EC2 instance depends on the Security Group.

```hcl
vpc_security_group_ids = [
  aws_security_group.web_sg.id
]
```

This ensures that the Security Group is created before the EC2 instance.

---

### Lifecycle Meta Arguments

Lifecycle rules control how Terraform manages resources.

Example:

```hcl
lifecycle {
  create_before_destroy = true
}
```

This creates a new resource before destroying the old one, reducing downtime.

---

### User Data

User Data is a startup script executed automatically when an EC2 instance launches.

In this project, User Data:

- Updates the server
- Installs Apache HTTP Server
- Starts the Apache service
- Creates a simple web page automatically

---

##  Hands-on Practice

Today I built a small AWS infrastructure using Terraform.

The project includes:

- AWS Provider
- Latest Amazon Linux 2023 AMI (Data Source)
- Security Group
- EC2 Instance
- User Data Script
- Resource Dependencies
- Lifecycle Configuration
- Outputs

---

##  Files Used

- main.tf
- variables.tf
- terraform.tfvars
- outputs.tf
- README.md

---

##  Terraform Workflow

```text
Write Code
      ↓
terraform init
      ↓
terraform fmt
      ↓
terraform validate
      ↓
terraform plan
      ↓
terraform apply
      ↓
AWS Security Group Created
      ↓
AWS EC2 Instance Created
      ↓
Apache Installed Automatically
      ↓
terraform destroy
```

---

##  Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```



##  Key Takeaways

- Learned how Terraform manages multiple resources.
- Understood automatic resource dependencies.
- Used lifecycle meta-arguments.
- Automated EC2 configuration using User Data.
- Practiced Infrastructure as Code (IaC) on AWS.
- Destroyed infrastructure after testing to avoid unnecessary cloud costs.

---

##  Next Goal

Day 4: Terraform State Management & Remote Backend (Amazon S3).