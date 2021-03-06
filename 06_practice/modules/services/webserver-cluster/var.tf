variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}

variable "cluster_remote_state_bucket" {
  description = "The name of the S3 bucket for the cluster's remote state"
}

variable "cluster_remote_state_key" {
  description = "The path for the cluster's remote state in S3"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
}

# variable "ec2_security_group" {
#   description = "The security group for the EC2 instances in the cluster"
# }


# variable "elb_name" {
#   description = "The name of the elastic load balancer"
# }

