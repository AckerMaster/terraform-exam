
#creating the EC2 instance
resource "aws_instance" "liad_ec2_instance_test" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = data.aws_subnet.liad_public_subnet_test.id
  vpc_security_group_ids      = [aws_security_group.liad_security_group_test.id]
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
    #cloud-config
    users:
      - name: ${var.admin_username}
        groups: sudo
        shell: /bin/bash
        sudo: ["ALL=(ALL) NOPASSWD:ALL"]
        lock_passwd: false
        passwd: $(echo ${var.admin_password} | openssl passwd -6 -stdin)
    EOF
  
}
