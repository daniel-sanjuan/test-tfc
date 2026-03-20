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
    # 'sleep 10' forces the resource to stay in "Creating..." state.
    # If parallelism=20 is working, all 20 will start simultaneously.
    # If it's the default (10), you'll see two batches of 10.
    command = "echo 'Starting resource ${count.index}...'; sleep 20; echo 'Finished resource ${count.index}.'"
  }
}