# ----------------------------------------------------#
# ----------------- choose region --------------------#

# our region
variable "region" {
    default = "us-east-1"
}

# ----------------------------------------------------#
# ----------- alb related configurations -------------#

#vpc id
variable "vpc_id" {
    default = "vpc-0978f172dbb95c518"
    type = string
}

#public subnets ids
variable "public_subnet_ids" {
    default = [ "subnet-0f77c1eb26880aee1" , "subnet-096403d5c1d1d9b0e" ]
    description = "List of public subnet IDs where alb and autoscaling group instances will be deployed"
    type        = list(string)
}

# security group id
variable "security_group_id" {
    default = "sg-0e9e8e41f8a719ecb"
    type = string
}

# name of our alb
variable "alb_name" {
    default = "liad-alb"
}

# name of our target group
variable "tg_name" {
    default = "liad-target-group"
}

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


# name of our launch template
variable "lt_name" {
    default = "liad-launch-template"
}

# name of our autoscaling group
variable "asg_name" {
    default = "liad-autoscaling-group"
}

# name of our EC2 instance
variable "ec2_instance_name" {
    default = "liad-instance"
}

# ----------------------------------------------------#