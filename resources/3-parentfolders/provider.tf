terraform {
 backend "gcs" {
   bucket  = "bucket-tfstate-parentfolder-aaebcca65c3527a2"
   prefix  = "parentfolders/state"
 }
}
