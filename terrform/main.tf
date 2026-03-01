resource "aws_instance" "test_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [var.Security_Group_ids]
    tags = {
        name = "test"
    }
}
