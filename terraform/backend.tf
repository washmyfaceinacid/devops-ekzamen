terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "vasylyshyn-tfstate"
    key    = "terraform/vasylyshyn.tfstate"
    region = "eu-central-1"
  }
}
