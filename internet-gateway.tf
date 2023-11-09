resource "aws_internet_gateway" "gw-01" {
  vpc_id = aws_vpc.my-vpc-01.id

  tags = {
    Name = "gw-01"
  }
}