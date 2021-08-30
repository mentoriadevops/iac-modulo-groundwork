# IAC Modulo Projeto GCP


## Passo-a-passo para criar uma service account para o Terraform

- [Instalação do gcloud](https://cloud.google.com/sdk/docs/install#installation_instructions)
- [Tutorial](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform)

```sh
export TF_ADMIN=terraform-user-abcqw
export TF_CREDS=~/.config/gcloud/terraform-user.json

#export TF_VAR_org_id=YOUR_ORG_ID # `gcloud organizations list`
#export TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID # `gcloud beta billing accounts list`

export TF_VAR_org_id=${YOUR_ORG_ID}
export TF_VAR_billing_account=YOUR_BILLING_ACCOUNT_ID

gcloud projects create ${TF_ADMIN} \
  --organization ${TF_VAR_org_id} \
  --set-as-default

gcloud iam service-accounts create terraform \
  --display-name "Terraform admin account"

gcloud iam service-accounts keys create ${TF_CREDS} \
  --iam-account terraform@${TF_ADMIN}.iam.gserviceaccount.com  
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| google | 3.81.0 |

## Providers

| Name | Version |
|------|---------|
| google | 3.81.0 |

## Resources

| Name | Type |
|------|------|
| [google_billing_account.acct](https://registry.terraform.io/providers/hashicorp/google/3.81.0/docs/data-sources/billing_account) | data source |
| [google_organization.org](https://registry.terraform.io/providers/hashicorp/google/3.81.0/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| google\_billing\_account\_display\_name | The display name of the billing account. | `string` | n/a | yes |
| google\_organization\_domain\_name | The domain name of the Organization. | `string` | n/a | yes |
| google\_project\_name | The name of the project. | `string` | n/a | yes |
| activate\_apis | Lista das apis que serão ativadas no projeto do GCP. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| google\_billing\_account | n/a |
| google\_org\_id | n/a |
| project\_id | n/a |
| project\_name | n/a |
| project\_number | n/a |
<!-- END_TF_DOCS -->
## Testar localmente

Para testar o modulo localmente, você pode executar um `make test`.
