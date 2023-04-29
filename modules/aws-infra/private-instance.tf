module "private-ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  #for_each               = toset(["1", "2"])
  count                  = length(module.vpc.private_subnets)
  name                   = "${var.environment}-private-hosts-${count.index}"
  ami                    = data.aws_ami.centos_image.id
  instance_type          = var.instance_type["qa"]
  key_name               = var.instance_key_pair
  user_data              = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = [module.private-security-group.security_group_id]
  subnet_id              = (module.vpc.private_subnets[count.index])
  tags                   = local.common_tags


}