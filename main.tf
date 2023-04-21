terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
}

resource "aws_instance" "nobita_server" {
  ami                    = "ami-0a3eb6ca097b78895"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-090b5e8a1c83eeba4"]
  subnet_id              = "subnet-03f58e506d9c18ad6"

  tags = {
    Name = var.instance_name
  }
}

