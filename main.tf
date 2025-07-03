resource "google_storage_bucket" "auto-expire" {
    project = "pg-gccoe-daniel-sanjuan"
  name          = "auto-expiring-bucket"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}