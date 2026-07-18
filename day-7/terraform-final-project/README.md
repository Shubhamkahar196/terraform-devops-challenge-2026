#  Terraform AWS Two-Tier Flask Application Deployment
# Terraweek- day-7 challenge completed

This project demonstrates how to provision AWS infrastructure using **Terraform** and automatically deploy a **Two-Tier Flask Application** from a GitHub repository using Docker.

The entire infrastructure is created using Infrastructure as Code (IaC), making deployments repeatable, scalable, and easy to manage.

---

#  Architecture

```
                    +----------------+
                    |   Terraform    |
                    +--------+-------+
                             |
                             |
                    Creates AWS Resources
                             |
                             ▼
                   +------------------+
                   |      AWS EC2     |
                   +------------------+
                             |
                     user_data Script
                             |
          +------------------+------------------+
          |                                     |
          ▼                                     ▼
   Install Docker & Git                 Clone GitHub Repository
          |                                     |
          +------------------+------------------+
                             |
                             ▼
                   Docker Compose Up
                             |
              +--------------+-------------+
              |                            |
              ▼                            ▼
        Flask Application             MySQL Database
                             |
                             ▼
                    Access via Public IP
```

---

#  Project Structure

```
terraform-final-project/
│
├── versions.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── main.tf
├── outputs.tf
├── .gitignore
└── README.md
```

---

#  Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- Internet Gateway
- Route Table
- Security Groups
- Docker
- Docker Compose
- Git
- Flask
- MySQL

---

#  AWS Resources Created

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

---

#  Terraform Workflow

## Initialize Terraform

```bash
terraform init
```

---

## Validate Configuration

```bash
terraform validate
```

---

## Format Files

```bash
terraform fmt
```

---

## Preview Infrastructure

```bash
terraform plan
```

---

## Deploy Infrastructure

```bash
terraform apply
```

---

## Recreate EC2 Instance

```bash
terraform apply -replace=aws_instance.app
```

---

## Destroy Infrastructure

```bash
terraform destroy
```

---

#  EC2 Bootstrapping

The EC2 instance automatically performs the following tasks using `user_data`.

- Updates Ubuntu packages
- Installs Docker
- Installs Docker Compose
- Installs Git
- Clones GitHub Repository
- Builds Docker Images
- Starts Containers

Example:

```bash
git clone https://github.com/SkDeveloper2/two-tier-flask-app.git

cd two-tier-flask-app

docker compose up -d --build
```

---

#  Security Group Rules

| Port | Purpose |
|------|---------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |
| 5000 | Flask Application |

---

#  Outputs

Terraform returns:

- EC2 Public IP
- EC2 Public DNS
- VPC ID

Example

```
instance_public_ip = xx.xx.xx.xx
instance_public_dns = ec2-xx-xx-xx.ap-south-1.compute.amazonaws.com
vpc_id = vpc-xxxxxxxx
```

---

#  Access Application

Open your browser:

```
http://<EC2_PUBLIC_IP>:5000
```

Example

```
http://43.xxx.xxx.xxx:5000
```

---

#  Learning Outcomes

This project helped me understand:

- Infrastructure as Code (IaC)
- Terraform State Management
- AWS Networking
- EC2 Provisioning
- Security Groups
- Docker Installation
- Docker Compose
- Git Automation
- EC2 User Data
- Automated Application Deployment

---



#  Author

**Shubham Kahar**

MERN Stack Developer | DevOps Enthusiast



---

#  If you found this project useful, don't forget to star the repository.