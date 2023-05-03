module "aws-api-prod" {
    source = "../../"
    instancia = "t2.micro"
    region = "us-east-1"
    key = "challenge_prod"
    ami = "ami-007855ac798b5175e"
    sg = "allow-prod-sg"
    nome = "PROD"
}

output "ip-srv-prod" {
    value = module.aws-api-prod.ip_publico    
}

output "private_ip_prod" {
    value = module.aws-api-prod.ip_privado  
}
