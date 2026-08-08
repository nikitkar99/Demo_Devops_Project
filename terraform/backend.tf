terraform {
  backend "s3" {
    bucket         = "my-terraform-calculator-state-bucket"
    key            = "eks/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
