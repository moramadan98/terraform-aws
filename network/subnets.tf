data "aws_availability_zones" "available" {
  state = "available"
}


resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = var.subnet-1-cidr
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "subnet-1"
  }
}





resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = var.subnet-2-cidr
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "subnet-2"
  }
}