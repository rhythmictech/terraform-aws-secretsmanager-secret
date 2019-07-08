provider "aws" {
  region = "us-east-1"
}

module "secret" {
  source = "../"
  
  secret_name  = "dummy-secret"
  secret_value = "password"
  tags = {
      whodunnit = "steven"
      why       = "example"
  }
}

output "secret" {
  value = module.secret.aws_secretmanager_secret
}

output "secret_version" {
  value = module.secret.aws_secretmanager_secret_version
}
