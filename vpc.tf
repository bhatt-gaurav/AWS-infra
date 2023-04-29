module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = "${var.environment}-vpc"
  cidr = var.vpc_cidr_block

  azs             = var.vpc_az
  private_subnets = var.private_subnet_cidr
  public_subnets  = var.public_subnet_cidr

  enable_nat_gateway = var.vpc_enable_nat_gateway
  enable_vpn_gateway = true
  single_nat_gateway = var.vpc_single_nat_gateway
  # Database
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnets                   = var.database_subnet_cidr
  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }

  database_subnet_tags = {
    Type = "database-subnets"
  }

  tags = {
    Terraform_managed = "true"
    Environment       = "${var.environment}"
  }
  vpc_tags = {
    Name = "vpc-${var.environment}"
  }


}