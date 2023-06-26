resource "google_service_account" "run" {
  account_id   = "go-echo-sandbox-run"
  display_name = "go-echo-sandbox-run"

  project = var.project
}

resource "google_project_iam_member" "run" {
  for_each = toset([
    "roles/run.invoker",
    "roles/secretmanager.secretAccessor",
  ])

  project = var.project
  role    = each.key
  member  = "serviceAccount:${google_service_account.run.email}"
}
