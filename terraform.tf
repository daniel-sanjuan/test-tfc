terraform {
  //This block is only needed when using Terraform CLI: https://developer.hashicorp.com/terraform/cli/cloud/settings
  cloud {
    organization = "scopely-playgami"

    workspaces {
      name = "iac-gcp-publishing-hub"
    }
  }
}