# Configure the Google Cloud provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = "learngcp-484115"
  region  = "us-central1-a"
  zone    = "us-central1"
}

resource "google_compute_network" "vpcone"{
    name = "onetwoss"
    auto_create_subnetworks = false
    delete_default_routes_on_create = true

}