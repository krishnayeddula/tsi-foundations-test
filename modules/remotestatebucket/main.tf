resource "random_id" "instance_id" {
  byte_length = 8
}

resource "google_storage_bucket" "org" {
  name = "bucket-tfstate-org-${random_id.instance_id.hex}"
  project = "sa-project-360320"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

resource "google_storage_bucket" "parentfolder" {
  name = "bucket-tfstate-parentfolder-${random_id.instance_id.hex}"
  project = "sa-project-360320"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

resource "google_storage_bucket" "childfolder" {
  name = "bucket-tfstate-childfolder-${random_id.instance_id.hex}"
  project = "sa-project-360320"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
