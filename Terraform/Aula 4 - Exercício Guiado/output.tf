output "instance_id" {
    description = "ID das instancias"
    value = aws_instance.nidio-ec2.*.id
}

output "instance_public_ip" {
    description = "Ip publico"
    value = aws_instance.nidio-ec2.*.public_ip
}

output "instance_public_dns" {
    description = "DNS publico"
    value = aws_instance.nidio-ec2.*.public_dns
        
}