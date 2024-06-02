variable "region" {
  description = "Region of the Google Cloud Platform"
}

variable "bucket_name_staging" {
  description = "Bucket name for storing Terraform state in staging"
}

variable "bucket_project_id_staging" {
  description = "Bucket project for storing Terraform state in staging"
}

variable "bucket_name_prd" {
  description = "Bucket name for storing Terraform state in production"
}

variable "bucket_project_id_prd" {
  description = "Bucket project for storing Terraform state in production"
}

