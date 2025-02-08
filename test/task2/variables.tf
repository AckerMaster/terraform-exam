
# our region
variable "region" {
    default = "us-east-1"
}

# security group
variable "security_group_name" {
    default = "liad-security-group-test"
}

# AMI for Ubuntu 22.04
variable "ami_id" {
    default = "ami-0e1bed4f06a3b463d"
}

# instance name
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
