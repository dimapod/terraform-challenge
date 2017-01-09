resource "aws_instance" "challenge-coreos" {

/* count for cluster
	count = "${var.count-cluster}"
*/

	ami	= "ami-6dbc951e"

	availability_zone = "${var.region}a"

	ebs_optimized               = false

	instance_type               = "t2.micro"

	monitoring                  = false

	vpc_security_group_ids      = ["${aws_security_group.pidalio.id}"]

	associate_public_ip_address = true

	source_dest_check           = true

	user_data = "${file("cloud-config.yaml")}"

	key_name = "${var.key_name}"

	root_block_device {
		volume_type           = "gp2"
		volume_size           = 50
		delete_on_termination = true
	}

	tags {
		"Name" = "Challenge Terraform Dimitry Matthieu Fabien Jerome"
	}
}

