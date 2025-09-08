# Exposes Management Zone IDs keyed by logical keys
output "management_zone_ids" {
  value = module.management_zones.management_zone_ids
}
