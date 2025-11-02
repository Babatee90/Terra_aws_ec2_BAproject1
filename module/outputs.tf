output "ami_id_used" {
  description = "The AMI ID used for the EC2 instances"
  value       = var.ami_id
}
output "instance_ids" {
  value = aws_instance.web_server[*].id
}


output "ami_id" {
  value = var.ami_id
}
