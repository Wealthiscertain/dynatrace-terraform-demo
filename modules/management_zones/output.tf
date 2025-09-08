# Map of Management Zone IDs keyed by logical keys
output "management_zone_ids" {
  description = "Map of MZ IDs keyed by logical key."
  value       = { for k, r in dynatrace_management_zone_v2.mz : k => r.id }
}
