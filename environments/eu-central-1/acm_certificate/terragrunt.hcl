include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_acm"
}

dependency "route53" {
  config_path = "../route53_zone"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    domain_name = "domain_name"
    zone_id = "zone_id"
  }
}

inputs = {
    domain = dependency.route53.outputs.domain_name
    alternative_domains = ["*.${dependency.route53.outputs.domain_name}"]
    zone_id = dependency.route53.outputs.zone_id
}
