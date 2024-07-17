resource "aws_instance" "this" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.web-sg.id,
  ]

  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get -y install nginx
    sudo systemctl start nginx
    # 
    EOF

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}
