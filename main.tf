provider "google" {
  credentials = file("credentials.json")
  project     = var.project
  region      = var.region
}

resource "google_artifact_registry_repository" "default" {
  location      = var.region
  repository_id = var.repository_id
  description   = "Cloud run application docker repository"
  format        = "DOCKER"
}
