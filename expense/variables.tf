variable "instance_names" {
  type        = list(string)
  default     = ["mysql-server","backend-server","frontend-server"]
}

variable "common_tags" {
  type = map 
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }

}

variable "zone_id" {
  default = "Z02098132D03V1WYMJGX6"
}

variable "domain_name" {
  default = "avk07.online"
}