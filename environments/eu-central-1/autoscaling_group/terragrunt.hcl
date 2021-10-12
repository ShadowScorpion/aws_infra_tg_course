include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_asg"
}

dependency "security_group" {
  config_path = "../security_group/ec2_sg"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    security_group_id = "security_group_id"
  }
}

dependency "kms_key" {
  config_path = "../kms_key"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    arn = "arn"
  }
}

dependency "alb" {
  config_path = "../alb"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    alb_listener_arn = "alb_listener_arn"
  }
}

dependency "route53" {
  config_path = "../route53_zone"
  mock_outputs_allowed_terraform_commands = ["validate"]
  mock_outputs = {
    domain_name = "domain_name"
  }
}

inputs = {
  name_prefix = "app"

  asg_desired_capacity = 1
  asg_max_size = 1
  asg_min_size = 1

  vpc_id = "vpc-bbf694d1"
  availability_zones = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  key_name = "course-key"
  security_groups = [ dependency.security_group.outputs.security_group_id ]
  device_enable_encryption = true
  device_encryption_key = dependency.kms_key.outputs.arn
  lb_listener = dependency.alb.outputs.alb_listener_arn
  domain_name = "app.${dependency.route53.outputs.domain_name}"
}