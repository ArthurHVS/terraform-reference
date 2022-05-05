output "instance_public_ip" {
  description = "IP Público da instância Windows"
  value       = aws_instance.container_host.public_ip
}

output "main_vpc_id" {
  description = "ID único da VPC principal"
  value = aws_vpc.main_vpc.id
}