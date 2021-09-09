# output "google_billing_account" {
#   value = data.google_billing_account.acct.id
# }

# output "google_org_id" {
#   value = data.google_organization.org.org_id
# }

# output "project_id" {
#   value = module.project_factory.project_id
# }

# output "project_name" {
#   value = module.project_factory.project_name
# }

# output "project_number" {
#   value = module.project_factory.project_number
# }

output "vpc_id" {
  description = "Retorna o id da VPC criada"
  value       = module.network_gcp.vpc_id
}

output "subnets_id" {
  description = "Retorna uma lista de objetos com os atributos das subnets criadas"
  value       = module.network_gcp.subnets_id
}
