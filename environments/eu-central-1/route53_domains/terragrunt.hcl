include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_route53/records"
}

dependency "route53" {
  config_path = "../route53_zone"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    domain_name = "domain_name"
    zone_id = "zone_id"
  }
}

dependency "alb" {
  config_path = "../alb"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    alb_zone_id = "alb_zone_id"
    alb_dns_name = "alb_dns_name"
  }
}

inputs = {
    zone_id = dependency.route53.outputs.zone_id
    dns_alias_records = {
        rule01 = {
            name = "app.${dependency.route53.outputs.domain_name}"
            type = "A"
            alias_name = dependency.alb.outputs.alb_dns_name,
            alias_zone_id  = dependency.alb.outputs.alb_zone_id,
            alias_target_health = true
        }
    }
}
