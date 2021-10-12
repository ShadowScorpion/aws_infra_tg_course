# Global variables

variable environment {
    description = "Environment name"
    type = string
}



# Module variables

variable name_prefix {
  description = "Name prefix of ASG elements"
  type = string
}

variable lt_description {
    description = "Description for launch template"
    type = string
    default = "Default description for Launch Template"
}

variable availability_zones {
  description = "List of avilability zones of ASG"
  type = list
}

variable asg_desired_capacity {
  description = "Desired capacity of ASG"
  type = number
  default = 1
}

variable asg_max_size {
  description = "Max capacity of ASG"
  type = number
  default = 1
}

variable asg_min_size {
  description = "Min capacity of ASG"
  type = number
  default = 1
}

variable role_description {
  description = "Description record for IAM Instance role"
  type = string
  default = "Default description for IAM instance role"
}

variable ebs_optimized {
  description = "EBS optimized option. Default: false"
  default = false
}

variable image_id {
  description = "ID of AMI image"
  type = string
  default = "ami-05f7491af5eef733a"
}

variable instance_type {
  description = "Type of EC2 instances on ASG"
  default = "t3.micro"
}

variable key_name {
  description = "Name of SSH key associated with instances"
  type = string
}

variable security_groups {
  description = "List of security groups to ASG"
  type = list
  default = []
}

variable associate_public_ip_address {
  description = "Flag of association of public IP"
  type = bool
  default = true
}

variable device_name {
  description = "Name of mount block device"
  type = string
  default = "/dev/sda1"
}

variable device_volume_size {
  description = "Size of block device"
  type = number
  default = 8
}

variable device_volume_type {
  description = "Type of block device"
  type = string
  default = "gp3"
}

variable device_delete_on_termiation {
  description = "Termination flag of block device"
  type = bool
  default = true
}

variable device_enable_encryption {
  description = "Encryption block device flag"
  type = bool
  default = false
}

variable device_encryption_key {
  description  = "Encryption KMS key of block device"
  type = string
  default = ""
}

variable enable_monitoring {
  description = "Monitoring flag"
  type = bool
  default = true
}

variable lb_listener {
  description = "LB listener ARN"
  type = string
  default = ""
}

variable domain_name {
  description = "Domain name"
  type = string
  default = ""
}

variable tg_port {
  description = "Target group port"
  type = number
  default = 80
}

variable tg_protocol {
  description = "Target group protocol"
  type = string
  default = "HTTP"
}

variable vpc_id {
  description = "VPC ID"
  type = string
  default = ""
}

variable tg_health_path {
  description = "Path of health check of target group"
  type = string
  default = "/"
}

variable tg_health_port {
  description = "Port of health check of target group"
  type = number
  default = 80
}

variable tg_health_protocol {
  description = "Protocol of health check of target group"
  type = string
  default = "HTTP"
}

variable tg_health_matcher {
  description = "Matcher of health check of target group"
  type = string
  default = "200"
}

variable tg_health_timeout {
  description = "Timeout of health check of target group"
  type = number
  default = 20
}