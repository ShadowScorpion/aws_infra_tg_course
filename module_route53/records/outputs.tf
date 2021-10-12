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