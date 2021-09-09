
# variable "google_billing_account_display_name" {
#   description = "The display name of the billing account."
#   type        = string
# }

# variable "google_project_name" {
#   description = "The name of the project."
#   type        = string
# }

# variable "google_organization_domain_name" {
#   description = "The domain name of the Organization."
#   type        = string
# }

# data "google_billing_account" "acct" {
#   display_name = var.google_billing_account_display_name
#   open         = true
# }

# variable "activate_apis" {
#   type        = list(string)
#   description = "Lista das apis que serão ativadas no projeto do GCP."
#   default     = []
#   sensitive   = false
# }

# variable "cloud_provider" {
#   type        = string
#   default     = "GCP"
#   description = "Name of the cloud provider (GCP)"
#   sensitive   = false
#   validation {
#     condition     = contains(["GCP", "AWS", "Azure"], var.cloud_provider)
#     error_message = "Valid values for var: cloud_provider are (GCP)."
#   }
# }
variable "project" {
  description = "Nome do projeto existente no google cloud"
  type        = string
}

variable "vpc_name" {
  description = "Nome da vpc"
  type        = string
}

variable "subnetworks" {
  description = "Lista do objeto de network"
  type = list(object({
    name          = string
    ip_cidr_range = string
    region        = string
  }))
}

variable "firewall_allow" {
  description = "Lista de portas para permitir no firewall"
  type = list(object({
    protocol = string
    port     = list(number)
  }))
}

variable "mtu" {
  description = "Unidades máximas de unidades de transmissão em bytes. O valor mínimo válido é 1460 e o máximo é 1500 bytes."
  type        = number
  default     = 1460
}
