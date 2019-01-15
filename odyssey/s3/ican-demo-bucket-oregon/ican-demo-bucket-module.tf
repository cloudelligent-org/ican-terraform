module "ican-demo-bucket" {
  source = "../templates/s3"

  region = "us-west-2"
  bucket-name = "ican-demo-bucket-oregon"
  acl = "private"
  versioning-enable = "true"
  tag = "ican-demo-bucket"

}
ubuntu@ip-172-31-26-242:~/odyssey/s3/ican-demo-bucket$ ls
demo-bucket-module.tf  terraform.tfstate  terraform.tfstate.backup
ubuntu@ip-172-31-26-242:~/odyssey/s3/ican-demo-bucket$ cat demo-bucket-module.tf
module "ican-demo-bucket" {
  source = "../templates/s3"

  region = "us-west-2"
  bucket-name = "ican-demo-bucket-oregon"
  acl = "private"
  versioning-enable = "true"
  tag = "ican-demo-bucket"

}
