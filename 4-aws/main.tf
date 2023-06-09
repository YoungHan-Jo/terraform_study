terraform {
  backend "remote" {
    organization = "younghan-jo"
    workspaces {
      name = "Example-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07c2a88388bb80eb0"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
