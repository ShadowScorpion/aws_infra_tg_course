resource "aws_lb_listener_rule" "this" {
  listener_arn = var.lb_listener

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.0.arn
  }

  condition {
    host_header {
      value = var.domain_name
    }
  }
}