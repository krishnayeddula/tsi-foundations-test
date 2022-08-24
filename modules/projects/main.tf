data "terraform_remote_state" "children" {
  backend = "gcs"
  config = {
    bucket  = "bucket-tfstate-childfolder-aaebcca65c3527a2"
    prefix  = "childfolders/state"
  }
}

resource "google_project" "my_project-in-a-folder" {
  name       = "example-project-funny-360320"
  project_id = "example-project-funny-360320"
  folder_id  = data.terraform_remote_state.children.outputs.rtrcsubfolders.fldr-rtrc-dev.name
}
