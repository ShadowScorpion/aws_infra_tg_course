resource "aws_launch_template" "this" {
  name        = "${local.name-lt}"
  description = var.description

  ebs_optimized = var.ebs_optimized
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name
  iam_instance_profile {
    arn = aws_iam_role.this.arn
    // "${local.name}-asg-iam-role"
  }

  user_data = data.template_cloudinit_config.bootstrap.rendered

  vpc_security_group_ids = var.security_groups

  network_interfaces {
    associate_public_ip_address = var.assocuate_public_interface
  }

  block_device_mappings {
    device_name = var.device_name
    ebs {
      volume_size = var.device_volume_size
      volume_type = var.device_volume_type
      delete_on_termination = var.device_delete_on_termiation
      encrypted = var.device_enable_encryption
      kms_key_id = var.device_enable_encryption ? var.device_enable_encryption : null
    }
  }

  monitoring {
    enabled = var.enable_monitoring
  }

  tags = {
    Name = "${local.name-lt}",
    Environment = var.environment
  }

}
