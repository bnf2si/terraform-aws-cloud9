resource "aws_vpc" "cloud9" {
  cidr_block = "${var.vpc_cidr_block}"
  enable_dns_hostnames = true

  tags {
    Name = "${var.name}"
  }
}

resource "aws_subnet" "cloud9" {
  cidr_block              = "${var.vpc_cidr_block}"
  vpc_id                  = "${aws_vpc.cloud9.id}"
  map_public_ip_on_launch = true

  tags {
    Name = "${var.name}"
  }
}
