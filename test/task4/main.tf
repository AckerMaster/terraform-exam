
# our provider
provider "aws" {
    region = var.region
}

# alb module with settings
module "alb" {

    source             = "./modules/alb"
    alb_name           = "liad-alb"
    target_group_name  = "liad-target-group"
    vpc_id             = var.vpc_id
    security_group_id  = var.security_group_id
    public_subnet_id  = var.public_subnet_ids
  
}

module "autoscaling" {
    source              = "./modules/autoscaling"
    launch_template_name = "liad-launch-template"
    ami_id              = var.ami_id
    instance_type       = var.instance_type
    auto_scaling_group_name            = "liad-auto-scaling-group"
    min_size            = 1
    max_size            = 3
    desired_capacity    = 1
    public_subnet_ids   = var.public_subnet_ids
    security_group_id   = var.security_group_id
    target_group_arn    = module.alb.target_group_arn
    instance_name       = "liad-instance"
}