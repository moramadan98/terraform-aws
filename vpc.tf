resource "aws_vpc" "my-vpc-01" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"

  tags = {
    Name = "my-vpc-01"
  }
}