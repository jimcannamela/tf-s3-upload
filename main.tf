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

resource "aws_s3_bucket" "deansFunBucket" {
  bucket = "my-tf-fun-bucket"
  tags = {
    Name        = "My bucket"
    
  }
}



## Create an S3 Object referencing the file at "./build/libs/sample.txt"
resource "aws_s3_object" "object" {
  bucket = "my-tf-fun-bucket"
  key    = "mySecretFile"
  source = "./build/libs/sample.txt"
  etag  = filemd5("./build/libs/sample.txt")
}