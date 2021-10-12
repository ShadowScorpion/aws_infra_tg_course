output launch_template_name {
    description = "Name of Launch template"
    value = aws_launch_template.this.name
}

output autoscaling_group_name {
    description = "Name of autoscaling group"
    value = aws_autoscaling_group.this.name
}

output public_key {
    description = "Public key for connection to EC2 instances on ASG"
    value = tls_private_key.this.public_key_openssh
}