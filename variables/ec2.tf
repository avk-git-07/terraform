resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = var.tag

}

resource "aws_security_group" "allow_ssh_terraform" {
    name = var.sg_name
    description = var.sg_desc

    tags = {
     Name = "allow_ssh"
    
}


# Usualy we allow everything in egress
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"] # allowing from everyone
    ipv6_cidr_blocks = ["::/0"]
}

ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.ingress_cidr
    ipv6_cidr_blocks = ["::/0"]
}

}


