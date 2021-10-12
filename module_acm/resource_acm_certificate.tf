resource "aws_acm_certificate" "this" {
  domain_name       = var.domain
  validation_method = var.validation_method
  subject_alternative_names = var.alternative_domains

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = var.domain,
    Environment = var.environment
  }

}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [for record in aws_route53_record.this : record.fqdn]
}