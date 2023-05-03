module "aws-api-dev" {
    source = "../../"
    instancia = "t2.micro"
    region = "us-east-1"
    key = "challenge_dev"
    ami = "ami-007855ac798b5175e"
    sg = "allow-dev-sg"
    nome = "DEV"
}
output "ip-srv-dev" {
    value = module.aws-api-dev.ip_publico    
}
output "private_ip_dev" {
    value = module.aws-api-dev.ip_privado  
}