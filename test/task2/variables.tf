
# our region
variable "region" {
    default = "us-east-1"
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
