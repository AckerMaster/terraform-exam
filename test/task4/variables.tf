# ----------------------------------------------------#
# ----------------- choose region --------------------#

# our region
variable "region" {
    default = "us-east-1"
}

# ----------------------------------------------------#
# ----------- alb related configurations -------------#

#vpc id
variable "vpc_id" {}

#public subnets ids
variable "public_subnet_ids" {
    description = "List of public subnet IDs where alb and autoscaling group instances will be deployed"
    type        = list(string)
}

# security group id
variable "security_group_id" {}



# ----------------------------------------------------#
# ----------- autoscaling related configurations -------------#

#ami id for Ubuntu 22.04
variable "ami_id" {
    default = "ami-0e1bed4f06a3b463d"
}

# the instance type
variable "instance_type" {
    default = "t2.micro"
    description = "instance type for our EC2"
}

# ----------------------------------------------------#