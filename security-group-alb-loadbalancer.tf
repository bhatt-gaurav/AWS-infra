module "loadbalancer-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.2"

  name                = "alb-loadbalancer-sg"
  description         = "Security Group with HTTP open for entire Internet (IPv4 CIDR), egress ports are all world open"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
  tags                = local.common_tags

}