provider "aws" {
	region = "us-west-2"
	profile = "default"
}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.31.0"
	name = "vpc-simple-test1"
	cidr = "10.10.0.0/16"
  azs = ["us-west-2c", "us-west-2d"]
	public_subnets = ["10.10.5.0/24", "10.10.10.0/24"]
  # insert the 12 required variables here
}

