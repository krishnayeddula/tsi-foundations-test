data "terraform_remote_state" "parents" {
  backend = "gcs"
  config = {
    bucket  = "bucket-tfstate-parentfolder-aaebcca65c3527a2"
    prefix  = "parentfolders/state"
  }
}
resource "google_folder" "folders" {
  for_each = toset(local.rtrc-folders)
  display_name = each.value
  parent       = data.terraform_remote_state.parents.outputs.parentfoldersall.fldr-rtrc.name
}

resource "google_folder" "sharedfolders" {
  for_each = toset(local.shared-folders)
  display_name = each.value
  parent       = data.terraform_remote_state.parents.outputs.parentfoldersall.fldr-shared.name
}

