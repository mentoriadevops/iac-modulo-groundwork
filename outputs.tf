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

# output "vpc_id" {
#   description = "Retorna o id da VPC criada"
#   value       = google_compute_network.vpc_network.id
#   sensitive   = false
# }

# output "subnets_id" {
#   description = "Retorna uma lista de objetos com os atributos das subnets criadas"
#   value       = [for subnet in google_compute_subnetwork.subnetworks : subnet]
#   sensitive   = false
# }