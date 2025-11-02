#########################################
# Root Module: main.tf
# Description: Calls the EC2 child module
# and defines overall project outputs
#########################################
provider "aws" {
    
  
}
# Call the EC2 child module
module "ec2" {
  source         = "./module/ec2"        # Path to the child module
  ami_id         = var.ami_id             # AMI ID variable
  instance_type  = var.instance_type      # Instance type (e.g., t2.micro)
  instance_count = var.instance_count     # Number of instances
  key_pair       = var.key_pair           # SSH key pair name
  environment    = var.environment  
  region = var.region      # Environment (dev, test, prod)
} 


#########################################
# Outputs
#########################################

# Output EC2 Instance IDs
output "ec2_instance_ids" {
  description = "IDs of the EC2 instances created"
  value       = module.ec2.instance_ids
}


# Output AMI ID used
output "ami_id_used" {
  description = "AMI ID passed to the EC2 module"
  value       = module.ec2.ami_id
}