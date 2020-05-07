# Outputs

output "secret" {
  value = aws_secretsmanager_secret.secret
}

output "secret_version" {
  value = aws_secretsmanager_secret_version.secret
}
