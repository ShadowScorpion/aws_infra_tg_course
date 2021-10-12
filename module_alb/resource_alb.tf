resource "aws_lb" "this" {
    name               = var.name
    internal           = var.internal_flag
    load_balancer_type = "application"
    security_groups    = var.security_groups
    subnets            = var.subnets
    enable_deletion_protection = var.enable_deletion_protection_flag

    tags = {
        Name = var.name,
        Environment = var.environment
    }
}