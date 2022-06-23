output "id" {
  description = "Monitor ID"
  value       = join("", newrelic_synthetics_monitor.this[*].id)
}