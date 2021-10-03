# IAC Módulo Groundwork GCP


## Passo-a-passo para criar uma service account para o Terraform

- [Instalação do gcloud](https://cloud.google.com/sdk/docs/install#installation_instructions)
- [Tutorial](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform)

Após instalar o utilitário gcloud, executar os passos abaixo via make para criar a conta de serviço, as policies e o arquivo de chave para autenticar no GCP.

```bash
## 1: Criar Service Account no GCP
make auth-create-sa

## 2: create policy
make auth-create-iam-policy

## 3: add policy
make auth-create-add-policy

## 4: generate creds file
make auth-create-creds-file
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| [iac-modulo-rede-gcp](https://github.com/mentoriaiac/iac-modulo-rede-gcp) | ??? |

## Providers

| Name | Version |
|------|---------|
| google | 3.73.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | Nome do projeto existente no google cloud. | `string` | n/a | yes |
| vpc_name | Nome da VPC. | `string` | n/a | yes |
| subnetworks | Lista do objeto de network. | `list(object({}))` | n/a | yes |
| firewall_allow | Lista de portas para permitir no firewall. | `list(object({}))` | `[]` | yes |
| mtu | Unidades máximas de unidades de transmissão em bytes. | `number` | 1460 | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | Retorna o id da VPC criada. |
| subnets_id | Retorna uma lista de objetos com os atributos das subnets criadas. |
<!-- END_TF_DOCS -->
## Testar localmente

1. Gerar credenciais do GCP.
1. Editar `.target.env`.
1. Editar `terrafile.tf`.
1. Executar `make plan`.
1. Executar `make apply`.
1. Executar `make destroy`.

Contribuidores:
- snifbr
- mdmansur
- edson c.
