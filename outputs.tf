output "project_name" {
  description = "Nome do projeto"
  value       = var.project_name
}

output "environment" {
  description = "Ambiente configurado"
  value       = var.environment
}

output "cloud_init_file" {
  description = "Caminho do arquivo Cloud-Init"
  value       = local_file.cloud_init.filename
}
