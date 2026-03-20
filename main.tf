resource "google_storage_bucket" "auto-expire" {
  project                     = "pg-gccoe-daniel-sanjuan"
  name                        = "pg-gccoe-daniel-sanjuan-auto-expiring-bucket"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true

#   lifecycle_rule {
#     condition {
#       age = 3
#     }
#     action {
#       type = "Delete"
#     }
#   }
}


resource "terraform_data" "parallelism_test" {
  count = 40

  # The 'input' stores the index so each resource is unique
  input = count.index

  provisioner "local-exec" {
    command = "echo 'Starting resource ${count.index}...'; sleep 20; echo 'Finished resource ${count.index}.'"
  }
}