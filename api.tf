provider "aws" {
  region = "us-west-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket         = "imdevinc-tf-storage"
    region         = "us-west-1"
    key            = "pds"
    dynamodb_table = "terraform-state-lock"
  }
}
