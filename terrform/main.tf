resource "aws_instance" "test_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = [var.Security_Group_ids]
    tags = {
        name = "test"
    }
}
