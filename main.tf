terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

# Gera um arquivo local para demonstrar o uso do Terraform
# sem provisionar recursos em nuvem.
resource "local_file" "cloud_init" {
  filename = "${path.module}/rendered-user-data.yaml"
  content  = file("${path.module}/user-data.yaml")
}
