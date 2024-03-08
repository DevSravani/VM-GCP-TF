terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.16.0"
    }
  }
}

provider "google" {
  # Configuration options
  project ="learning-project-414414"
  region  ="us-central1"
  zone    ="us-cental1-a"
  credentials = "./key.json"
}
resource "google_storage_bucket" "f0001" {
  name     = "f0001" # Specify your desired bucket name
  location = "US-central1"
  project  = "learning-project-414414"



  # Optionally, enable versioning for the bucket
  versioning {
    enabled = true
  }

  # Optionally, set the bucket's access control
  #iam_configuration {
  #bucket_policy_only = true
}
