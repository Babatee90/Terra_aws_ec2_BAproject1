variable "bucket_name" {
    description = "bucket fo the statefile"
    type        =  string
}
  

variable "dynamodb_table_name" {
    description = "name of the lock for the statefile in s3 bucket"
    type        = string 
  
}