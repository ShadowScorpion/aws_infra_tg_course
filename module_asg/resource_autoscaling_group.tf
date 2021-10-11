resource "aws_autoscaling_group" "this" {
  availability_zones = var.availability_zones
  desired_capacity   = var.asg_desired_capacity
  max_size           = var.asg_max_size
  min_size           = var.asg_min_size

  //service_linked_role_arn = aws_iam_service_linked_role.autoscaling.arn

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

}