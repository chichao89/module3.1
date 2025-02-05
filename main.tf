terraform {
  backend "s3" {
    bucket = "chichaos3.sctp-sandbox.com"  # Replace with your actual S3 bucket name
    key    = "terraform/state/terraform.tfstate"   # Path where the state file will be stored in the S3 bucket
    region = "ap-southeast-1"              # AWS region where the S3 bucket is located
  }
}

provider "aws" {
  region = "ap-southeast-1"  # AWS region where your resources will be created
}

# Create the S3 bucket
resource "aws_s3_bucket" "static_bucket" {
  bucket        = "chichaos3.sctp-sandbox.com"  # Replace with your desired bucket name
  force_destroy = true

  tags = {
    Environment = "Sandbox"
  }
}
