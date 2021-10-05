locals {
    dns_record_items = {
        for record in keys(var.dns_records):
            record => lookup(var.dns_records, record)
    }
}