resource "aws_route_table" "route-table-1" {
  vpc_id = aws_vpc.my-vpc-01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw-01.id
  }

  tags = {
    Name = "route-table-1"
  }
}




resource "aws_route_table" "route-table-2" {
  vpc_id = aws_vpc.my-vpc-01.id


  tags = {
    Name = "route-table-2"
  }
}