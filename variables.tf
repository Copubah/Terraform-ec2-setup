variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 for us-east-1
}

variable "key_name" {
  description = "Name for the key pair"
  type        = string
  default     = "terraform-key"
}
