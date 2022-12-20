resource "newrelic_synthetics_monitor" "this" {
  count             = var.enable_synthetic_monitor ? 1 : 0
  name              = var.name
  type              = "SIMPLE"
  period            = var.period
  status            = upper(var.status)
  locations_public  = var.locations_public
  uri               = var.uri
  validation_string = var.validation_string
  verify_ssl        = var.verify_ssl
}

resource "time_sleep" "this" {
  count           = var.enable_synthetic_monitor ? 1 : 0
  depends_on      = [newrelic_synthetics_monitor.this]
  create_duration = "10s"
}

