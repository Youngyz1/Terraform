# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "6.18.0"
#     }
#   }
# }

# provider "aws" {
#   region = var.region
# }

# variable "region" {
#   default = "us-east-1"
# }

# # Configuration options

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
