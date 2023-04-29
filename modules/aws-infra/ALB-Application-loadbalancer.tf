module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "8.0"

  name = "${local.name}-alb"

  load_balancer_type = "application"

  vpc_id          = module.vpc.vpc_id
  subnets         = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  security_groups = [module.loadbalancer-security-group.security_group_id]

  target_groups = [
    {
      name_prefix      = "app1"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        my_app1-vm = {
          target_id = (element(module.private-ec2-instance, 0)).id
          port      = 80
        }
        my_app2-vm = {
          target_id = (element(module.private-ec2-instance, 1)).id
          port      = 80
        }
      }
      tags = local.common_tags
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = local.common_tags
}