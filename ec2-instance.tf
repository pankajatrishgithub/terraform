#terraform setting block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.0"  #this is optionale but recommnded in production
    }
  }
}
#it will download all the plugin need to communicate with aws


#provider block
provider "aws" {
  region = "us-east-2"
}
#this will download specific plugin to communicate with the particular region


#resource block

resource "aws_instance" "ec2demo" {
    ami = "ami-0bbe2dcd1861a9095"
    instance_type = "t2.micro"
    