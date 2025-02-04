provider "aws" {
  region = "ap-southeast-1"
}

# Create the S3 bucket
resource "aws_s3_bucket" "static_bucket" {
  bucket = "chichaos3.sctp-sandbox.com"
  force_destroy = true

  tags = {
    Environment = "Sandbox"
  }
}