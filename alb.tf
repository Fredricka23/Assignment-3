resource "aws_lb" "alb" {
  name               = "devops-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [aws_security_group.sg.id]

  subnets = [
    aws_subnet.public.id,
    aws_subnet.public_2.id
  ]

  enable_deletion_protection = false

  depends_on = [
    aws_subnet.public,
    aws_subnet.public_2
  ]

  tags = {
    Name = "devops-alb"
  }
}
