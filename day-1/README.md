#  TerraWeek Challenge 2026 - Day 1

## 📅 Date
12 July 2026

## Topic
Introduction to Infrastructure as Code (IaC) & Terraform Basics

---

##  Objectives

- Understand Infrastructure as Code (IaC)
- Learn Terraform fundamentals
- Install Terraform
- Understand the Terraform workflow
- Create the first Terraform project

---

##  What I Learned

### What is Infrastructure as Code (IaC)?

Infrastructure as Code (IaC) is the practice of managing and provisioning infrastructure using code instead of manually creating resources through a cloud console. It makes infrastructure repeatable, version-controlled, and easy to automate.

### What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows us to define infrastructure using HCL (HashiCorp Configuration Language) and provision resources across different cloud providers like AWS, Azure, and GCP.

---

##  Important Terraform Concepts

### Provider
A provider is a plugin that allows Terraform to communicate with cloud platforms or services such as AWS, Azure, Docker, or Local.

### Resource
A resource is any infrastructure component managed by Terraform, such as an EC2 instance, S3 bucket, or local file.

### State
Terraform stores information about the resources it manages in a state file (`terraform.tfstate`).

### Plan
The `terraform plan` command shows what Terraform will create, update, or destroy before making any changes.

### HCL
HashiCorp Configuration Language (HCL) is the language used to write Terraform configuration files.

### Module
A module is a reusable collection of Terraform configuration files that helps organize infrastructure code.

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
terraform destroy
```

---

##  Project

This project uses the **Local** and **Random** providers to:

- Generate a random string
- Create a local file
- Understand the complete Terraform workflow

---

##  Key Takeaways

- Terraform uses a declarative approach.
- Infrastructure can be managed using code.
- The `plan` command previews changes before deployment.
- Always use `destroy` to clean up resources after practice.

---

## 🚀 Next Goal

Day 2: Variables, Data Types, Outputs, and Expressions.