terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-058e977e6a7dc2a4c"
  instance_type = "t2.micro"

  tags = {
    Name = "AppServerInstance"
    environment = "Development"
    owner = "500234638"
  }
}

