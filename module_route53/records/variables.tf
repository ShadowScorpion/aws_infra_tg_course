variable domain_name {
    description = "Domain name"
    type = string
}

variable dns_records {
    description = "Map of DNS records"
    type = map
    default = {}
}

variable dns_alias_records {
    description = "Map of DNS alias records"
    type = map
    default = {}
}