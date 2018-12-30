terraform {
  backend "s3" {
    bucket = "briand787b-tf-state"
    key    = "05/stage/services/backend-app/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 1.40"
}

resource "aws_instance" "name" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
}
