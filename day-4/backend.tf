terraform {
  backend "s3" {
    bucket = "shubham-terraform-state-2026-terraweek"
    region = "ap-south-1"
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.15.0"
}