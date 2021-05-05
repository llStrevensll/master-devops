terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "iam_user_name_prefix" {
  type    = string #string, any, number, bool, list, map, set, object, tuple
  default = "my_iam_user"
}

provider "aws" {
  region  = "us-east-1"
}

//Multiple users
resource "aws_iam_user" "my_iam_users" {
  count = 2
  name  = "${var.iam_user_name_prefix}_${count.index}"
}

