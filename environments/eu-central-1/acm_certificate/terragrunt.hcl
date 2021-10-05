include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_acm"
}

dependency "fqdn_records" {
  config_path = "../route53_domains/"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    fqdn_records = "fqdn_records"
  }
}

inputs = {
    domain = "test.com"
    fqdn_records = dependency.fqdn_records.outputs.fqdn_records
}