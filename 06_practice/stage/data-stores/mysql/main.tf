terraform {
  required_version = "~>0.11"

  backend "s3" {
    bucket = "briand787b-tf-state"
    key    = "06/stage/data-stores/mysql/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "database" {
  source = "../../../modules/data-stores/mysql"
}
