# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~>4.16.2"

  name        = "public-bastion-sg"
  description = "bastion host - SG"
  vpc_id      = module.vpc.vpc_id

  #ingress rules - CIDR blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  #egress rules - all OPEN
  egress_rules = ["all-all"]
  tags         = local.common_tags

}