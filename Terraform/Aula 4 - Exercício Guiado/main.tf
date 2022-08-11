provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 2
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    tags = {
      Name = "dev${count.index}"
    }
    key_name = "terraform-aws"
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_security_group" "acesso-ssh" {
  name = "acesso-ssh"
  description = "acesso ssh"
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    "Name" = "ssh"
  }
  
}
