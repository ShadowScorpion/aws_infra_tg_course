include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_alb"
}

dependency "security_group_arn" {
  config_path = "../security_group/alb_sg/"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    security_group_arn = "security_group_id"
  }
}

dependency "certificate_arn" {
  config_path = "../acm_certificate/"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    certificate_arn = "certificate_arn"
  }
}


inputs = {
    name = "testapp_alb"
    security_groups = [ dependency.security_group_arn.outputs.security_group_arn ]
    subnets = [
        "subnet-745acd38",
        "subnet-db4316b1",
        "subnet-b99b1bc5"
    ]
    certificate_arn = dependency.certificate_arn.outputs.certificate_arn
}