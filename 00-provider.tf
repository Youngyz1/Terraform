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
  
}
