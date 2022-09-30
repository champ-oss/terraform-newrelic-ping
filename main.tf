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

resource "newrelic_synthetics_alert_condition" "this" {
  count       = var.enable_alerts ? 1 : 0
  policy_id   = newrelic_alert_policy.this[0].id
  name        = var.name
  monitor_id  = newrelic_synthetics_monitor.this[0].id
  runbook_url = var.runbook_url
}

resource "newrelic_alert_policy" "this" {
  count               = var.enable_alerts ? 1 : 0
  name                = var.name
  incident_preference = var.incident_preference
  channel_ids = [
    newrelic_alert_channel.email[0].id,
    newrelic_alert_channel.slack[0].id
  ]
}

resource "newrelic_alert_channel" "email" {
  count = var.enable_alerts ? 1 : 0
  name  = "${var.name}-email"
  type  = "email"

  config {
    recipients              = var.email_recipients
    include_json_attachment = var.email_include_json_attachment
  }
}

resource "newrelic_alert_channel" "slack" {
  count = var.enable_alerts ? 1 : 0
  name  = "${var.name}-slack"
  type  = "slack"

  config {
    channel = var.slack_channel
    url     = var.slack_url
  }
}