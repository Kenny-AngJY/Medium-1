terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

# locals {
#   file_content = file("./credentials.json")
#   json_data    = jsondecode(local.file_content)
#   access_key = local.json_data.access_key
#   secret_key = local.json_data.secret_key
# }

provider "aws" {
  region     = "ap-southeast-1"
  # access_key = local.access_key
  # secret_key = local.secret_key
}