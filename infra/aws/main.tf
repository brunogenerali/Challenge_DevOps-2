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

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instancia
  key_name = var.key
  tags = {
    Name = var.nome
  } 
  security_groups = [ var.sg, "default" ]
}

# resource "aws_default_vpc" "default" {  
# }