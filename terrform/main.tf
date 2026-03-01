resource "aws_instance" "test_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key = var.key_name
    Security_Group = var.Security_Group_ids
    tags = {
        Key = Name 
        Value = test
    }
}