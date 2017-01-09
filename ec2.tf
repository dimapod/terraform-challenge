resource "aws_instance" "challenge-coreos" {

	ami	= "ami-75feae15"

	availability_zone = ""

	ebs_optimized               = false

	instance_type               = "t2.micro"

	monitoring                  = false

	vpc_security_group_ids      = [""]

	associate_public_ip_address = false

	source_dest_check           = true

	user_data = "${file("cloud-config.yaml")}"

	root_block_device {
		volume_type           = "gp2"
		volume_size           = 50
		delete_on_termination = true
	}

	tags {
		"Name" = "Challenge Terraform Dimitry Matthieu Fabien Jerome"
	}
}

