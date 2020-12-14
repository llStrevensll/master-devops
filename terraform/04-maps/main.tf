variable "users" {
  default = {
    emanuel : { country : "Colombia", city : "Bogota" },
    steven : { country : "Canada", city : "Edmonton" },
    angel : { country : "Australia", city : "Sidney" }
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 3.18.0"
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