output "domain_name" {
    value = var.domain_name
    description = "Name of domain Route53"
}

output "dns_records" {
    value = var.dns_records
    description = "DNS records"
}

output "fqdn_records" {
    value = [for record in aws_route53_record.this : record.fqdn]
    description = "FQDN records"
}