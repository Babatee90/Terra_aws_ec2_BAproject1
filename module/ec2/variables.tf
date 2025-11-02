variable "region" {
    description = "the region to provision the instance"
  
}

variable "ami_id" {
    description = "the instance id"
    type = string
  
}
variable "instance_type" {
    description = "the sie of the instance"
    type = string
  
}
variable "instance_count" {
    description = "the number of instances to create"
    type = number
  
}
variable "environment" {
    description = "the environment to provision"
    type = string
  
}
variable "key_pair" {
    description = "the ssh key to access the instance"
    type = string
  
}