terraform {
  backend "s3" {
    bucket         = "my-terraform_calculator-state-bucket"   # replace with your bucket name
    key            = "eks/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
