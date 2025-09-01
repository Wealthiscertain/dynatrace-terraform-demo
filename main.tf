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

resource "dynatrace_management_zone_v2" "my_zone" {
  name = "placeholder"
}

#terraform import dynatrace_management_zone_v2.my_zone <MANAGEMENT_ZONE_ID>
