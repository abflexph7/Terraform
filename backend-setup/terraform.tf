#it is good practice to store state files remotely in an S3 bucket or other cloud storage. You can enable state locking on s3 also


terraform {
  backend "s3" {
    bucket = "mybucket" #bucketname 
    key    = "path/to/my/key" #path to state file within bucket
    region = "us-east-1" #region of where the bucket is
  }
}
