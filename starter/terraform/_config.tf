terraform {
   backend "s3" {
     bucket = "udacity-terraform-course1"
     key    = "terraform/terraform.tfstate"
     region = "eu-west-1"
   }
 }

 provider "aws" {
   region = "eu-west-1"

   default_tags {
     tags = local.tags
   }
 }