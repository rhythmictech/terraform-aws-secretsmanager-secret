# Resources 

resource "aws_secretsmanager_secret" "secret" {
  name       = var.name
  tags       = var.tags
  policy     = var.policy
  kms_key_id = var.kms_key_id
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.value
}