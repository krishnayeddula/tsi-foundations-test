data "terraform_remote_state" "org" {
  backend = "gcs"
  config = {
    bucket  = "bucket-tfstate-org-aaebcca65c3527a2"
    prefix  = "org/state"
  }
}

data "google_organization" "org" {
    domain = "vaporwarenetworks.com"
}
