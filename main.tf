terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  // Change if you want to use a different AWS region
  region = "us-east-1"
}

## Create an S3 bucket





## Create an S3 Object referencing the file at "./build/libs/sample.txt"