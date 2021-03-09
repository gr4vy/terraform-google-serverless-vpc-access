locals {
  project_id = var.project_id != "" ? var.project_id : data.google_client_config.current.project
  region     = var.region != "" ? var.region : data.google_client_config.current.region
}

data "google_client_config" "current" {
}

resource "google_project_service" "vpcaccess" {
  project            = local.project_id
  service            = "vpcaccess.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "servicenetworking" {
  project            = local.project_id
  service            = "servicenetworking.googleapis.com"
  disable_on_destroy = false
}

resource "google_vpc_access_connector" "this" {
  project        = local.project_id
  region         = local.region
  name           = var.name
  network        = var.network
  ip_cidr_range  = var.ip_cidr_range
  min_throughput = var.min_throughput
  max_throughput = var.max_throughput

  timeouts {
    create = lookup(var.timeouts, "create", null)
    delete = lookup(var.timeouts, "delete", null)
  }

  depends_on = [
    google_project_service.vpcaccess,
    google_project_service.servicenetworking,
  ]
}
