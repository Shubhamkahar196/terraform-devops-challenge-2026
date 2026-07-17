#  TerraWeek Challenge 2026 - Day 6

#  Terraform Providers

##  Overview

On **Day 6** of the **#TerraWeek Challenge**, I explored one of the core building blocks of Terraform — **Providers**.

Terraform itself does not communicate directly with cloud platforms. It uses **Providers** as plugins to interact with cloud services such as AWS, Azure, Google Cloud, Kubernetes, Docker, GitHub, and many others.

For today's practical, I configured the **AWS Provider** and provisioned an **Amazon EC2 Instance** using Terraform.

---

#  Objectives

- Understand Terraform Providers
- Learn how Terraform communicates with cloud platforms
- Configure AWS Provider
- Configure Provider Version
- Deploy an EC2 Instance using AWS Provider
- Understand Provider Authentication
- Learn Provider Version Management

---

# Project Structure

```
day-6/
│── provider.tf
│── main.tf
│── variables.tf
│── terraform.tfvars
│── outputs.tf
```

---

#  Technologies Used

- Terraform v1.15.x
- AWS Provider
- Amazon EC2
- HCL (HashiCorp Configuration Language)

---

#  What is a Terraform Provider?

A **Terraform Provider** is a plugin that enables Terraform to communicate with external APIs and cloud platforms.

Providers are responsible for creating, updating, and deleting infrastructure resources.

Examples include:

- AWS
- Microsoft Azure
- Google Cloud Platform (GCP)
- Kubernetes
- Docker
- GitHub
- Cloudflare

Without a Provider, Terraform cannot provision or manage infrastructure.

---

#  Provider Architecture

```
Terraform Configuration
          │
          ▼
Terraform Provider
          │
          ▼
Cloud Provider API
          │
          ▼
Infrastructure
```

---

#  AWS Provider Configuration

Configured the AWS Provider by specifying:

- Provider Source
- Provider Version
- AWS Region

This ensures Terraform downloads the correct provider version and communicates with the AWS API.

---

# Infrastructure Created

Using the AWS Provider, I provisioned:

- Amazon EC2 Instance

The instance configuration included:

- AMI ID
- Instance Type
- Resource Tags

---

#  Terraform Workflow

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

Terraform returned:

- EC2 Instance ID
- Public IP Address

---

#  Screenshots

- Project Structure
- AWS Provider Configuration
- Terraform Init
- Terraform Validate
- Terraform Plan
- Terraform Apply
- EC2 Instance Running
- Terraform Outputs
- Terraform Destroy
- AWS Console After Resource Deletion

---

#  Key Learnings

- What Terraform Providers are
- Why Providers are required
- How Terraform communicates with AWS
- Provider Version Management
- AWS Provider Configuration
- Infrastructure Provisioning using Providers
- Terraform Initialization Process

---

#  Why Provider Versioning Matters

Provider versioning ensures:

- Stable infrastructure deployments
- Consistent behavior across environments
- Reduced risk of breaking changes
- Better compatibility with Terraform configurations

---

#  Common Terraform Providers

| Provider | Purpose |
|-----------|---------|
| AWS | AWS Infrastructure |
| Azure | Microsoft Azure Resources |
| Google | Google Cloud Resources |
| Kubernetes | Kubernetes Cluster Management |
| Docker | Docker Containers & Images |
| GitHub | Repository & Organization Management |
| Cloudflare | DNS & CDN Management |

---

#  Outcome

Successfully configured the AWS Provider, provisioned an EC2 instance, and gained a practical understanding of how Terraform Providers act as the bridge between Terraform configurations and cloud infrastructure.

---

#  Interview Takeaways

### What is a Provider?

A Provider is a Terraform plugin that allows Terraform to communicate with cloud platforms or external services.

### Why is a Provider required?

Terraform cannot provision infrastructure without a Provider because Providers handle all API interactions.

### Why specify a Provider version?

To ensure consistent deployments and avoid unexpected issues caused by provider updates.

### What happens during `terraform init`?

- Downloads required Providers
- Initializes the working directory
- Creates the `.terraform` directory
- Generates the `.terraform.lock.hcl` file

---

##  TerraWeek Challenge 2026

This repository is part of my **#TerraWeek Challenge 2026**, where I am learning Terraform through daily hands-on practical implementations and documenting each day's progress with real Infrastructure as Code examples.

Every challenge day helps strengthen my understanding of Cloud Infrastructure, DevOps, and Terraform best practices.

⭐ Thank you for visiting this repository. Feedback and suggestions are always welcome!