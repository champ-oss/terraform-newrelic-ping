output "id" {
  description = "Monitor ID"
  value       = newrelic_synthetics_monitor.this[0].id
}