provider "aws" {
  region = "us-east-1"
}

module "webserver-cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name                = "webservers-prod"
  cluster_remote_state_bucket = "briand787b-tf-state"
  cluster_remote_state_key    = "06/prod/services/webserver-cluster/terraform.tfstate"
  db_remote_state_bucket      = "briand787b-tf-state"
  db_remote_state_key         = "06/prod/services/webserver-cluster/terraform.tfstate"
}
