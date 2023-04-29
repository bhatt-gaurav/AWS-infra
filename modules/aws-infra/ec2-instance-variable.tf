variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = map(string)
  default = {
    "dev"  = "t2.micro",
    "qa"   = "t2.small",
    "prod" = "t2.large"
  }
}

variable "instance_key_pair" {
  description = "Key pair for you EC2 instance"
  type        = string
  default     = "terraform-terragrunt-server"

}