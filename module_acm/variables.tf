variable domain {
    description = "Domain name"
    type = string
}

variable validation_method {
    description = "Validation method of certificate"
    default = "DNS"
    type = string
}

variable fqdn_records {
    description = "FQDN records"
    default = []
}

variable zone_id {
    description = "ID of Route53 zone"
    type = string
}

variable environment {
    description = "Environment name"
    type = string
}