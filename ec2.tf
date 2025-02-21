resource "aws_instance" "bia-dev-t3" {
  ami = "ami-02f3f602d23f1659d" # ID da imagem do SO
  instance_type = "t3.micro" # Tipo instância
  tags = {
    ambiente = "dev"
    Name = "bia-dev"
  }
  
 
 vpc_security_group_ids = [ aws_security_group.bia_dev.id  ]
    
    root_block_device { # configura o EBS
    volume_size = 10

              
    }
    # Resource de Security Groupe

}