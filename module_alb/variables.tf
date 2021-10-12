variable name {
  description = "Name of security group"
  type        = string
}

variable internal_flag {
  description = "Boolean flag of internal/external switch"
  type        = bool
  default     = "false"
}

variable security_groups {
  description = "List of security groups"
  type        = list
  default     = []
}

variable subnets {
  description = "List of subnets"
  type        = list
  default     = []
}

variable enable_deletion_protection_flag {
  description = "Boolean flag of delete protection flag"
  type        = bool
  default     = "false"
}

variable listener_port {
  description = "Listener port"
  type = number
  default = 443
}

# Global variables

variable environment {
    description = "Environment name"
    type = string
}



# Module variables

variable listener_protocol {
  description = "Listener protocol"
  type = string
  default = "HTTPS"
}

variable listener_policy {
  description = "Listener policy"
  type = string
  default = "ELBSecurityPolicy-2016-08"
}

variable certificate_arn {
  description = "ARN of SSL certificate"
  type = string
}