terraform {
  backend "s3" {
    bucket = "terraform-dynatrace-state-bucket-01"
    key = "dynatrace/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
