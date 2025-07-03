terraform {
  //This block is only needed when using Terraform CLI: https://developer.hashicorp.com/terraform/cli/cloud/settings
  cloud {
    organization = "daniel-sanjuan-sngular"

    workspaces {
      name = "test-tfc"
    }
  }
}