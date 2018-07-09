/**
 * Module to launch cloud9 ec2s of ssh-type (including VPC, Subnet,..)
 *
 * Usage: see example folder
 */

variable name {
  default     = "cloud9"
  description = "Used for prefixing / tagging the ec2s and related resources"
}

variable region {
  default = "eu-west-1"
  description = "region where the resources shall be launched"
}

variable vpc_cidr_block {
  default = "172.101.0.0/16"
  description = "CIDR block for the VPC and subnet"
}

variable instance_type {
  default = "t2.micro"
  description = "Instance type of the EC2s"
}

variable "env_names" {
  type    = "list"
  description = "List of names for the cloud9 environments"
}

variable "env_pubkeys" {
  type    = "list"
  description = "List of public keys for the cloud9 environments (retrieved from AWS cloud9 set-up)"
}

variable "user_data_file" {
  default = ""
  description = "Can be used to use a different user data file than the default userdata.sh"
}

/**
 * Output
 */

output "ip_addresses" {
  value = "${formatlist("%s - %s", aws_instance.cloud9.*.tags.Name, aws_eip.cloud9.*.public_ip)}"
  description = "The IP addesses of the launched ec2 (to be used in the cloud9 environment config"
}