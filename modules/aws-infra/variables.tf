variable "aws_region" {
  description = "Your Region"
  type        = list(string)
  default     = ["us-west-2", "us-west-1"]
}

variable "environment" {
  description = "Env name used as a prefix"
  type        = string
}

variable "business_division" {
  description = "Business division"
  type        = string
}