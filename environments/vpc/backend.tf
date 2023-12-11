terraform {
  backend "s3" {
    bucket  = "new-dev-477"
    region  = "us-east-2"
    key     = "vpc/terraform.tfstate"
    encrypt = true
  }
}