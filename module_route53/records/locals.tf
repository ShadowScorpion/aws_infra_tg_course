locals {
    dns_record_items = {
        for record in keys(var.dns_records):
            record => lookup(var.dns_records, record)
    }

    dns_alias_record_items = {
        for record in keys(var.dns_alias_records):
            record => lookup(var.dns_alias_records, record)
    }

}