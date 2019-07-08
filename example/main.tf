provider "aws" {
  region = "us-east-1"
}

module "secret" {
  source = "../"
  
  name  = "dummy-secret"
  value = "password"
  tags = {
      whodunnit = "steven"
      why       = "example"
  }
}

output "secret" {
  value = module.secret.secret
}

output "secret_version" {
  value = module.secret.secret_version
}
