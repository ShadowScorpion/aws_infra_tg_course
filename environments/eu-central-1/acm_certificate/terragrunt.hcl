include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_acm"
}

dependency "route53" {
  config_path = "../route53_domains/"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    fqdn_records = "fqdn_records"
    zone_id = "zone_id"
  }
}

inputs = {
    domain = "course.com"
    zone_id = dependency.route53.outputs.zone_id
    fqdn_records = dependency.route53.outputs.fqdn_records
}