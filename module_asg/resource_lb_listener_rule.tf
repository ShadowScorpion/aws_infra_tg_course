resource "aws_lb_listener_rule" "this" {
  listener_arn = var.lb_listener

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }

  condition {
    host_header {
      values = [var.domain_name]
    }
  }
}