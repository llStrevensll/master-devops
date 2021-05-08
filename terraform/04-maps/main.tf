terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


variable "users" {
  default = {
    emanuelll : { country : "Colombia", city : "Bogota" },
    stevennn : { country : "Canada", city : "Edmonton" },
    angelll : { country : "Australia", city : "Sidney" }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key //key is name
  tags = {
    #country: each.value //value is country
    country : each.value.country
    city : each.value.city
  }
}