provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "robert-tarnawski-panda-devops-core-16"
    key    = "infra/terraform"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
}