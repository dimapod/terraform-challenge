provider "aws" {
	region                   = "${var.awsregion}"
	shared_credentials_file  = "${var.personalhome}/.aws/credentials"
	profile                  = "${var.awsprofile}"
}

