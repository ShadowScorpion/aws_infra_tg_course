resource "aws_route53_record" "this" {
    for_each = local.dns_record_items
    zone_id = aws_route53_zone.this.zone_id
    name    = each.value["name"]
    type    = each.value["type"]
    ttl     = each.value["ttl"]
    records = each.value["records"]
}