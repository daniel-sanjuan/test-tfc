resource "google_storage_bucket" "auto-expire" {
  for_each                    = toset(["a", "b"])
  project                     = "pg-gccoe-daniel-sanjuan"
  name                        = "${each.key}-pg-gccoe-daniel-sanjuan-auto-expiring-bucket"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true
}


