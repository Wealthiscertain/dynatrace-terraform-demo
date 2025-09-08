output "management_zone_ids" {
  description = "Map of created/imported management zone resource IDs keyed by mz key."
  value       = { for k, r in dynatrace_management_zone_v2.mz : k => r.id }
}
