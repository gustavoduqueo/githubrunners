terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # State-data-file storage: type and path. S3 bucket and DynamoDB table must be exist on AWS Account
  backend "s3" {
    bucket                      = "gduque.tfstates"
    key                         = "kubernentes/kubernetes.tfstate"
    encrypt                     = true
    region                      = "us-east-1"
    shared_credentials_file    = "$HOME/.aws/credentials"
    profile                     = "awsitmlab60"
    dynamodb_table              = "tfstate_kubernetes"
  }
}

# AWS Provider
provider "aws" {
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                  = "awsitmlab60"
  region                   = "us-east-1" 
}