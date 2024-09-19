resource "aws_instance" "expense_2" {
  count                  = length(var.instance_names)
  ami                    = data.aws_ami.ami_info.id
  instance_type          = var.instance_names[count.index] == "mysql-server" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = merge(
    var.common_tags,
    {
      Name = var.instance_names[count.index]
    }

  )

}

resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow port number 22 for ssh access"

  tags = merge(
    var.common_tags,
    {
      Name = "allow_ssh"
    }
  )


  # Usualy we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] # allowing from everyone
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allowing from everyone
    ipv6_cidr_blocks = ["::/0"]
  }

}