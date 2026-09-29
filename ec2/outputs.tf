output "instance_ip" {
  description = "IP privado"
  value = aws_instance.this.private_ip
}

output "instance_db" {
  description = "IP do Database privado"
  value = aws_instance.db[count.index].private_ip
}