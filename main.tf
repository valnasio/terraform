terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.87.0" #versão do repo-provider
    }
  } 

  required_version = ">= 1.10.5" #versão do terraform
}
provider "aws" {
  region = "us-east-1" # região da vpc
  profile = "bia" # nome do perfil no IAM
}


