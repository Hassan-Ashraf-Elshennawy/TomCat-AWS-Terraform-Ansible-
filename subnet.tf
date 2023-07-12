resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-west-2a"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}