resource "aws_security_group" "bia_dev" {
  name= "bia-dev-tf"
  description = "Regra tcp"
  vpc_id = "vpc-091ed4bcbf78f5b0e"

  ingress { #Regra de entrada

  description =  "Liberando porta 3001"
    from_port        = 3001
    to_port          = 3001
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]


  }

}