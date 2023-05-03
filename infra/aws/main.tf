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
    Name        = "${var.nome}-API"
  } 
  security_groups = [ var.sg, "default" ]
}

resource "aws_instance" "api_db" {
  ami           = var.ami
  instance_type = var.instancia
  key_name      = var.key  
  tags = {
    Name        = "${var.nome}-DB"
  } 
  security_groups = ["default"]
}
output "ip_publico" {
  value = ["API Server: ", aws_instance.api_server.public_ip, "API-DB: ", aws_instance.api_db.public_ip]
}

output "ip_privado" {
  value = ["Private IP DB: ", aws_instance.api_db.private_ip]
}