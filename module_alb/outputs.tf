output alb_name {
  description = "Name of load balancer"
  value       = var.name
}

output alb_arn {
  description = "ARN of Application Load Balancer"
  value       = aws_lb.this.arn
}

output alb_listener_arn {
  description = "ARN of Application Load Balancer Listener"
  value       = aws_lb_listener.custom_listener.arn
}

output alb_zone_id {
  description = "Zone ID of Application Load balancer"
  value = aws_lb.this.zone_id
}

output alb_dns_name {
  description = "DNS name of Application Load balancer"
  value = aws_lb.this.dns_name
}