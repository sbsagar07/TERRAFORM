terraform {
  backend "s3" {
    bucket         = "nanu-s3-demo" # change this
    key            = "sagar/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}