provider "aws" {
	region = "us-west-2"
	profile = "default"
}

data "aws_availability_zones" "available" {

}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.31.0"
  # insert the 12 required variables here
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "10.0.0"
  # insert the 4 required variables here
}
