
output "secret" {
  description = "AWS SecretManager Secret resource"
  value       = aws_secretsmanager_secret.secret
}

output "secret_version" {
  description = "AWS SecretManager Secret Version resource"
  value       = aws_secretsmanager_secret_version.secret
}
