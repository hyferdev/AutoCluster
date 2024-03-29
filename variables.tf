variable "region" {
  description = "AWS Region instances are built in"
  type        = string
  default     = "us-west-2"
}

data "aws_vpc" "default" {
  default = true
}

variable "instance_type" {
  description = "Instances webservers runs on"
  type    = string
  default = "t2.micro"
}

variable "ami" {
  description = "us-west-2 Ubuntu AMI"
  type    = string
  default = "ami-03f65b8614a860c29"
}

variable "keys" {
  description = "Keys used to access the isntances"
  type    = string
  default = "RedKeys"
}

variable "hzoneid" {
  description = "Hosted Zone ID defined in Terraform Cloud"
}

variable "domain_name" {
  description = "The main domain name"
  type        = string
  default     = "desire-projects.com"
}

