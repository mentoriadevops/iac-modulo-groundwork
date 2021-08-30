provider "google" {
  project = var.project
  region  = "us-central1"
}

module "network_gcp" {
  source  = "github.com/mentoriaiac/iac-modulo-rede-gcp.git"
  project = var.project
  vpc_name = var.vpc_name
  subnetworks = var.subnetworks

  firewall_allow = var.firewall_allow
}

# data "google_organization" "org" {
#   domain = var.google_organization_domain_name
# }


# module "project-factory" {
#   source  = "terraform-google-modules/project-factory/google"
#   version = "~> 11.1.1"

#   name                        = var.google_project_name
#   random_project_id           = false
#   org_id                      = data.google_organization.org.org_id
#   billing_account             = data.google_billing_account.acct.id
#   disable_services_on_destroy = false

#   activate_apis = var.activate_apis
}
