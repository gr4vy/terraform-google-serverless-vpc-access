provider "google" {
  version = "~> 3.45.0"
}

module "vpc" {
  source       = "git::https://github.com/terraform-google-modules/terraform-google-network.git?ref=v3.1.2"
  project_id   = var.project_id
  network_name = "my-network"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.10.20.0/24"
      subnet_region = var.region
    },
  ]
}

module "serverless_vpc_access" {
  source = "git::https://github.com/gr4vy/terraform-google-serverless-vpc-access.git?ref=v1.0.0"

  project_id    = var.project_id
  region        = var.region
  name          = "serverless-access"
  network       = module.vpc.network_name
  ip_cidr_range = "10.132.0.0/28"
}
