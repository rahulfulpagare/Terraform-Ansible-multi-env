# dev infra
module "dev-infra" {
  source         = "./infra"              # Path to the module
  env            = "dev"                  # Environment variable
  instance_count = 2                      # Number of EC2 instances
  instance_type  = "t2.micro"             # EC2 instance type
  ami            = "ami-05d38da78ce859165" # AMI ID for EC2 instances
  volume_size    = 10                     # Root volume size (GB)
}

# stg infra
module "stg-infra" {
  source         = "./infra"              # Path to the module
  env            = "stg"                  # Environment variable
  instance_count = 2                     # Number of EC2 instances
  instance_type  = "t2.small"             # EC2 instance type
  ami            = "ami-05d38da78ce859165" # AMI ID for EC2 instances
  volume_size    = 10                     # Root volume size (GB)
}

# prod infra
module "prod-infra" {
  source         = "./infra"              # Path to the module
  env            = "prod"                  # Environment variable
  instance_count = 3                     # Number of EC2 instances
  instance_type  = "t2.micro"             # EC2 instance type
  ami            = "ami-05d38da78ce859165" # AMI ID for EC2 instances
  volume_size    = 10                     # Root volume size (GB)
}
output "dev-infra_ec2_public_ips" {
  value = module.dev-infra.ec2_public_ips
}

output "stg-infra_ec2_public_ips" {
  value = module.stg-infra.ec2_public_ips
}

output "prod-infra_ec2_public_ips" {
  value = module.prod-infra.ec2_public_ips
}
