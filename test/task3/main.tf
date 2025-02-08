
provider "aws" {
    region = var.region
}

module "vpc" {

    source = "./modules/vpc"

    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr

    public_subnet_count = var.public_subnet_count
    private_subnet_count = var.private_subnet_count

    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr

    availability_zones = var.availability_zones
}

module "ec2" {
  
    source = "./modules/ec2"

    vpc_id = module.vpc.vpc_id
    subnet_id = module.vpc.public_subnet_ids[0]
    ami_id = var.ami_id
    instance_type = var.instance_type
    instance_name = var.instance_name
    assign_public_ip = var.assign_public_ip

}