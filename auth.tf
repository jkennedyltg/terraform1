provider "aws" {
	region = "us-west-2"
	profile = "default"
}

data "aws_availability_zones" "available" {

}

output "AZs" {
	value = data.aws_availability_zones.available.names
	description = "list of aws zones"
}

