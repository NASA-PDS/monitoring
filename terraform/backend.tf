terraform {
  backend "s3" {
    bucket = "pds-state"
    key    = "infra/monitoring/en_cloudwatch.tfstate"
    region = "us-west-2"
  }
}