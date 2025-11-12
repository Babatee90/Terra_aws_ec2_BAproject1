terraform {
  backend "s3" {
    bucket = "ec2-project-my-bucket"
    region = "eu-north-1"
    key = "terraform.tfstate"
    
  }
}