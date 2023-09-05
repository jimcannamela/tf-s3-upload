terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  // Change if you want to use a different AWS region
  region = "us-east-2"
}

## Create an S3 bucket
resource "aws_s3_bucket" "jimcterraformbucket" {
  bucket = "jimc-tf-test-bucket"

  tags = {
    Name        = "Jim C TF Bucket"
    Environment = "Dev"
  }
}




## Create an S3 Object referencing the file at "./build/libs/sample.txt"