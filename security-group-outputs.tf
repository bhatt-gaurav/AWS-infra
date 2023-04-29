output "public_bastion_security-group_id" {
  description = "Bastion host security group id"
  value       = module.public-security-group.security_group_id
}

output "public_bastion_security-group_name" {
  description = "Bastion host security group id"
  value       = module.public-security-group.security_group_name
}

output "public_bastion_security-group_vpc_id" {
  description = "Bastion host security group id"
  value       = module.public-security-group.security_group_vpc_id
}

output "private_security-group_id" {
  description = "Private host security group id"
  value       = module.private-security-group.security_group_id
}

output "private_security-group_name" {
  description = "Private host security group id"
  value       = module.private-security-group.security_group_name
}
output "private_security-group_vpc_id" {
  description = "Private host security group id"
  value       = module.private-security-group.security_group_vpc_id
}