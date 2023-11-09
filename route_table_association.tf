resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet-2.id
  route_table_id = aws_route_table.route-table-2.id
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.route-table-1.id
}