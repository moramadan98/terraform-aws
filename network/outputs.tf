output "subnet-1-id" {
  value = aws_subnet.subnet-1.id
}

output "subnet-2-id" {
  value = aws_subnet.subnet-2.id
}

output "vpc-cidr" {
  value = aws_vpc.my-vpc-01.cidr_block
}

output "vpc-id" {
  value = aws_vpc.my-vpc-01.id
}