resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.my-vpc-01.id

  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_ssh"
  }
}






resource "aws_security_group" "allow_ssh_3000" {
  name        = "allow_ssh_3000"
  description = "Allow ssh and 3000 inbound traffic"
  vpc_id      = aws_vpc.my-vpc-01.id

  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.my-vpc-01.cidr_block]

  }

  ingress {
    description = "3000 from VPC"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.my-vpc-01.cidr_block]

  }

  tags = {
    Name = "allow_ssh_3000"
  }
}