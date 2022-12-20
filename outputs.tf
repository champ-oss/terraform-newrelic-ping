output "id" {
  description = "Monitor ID"
  value       = try(newrelic_synthetics_monitor.this[0].id, "")
}