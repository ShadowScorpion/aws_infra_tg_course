output "zone_id" {
    value = aws_route53_zone.this.id
    description = "ID of Route53 zone"
}

output "domain_name" {
    value = var.domain_name
    description = "Name of domain Route53"
}