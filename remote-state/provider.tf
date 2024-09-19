terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
      bucket = "avk07-s3-remote-state"
      key    = "remote-state-demo-07"
      region = "us-east-1"
      dynamodb_table = "81s-locking"
  }

}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}
