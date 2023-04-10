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

  dynamic "custom_header" {
    for_each = var.custom_headers
    content {
      name  = custom_headers.key
      value = custom_headers.value
    }
  }
}

resource "time_sleep" "this" {
  count           = var.enable_synthetic_monitor ? 1 : 0
  depends_on      = [newrelic_synthetics_monitor.this]
  create_duration = "10s"
}

