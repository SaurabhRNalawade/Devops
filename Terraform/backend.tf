#Terraform Remote backend
terraform {
  backend "s3" {
  bucket="s3-remote-backend"
#filename--> key="terraform.tfstate"
  region="ap-south-1"
  profile="saurabh"


#Return to local --> terraform init -migrate-state
terraform {
  backend "local" {
  path="terraform.tfstate"
