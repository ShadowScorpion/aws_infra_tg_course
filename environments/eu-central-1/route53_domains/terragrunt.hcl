include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_route53"
}

inputs = {
    domain_name = "awscourses.link"
    dns_records = {
        rule01 = {
            name = "app.awscourses.link"
            ttl = 60
            type = "CNAME"
            records = [
                "course-alb-1676481697.eu-central-1.elb.amazonaws.com"
            ]
        }
    }
}
