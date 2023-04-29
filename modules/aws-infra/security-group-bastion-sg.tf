module "public-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.2"

  name                = "public-bastion-sg"
  description         = "Security group for SSH port open for everybody"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
  tags                = local.common_tags
}