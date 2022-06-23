output "id" {
  description = "Monitor ID"
  value       = newrelic_synthetics_monitor.this[count.index].id
}
