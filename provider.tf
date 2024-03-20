terraform {
  required_version = "~> 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
  }
}
provider "aws" {
  default_tags {
    tags = var.default_tags
  }
}