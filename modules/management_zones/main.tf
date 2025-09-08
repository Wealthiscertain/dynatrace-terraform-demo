terraform {
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = ">= 1.77.0"
    }
  }
}

# One resource per item in mz_names
resource "dynatrace_management_zone_v2" "mz" {
  for_each = var.mz_names
  name     = each.value
}
