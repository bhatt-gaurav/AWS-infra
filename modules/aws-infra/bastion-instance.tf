module "bastion-ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name                   = "${var.environment}-bastion-hosts"
  ami                    = data.aws_ami.centos_image.id
  instance_type          = var.instance_type["qa"]
  key_name               = var.instance_key_pair
  vpc_security_group_ids = [module.public-security-group.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  tags                   = local.common_tags
}