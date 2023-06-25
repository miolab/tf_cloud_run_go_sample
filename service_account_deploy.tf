resource "google_service_account" "deploy" {
  account_id   = "go-echo-sandbox-deploy"
  display_name = "go-echo-sandbox-deploy"

  project = var.project
}

resource "google_project_iam_member" "deploy" {
  for_each = toset([
    "roles/run.admin",
    "roles/artifactregistry.writer",
  ])

  project = var.project
  role    = each.key
  member  = "serviceAccount:${google_service_account.deploy.email}"
}
