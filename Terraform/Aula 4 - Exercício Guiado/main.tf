provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "nidio" {
    count = 2
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    tags = {
      Name = "nidio${count.index}"
    }
    key_name = "nidio-terraform-aws"
    vpc_security_group_ids = ["${aws_security_group.nidio-acesso-ssh.id}","${aws_security_group.nidio-acesso-web.id}" ]
}

resource "aws_security_group" "nidio-acesso-ssh" {
  name = "nidio-acesso-ssh"
  description = "nidio-acesso ssh"
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

resource "aws_security_group" "nidio-acesso-web" {
  name = "nidio-acesso-web"
  description = "nidio-acesso web"
  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    "Name" = "ssh"
  }
}

resource "aws_key_pair" "nidio-terraform-aws-key" {
  key_name = "nidio-terraform-aws"
  public_key = file("terraform-aws.pub")
}
