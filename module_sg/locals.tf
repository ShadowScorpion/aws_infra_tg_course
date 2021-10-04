locals {
    security_group_rules_cidr = {
        for rule in keys(var.security_group_rules):
            rule => lookup(var.security_group_rules, rule) if lookup(var.security_group_rules, rule)["addresses"]["type"] == "cidr_blocks"
    }

    security_group_rules_sg = {
        for rule in keys(var.security_group_rules):
            rule => lookup(var.security_group_rules, rule) if lookup(var.security_group_rules, rule)["addresses"]["type"] == "source_security_group_id"
    }
}