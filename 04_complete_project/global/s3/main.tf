terraform {
  backend "s3" {
    bucket = "briand787b-tf-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "briand787b-tf-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
