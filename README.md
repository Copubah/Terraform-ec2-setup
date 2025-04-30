# 🚀 Terraform AWS EC2 Deployment

This project uses [Terraform](https://www.terraform.io/) to provision a secure and scalable infrastructure on **AWS**, including a **VPC**, **subnet**, **Internet Gateway**, **Security Group**, and an **EC2 instance** with a dynamically generated SSH key pair.

---

##  Project Structure


---

##  Features

- 📦 Provision of a new **VPC**, subnet, and routing setup
- 🔐 Secure **SSH access** using a **TLS-generated key pair**
- 🛡️ Security Group that only allows port **22 (SSH)**
- 🖥️ EC2 instance (Amazon Linux 2) deployed in a public subnet
- 📤 Outputs the public IP and private key path

---

##  Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install)
- AWS CLI configured (`aws configure`)
- An AWS account with sufficient permissions

---

##  Configuration

Edit `variables.tf` to change values:

```hcl
variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  default = "terraform-key"
}




## Deployment
- git clone https://github.com/Copubah/terraform-ec2-deploy.git
- cd terraform-ec2-deploy


## Initialize Terraform
- terraform init

## Review the execution plan
- terraform plan

##Apply the configuration
- terraform apply
-Type yes to confirm and deploy.

## Connect to EC2
-Set key permissions by typing
- chmod 400 terraform-key.pem

## SSH into the instance:
- ssh -i terraform-key.pem ec2-user@<instance_public_ip>(replace with your public ip)



# Destroy Resources
-To remove everything created by Terraform:
- terraform destroy


## Notes
1. The terraform-key.pem file is created locally and should never be committed to version control.
2. For production use, consider using S3 remote state with state locking via DynamoDB.

## Author
Charles Opuba
GitHub: github.com/Copubah








