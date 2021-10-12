# Global variables

variable environment {
    description = "Environment name"
    type = string
}



# Module variables

variable security_group_name {
    description = "Name of Security Group"
    type = string
}

variable security_group_description {
    description = "Description of Security Group"
    type = string
    default = "Default description of Security Group"
}

variable vpc_id {
    description = "The ID of VPC where stored the Security Group"
    type = string
}

variable security_group_rules {
    description = "Map of rules for Security Group"
    type = map
    default = {}
}

