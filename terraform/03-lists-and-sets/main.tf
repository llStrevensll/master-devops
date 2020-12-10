variable "names" {
    default = ["final", "test-new", "strevens1", "steven", "angel"]
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 3.18.0"
}


resource "aws_iam_user" "my_iam_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}