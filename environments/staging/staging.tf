variable "environment" {
}
variable "region" {
}
variable "ami_id" {
}
#Ideally you wouldn't provide your keys in terraform, running 'aws configure' or setting environment variables is a better and more secure alternative
provider "aws" {
   region     = var.region
   version    = "~> 2.7"
}

module "infrastructure" {
  source      = "../../modules/infrastructure"
  environment = var.environment
  region      = var.region
  ami_id      = var.ami_id
}
