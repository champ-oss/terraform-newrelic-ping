resource "newrelic_synthetics_monitor" "this" {
  count             = var.enable_synthetic_monitor ? 1 : 0
  name              = var.name
  type              = "SIMPLE"
  frequency         = var.frequency
  status            = upper(var.status)
  locations         = var.locations
  sla_threshold     = var.sla_threshold
  uri               = var.uri
  validation_string = var.validation_string
  verify_ssl        = var.verify_ssl
}