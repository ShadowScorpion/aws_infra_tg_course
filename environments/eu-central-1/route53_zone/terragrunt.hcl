include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_route53/zone"
}

inputs = {
    domain_name = "awscourses.link"
}
