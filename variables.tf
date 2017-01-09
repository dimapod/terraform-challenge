variable "access_key_challenge" {}
variable "secret_key_challenge" {}

variable "project" {
  type = "string"
  default = "pidalio"
}

variable "key_name" {
  type = "string"
  default = "pidalio"
}

variable "region" {
  default = "eu-west-1"
}

variable "vpc_cidr" {
  type = "string"
}

variable "owner" {
  type = "string"
}

variable "private_subnet" {
  type = "string"
}

variable "amis" {
  type = "map"
  default = {
    eu-central-1 = "ami-211ada4e"
  }
}

variable "count-cluster" {
	default = "3"
}
