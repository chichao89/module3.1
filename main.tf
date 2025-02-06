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

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID in your region
  instance_type = "t2.micro"  # Small instance type suitable for testing

  tags = {
    Name = "MyTerraformInstance"
  }
}
