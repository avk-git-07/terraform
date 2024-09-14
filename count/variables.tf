variable "instance_names" {
  type        = list(string)
  default     = ["database","backend","frontend"]
}

variable "common_tags" {
  type = map 
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }

}