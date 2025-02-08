
# our region
variable "region" {
    default = "us-east-1"
}


variable "instance_type" {
    default = "t2.micro"
    description = "instance type for our EC2"
}