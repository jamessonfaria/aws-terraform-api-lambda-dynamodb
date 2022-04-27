terraform {
  required_version = "1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }

}

provider "aws" {
  region = var.aws_region

  default_tags {
      tags = {
        Project   = "Serverless REST API Tutorial"
        CreatedAt = formatdate("YYYY-MM-DD", timestamp())
        ManagedBy = "Terraform"
        Owner     = "Jamesson Faria"
        Env       = var.env
      }
  }
}