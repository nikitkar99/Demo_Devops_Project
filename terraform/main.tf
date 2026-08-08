terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.4"
  create_cloudwatch_log_group = false
  cluster_name    = var.cluster_name
  cluster_version = "1.36"   # ✅ supported version
  subnet_ids      = ["subnet-0fa787ac55b7dbe7f", "subnet-0b6da31a4af45d86f"]
  vpc_id          = "vpc-0e964058cbb668f21"
}
