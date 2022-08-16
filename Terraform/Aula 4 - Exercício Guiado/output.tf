output "instance_id" {
    description = "ID das instancias"
    value = aws_instance.nidio.*.id
}

output "instance_public_ip" {
    description = "Ip publico"
    value = aws_instance.nidio.*.public_ip
}

output "instance_public_dns" {
    description = "DNS publico"
    value = aws_instance.nidio.*.public_dns
}