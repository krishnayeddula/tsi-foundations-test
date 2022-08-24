output "parentfolders" {
  value = tomap(resource.google_folder.folders)
}
