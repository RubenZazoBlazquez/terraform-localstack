terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"

  # Evitar validaciones innecesarias contra AWS real
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  s3_use_path_style           = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "mi-bucket-terraform-localstack"
}
resource "aws_s3_bucket" "bucket_tarea2" {
  bucket = "mi-bucket-terraform-localstack-2"

  tags = {
    Name        = "Bucket Tarea 3"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_bucket_2" {
  bucket = aws_s3_bucket.bucket_tarea2.id

  versioning_configuration {
    status = "Enabled"
  }
}
module "mi_modulo_bucket" {
  source = "./modules/mi-recurso"
}
