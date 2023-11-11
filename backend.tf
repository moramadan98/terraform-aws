terraform {
  backend "s3" {
    bucket = "bucketerra"
    key    = "my-bucket"
    region = "eu-north-1"
    dynamodb_table = "terraform"
  }
}
