# One resource per item in mz_names
resource "dynatrace_management_zone_v2" "mz" {
  for_each = var.mz_names
  name     = each.value
}
