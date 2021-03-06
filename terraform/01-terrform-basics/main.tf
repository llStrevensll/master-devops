provider "aws" {
    region = "us-east-1"
    version = "~> 3.18.0"
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "strevens-test-bucket-master-2"
    versioning {
      enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc"
}



