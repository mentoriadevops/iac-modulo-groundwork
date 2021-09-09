provider "google" {
  project     = "groundwork-teste"
  region      = "us-central1"
}

module "groundwork" {
  source   = "./.."
  project  = "groundwork-teste"
  vpc_name = "vpc-teste"
  subnetworks = [
    {
      name          = "minhasubnet"
      ip_cidr_range = "10.0.0.0/16"
      region        = "us-central1"
    },
    {
      name          = "minhasubnet2"
      ip_cidr_range = "10.10.0.0/16"
      region        = "us-west1"
    }
  ]

  firewall_allow = [
    {
      protocol = "tcp"
      port     = [443, 80]
    }
  ]
}

output "vpc_id" {
  description = "Retorna o id da VPC criada"
  value       = module.groundwork.vpc_id
}

output "subnets_id" {
  description = "Retorna uma lista de objetos com os atributos das subnets criadas"
  value       = module.groundwork.subnets_id
}
