provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "sagar" {
  instance_type = "t2.micro"
  ami = "ami-00bb6a80f01f03502" # change this
  #subnet_id = "subnet-019ea91ed9b5252e7" # change this
}

resource "aws_s3_bucket" "nanu" {
  bucket = "nanu-s3-demo" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}