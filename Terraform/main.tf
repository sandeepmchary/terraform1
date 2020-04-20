# same file in three different environments
# 
provider "aws" {
  region = "${var.region}"
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"

}

resource "aws_instance" "one" {
  ami = "${var.imageid}"
  instance_type = "${var.instancetype}"
  key_name = "${var.key}"
  security_groups = ["${aws_security_group.allow_all.name}"]
  }

resource "aws_instance" "two" {
  ami = "${var.imageid}"
  instance_type = "${var.instancetype}"
  key_name = "${var.key}"
  security_groups = ["${aws_security_group.allow_all.name}"]
}

resource "aws_security_group" "allow_all" {
  name = "allow_all"
  description = "Allow all traffic"
  vpc_id = "vpc-2d13ea46"

  ingress{
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      description = "allow all traffic outside"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}




