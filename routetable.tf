resource "aws_route_table" "public_route_table" {
  vpc_id     = aws_vpc.main.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}



resource "aws_route_table_association" "binding_subnet_route" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.public_route_table.id
}