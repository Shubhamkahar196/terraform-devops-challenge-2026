#  TerraWeek Challenge 2026 - Day 2

##  Date
14 July 2026

## Topic
Terraform Configuration Language (HCL) – Variables, Types & Expressions

---

##  Objectives

- Learn HCL (HashiCorp Configuration Language)
- Understand Variables
- Learn Terraform Expressions
- Use Input Variables with `terraform.tfvars`
- Provision an AWS EC2 Instance using Terraform

---

##  What I Learned

### What is HCL?

HashiCorp Configuration Language (HCL) is the language used to write Terraform configurations. It is human-readable, declarative, and easy to maintain.

### Variables

Variables make Terraform configurations reusable by allowing values to be passed dynamically instead of hardcoding them.

### Expressions

Expressions are used to reference variables, resources, and outputs within Terraform configurations.

Example:

```hcl
instance_type = var.instance_type
```

### terraform.tfvars

The `terraform.tfvars` file is used to provide values for input variables, making configurations cleaner and easier to reuse.

---

##  Hands-on Practice

In today's challenge, I used Terraform to provision a real AWS EC2 instance.

The infrastructure was created using Terraform and later removed using `terraform destroy`, demonstrating the complete Infrastructure as Code (IaC) workflow.

---

##  Files Used

- `main.tf`
- `variables.tf`
- `terraform.tfvars`
- `outputs.tf`

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
AWS EC2 Instance Created
      ↓
terraform destroy
      ↓
Resources Deleted
```

---

##  Commands Used

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

##  Key Takeaways

- Learned HCL syntax and structure.
- Used input variables for reusable infrastructure.
- Understood Terraform expressions.
- Provisioned a real AWS EC2 instance using Terraform.
- Destroyed the infrastructure to avoid unnecessary cloud costs.

---

