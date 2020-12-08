provider "aws" {
    region = "us-east-1"
    version = "~> 3.18.0"
}

//Multiple users
resource "aws_iam_user" "my_iam_users" {
    count = 3
    name = "my_iam_user_${count.index}"
}