output "domain_name" {
    description = "Domain name"
    value = var.domain
}

output "alternative_domains" {
    description = "Alternative domain names"
    value = var.alternative_domains
}

output "certificate_arn" {
    description = "ARN of certificate"
    value = aws_acm_certificate.this.arn
}