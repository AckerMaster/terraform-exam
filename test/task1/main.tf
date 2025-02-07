provider "aws" {
    region = var.region
}

variable "region" {
    default = "us-east-1"
}

resource "aws_vpc" "liad_vpc_test" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "liad-vpc-test"
    }
}

# the public subnet
resource "aws_subnet" "liad_public_subnet_test" {
    vpc_id = aws_vpc.liad_vpc_test.id
    cidr_block = "10.0.1.0/24"

    # we want to enable recieving a public ip
    map_public_ip_on_launch = true

    availability_zone = "us-east-1a"

    tags = {
        Name = "liad-public-subnet-test"
    }

}

# the private subnet
resource "aws_subnet" "liad_private_subnet_test" {
    vpc_id = aws_vpc.liad_vpc_test.id
    cidr_block = "10.0.2.0/24"

    map_public_ip_on_launch = false

    availability_zone = "us-east-1b"

    tags = {
        Name = "liad-private-subnet-test"
    }

}

# the internet gateway
resource "aws_internet_gateway" "liad_internet_gateway_test" {
    # attaching the igw to the vpc
    vpc_id = aws_vpc.liad_vpc_test.id

    tags = {
        Name = "liad-internet-gateway-test"
    }
}

# the routing tables - one public and one private

resource "aws_route_table" "liad_public_rt_test" {
    # attaching the public rt to the vpc
    vpc_id = aws_vpc.liad_vpc_test.id
  
    # associating the public rt with our internet gateway
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.liad_internet_gateway_test.id
    }

    tags = {
        Name = "liad-public-rt-test"
    }
}

resource "aws_route_table" "liad_public_rt_test" {
    # attaching the private rt to the vpc
    vpc_id = aws_vpc.liad_vpc_test.id
  
    tags = {
        Name = "liad-private-rt-test"
    }
}