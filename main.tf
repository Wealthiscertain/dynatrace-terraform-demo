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

# Create one instance per MZ name. 
# Empty block is OK for import.
resource "dynatrace_management_zone_v2" "mz" {
  for_each = var.mz_names
  name = each.value
}

resource "dynatrace_management_zone_v2" "mz" {
  name = "mz_4"
}

resource "dynatrace_management_zone_v2" "mz" {
  name = "mz_5"
}
