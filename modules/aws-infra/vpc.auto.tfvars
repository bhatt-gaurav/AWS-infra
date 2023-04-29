# VPC Variables
vpc_name                               = "myvpc"
vpc_cidr_block                         = "10.0.0.0/16"
vpc_az                                 = ["us-west-2a", "us-west-2b"]
public_subnet_cidr                     = ["10.0.101.0/24", "10.0.102.0/24"]
private_subnet_cidr                    = ["10.0.1.0/24", "10.0.2.0/24"]
database_subnet_cidr                   = ["10.0.151.0/24", "10.0.152.0/24"]
vpc_create_database_subnet_group       = true
vpc_create_database_subnet_route_table = true
vpc_enable_nat_gateway                 = true
vpc_single_nat_gateway                 = true