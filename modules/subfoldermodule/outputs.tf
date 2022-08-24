output "rtrcsubfolders" {
  value = tomap(resource.google_folder.folders)
}
output "sharedsubfolders" {
  value = tomap(resource.google_folder.sharedfolders)
}
