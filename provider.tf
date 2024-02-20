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
