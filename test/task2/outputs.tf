
# making sure it outputs the public ip correctly
output "ec2_public_ip" {
    value = aws_instance.liad_ec2_instance_test.public_ip
    description = "public ip of our ec2 instance"
}