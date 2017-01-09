provider "aws" {
  access_key = "${var.access_key_challenge}"
  secret_key = "${var.secret_key_challenge}"
  region = "${var.region}"
}

//resource "aws_key_pair" "monitoring" {
//  key_name = "${var.key_name}"
//  public_key = "${file("${var.key_name}.pub")}"
//}


resource "aws_vpc" "pidalio" {
    cidr_block = "${var.vpc_cidr}"
    tags {
        Name = "${var.project} vpc"
    }
}


resource "aws_subnet" "pidalio" {
  vpc_id = "${aws_vpc.pidalio.id}"
  cidr_block = "${var.private_subnet}"
  map_public_ip_on_launch = "true"

  tags {
    Name = "${var.project} subnet"
    Project = "${var.project}"
  }
}



//resource "aws_instance" "monitoring" {
//  key_name = "${var.key_name}"
//  ami = "${lookup(var.amis, var.region)}"
//  instance_type = "t2.micro"
//  subnet_id = "${aws_subnet.monitoring.id}"
//
//  vpc_security_group_ids = [
//    "${aws_security_group.monitoring.id}"
//  ]
//
//  tags {
//     Name = "${var.project}"
//     Project = "${var.project}"
//     Owner = "${var.owner}"
//  }
//}

//output "ip" {
//  value = "${aws_instance.monitoring.public_ip}"
//}








