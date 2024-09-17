terraform {
   backend "s3" {
     bucket = "sre-course-1-terraform"
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