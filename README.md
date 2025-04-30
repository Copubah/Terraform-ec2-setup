# Terraform EC2 Setup on AWS
This project deploys an Amazon EC2 instance in a custom VPC using Terraform. It also sets up:
- A new VPC with subnet and internet access
- A security group allowing SSH access
- A locally saved key pair for SSH access

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with `aws configure`)
- IAM credentials with EC2/VPC permissions

## 🚀 Deploy the Infrastructure

## Bash
terraform init
terraform apply


## SSH into Your Instance
- chmod 400 terraform-key.pem
- ssh -i terraform-key.pem ec2-user@<instance_public_ip>


## Cleanup
- terraform destroy
