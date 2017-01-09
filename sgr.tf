resource "aws_security_group_rule" "pidalio-self" {

        type        = "ingress"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
	source_security_group_id = "${aws_security_group.pidalio.id}"

	security_group_id = "${aws_security_group.pidalio.id}"

}
