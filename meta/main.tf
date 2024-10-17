resource "local_file" "A1" {
  filename        = "file1.txt"
  content         = var.content
  file_permission = "700"
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "A2" {
  filename        = each.value
  for_each        = toset(var.filename)
  content         = local_file.A1.id
  file_permission = "700"
}

resource "local_file" "A3" {
  filename        = "file3.txt"
  content         = "different content"
  file_permission = "700"
  lifecycle {
    prevent_destroy = true
  }
  depends_on = [local_file.A2]
}

resource "local_file" "A4" {
  filename        = "file4.txt"
  content         = "not displayed content"
  file_permission = "700"
  lifecycle {
    ignore_changes = [content]
  }
  depends_on = [local_file.A3]
}

output "op1" {
  value = local_file.A1.content
}

output "op3" {
  value = local_file.A3.content
}
output "op4" {
  value = local_file.A4.content
}