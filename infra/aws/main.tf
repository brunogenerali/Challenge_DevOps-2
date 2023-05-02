terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "api_server" {
  ami           = var.ami
  instance_type = var.instancia
  key_name      = var.key
  tags = {
    Name        = var.nome
  } 
  security_groups = [ var.sg, "default" ]
}

output "ip_publico" {
  value = aws_instance.api_server.public_ip
}

output "ip_privado" {
  value = aws_instance.api_server.private_ip
}