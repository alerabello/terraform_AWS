# Alexandre R Santana
# Documentação: https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# Videos Aula: https://www.udemy.com/course/aws-com-terraform
###############################################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configurando AWS Cloud 
provider "aws" {
  region = "us-east-1"
}

#Configurando S3 Bucket
resource "aws_s3_bucket" "bucket-s3-test" {
  bucket = "my-tf-test-bucket-tests3bucketalexandrerabello"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}