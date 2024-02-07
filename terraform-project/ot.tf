# # ... (other parts of your configuration) ...


output "public_ip" {
  value = aws_instance.os2[0].public_ip
}

output "instance_state" {
  value = aws_instance.os2[0].instance_state
}

output "private_key" {
  value = "Private key is not directly accessible from Terraform"
}

output "private_ip" {
  value = aws_instance.os2[0].private_ip
}
output "os_az" {
  value = aws_instance.os2[0].availability_zone
  
}
output "instance_type" {
  value = aws_instance.os2[0].instance_type
}

output "volume_id" {
  value = aws_ebs_volume.myvol.id
}

output "ebs_volume_size" {
  value = aws_ebs_volume.myvol.size
}

output "ebs_device_name" {
  value = aws_volume_attachment.my_ebs_attach_ec2.device_name
}