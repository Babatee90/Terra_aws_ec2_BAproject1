#creating S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "var.bucket_name"
  tags = {
    name = "My_bucket"
    environment = "dev"
  }
}

resource "aws_dynamodb_table" "tf_lock" {
    name       = var.dynamodb_table_name
    billing_mode = "PAY PER REQUEST"
    hash_key  = "deviceId"
     range_key = "epochS"
} 