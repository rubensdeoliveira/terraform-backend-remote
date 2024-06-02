terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.29.1"
    }
  }
}

provider "google" {
  region = var.region
}

resource "google_storage_bucket" "terraform_state_staging" {
  name                     = var.bucket_name_staging
  location                 = var.region
  project                  = var.bucket_project_id_staging
  force_destroy            = false
  public_access_prevention = "enforced"

  versioning {
    enabled = true
  }
}

# resource "google_storage_bucket" "terraform_state_prd" {
#   name                     = var.bucket_name_prd
#   location                 = var.region
#   project                  = var.bucket_project_id_prd
#   force_destroy            = false
#   public_access_prevention = "enforced"

#   versioning {
#     enabled = true
#   }
# }