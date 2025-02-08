
# creating a security group that allows inbound from SSH and HTTP
resource "aws_security_group" "liad_security_group_test" {

    # associating the sg with our vpc
    vpc_id = data.aws_vpc.liad_vpc_test
    
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
      Name = "liad-security-group-test"
    }
}

