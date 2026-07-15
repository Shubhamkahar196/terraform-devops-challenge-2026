#  TerraWeek Challenge 2026 - Day 4

##  Date
15 July 2026

##  Topic
Terraform State & Remote Backend (Amazon S3)

---

#  Objectives

- Understand Terraform State
- Learn Local vs Remote Backend
- Configure Amazon S3 as a Remote Backend
- Migrate Terraform State to Amazon S3
- Explore Terraform State Commands

---

#  What is Terraform State?

Terraform State is a file that keeps track of all the infrastructure managed by Terraform.

It stores information such as:

- Resource IDs
- Public IP Addresses
- Resource Attributes
- Current Infrastructure Status

Without the state file, Terraform cannot determine what infrastructure already exists.

---

#  Local Backend

By default, Terraform stores the state locally.

```
terraform.tfstate
```

Problems with Local State:

- Difficult to collaborate with teams
- Risk of losing the state file
- State exists only on one machine

---

#  Remote Backend

A Remote Backend stores the Terraform state outside the local machine.

For this challenge, Amazon S3 is used as the Remote Backend.

Benefits:

- Centralized State Management
- Easy Team Collaboration
- Safer than Local Storage
- Reliable State Management

---

# Amazon S3 Backend

Configured Amazon S3 as the Remote Backend using:

```hcl
terraform {
  backend "s3" {
    bucket = "YOUR_BUCKET_NAME"
    key    = "terraweek/day-4/terraform.tfstate"
    region = "ap-south-1"
  }
}
```

---

# State Migration

Migrated the existing Local State to Amazon S3 using:

```bash
terraform init
```

Terraform automatically migrated the state to the configured S3 backend.

---

#  Terraform State Commands

### List Resources

```bash
terraform state list
```

---

### Show Complete State

```bash
terraform show
```

---

### Show Resource Details

```bash
terraform state show aws_instance.web_server
```

---

### Display Outputs

```bash
terraform output
```

---

#  Project Files

- backend.tf
- main.tf
- variables.tf
- terraform.tfvars
- outputs.tf
- README.md

---

#  Terraform Workflow

```text
Write Terraform Code
        ↓
terraform init
        ↓
State Migration
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
State Stored in Amazon S3
        ↓
terraform state list
        ↓
terraform show
        ↓
terraform destroy
```

---

#  Screenshots

- Terraform Init
- State Migration
- Terraform Plan
- Terraform Apply
- Terraform State List
- Terraform Show
- Terraform State Show
- Amazon S3 Bucket
- Terraform Output
- Terraform Destroy

---

#  Key Learnings

- Learned how Terraform stores infrastructure information.
- Understood the importance of Terraform State.
- Configured Amazon S3 as a Remote Backend.
- Migrated Local State to Remote State.
- Practiced Terraform State commands.
- Learned how remote state improves collaboration and reliability.

---

#  Interview Questions

- What is Terraform State?
- Why is Terraform State important?
- What is a Remote Backend?
- Why use Amazon S3 for Terraform State?
- What is State Migration?
- Difference between Local Backend and Remote Backend?
- What happens if the Terraform State file is deleted?

---

