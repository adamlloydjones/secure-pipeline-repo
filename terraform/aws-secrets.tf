resource "aws_secretsmanager_secret" "api_key" {
  name        = "prod/api_key"
  description = "Rotated API key for production"
}

resource "aws_secretsmanager_secret_version" "api_key_version" {
  secret_id     = aws_secretsmanager_secret.api_key.id
  secret_string = jsonencode({
    key     = random_password.api_key.result
    rotated = timestamp()
  })
}

resource "random_password" "api_key" {
  length  = 32
  special = true
}

output "aws_api_key_rotation" {
  value = "AWS API key rotated at ${timestamp()}"
}
