#  TerraWeek Challenge 2026 - Day 5

#  Terraform Modules

## Overview

On Day 5 of the **#TerraWeek Challenge**, I learned how to create and use **Terraform Modules** to make infrastructure reusable, modular, and easier to maintain.

Instead of writing the same infrastructure code multiple times, Terraform Modules allow us to package resources into reusable components that can be used across different projects.

---

## Objectives

- Understand Terraform Modules
- Create a reusable EC2 module
- Pass variables to modules
- Return outputs from modules
- Organize Terraform code using modules
- Improve project structure and maintainability

---

#  Project Structure

```
day-5/
│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

---

# 🛠 Technologies Used

- Terraform v1.15.x
- AWS Provider
- Amazon EC2
- HashiCorp Configuration Language (HCL)

---

#  Implementation

### Root Module

Configured:

- AWS Provider
- Variables
- Module Call
- Outputs

### EC2 Module

Created a reusable module that provisions:

- Amazon EC2 Instance

The module accepts:

- AMI ID
- Instance Type

The module returns:

- Instance ID
- Public IP Address

---

#  Module Flow

```
Root Module
      │
      ▼
Pass Variables
      │
      ▼
EC2 Module
      │
      ▼
Create EC2 Instance
      │
      ▼
Return Outputs
```

---

#  Terraform Commands

Initialize Terraform

```bash
terraform init
```

Format Configuration

```bash
terraform fmt
```

Validate Configuration

```bash
terraform validate
```

Generate Execution Plan

```bash
terraform plan
```

Create Infrastructure

```bash
terraform apply
```

Destroy Infrastructure

```bash
terraform destroy
```

---

#  Outputs

Terraform displays:

- EC2 Instance ID
- Public IP Address

---



#  Key Learnings

- What Terraform Modules are
- Benefits of reusable infrastructure
- Passing variables to modules
- Returning outputs from modules
- Organizing Terraform projects
- Improving scalability and maintainability

---

#  Why Use Terraform Modules?

Terraform Modules help to:

- Reduce duplicate code
- Improve code readability
- Reuse infrastructure components
- Simplify maintenance
- Standardize infrastructure across projects

---

# Outcome

Successfully created a reusable Terraform module to provision an AWS EC2 instance and understood how modules help build scalable Infrastructure as Code (IaC).

---

##  TerraWeek Challenge 2026

This repository is part of my **#TerraWeek Challenge 2026** journey, where I am learning and documenting Terraform concepts through hands-on practical implementation every day.

Looking forward to continuing this journey and building production-ready Infrastructure as Code.

⭐ If you found this project helpful, feel free to star the repository!