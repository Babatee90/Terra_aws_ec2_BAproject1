# Terraform AWS EC2 Module Project

This repository provisions a **single AWS EC2 instance using Terraform**.

It demonstrates the use of a **root module**, a **child EC2 module**, and **Terraform bootstrap and backend configuration**.  
The project focuses on Terraform structure, module usage, and state management, without introducing additional services such as VPC or IAM.
The project is intentionally scoped and does not include networking or IAM components.

---

## Project Structure

terraform-AWS-ec2BAproject1/
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    |
└── ec2/
├── main.tf
├── variables.tf
└── outputs.tf

---

## What This Project Creates

- A single AWS EC2 instance
- EC2 configuration implemented in a reusable child module
- Root module responsible for wiring inputs and outputs

> Default AWS networking is used.  
> No custom VPC, subnets, IAM roles, or security architecture are defined.

---

## How It Works

- The **root module**:
  - Configures the AWS provider
  - Calls the EC2 child module
  - Exposes selected outputs

- The **EC2 child module**:
  - Contains the `aws_instance` resource
  - Accepts configurable inputs
  - Returns EC2-related outputs

---

## How to Run

### Prerequisites
- Terraform installed
- AWS CLI configured
- An AWS account with EC2 permissions

### Steps
```bash
terraform init
terraform plan
terraform apply

## Author

Babatee Babatola  
GitHub: https://github.com/Babatee90  
LinkedIn: https://www.linkedin.com/in/your-linkedin-here
