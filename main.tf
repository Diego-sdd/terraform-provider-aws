provider "aws" {
  region  = local.envs.region
  profile = local.envs.profile
}

module "vpc" {
  source               = "./modules/vpc"
  cidr_block           = "10.0.0.0/16"
  vpc_name             = local.envs.vpc_name
  public_subnet_cidrs  = ["10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.1.0/24"]
  azs                  = slice(data.aws_availability_zones.available.names, 0, 3)
  enable_nat_gateway   = true
  single_nat_gateway   = true
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami_id        = local.envs.ami_id
  instance_type = local.envs.instance_type
  subnet_id     = module.vpc.public_subnets[0]
  vpc_id        = module.vpc.vpc_id
  instance_name = "Instance-project-terraform"
  environment   = local.environment
}

module "postgres_db" {
  source = "./modules/postgres_db"

  allocated_storage     = local.envs.allocated_storage
  engine                = local.envs.engine
  engine_version        = local.envs.engine_version
  identifier            = local.envs.identifier
  instance_class        = local.envs.instance_class
  username              = local.envs.username
  password              = local.envs.password
  db_name               = local.envs.db_name
  vpc_id                = module.vpc.vpc_id
  ec2_security_group_id = module.ec2_instance.security_group_id
}
