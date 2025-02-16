terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.16"
    }
  } 

  required_version = ">= 1.10.5" #setar a versão do seu terraform
}
provider "aws" {
  region = "us-east-1"
  profile = "bia"
}
