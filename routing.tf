resource "aws_internet_gateway" "cloud9" {
  vpc_id = "${aws_vpc.cloud9.id}"
}

resource "aws_default_route_table" "cloud9" {
  default_route_table_id = "${aws_vpc.cloud9.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.cloud9.id}"
  }
}

resource "aws_route_table_association" "cloud9" {
  subnet_id      = "${aws_subnet.cloud9.id}"
  route_table_id = "${aws_default_route_table.cloud9.id}"
}
