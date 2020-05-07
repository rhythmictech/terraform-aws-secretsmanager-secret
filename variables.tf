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

variable "policy" {
  description = "Optional. The resource policy which controls access to the secret."
  default     = null
}

variable "kms_key_id" {
  description = "Optional. The KMS Key ID to encrypt the secret. KMS key arn or alias can be used."
  default     = null
}