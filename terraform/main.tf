resource "yandex_resourcemanager_folder" "folder" {
  cloud_id    = "${var.cloud_id}"
  name        = "sandbox"
  description = "make services"
}

resource "yandex_iam_service_account" "sa" {
  folder_id = yandex_resourcemanager_folder.folder.id
  name = "gitlabrunner"
}
