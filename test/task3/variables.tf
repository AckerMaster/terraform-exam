
# ----------------------------------------------------#
# ----------------- choose region --------------------#

# our region
variable "region" {
    default = "us-east-1"
}

# ----------------------------------------------------#
# ----------- ec2 related configurations -------------#

#sg name
variable "security_group_name" {
    default = "my-security-group"
}

#ami id for Ubuntu 22.04
variable "ami_id" {
    default = "ami-0e1bed4f06a3b463d"
}

#instance name
variable "instance_name" {
    default = "my-ec2-instance"
}

# choose wether to assign public ip or not
variable "assign_public_ip" {
    default = true
}

# the instance type
variable "instance_type" {
    default = "t2.micro"
    description = "instance type for our EC2"
}

# ----------------------------------------------------#
# ----------- vpc related configurations -------------#

# vpc name
variable "vpc_name" {
    default = "my-vpc"
}

# vpc cidr
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

# number of public subnets
variable "public_subnet_count" {
    default = 1
}

# number of private subnets
variable "private_subnet_count" {
    default = 1
}

# public subnet cidr(s) - add more if you increase the count
variable "public_subnet_cidr" {
    default = ["10.0.1.0/24"]
}

# private subnet cidr(s) - add more if you increase the count
variable "private_subnet_cidr" {
    default = ["10.0.2.0/24"]
}

# AZ. add more if needed
variable "availability_zones" {
    default = ["us-east-1a"]
}

# ----------------------------------------------------#