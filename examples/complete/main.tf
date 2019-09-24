provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {
}

module "domain" {
  source    = "git::https://github.com/cloudposse/terraform-aws-route53-cluster-zone.git?ref=master"
  namespace = var.namespace
  stage     = var.stage
  name      = var.name
  zone_name = "$${name}.$${stage}.example.com"
}

module "vpc" {
  source     = "git::https://github.com/cloudposse/terraform-aws-vpc.git?ref=master"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  cidr_block = "10.0.0.0/16"
}

module "subnets" {
  source = "git::https://github.com/cloudposse/terraform-aws-dynamic-subnets.git?ref=master"

  availability_zones = slice(data.aws_availability_zones.available.names, 0, var.max_availability_zones)

  namespace           = var.namespace
  stage               = var.stage
  name                = var.name
  vpc_id              = module.vpc.vpc_id
  igw_id              = module.vpc.igw_id
  cidr_block          = module.vpc.vpc_cidr_block
  nat_gateway_enabled = "true"
}

module "elastic_beanstalk_application" {
  source      = "git::https://github.com/cloudposse/terraform-aws-elastic-beanstalk-application.git?ref=terraform-0.12"
  namespace   = "eg"
  stage       = "dev"
  name        = "test"
  description = "Test elastic_beanstalk_application"
}

module "elastic_beanstalk_environment" {
  source    = "../../"
  namespace = var.namespace
  stage     = var.stage
  name      = var.name
  zone_id   = module.domain.zone_id
  app       = module.elastic_beanstalk_application.app_name

  instance_type           = "t2.small"
  autoscale_min           = 1
  autoscale_max           = 2
  updating_min_in_service = 0
  updating_max_batch      = 1

  loadbalancer_type   = "application"
  vpc_id              = module.vpc.vpc_id
  public_subnets      = module.subnets.public_subnet_ids
  private_subnets     = module.subnets.private_subnet_ids
  security_groups     = [module.vpc.vpc_default_security_group_id]
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.12.10 running Docker 18.06.1-ce"
  keypair             = ""

  env_vars = {
    "ENV1" = "Test1"
    "ENV2" = "Test2"
    "ENV3" = "Test3"
  }
}

