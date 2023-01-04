resource "null_resource" "manifest_file" {
  triggers = {
    filename = var.filename
    url = var.url
  }
  provisioner "local-exec" {
    command = "curl --create-dirs -Lso ${var.filename} ${var.url}"
  }
}


data "kubectl_file_documents" "this" {
  content = file(null_resource.manifest_file.triggers.filename)
}