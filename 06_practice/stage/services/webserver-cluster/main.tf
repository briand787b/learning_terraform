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

module "webserver-cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name                = "webservers-stage"
  cluster_remote_state_bucket = "briand787b-tf-state"
  cluster_remote_state_key    = "06/stage/services/webserver-cluster/terraform.tfstate"
  db_remote_state_bucket      = "briand787b-tf-state"
  db_remote_state_key         = "06/stage/services/webserver-cluster/terraform.tfstate"
}
