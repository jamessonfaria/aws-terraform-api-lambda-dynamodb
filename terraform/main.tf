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

  default_tags = local.common_tags
}