

resource "aws_instance" "ec2_instance" {
  
    ami                         = var.ami_id
    instance_type               = var.instance_type
    subnet_id                   = var.subnet_id
    associate_public_ip_address = var.assign_public_ip

    tags = {
        Name = var.instance_name
    }
}