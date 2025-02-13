

resource "aws_security_group" "ec2_security_group" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}-sg"
  }
}

resource "aws_instance" "ec2_instance" {
  
    ami                         = var.ami_id
    instance_type               = var.instance_type
    subnet_id                   = var.subnet_id
    associate_public_ip_address = var.assign_public_ip
    vpc_security_group_ids      = [aws_security_group.ec2_security_group.id]

    tags = {
        Name = var.instance_name
    }
}