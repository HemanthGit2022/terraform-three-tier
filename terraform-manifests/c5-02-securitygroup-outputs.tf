# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs
## public_bastion_sg_group_id

output "public_bastion_sg_group_id" {
  description = "This will fetch the security ID of the public SG ID"
  value       = module.public_bastion_sg.security_group_id  #no ID usage for outputs - change 3
}


## public_bastion_sg_group vpc id
output "public_bastion_sg_group_vpc_id" {
  value = module.public_bastion_sg.security_group_vpc_id #no ID usage for outputs - change 4
}

## public_bastion_sg_group_name
output "public_bastion_sg_group_name" {
  value = module.public_bastion_sg.security_group_name
}
# Private EC2 Instances Security Group Outputs

output "private_sg_group_id" {
  value = module.private_sg.security_group_id #no ID usage for outputs - change 4
}

## private secu vpc

output "private_sg_group_vpc_id" {
  value = module.private_sg.security_group_vpc_id #no ID usage for outputs - change 4
}
## private_sg_group_name

output "private_sg_group_name" {
  value = module.private_sg.security_group_name
}
