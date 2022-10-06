provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "nidio-ec2" {
    count = 1
    ami = "ami-085284d24fe829cd0"
    instance_type = "t2.micro"
    tags = {
      Name = "nidio-ec2-${count.index}"
    }
    key_name = "nidio-terraform-aws"
    vpc_security_group_ids = ["${aws_security_group.nidio-acesso-ssh.id}","${aws_security_group.nidio-acesso-web.id}" ]
}

resource "aws_security_group" "nidio-acesso-ssh" {
  name = "nidio-acesso-ssh"
  description = "nidio sg acesso ssh"

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    "Name" = "nidio_sg_ssh"
  }
}

resource "aws_security_group" "nidio-acesso-web" {
  name = "nidio-acesso-web"
  description = "nidio sg acesso web"
  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    "Name" = "nidio_sg_web"
  }
}

resource "aws_key_pair" "nidio-terraform-aws-key" {
  key_name = "nidio-terraform-aws"
  public_key = file("terraform-aws.pub")
}
