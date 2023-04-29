output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnet" {
  description = "Private subnet ID"
  value       = module.vpc.private_subnets
}

output "public_subnet" {
  description = "Public subnet ID"
  value       = module.vpc.public_subnets
}

output "nat_ip" {
  description = "Nat IP's"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}