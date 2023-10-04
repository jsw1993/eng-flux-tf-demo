terraform {
  backend "s3" {
    encrypt = true    
    bucket = "eng2023-tf-state"
    dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region  = "eu-west-1"
  default_tags {
    tags = {
      Environment = "eng-flux-demo-flux"
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block = "172.16.100.0/22"

  tags = {
    Name = "main-flux"
  }
}