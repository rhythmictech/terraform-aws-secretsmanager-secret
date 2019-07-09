# Variables 

variable "name" {
  description = "Name of secret to store"
  type        = string
}

variable "value" {
  description = "Secret value to store"
  type        = string
}

variable "description" {
  type    = string
  default = "terraform-managed secret"
}

variable "tags" {
  description = "User-Defined tags"
  type        = map(string)
  default     = {}
}

# Resources 

resource "aws_secretsmanager_secret" "secret" {
  name_prefix = var.name
  tags = var.tags
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id = aws_secretsmanager_secret.secret.id
  secret_string = var.value
}

# Outputs

output "secret" {
  value = aws_secretsmanager_secret.secret
}

output "secret_version" {
  value = aws_secretsmanager_secret_version.secret
}
