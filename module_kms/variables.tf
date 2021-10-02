variable alias {
    description = "Alias name to KMS key"
    type = string
}

variable description {
    description = "Description record to KMS key"
    type = string
    default = "Default description to KMS key"
}

variable delition_window_in_days {
    description = "Delition period of key in days"
    type = number
    default = 15
}