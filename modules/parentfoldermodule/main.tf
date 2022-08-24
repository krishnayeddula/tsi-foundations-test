data "terraform_remote_state" "org" {
  backend = "gcs"
  config = {
    bucket  = "bucket-tfstate-org-aaebcca65c3527a2"
    prefix  = "org/state"
  }
}


resource "google_folder" "folders" {
  for_each = toset(local.folders)

  display_name = each.value
  parent       = "organizations/${data.terraform_remote_state.org.outputs.organization-id}"
}


