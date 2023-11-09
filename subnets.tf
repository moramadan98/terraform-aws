data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "subnet-1"
  }
}





resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "subnet-2"
  }
}