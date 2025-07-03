resource "google_storage_bucket" "auto-expire" {
  project                     = "pg-gccoe-daniel-sanjuan"
  name                        = "pg-gccoe-daniel-sanjuan-auto-expiring-bucket"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}