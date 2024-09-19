locals {
    domain_name = "avk07.online"
    zone_id = "Z02098132D03V1WYMJGX6"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals, so, we are not taking instance names here.
}