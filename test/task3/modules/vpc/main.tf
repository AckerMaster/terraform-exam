

resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "public_subnets" {
    
    # predefined counter
    count = var.public_subnet_count

    vpc_id                          = aws_vpc.vpc.id
    cidr_block                      = var.public_subnet_cidr[count.index]
    map_public_ip_on_launch         = true
    availability_zone               = var.availability_zones[count.index]

    tags = {
        Name = "${var.vpc_name}-public-subnet-${count.index}"
    }
}


resource "aws_subnet" "private_subnets" {
    
    # predefined counter
    count = var.private_subnet_count

    vpc_id                          = aws_vpc.vpc.id
    cidr_block                      = var.private_subnet_cidr[count.index]
    map_public_ip_on_launch         = false
    availability_zone               = var.availability_zones[count.index]

    tags = {
        Name = "${var.vpc_name}-private-subnet-${count.index}"
    }
}

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "${var.vpc_name}-internet-gateway"
    }
}

resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet_gateway.id
    }

    tags = {
        Name = "${var.vpc_name}-public-route-table"
    }
}

resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "${var.vpc_name}-private-route-table"
    }
}

# associating the routing tables with the subnets
# (public with public, private with private)

resource "aws_route_table_association" "public_rt_association" {

    count = var.public_subnet_count

    subnet_id = aws_subnet.public_subnets[count.index].id
    route_table_id = aws_route_table.public_route_table.id
    depends_on = [ aws_internet_gateway.internet_gateway ]
}

resource "aws_route_table_association" "private_rt_association" {

    count = var.private_subnet_count

    subnet_id = aws_subnet.private_subnets[count.index].id
    route_table_id = aws_route_table.private_route_table.id
}