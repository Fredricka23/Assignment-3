resource "aws_launch_template" "app_lt" {
  name_prefix   = "devops-lt"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  key_name = "devops-key"

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.sg.id]
  }

  user_data = base64encode(<<EOF
#!/bin/bash
yum update -y
amazon-linux-extras enable nginx1
yum install -y nginx
systemctl start nginx
systemctl enable nginx
echo "Hello from ASG instance" > /usr/share/nginx/html/index.html
EOF
  )

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "devops-asg-instance"
    }
  }
}
