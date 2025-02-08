
in this task we created vpc and ec2 modules

they are located inside modules/

to run this code, change the following inside variables.tf:

Global:

- region

VPC related:

- vpc_name
- vpc_cidr
- public_subnet_count
- private_subnet_count
- public_subnet_cidr (it's a list. add more if you increased the counter above)
- private_subnet_cidr (it's a list. add more if you increased the counter above)
- availability_zones (add more if needed)


EC2 related:

- security_group_name
- ami_id
- instance_name
- assign_public_ip (boolian. specify true or false)
- instance_type