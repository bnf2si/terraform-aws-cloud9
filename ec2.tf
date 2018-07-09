resource "aws_instance" "cloud9" {
  count = "${length(var.env_names)}"

  ami                         = "${data.aws_ami.ubuntu_xenial.id}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${aws_subnet.cloud9.id}"
  key_name                    = "${aws_key_pair.cloud9.*.id[count.index]}"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${aws_security_group.cloud9.id}"]

  user_data = "${data.template_file.user_data.rendered}"

  tags {
    Name = "${var.name}_${var.env_names[count.index]}"
  }
}

resource "aws_eip" "cloud9" {
  count = "${length(var.env_names)}"

  instance = "${aws_instance.cloud9.*.id[count.index]}"
  vpc      = true
}

data "aws_ami" "ubuntu_xenial" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }
}

resource "aws_key_pair" "cloud9" {
  count = "${length(var.env_names)}"

  key_name   = "${var.name}_${var.env_names[count.index]}"
  public_key = "${var.env_pubkeys[count.index]}"
}

data "template_file" "user_data" {
  template = "${var.user_data_file != "" ? var.user_data_file : file("${path.module}/user_data.sh")}"
}