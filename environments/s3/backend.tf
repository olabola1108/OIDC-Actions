module "s3" {
  source = "git@github.com:olabola1108/Semantic-Versioning.git//s3-module?ref=v1.2.1"
  region = "us-east-2"
  env    = "dev"
}

#Backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "new-dev-477"
    region  = "us-east-2"
    key     = "s3/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-2"
}