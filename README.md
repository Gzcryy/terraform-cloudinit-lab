# Terraform Cloud-Init Lab

## Objetivo

Projeto de estudo de DevOps para praticar Terraform, Cloud-Init e automação com GitHub Actions.

A proposta original é preparar uma máquina Linux para configurar o hostname, atualizar os pacotes, instalar Docker e Nginx e iniciar os serviços automaticamente.

## Implementação atual

Por não dispor de um meio de pagamento para criar uma máquina virtual em nuvem, esta versão foi adaptada para execução local.

O Terraform utiliza o provider `local` para gerar o arquivo `rendered-user-data.yaml` a partir do modelo `user-data.yaml`.

**Limitação:** nenhuma máquina virtual em nuvem foi provisionada e o Cloud-Init não foi executado em uma VM real. A instalação e inicialização de Docker e Nginx estão definidas no arquivo de configuração, mas ainda não foram verificadas em uma máquina provisionada.

## Tecnologias

- Terraform
- Cloud-Init
- YAML
- Git e GitHub
- GitHub Actions

## Estrutura do projeto

- `main.tf`: configuração do Terraform e geração do arquivo local.
- `variables.tf`: variáveis do projeto e ambiente.
- `outputs.tf`: saídas do Terraform.
- `user-data.yaml`: configuração Cloud-Init planejada.
- `.github/workflows/terraform.yml`: pipeline de validação.
- `.gitignore`: exclusão de arquivos locais e artefatos gerados.

## Executar localmente

Requisitos: Terraform instalado e Git.

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

Para gerar o arquivo local:

```bash
terraform apply
```

Confirme a operação quando solicitado. O comando gera o arquivo `rendered-user-data.yaml`; ele não cria uma VM nem executa o Cloud-Init.

## Pipeline CI

O GitHub Actions executa automaticamente:

1. Verificação de formatação do Terraform.
2. Inicialização do Terraform.
3. Validação da configuração.
4. Geração do plano de execução.

O pipeline foi executado com sucesso no GitHub Actions.

## Evidências

Para completar a documentação, adicione capturas de tela de:

- Execução bem-sucedida do GitHub Actions.
- Resultado de `terraform validate`.
- Resultado de `terraform plan`.
- Arquivos do projeto no repositório.

## Próximas melhorias

- Provisionar uma VM Linux em um ambiente de nuvem.
- Aplicar o arquivo Cloud-Init na inicialização da VM.
- Verificar o hostname, Docker e Nginx na máquina provisionada.
- Registrar evidências do provisionamento real.

## Repositório

https://github.com/Gzcryy/terraform-cloudinit-lab
