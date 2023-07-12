resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  region ="us-west-2"
  tags = {
    Name = "main"
  }

}