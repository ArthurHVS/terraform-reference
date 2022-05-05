provider "aws" {
  profile = "default"
  region  = "sa-east-1"

  # Toda vez que for fazer alteração na infra, tem que informar na linha de comando
  access_key = var.access_key
  secret_key = var.secret_key
}