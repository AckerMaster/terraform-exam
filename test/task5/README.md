
Tsak 5 Question:

Given a misconfigured Terraform file, identify and fix the following errors:
- Invalid provider configuration
- Incorrect security group rules
- Missing IAM permissions for Terraform to create resources


Task 5 Answer:

for invalide provider configuration we need to make sure that
the provider block is written correctly without mistakes.
we also need to make sure it is running the latest version,
and that all of the provider plugins were succesfuly created after
terraform init. if we are using AWS then we need to make sure the region is also specified.

for incorrect security groups we need to review the ingress and egress rules 
to make sure that incoming and outgoing traffic is being handle correctly and how 
we want it to behave. we also need to make sure that rules are being refrenced
to valid CIDR blocks. along with typos and bad logics.

for missing IAM permissions to create resources, we need to make sure what are the attached
policies of the user that is running terraform, and if necessary, we need to contact the administrator
and ask for permissions, which can be added using the IAM -> Users -> Attaching policy

