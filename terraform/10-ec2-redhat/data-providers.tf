data "aws_subnet_ids" "default_subnets" {
  vpc_id = aws_default_vpc.default.id
}


data "aws_ami" "aws_red_hat" {
  most_recent = true
  owners      = ["309956199498"] #owner id
  filter {
    name   = "name"
    values = ["RHEL-8.4.0_HVM-20210504-x86_64-2-Hourly2-GP2"]
  }
  filter {
   name = "architecture"
   values = ["x86_64"]
  }
}

data "aws_ami_ids" "aws_red_hat_ids" {
  owners = ["amazon"]
}