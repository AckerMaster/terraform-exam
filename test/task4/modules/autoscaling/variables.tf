
# the launch template name
variable "launch_template_name" {}

# AMI id
variable "ami_id" {}

# instance type
variable "instance_type" {}

# the instance name
variable "instance_name" {}

# the auto scaling group name
variable "auto_scaling_group_name" {}

# minimum number of instances for auto scaling
variable "min_size" {}

# maximum number of instances for auto scaling
variable "max_size" {}

# desired number of instances for auto scaling
variable "desired_capacity" {}

# public subnet ids
variable "public_subnet_ids" {}

# security group id
variable "security_group_id" {}

# the target group ARN
variable "target_group_arn" {}