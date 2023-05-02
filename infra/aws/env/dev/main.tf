module "aws-api-dev" {
    source = "../../"
    instancia = "t2.micro"
    region = "us-east-1"
    key = "cat ../../.secrets/challenge_dev"
    ami = "ami-007855ac798b5175e"
    sg = "allow-dev-sg"
    nome = "api-srv"
}

# module "aws-db-dev" {
#     source = "../../"
#     instancia = "t2.micro"
#     region = "us-east-1"
#     key = "challenge_dev"
#     ami = "ami-007855ac798b5175e"
#     sg = "allow-dev-sg"
#     nome = "api-db"
# }

output "ip-srv-dev" {
    value = module.aws-api-dev.ip_publico    
}

# output "ip-db-dev" {
#     value = module.aws-db-dev.ip_publico    
# }