resource "aws_route53_record" "simple_records" {
    for_each = local.dns_record_items
    zone_id = var.zone_id
    name    = each.value["name"]
    type    = each.value["type"]
    ttl     = each.value["ttl"]
    records = each.value["records"]
}

resource "aws_route53_record" "alias_records" {
    for_each = local.dns_alias_record_items
    zone_id = var.zone_id
    name    = each.value["name"]
    type    = each.value["type"]
    alias {
        name                   = each.value["alias_name"]
        zone_id                = each.value["alias_zone_id"]
        evaluate_target_health = each.value["alias_target_health"]
    }
}