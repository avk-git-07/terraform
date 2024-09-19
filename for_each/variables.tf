variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id" {
  default = "Z02098132D03V1WYMJGX6"
}

variable "domain_name" {
  default = "avk07.online"
}