terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "proj-try-terraform-state-dev"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}

# testing
# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

/*
resource "aws_s3_bucket" "example" {
  bucket = "very-very-unique-project-try-bucket"

  tags = {
    uc = "Project-Try"
  }
}
*/