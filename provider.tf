terraform {
  required_version = "~> 1.14.8"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.19.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "6.19.0"
    }
  }
}

provider "google" {
  project = "pg-gccoe-daniel-sanjuan"
  region  = "europe-west1"
}

provider "google-beta" {
  project = "pg-gccoe-daniel-sanjuan"
  region  = "europe-west1"
}
