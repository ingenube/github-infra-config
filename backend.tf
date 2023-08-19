terraform {
  backend "s3" {
    bucket         = "terraform-backend-state-lng"
    key            = "gh-setup.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-locking-table"
  }
}
