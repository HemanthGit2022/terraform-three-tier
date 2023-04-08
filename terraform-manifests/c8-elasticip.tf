# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument is mandatory check for the EIP level

resource "aws_eip" "bastion_elastip_ip" {
  depends_on = [module.bastion_ec2_instance, module.vpc]
  instance   = module.bastion_ec2_instance.id[0] #selects the elastic ip for bastion 0th instance
  vpc        = true
  tags       = local.common_tags

}

## Local Exec Provisioner:  local-exec provisioner (Destroy-Time Provisioner - Triggered during deletion of Resource)

