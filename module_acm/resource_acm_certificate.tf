resource "aws_acm_certificate" "this" {
  domain_name       = var.domain
  validation_method = var.validation_method

  tags = {
    Environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}