module "aws-dev" {
    source = "../../"
    instancia = "t2.micro"
    region = "us-east-1"
    key = "../../.secrets/challenge_dev"
    ami = "ami-007855ac798b5175e"
    sg = "allow-dev-sg"
    nome = "ENV-DEV"
}

/* output "ip-dev" {
    value = module.aws-dev.ip_publico
  
} */