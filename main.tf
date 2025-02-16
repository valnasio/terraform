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
# Configurando instancia ec2
resource "aws_instance" "bia-dev-t3" {
  ami = "ami-02f3f602d23f1659d" # ID da imagem do SO
  instance_type = "t3.micro" # Tipo instância
  tags = {
    ambiente = "dev"
    Name = "bia-dev"
  }
  vpc_security_group_ids = [ "sg-06440efafa77afd27"  ]

    root_block_device { # configura o EBS
    
    delete_on_termination = false
    encrypted = false
    iops = 3000
    volume_size = 20
    volume_type = "gp3"
              
    }

}