output alb_name {
  description = "Name of load balancer"
  value       = var.name
}

output alb_arn {
  description = "ARN of Application Load Balancer"
  value       = aws_lb.this.*.arn
}

output alb_listener_arn {
  description = "ARN of Application Load Balancer Listener"
  value       = aws_lb_listener.this.*.arn
}