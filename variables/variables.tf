variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "Ami Id of RHEL-9-devops-practice"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "This is the instance type for RHEL-9-Devops-Practice"
}

variable "tag" {
    type = map 
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_desc" {
    default = "Allow port number 22 for ssh access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    default = ["0.0.0.0/0"]
    type = list(string)
}