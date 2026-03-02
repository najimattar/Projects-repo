terraform {
  backend "s3" {
    bucket  = "najim-super-mario-tf-kubernetes-project123"
    key     = "EKS/terraform.tfstate"
    region  = "ap-south-1"
    profile = "eks"
  }
}