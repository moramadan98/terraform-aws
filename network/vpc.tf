resource "aws_vpc" "my-vpc-01" {
  cidr_block           = var.cidr
  enable_dns_hostnames = "true"

  tags = {
    Name = "my-vpc-01"
  }
}