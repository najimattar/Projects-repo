variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "profile" {
  description = "AWS CLI Profile"
  type        = string
  default     = "eks"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "super-mario-eks"
}

variable "node_instance_type" {
  description = "EC2 Instance Type for Nodes"
  type        = string
  default     = "t3.small"
}

variable "desired_nodes" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}