output "domain_name" {
    description = "Domain name"
    value = var.domain
}

output "certificate_arn" {
    description = "ARN of certificate"
    value = aws_acm_certificate.this.arn
}