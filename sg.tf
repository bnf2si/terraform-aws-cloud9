resource "aws_security_group" "cloud9" {
  vpc_id = "${aws_subnet.cloud9.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${data.aws_ip_ranges.cloud9.cidr_blocks}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "${var.name}"
  }
}

data "aws_ip_ranges" "cloud9" {
  regions  = ["${var.region}"]
  services = ["cloud9"]
}
