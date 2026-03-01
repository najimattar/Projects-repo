
variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  default = "ami-019715e0d74f695be"
}

variable "Security_Group_ids" {
  default = "sg-0f14cc277f52b924c"
}

variable "instance_type"{
  default = "t2.micro"
}

variable "key_name" {
  default = "aws_key"
}
