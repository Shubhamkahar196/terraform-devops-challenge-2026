terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }

  required_version = ">= 1.15.0"
}

provider "local" {}

provider "random" {}

resource "random_string" "suffix" {
  length  = 8
  upper   = false
  special = false
}

resource "local_file" "greeting" {
  filename = "greeting.txt"

  content = <<EOT
Hello from Terraform 

Welcome to TerraWeek Challenge 2026!

Random ID: ${random_string.suffix.result}
EOT
}

output "file_name" {
  value = local_file.greeting.filename
}

output "random_id" {
  value = random_string.suffix.result
}
