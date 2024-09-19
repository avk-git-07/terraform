variable "instance_names" {
  type    = list(string)
  default = ["mysql-server", "backend-server", "frontend-server"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense_3"
    Environment = "dev"
    Terraform   = "true"
  }

}

variable "environment" {
  default = "prod"
}

# variable "domain_name" {
#   default = "avk07.online"
# }