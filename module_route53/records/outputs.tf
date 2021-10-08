output "zone_id" {
    value = var.zone_id
    description = "ID of Route53 zone"
}

output "dns_records" {
    value = var.dns_records
    description = "DNS records"
}

output "dns_alias_records" {
    value = var.dns_alias_records
    description = "DNS alias records"
}

output "fqdn_simple_records" {
    value = [for record in aws_route53_record.simple_records : record.fqdn]
    description = "FQDN simple records"
}

output "fqdn_alias_records" {
    value = [for record in aws_route53_record.alias_records : record.fqdn]
    description = "FQDN alias records"
}