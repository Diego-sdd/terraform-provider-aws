locals {
  environment = terraform.workspace

  environments = {
    dev = {
      region        = "us-east-1"
      profile       = "turing-user"
      ami_id        = "ami-0a0e5d9c7acc336f1"
      instance_type = "t2.micro"
      vpc_name      = "vpc-project-terraform-dev"

      allocated_storage = 20
      engine            = "postgres"
      engine_version    = "15"
      identifier        = "postgres-database"
      instance_class    = "db.t3.micro"
      username          = ""
      password          = ""
      db_name           = ""
    }
    prod = {
      region        = "us-east-1"
      profile       = "student2"
      ami_id        = "ami-0a0e5d9c7acc336f1"
      instance_type = "t2.micro"
      vpc_name      = "vpc-project-terraform-prod"

      allocated_storage = 20
      engine            = "postgres"
      engine_version    = "16.3"
      identifier        = "postgres-database"
      instance_class    = "db.t3.micro"
      username          = ""
      password          = ""
      db_name           = ""
    }
  }

  envs = local.environments[terraform.workspace]
}
