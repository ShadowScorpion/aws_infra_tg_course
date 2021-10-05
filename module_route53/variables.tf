variable domain_name {
    description = "Domain name"
    type = string
}

variable dns_records {
    description = "Map of DNS records"
    type = map
    default = {}
}

variable environment {
    description = "Environment name"
    type = string
}