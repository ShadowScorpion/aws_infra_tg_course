resource "aws_autoscaling_group" "this" {
  availability_zones = var.availability_zones
  desired_capacity   = var.sg_desired_capacity
  max_size           = var.sg_max_size
  min_size           = var.sg_min_size

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }
}