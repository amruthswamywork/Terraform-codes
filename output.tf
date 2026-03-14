output "public-ip-address" {
  value = aws_instance.example.public_ip
}

output "public-ip" {
  value = aws_instance.example.public_ip    
}   