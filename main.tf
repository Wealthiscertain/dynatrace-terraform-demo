terraform {
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = ">= 1.77.0"
    }
  }
}

provider "dynatrace" {
  dt_env_url   = var.dt_env_url
  dt_api_token = var.dt_api_token
}

module "management_zones" {
  source   = "./modules/management_zones"
  mz_names = var.mz_names
}
