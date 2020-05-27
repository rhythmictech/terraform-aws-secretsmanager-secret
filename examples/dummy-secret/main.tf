provider "aws" {
  region = "us-east-1"
}

module "secret" {
  source = "../"

  name       = "dummy-secret"
  value      = "password"
  policy     = data.template_file.example.rendered            # Optional
  kms_key_id = "arn:aws:kms:aws-region:account-id:key/key-id" # Optional
  tags = {
    whodunnit = "steven"
    why       = "example"
  }
}
