resource "aws_launch_template" "this" {
  name        = "${local.name}-lt"
  description = var.lt_description

  ebs_optimized = var.ebs_optimized
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data = filebase64("${path.module}/bootstrap/init.sh")

  iam_instance_profile {
    arn = aws_iam_instance_profile.this.arn
  }

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip_address
    security_groups = var.security_groups
  }

  block_device_mappings {
    device_name = var.device_name
    ebs {
      volume_size = var.device_volume_size
      volume_type = var.device_volume_type
      delete_on_termination = var.device_delete_on_termiation
      encrypted = var.device_enable_encryption
      kms_key_id = var.device_enable_encryption ? var.device_encryption_key : null
    }
  }

  monitoring {
    enabled = var.enable_monitoring
  }

  tags = {
    Name = "${local.name}-lt",
    Environment = var.environment
  }

  depends_on = [
   aws_iam_instance_profile.this,
   aws_iam_role_policy_attachment.instance_policy_attachment
  ]

}
