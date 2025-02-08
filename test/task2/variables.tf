
# our region
variable "region" {
    default = "us-east-1"
}

variable "security_group_name" {
    default = "liad-security-group-test"
}

variable "ami_id" {
    default = "ami-04b4f1a9cf54c11d0"
}

variable "instance_name" {
    default = "liad-ec2-instance-test"
}

# the instance type
variable "instance_type" {
    default = "t2.micro"
    description = "instance type for our EC2"
}

# set user name
variable "admin_username" {
    default = "admin-user"
}

# set password
variable "admin_password" {
    default = "Password123!"
}
