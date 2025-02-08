

# we use the VPC created in task1
data "aws_vpc" "liad_vpc_test" {

    filter {
      name = "tag:Name"
      values = ["liad-vpc-test"]
    }
}

# we use the public subnet created in task1
data "aws_subnet" "liad_public_subnet_test" {
    filter {
      name = "tag:Name"
      values = ["liad-public-subnet-test"]
    }
}

# we use the internet gateway created in task1
data "aws_internet_gateway" "liad_internet_gateway_test" {
    filter {
      name = "tag:Name"
      values = ["liad-internet-gateway-test"]
    }
}

